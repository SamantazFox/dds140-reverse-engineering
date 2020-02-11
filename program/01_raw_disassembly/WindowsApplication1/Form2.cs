using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class Form2 : Form
	{
		private Form1 c;

		private IContainer components;

		private TrackBar trackBar1;

		private Label label1;

		private Label label2;

		private Label label3;

		private TrackBar trackBar2;

		private Label label4;

		public Form2(Control Mainform)
		{
			this.c = (Form1)Mainform;
			this.InitializeComponent();
		}

		private void Form2_Load(object sender, EventArgs e)
		{
			this.trackBar1.Minimum = 20;
			this.trackBar1.Maximum = 255;
			this.trackBar1.Value = this.c.m_ColorValue;
			this.trackBar2.Minimum = 10;
			this.trackBar2.Maximum = 255;
			this.trackBar2.Value = this.c.m_TrackBar2Value;
			this.label1.Text = DstingsRes.Stringlight;
			this.label2.Text = DstingsRes.StringHeavy;
			this.label4.Text = DstingsRes.StringWaveForm;
			this.label3.Text = DstingsRes.StringGrid1;
		}

		private void trackBar1_Scroll(object sender, EventArgs e)
		{
			this.c.m_ColorValue = this.trackBar1.Value;
			this.c.GraphView.m_GetChangeVal = this.c.m_ColorValue;
			this.c.GraphView.m_Changing = true;
			this.c.GraphView.Invalidate();
			this.c.LogicView.m_GetChangeVal = this.c.m_ColorValue;
			this.c.LogicView.m_Changing = true;
			this.c.LogicView.Invalidate();
		}

		private void trackBar2_Scroll(object sender, EventArgs e)
		{
			this.c.m_TrackBar2Value = this.trackBar2.Value;
			this.c.GraphView.m_Changingwave = true;
			if (this.trackBar2.Value < 128)
			{
				this.c.GraphView.m_R0 = this.c.m_TrackBar2Value * 6 / 128;
				this.c.GraphView.m_G0 = this.c.m_TrackBar2Value * 221 / 128;
				this.c.GraphView.m_B0 = this.c.m_TrackBar2Value * 238 / 128;
				this.c.GraphView.m_R1 = this.c.m_TrackBar2Value * 250 / 128;
				this.c.GraphView.m_G1 = this.c.m_TrackBar2Value * 250 / 128;
				this.c.GraphView.m_B1 = 0;
				this.c.GraphView.Invalidate();
				this.c.LogicView.m_R0 = this.c.m_TrackBar2Value * 6 / 128;
				this.c.LogicView.m_G0 = this.c.m_TrackBar2Value * 221 / 128;
				this.c.LogicView.m_B0 = this.c.m_TrackBar2Value * 238 / 128;
				this.c.LogicView.Invalidate();
				return;
			}
			this.c.GraphView.m_R0 = (this.c.m_TrackBar2Value - 128) * 249 / 128 + 6;
			this.c.GraphView.m_G0 = (this.c.m_TrackBar2Value - 128) * 34 / 128 + 221;
			this.c.GraphView.m_B0 = (this.c.m_TrackBar2Value - 128) * 17 / 128 + 238;
			this.c.GraphView.m_R1 = (this.c.m_TrackBar2Value - 128) * 5 / 128 + 250;
			this.c.GraphView.m_G1 = (this.c.m_TrackBar2Value - 128) * 5 / 128 + 250;
			this.c.GraphView.m_B1 = (this.c.m_TrackBar2Value - 128) * 255 / 128;
			this.c.GraphView.Invalidate();
			this.c.LogicView.m_R0 = (this.c.m_TrackBar2Value - 128) * 249 / 128 + 6;
			this.c.LogicView.m_G0 = (this.c.m_TrackBar2Value - 128) * 34 / 128 + 221;
			this.c.LogicView.m_B0 = (this.c.m_TrackBar2Value - 128) * 17 / 128 + 238;
			this.c.LogicView.Invalidate();
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
			this.trackBar1 = new TrackBar();
			this.label1 = new Label();
			this.label2 = new Label();
			this.label3 = new Label();
			this.trackBar2 = new TrackBar();
			this.label4 = new Label();
			((ISupportInitialize)this.trackBar1).BeginInit();
			((ISupportInitialize)this.trackBar2).BeginInit();
			base.SuspendLayout();
			this.trackBar1.AutoSize = false;
			this.trackBar1.BackColor = SystemColors.ButtonHighlight;
			this.trackBar1.Location = new Point(71, 115);
			this.trackBar1.Name = "trackBar1";
			this.trackBar1.Size = new Size(212, 52);
			this.trackBar1.TabIndex = 0;
			this.trackBar1.TickStyle = TickStyle.TopLeft;
			this.trackBar1.Scroll += new EventHandler(this.trackBar1_Scroll);
			this.label1.AutoSize = true;
			this.label1.BackColor = SystemColors.Control;
			this.label1.Location = new Point(12, 10);
			this.label1.Name = "label1";
			this.label1.Size = new Size(32, 14);
			this.label1.TabIndex = 1;
			this.label1.Text = "light";
			this.label2.AutoSize = true;
			this.label2.BackColor = SystemColors.Control;
			this.label2.Location = new Point(296, 10);
			this.label2.Name = "label2";
			this.label2.Size = new Size(39, 14);
			this.label2.TabIndex = 2;
			this.label2.Text = "Heavy";
			this.label3.AutoSize = true;
			this.label3.Location = new Point(12, 133);
			this.label3.Name = "label3";
			this.label3.Size = new Size(33, 14);
			this.label3.TabIndex = 3;
			this.label3.Text = "Grid:";
			this.trackBar2.AutoSize = false;
			this.trackBar2.BackColor = SystemColors.ButtonHighlight;
			this.trackBar2.Location = new Point(71, 44);
			this.trackBar2.Name = "trackBar2";
			this.trackBar2.Size = new Size(212, 52);
			this.trackBar2.TabIndex = 4;
			this.trackBar2.TickStyle = TickStyle.TopLeft;
			this.trackBar2.Scroll += new EventHandler(this.trackBar2_Scroll);
			this.label4.AutoSize = true;
			this.label4.Location = new Point(4, 58);
			this.label4.Name = "label4";
			this.label4.Size = new Size(64, 14);
			this.label4.TabIndex = 5;
			this.label4.Text = "WaveForm";
			base.AutoScaleDimensions = new SizeF(6f, 14f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(345, 182);
			base.Controls.Add(this.label4);
			base.Controls.Add(this.trackBar2);
			base.Controls.Add(this.label3);
			base.Controls.Add(this.label2);
			base.Controls.Add(this.label1);
			base.Controls.Add(this.trackBar1);
			this.Font = new Font("Calibri", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			base.FormBorderStyle = FormBorderStyle.Fixed3D;
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "Form2";
			this.Text = "Intensity";
			base.Load += new EventHandler(this.Form2_Load);
			((ISupportInitialize)this.trackBar1).EndInit();
			((ISupportInitialize)this.trackBar2).EndInit();
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
