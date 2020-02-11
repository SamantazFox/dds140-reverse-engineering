using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace myknobctrl
{
	public class LJTKNOB1 : UserControl
	{
		public delegate void MYSelectChangedDelegate(uint i);

		private IContainer components;

		public int SelectedIndex;

		private int margin;

		private Point MouseClickPoint = new Point(0, 0);

		private PointF[] m_scalePoints = new PointF[20];

		private Color m_knobColor = Color.FromArgb(255, 200, 0, 0);

		private double m_anglePace;

		private string m_str = "";

		private SolidBrush scaleTxtBrush = new SolidBrush(Color.FromArgb(255, 174, 120, 120));

		private Font scaleTxtFnt = new Font("Arial", 10f, FontStyle.Bold);

		private int x0;

		private int y0;

		private uint m_scaleNum = 10u;

		private Rectangle PanelShadowRect;

		private Rectangle PanelHLightRect;

		private Rectangle PanelHLightRect2;

		private Rectangle PanelShadowRect2;

		private Rectangle PanelHLightRect3;

		private SolidBrush PanelShadowLB = new SolidBrush(Color.FromArgb(100, 100, 100, 100));

		private LinearGradientBrush PanelHlightLB;

		private LinearGradientBrush PanelHlightLB2;

		private LinearGradientBrush PanelHlightLB3;

		private Pen AxisisPen = new Pen(Color.FromArgb(250, 100, 100, 100), 1f);

		private PointF[] AxisisLineStartP;

		private PointF[] AxisisLineStopP;

		private Rectangle FingerPtRect;

		private int FingerPtRadius;

		private LinearGradientBrush FingerPtBrush;

		private Color labelString0;

		public event LJTKNOB1.MYSelectChangedDelegate MYSelectChangedevent
		{
			[MethodImpl(MethodImplOptions.Synchronized)]
			add
			{
				this.MYSelectChangedevent = (LJTKNOB1.MYSelectChangedDelegate)Delegate.Combine(this.MYSelectChangedevent, value);
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			remove
			{
				this.MYSelectChangedevent = (LJTKNOB1.MYSelectChangedDelegate)Delegate.Remove(this.MYSelectChangedevent, value);
			}
		}

		public event EventHandler SelectedIndexChangedEvt
		{
			[MethodImpl(MethodImplOptions.Synchronized)]
			add
			{
				this.SelectedIndexChangedEvt = (EventHandler)Delegate.Combine(this.SelectedIndexChangedEvt, value);
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			remove
			{
				this.SelectedIndexChangedEvt = (EventHandler)Delegate.Remove(this.SelectedIndexChangedEvt, value);
			}
		}

		[Category("Appearance"), Description("设定刻度0")]
		public Color GetSetlabelString0
		{
			get
			{
				return this.labelString0;
			}
			set
			{
				this.labelString0 = value;
				base.Invalidate();
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && this.components != null)
			{
				this.components.Dispose();
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			base.SuspendLayout();
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.Name = "LJTKNOB1";
			base.Size = new Size(209, 206);
			base.Load += new EventHandler(this.LJTKNOB1_Load);
			base.MouseClick += new MouseEventHandler(this.LJTKNOB1_MouseClick);
			base.ResumeLayout(false);
		}

		protected virtual void MYSelectChangedEventHandler(uint i)
		{
			if (this.MYSelectChangedevent != null)
			{
				this.MYSelectChangedevent(i);
			}
		}

		public void setKnobColor(LinearGradientBrush lb, string str)
		{
			this.PanelHlightLB2 = lb;
			this.m_str = str;
			base.Invalidate(this.PanelHLightRect);
		}

		public void setKnobSelect(uint n)
		{
			this.FingerPtRect.X = (int)this.m_scalePoints[(int)((UIntPtr)n)].X;
			this.FingerPtRect.Y = (int)this.m_scalePoints[(int)((UIntPtr)n)].Y;
			base.Invalidate(this.PanelHLightRect3);
		}

		protected virtual void OnSelectedIndexChangedEvt(EventArgs e)
		{
			if (this.SelectedIndexChangedEvt != null)
			{
				this.SelectedIndexChangedEvt(this, e);
			}
		}

		public LJTKNOB1()
		{
			this.InitializeComponent();
			base.SetStyle(ControlStyles.AllPaintingInWmPaint, true);
			base.SetStyle(ControlStyles.DoubleBuffer, true);
			base.SetStyle(ControlStyles.ResizeRedraw, true);
			base.SetStyle(ControlStyles.Selectable, true);
			base.SetStyle(ControlStyles.SupportsTransparentBackColor, true);
			base.SetStyle(ControlStyles.UserPaint, true);
			this.BackColor = Color.Transparent;
			base.UpdateStyles();
			this.margin = Math.Min(base.Width, base.Height) / 25;
			double num = 6.2831852;
			this.m_anglePace = num / this.m_scaleNum;
		}

		protected override void OnPaint(PaintEventArgs pe)
		{
			pe.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
			pe.Graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
			this.DrawPanel(pe.Graphics);
			this.DrawMousePos(pe.Graphics);
			this.DrawGraph(pe.Graphics);
			this.DrawAxisis(pe.Graphics);
		}

		private void DrawAxisis(Graphics g)
		{
			int num = 0;
			while ((long)num < (long)((ulong)this.m_scaleNum))
			{
				g.DrawLine(this.AxisisPen, this.AxisisLineStartP[num], this.AxisisLineStopP[num]);
				num++;
			}
		}

		private void DrawMousePos(Graphics g)
		{
		}

		private void DrawGraph(Graphics g)
		{
			this.FingerPtBrush = new LinearGradientBrush(this.FingerPtRect, Color.FromArgb(255, 120, 120, 120), Color.FromArgb(255, 240, 240, 240), LinearGradientMode.Vertical);
			g.FillEllipse(this.FingerPtBrush, this.FingerPtRect);
			this.FingerPtBrush.Dispose();
		}

		private void DrawPanel(Graphics g)
		{
			g.FillEllipse(this.PanelShadowLB, this.PanelShadowRect);
			g.FillEllipse(this.PanelHlightLB, this.PanelHLightRect);
			g.FillEllipse(this.PanelHlightLB2, this.PanelHLightRect2);
			g.FillEllipse(this.PanelHlightLB3, this.PanelHLightRect3);
			g.DrawString(this.m_str, this.scaleTxtFnt, this.scaleTxtBrush, new PointF((float)(this.PanelHLightRect3.Left + 30), this.AxisisLineStopP[5].Y - 10f));
		}

		private void LJTKNOB1_MouseClick(object sender, MouseEventArgs e)
		{
			this.MouseClickPoint.X = e.X;
			this.MouseClickPoint.Y = e.Y;
			if (!this.PanelHLightRect.Contains(this.MouseClickPoint))
			{
				return;
			}
			base.Invalidate(this.PanelHLightRect);
			double num = Math.Atan((double)(this.y0 - e.Y) / (double)(e.X - this.x0));
			if (e.X < this.x0)
			{
				num += 3.1415926;
			}
			if (num < 0.0)
			{
				num += 6.2831852;
			}
			uint num2 = (uint)(num * 2.0 / this.m_anglePace);
			if (num2 % 2u == 0u)
			{
				num2 /= 2u;
			}
			else
			{
				num2 = (num2 + 1u) / 2u;
			}
			if (num2 >= this.m_scaleNum)
			{
				num2 = 0u;
			}
			this.FingerPtRect.X = (int)this.m_scalePoints[(int)((UIntPtr)num2)].X;
			this.FingerPtRect.Y = (int)this.m_scalePoints[(int)((UIntPtr)num2)].Y;
			base.Invalidate(this.PanelHLightRect);
			this.OnSelectedIndexChangedEvt(e);
			this.MYSelectChangedEventHandler(num2);
		}

		private void LJTKNOB1_Load(object sender, EventArgs e)
		{
			this.PanelHLightRect = new Rectangle(this.margin, this.margin, this.margin * 17, this.margin * 17);
			this.PanelHLightRect2 = new Rectangle(this.margin + 9, this.margin + 9, this.margin * 17 - 18, this.margin * 17 - 18);
			this.PanelHLightRect3 = new Rectangle(this.margin + 14, this.margin + 14, this.margin * 17 - 28, this.margin * 17 - 28);
			this.PanelShadowRect = new Rectangle(this.PanelHLightRect.X - 1, this.PanelHLightRect.Y - 1, this.PanelHLightRect.Width + 4, this.PanelHLightRect.Height + 4);
			this.PanelShadowRect2 = new Rectangle(this.PanelHLightRect3.X - 1, this.PanelHLightRect3.Y - 1, this.PanelHLightRect3.Width + 1, this.PanelHLightRect3.Height + 1);
			this.FingerPtRadius = 25;
			this.x0 = this.PanelHLightRect.X + this.PanelHLightRect.Width / 2;
			this.y0 = this.PanelHLightRect.Y + this.PanelHLightRect.Height / 2;
			float num = (float)(this.PanelHLightRect2.Width / 2);
			float num2 = (float)(this.PanelHLightRect.Width / 2 - 30);
			this.AxisisLineStartP = new PointF[this.m_scaleNum];
			this.AxisisLineStopP = new PointF[this.m_scaleNum];
			int num3 = 10;
			int num4 = 0;
			while ((long)num4 < (long)((ulong)this.m_scaleNum))
			{
				this.AxisisLineStartP[num4].X = (float)this.x0 + (float)Math.Cos((double)num4 * this.m_anglePace) * num;
				this.AxisisLineStopP[num4].X = (float)this.x0 + (float)Math.Cos((double)num4 * this.m_anglePace) * (num + (float)num3);
				this.AxisisLineStartP[num4].Y = (float)this.y0 - (float)Math.Sin((double)num4 * this.m_anglePace) * num;
				this.AxisisLineStopP[num4].Y = (float)this.y0 - (float)Math.Sin((double)num4 * this.m_anglePace) * (num + (float)num3);
				this.m_scalePoints[num4].X = (float)this.x0 + num2 * (float)Math.Cos(this.m_anglePace * (double)num4) - (float)(this.FingerPtRadius / 2);
				this.m_scalePoints[num4].Y = (float)this.y0 - num2 * (float)Math.Sin(this.m_anglePace * (double)num4) - (float)(this.FingerPtRadius / 2);
				num4++;
			}
			this.FingerPtRect = new Rectangle((int)this.m_scalePoints[0].X, (int)this.m_scalePoints[0].Y, this.FingerPtRadius, this.FingerPtRadius);
			this.FingerPtBrush = new LinearGradientBrush(this.FingerPtRect, Color.FromArgb(255, 120, 120, 120), Color.FromArgb(255, 240, 240, 240), LinearGradientMode.Vertical);
			this.PanelHlightLB = new LinearGradientBrush(this.PanelHLightRect, Color.FromArgb(255, 255, 255, 255), Color.FromArgb(255, 200, 200, 200), LinearGradientMode.Vertical);
			this.PanelHlightLB2 = new LinearGradientBrush(this.PanelHLightRect2, Color.FromArgb(255, 70, 70, 70), this.m_knobColor, LinearGradientMode.Vertical);
			this.PanelHlightLB3 = new LinearGradientBrush(this.PanelHLightRect3, Color.FromArgb(255, 255, 255, 255), Color.FromArgb(255, 200, 200, 200), LinearGradientMode.Vertical);
		}
	}
}
