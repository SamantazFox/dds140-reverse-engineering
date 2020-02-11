using LogicGh.Properties;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.CompilerServices;
using System.Timers;
using System.Windows.Forms;

namespace LogicGh
{
	public class UserControl1 : UserControl
	{
		public struct chLOGICinfoStruct
		{
			public int ch;

			public int yHighLevel;

			public int yLowLEVEL;

			public int CurrentLevel;

			public int PreviousLevel;

			public byte MASK;

			public Color logicColor;
		}

		public struct structZOOMINFO
		{
			public uint rawdata_ZoomedStart;

			public uint rawdata_ZoomedCnt;

			public uint originData_ZoomedStart;

			public uint originData_ZoomedCnt;

			public float dataNumInGraScreenLast;

			public float dataNumInGraScreenNow;

			public RectangleF ZoomSelectedInAllOriginRect;

			public Rectangle ZoomSelectedInZoomRect;

			public float ZommedZeroLevelPosY4Gra0;

			public float ZommedZeroLevelPosY4Gra1;

			public float ZoomedScale_Y;

			public float ZoomedScale_X;

			public float m_XaxisStart;

			public float m_XaxisStep;

			public float m_Y0axisStart;

			public float m_Y0axisStep;

			public uint Origin_Trigindex;
		}

		private IContainer components;

		private MenuStrip menuStrip1;

		private ToolStripMenuItem uuuToolStripMenuItem;

		private ToolStripMenuItem MenuItemNormWnd;

		private ToolStripMenuItem zomoutToolStripMenuItem;

		private ToolStripMenuItem LeftMoveMenuItem;

		private ToolStripMenuItem ttttyToolStripMenuItem;

		private ToolStripMenuItem rightMoveMenuItem;

		private ToolStripMenuItem XzoomMenuItem2;

		private ToolStripMenuItem ColorMenuItem1;

		private UserControl1.chLOGICinfoStruct[] LogicChans = new UserControl1.chLOGICinfoStruct[8];

		private Color[] ColorArray = new Color[8];

		private IntPtr m_pBuffer = (IntPtr)0;

		private SolidBrush drawBrush = new SolidBrush(Color.FromArgb(255, Color.White));

		private SolidBrush brBKcolorGraph = new SolidBrush(Color.FromArgb(255, 13, 33, 51));

		private SolidBrush InfoSb = new SolidBrush(Color.FromArgb(190, 140, 70, 91));

		private SolidBrush lg4ZoomScreenRect = new SolidBrush(Color.Black);

		private SolidBrush m_Sbrush_Zero0 = new SolidBrush(Color.Blue);

		private SolidBrush m_Sbrush_Zero1 = new SolidBrush(Color.Orange);

		private SolidBrush m_Sbrush_Zero2 = new SolidBrush(Color.White);

		private SolidBrush m_Sbrush_Zero3 = new SolidBrush(Color.Yellow);

		private SolidBrush m_Sbrush_Axis = new SolidBrush(Color.DarkCyan);

		private SolidBrush m_Sbrush_Axis2 = new SolidBrush(Color.FromArgb(255, 90, 90, 90));

		private Font drawFont = new Font("Arial", 3f, FontStyle.Regular, GraphicsUnit.Millimeter);

		private RectangleF GraphRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF TitleRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF ZoomScreenRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF InfoRect = new RectangleF(0f, 0f, 40f, 20f);

		private int m_AntiAlias;

		private int m_DisplayDataNum;

		private double m_RangeY0 = 1.0;

		private double m_RangeY1 = 1.0;

		private int m_VbiasZero0 = 128;

		private int m_VbiasZero1 = 128;

		private float m_X_pixarLenth = 500f;

		private float m_Y_pixarLenth = 350f;

		private int m_X_AxisLargePointNum = 10;

		private int m_Y_AxisLargePointNum = 10;

		private float m_yLargeUnitInterval = 50f;

		private float m_xLargeUnitInterval = 50f;

		public int m_GetChangeVal = 185;

		private bool winStateMaxed;

		private bool m_bShowInfoOrNot;

		private string m_sampleRate = "";

		private string m_CurrentState = "";

		private string m_DeviceName = "";

		private string m_PlayType = "";

		private float m_xPanIndex;

		private float m_howmuchGrid = 0.02f;

		private int m_dataOffset;

		private bool m_LR;

		private bool m_Allowed;

		private bool m_MouseDownUpAr;

		public bool m_VectorDot = true;

		public bool m_Grid = true;

		public bool m_Changing;

		public bool m_Changingwave = true;

		private System.Timers.Timer aTimer = new System.Timers.Timer();

		private RectangleF epitomeRect = new Rectangle(0, 0, 40, 20);

		private RectangleF epitomeHighLightRect = new Rectangle(0, 0, 40, 20);

		private RectangleF AxisXRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF AxisYRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF TriIndiRect = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect2 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF CurrentMouseRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF MouseRect = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF rectTrig = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF rectTrig2 = new RectangleF(0f, 0f, 40f, 20f);

		private PointF TriIndicatorPos = new PointF(0f, 0f);

		private PointF TriIndicatorPos2 = new PointF(0f, 0f);

		private PointF LevelIndicatorPos = new PointF(0f, 0f);

		private PointF LevelIndicatorPos2 = new PointF(0f, 0f);

		private PointF CurrentMousePt = new PointF(0f, 0f);

		private int m_Margin = 2;

		private int m_MoveDownPointNum;

		private int m_MoveUpPointNum;

		private float m_XmouseBegin;

		private int poneMoveDistence;

		public int m_R0 = 6;

		public int m_G0 = 221;

		public int m_B0 = 238;

		private int m_ColorModeIndex;

		private double m_SelectMeasureX = 1.0;

		private double m_SelectMeasureY = 1.0;

		private double m_SelectMeasureY2 = 1.0;

		private float[] xLargeUnitPos;

		private float[] yLargeUnitPos;

		private bool m_bDrawMouseState;

		private bool m_bRulerUseEnabled;

		private bool m_bZoomUseEnabled;

		private bool m_bZoomUseDoneOnce;

		private bool m_bLOCKMouse;

		private bool m_enableAll;

		private int m_Width_Axisis = 35;

		private int m_Height_Axisis = 30;

		private float m_XaxisStart;

		private float m_Y0axisStart = 10f;

		private float m_XaxisStep = 1f;

		private float m_Y0axisStep = 2f;

		private string m_StrXaxis = "us";

		private string m_StrY0axis = "CH";

		private Pen m_pen_Zero0 = new Pen(Color.Blue);

		private Pen m_pen_Zero1 = new Pen(Color.Orange);

		private Pen m_pen_Select = new Pen(Color.Red);

		private Pen PanelPen = new Pen(Color.FromArgb(100, 100, 100), 3f);

		private Pen AxisPen = new Pen(Color.FromArgb(200, 167, 167, 167), 1f);

		private Pen AxisDotPen = new Pen(Color.FromArgb(255, 185, 185, 185), 1f);

		private Pen AxisDotPen1 = new Pen(Color.FromArgb(255, 6, 221, 238), 1f);

		private Pen GraphPen = new Pen(Color.White, 1f);

		private Pen GraphPenNew = new Pen(Color.FromArgb(6, 221, 238), 1f);

		private Pen MathPen = new Pen(Color.FromArgb(255, 255, 0, 255), 1f);

		private Pen MathPen2 = new Pen(Color.FromArgb(255, 128, 255, 0), 1f);

		private Pen MousePosPen = new Pen(Color.FromArgb(255, 255, 0), 1f);

		private Pen MousePosPen2 = new Pen(Color.FromArgb(255, 142, 30), 1f);

		private UserControl1.structZOOMINFO m_ZoomedInfoStruct;

		private int[] GraphScreenState = new int[2];

		private float yPixarPer = 1f;

		private uint m_OriginTrigIndex;

		private byte m_MathFlag;

		private int m_DisplayCnt;

		private int IndicatorWidth = 26;

		private int m_zeroint;

		private float m_fMaxData;

		private float m_fMinData;

		private volatile float m_fFreq;

		private double m_DataNumPerPixar = 1.0;

		private byte m_channelMask = 1;

		private GraphicsPath m_XIndicator_TriPath;

		private Point MousePos = new Point(0, 0);

		private float[] m_Zoom_BiasArray0 = new float[256];

		private float[] m_Zoom_BiasArray1 = new float[256];

		private Font smallFont = new Font("calibri", 9f, FontStyle.Regular);

		private Font AxislFont = new Font("calibri", 9f, FontStyle.Regular);

		private Font LargeFont = new Font("calibri", 9f, FontStyle.Regular);

		private Font InfoFont = new Font("calibri", 9f, FontStyle.Regular);

		private Font smallFLargeFont;

		public event EventHandler ValidMouseMoveEvt
		{
			[MethodImpl(MethodImplOptions.Synchronized)]
			add
			{
				this.ValidMouseMoveEvt = (EventHandler)Delegate.Combine(this.ValidMouseMoveEvt, value);
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			remove
			{
				this.ValidMouseMoveEvt = (EventHandler)Delegate.Remove(this.ValidMouseMoveEvt, value);
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(UserControl1));
			this.menuStrip1 = new MenuStrip();
			this.ttttyToolStripMenuItem = new ToolStripMenuItem();
			this.uuuToolStripMenuItem = new ToolStripMenuItem();
			this.MenuItemNormWnd = new ToolStripMenuItem();
			this.zomoutToolStripMenuItem = new ToolStripMenuItem();
			this.LeftMoveMenuItem = new ToolStripMenuItem();
			this.rightMoveMenuItem = new ToolStripMenuItem();
			this.XzoomMenuItem2 = new ToolStripMenuItem();
			this.ColorMenuItem1 = new ToolStripMenuItem();
			this.menuStrip1.SuspendLayout();
			base.SuspendLayout();
			this.menuStrip1.BackColor = Color.White;
			this.menuStrip1.Dock = DockStyle.None;
			this.menuStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.ttttyToolStripMenuItem,
				this.uuuToolStripMenuItem,
				this.MenuItemNormWnd,
				this.zomoutToolStripMenuItem,
				this.LeftMoveMenuItem,
				this.rightMoveMenuItem,
				this.XzoomMenuItem2,
				this.ColorMenuItem1
			});
			this.menuStrip1.LayoutStyle = ToolStripLayoutStyle.VerticalStackWithOverflow;
			this.menuStrip1.Location = new Point(421, 22);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Padding = new Padding(1, 2, 0, 2);
			this.menuStrip1.RightToLeft = RightToLeft.Yes;
			this.menuStrip1.ShowItemToolTips = true;
			this.menuStrip1.Size = new Size(93, 345);
			this.menuStrip1.TabIndex = 2;
			this.menuStrip1.Text = "menuStrip1";
			this.menuStrip1.ItemClicked += new ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
			this.menuStrip1.MouseMove += new MouseEventHandler(this.menuStrip1_MouseMove);
			this.menuStrip1.MouseHover += new EventHandler(this.menuStrip1_MouseHover);
			this.ttttyToolStripMenuItem.AutoSize = false;
			this.ttttyToolStripMenuItem.AutoToolTip = true;
			this.ttttyToolStripMenuItem.BackgroundImage = (Image)componentResourceManager.GetObject("ttttyToolStripMenuItem.BackgroundImage");
			this.ttttyToolStripMenuItem.BackgroundImageLayout = ImageLayout.Stretch;
			this.ttttyToolStripMenuItem.CheckOnClick = true;
			this.ttttyToolStripMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.ttttyToolStripMenuItem.Font = new Font("SimSun", 18f, FontStyle.Regular, GraphicsUnit.Point, 134);
			this.ttttyToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.ttttyToolStripMenuItem.Name = "ttttyToolStripMenuItem";
			this.ttttyToolStripMenuItem.Padding = new Padding(0);
			this.ttttyToolStripMenuItem.Size = new Size(40, 40);
			this.ttttyToolStripMenuItem.TextDirection = ToolStripTextDirection.Horizontal;
			this.ttttyToolStripMenuItem.Click += new EventHandler(this.ttttyToolStripMenuItem_Click);
			this.uuuToolStripMenuItem.AutoSize = false;
			this.uuuToolStripMenuItem.AutoToolTip = true;
			this.uuuToolStripMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.uuuToolStripMenuItem.Font = new Font("SimSun", 15.75f, FontStyle.Regular, GraphicsUnit.Point, 134);
			this.uuuToolStripMenuItem.Image = Resources.ruler;
			this.uuuToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.uuuToolStripMenuItem.Name = "uuuToolStripMenuItem";
			this.uuuToolStripMenuItem.Padding = new Padding(0, 0, 4, 0);
			this.uuuToolStripMenuItem.Size = new Size(40, 40);
			this.uuuToolStripMenuItem.Click += new EventHandler(this.uuuToolStripMenuItem_Click);
			this.MenuItemNormWnd.AutoSize = false;
			this.MenuItemNormWnd.Image = Resources.open_in_browser;
			this.MenuItemNormWnd.ImageScaling = ToolStripItemImageScaling.None;
			this.MenuItemNormWnd.Name = "MenuItemNormWnd";
			this.MenuItemNormWnd.Padding = new Padding(0, 0, 4, 0);
			this.MenuItemNormWnd.Size = new Size(40, 40);
			this.MenuItemNormWnd.TextImageRelation = TextImageRelation.ImageAboveText;
			this.MenuItemNormWnd.Click += new EventHandler(this.MenuItemNormWnd_Click);
			this.zomoutToolStripMenuItem.AutoSize = false;
			this.zomoutToolStripMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.zomoutToolStripMenuItem.Image = Resources.zoom_out32;
			this.zomoutToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.zomoutToolStripMenuItem.Name = "zomoutToolStripMenuItem";
			this.zomoutToolStripMenuItem.Size = new Size(40, 40);
			this.zomoutToolStripMenuItem.Text = "zomout";
			this.zomoutToolStripMenuItem.ToolTipText = "Zoom Out";
			this.zomoutToolStripMenuItem.Click += new EventHandler(this.zomoutToolStripMenuItem_Click);
			this.LeftMoveMenuItem.AutoSize = false;
			this.LeftMoveMenuItem.AutoToolTip = true;
			this.LeftMoveMenuItem.BackgroundImageLayout = ImageLayout.Stretch;
			this.LeftMoveMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.LeftMoveMenuItem.Image = Resources.leftMove3;
			this.LeftMoveMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.LeftMoveMenuItem.Name = "LeftMoveMenuItem";
			this.LeftMoveMenuItem.Size = new Size(40, 40);
			this.LeftMoveMenuItem.Text = "zoomoutX";
			this.LeftMoveMenuItem.MouseUp += new MouseEventHandler(this.LeftMoveMenuItem_MouseUp);
			this.LeftMoveMenuItem.MouseDown += new MouseEventHandler(this.leftMoveMenuItem_MouseDown);
			this.rightMoveMenuItem.AutoSize = false;
			this.rightMoveMenuItem.BackgroundImageLayout = ImageLayout.Center;
			this.rightMoveMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.rightMoveMenuItem.Image = Resources.rightMove;
			this.rightMoveMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.rightMoveMenuItem.Name = "rightMoveMenuItem";
			this.rightMoveMenuItem.Size = new Size(40, 40);
			this.rightMoveMenuItem.MouseUp += new MouseEventHandler(this.rightMoveMenuItem_MouseUp);
			this.rightMoveMenuItem.MouseDown += new MouseEventHandler(this.rightMoveMenuItem_MouseDown);
			this.XzoomMenuItem2.AutoSize = false;
			this.XzoomMenuItem2.Image = Resources.search;
			this.XzoomMenuItem2.ImageScaling = ToolStripItemImageScaling.None;
			this.XzoomMenuItem2.Name = "XzoomMenuItem2";
			this.XzoomMenuItem2.Size = new Size(40, 40);
			this.XzoomMenuItem2.Click += new EventHandler(this.XzoomMenuItem2_Click);
			this.ColorMenuItem1.AutoSize = false;
			this.ColorMenuItem1.BackgroundImage = Resources.blackWhite;
			this.ColorMenuItem1.BackgroundImageLayout = ImageLayout.Stretch;
			this.ColorMenuItem1.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.ColorMenuItem1.ImageScaling = ToolStripItemImageScaling.None;
			this.ColorMenuItem1.Name = "ColorMenuItem1";
			this.ColorMenuItem1.Size = new Size(40, 40);
			this.ColorMenuItem1.Text = " ";
			this.ColorMenuItem1.Click += new EventHandler(this.ColorMenuItem1_Click);
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.Transparent;
			base.Controls.Add(this.menuStrip1);
			this.DoubleBuffered = true;
			base.Name = "UserControl1";
			base.Size = new Size(559, 391);
			base.Load += new EventHandler(this.UserControl1_Load);
			base.MouseMove += new MouseEventHandler(this.UserControl1_MouseMove);
			base.MouseDown += new MouseEventHandler(this.UserControl1_MouseDown);
			base.Resize += new EventHandler(this.UserControl1_Resize);
			base.MouseUp += new MouseEventHandler(this.UserControl1_MouseUp);
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			base.ResumeLayout(false);
			base.PerformLayout();
		}

		public void SetAxisX(float start, float step, string str, int index)
		{
			if (index == 1)
			{
				this.m_XaxisStart = start;
				this.m_XaxisStep = step;
			}
			this.m_ZoomedInfoStruct.m_XaxisStart = start;
			this.m_ZoomedInfoStruct.m_XaxisStep = step;
			if (str != null)
			{
				this.m_StrXaxis = str;
			}
			base.Invalidate(new Region(this.AxisXRect));
		}

		public void SetInformationSampleRate(string sampleRate)
		{
			if (sampleRate != null)
			{
				this.m_sampleRate = sampleRate;
				base.Invalidate(new Region(this.InfoRect));
			}
		}

		public void SetInformationState(string CurrentState)
		{
			if (CurrentState != null)
			{
				this.m_CurrentState = CurrentState;
				base.Invalidate(new Region(this.InfoRect));
			}
		}

		public void SetInformationDevice(string DeviceName)
		{
			if (DeviceName != null)
			{
				this.m_DeviceName = DeviceName;
				base.Invalidate(new Region(this.InfoRect));
			}
		}

		public void SetInformationType(string PlayType)
		{
			if (PlayType != null)
			{
				this.m_PlayType = PlayType;
				base.Invalidate(new Region(this.InfoRect));
			}
		}

		public void SetAxisY0(float start, float step, string str, int index)
		{
			if (index == 1)
			{
				this.m_Y0axisStart = start;
				this.m_Y0axisStep = step;
			}
			this.m_ZoomedInfoStruct.m_Y0axisStart = start;
			this.m_ZoomedInfoStruct.m_Y0axisStep = step;
			if (str != null)
			{
				this.m_StrY0axis = str;
			}
			base.Invalidate(new Region(this.AxisYRect));
		}

		public void setBlackGround(int index)
		{
			switch (index)
			{
			case 0:
				this.m_pen_Zero0 = new Pen(Color.Black);
				this.m_pen_Zero1 = new Pen(Color.Black);
				this.GraphPen = new Pen(Color.Black, 1f);
				this.AxisPen = new Pen(Color.Black, 1f);
				this.AxisDotPen = new Pen(Color.Black, 1f);
				this.AxisDotPen.DashStyle = DashStyle.Dot;
				this.AxisDotPen.DashPattern = new float[]
				{
					1f,
					5f
				};
				this.setBkGraphColor(Color.White);
				return;
			case 1:
				this.m_pen_Zero1 = new Pen(Color.Orange);
				this.GraphPen = new Pen(Color.White, 1f);
				this.setBkGraphColor(Color.FromArgb(255, 13, 33, 51));
				this.AxisPen = new Pen(Color.FromArgb(200, 167, 167, 167), 1f);
				this.AxisDotPen = new Pen(Color.FromArgb(255, 185, 185, 185), 1f);
				this.AxisDotPen.DashStyle = DashStyle.Dot;
				this.AxisDotPen.DashPattern = new float[]
				{
					1f,
					5f
				};
				return;
			default:
				return;
			}
		}

		public void setAntiAlias(int flg)
		{
			this.m_AntiAlias = flg;
		}

		public UserControl1()
		{
			this.m_ZoomedInfoStruct.originData_ZoomedStart = 0u;
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = 0u;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect = new RectangleF(0f, 0f, 0f, 0f);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect = new Rectangle(0, 0, 0, 0);
			this.m_ZoomedInfoStruct.Origin_Trigindex = 0u;
			this.m_ZoomedInfoStruct.m_XaxisStart = 0f;
			this.m_ZoomedInfoStruct.m_XaxisStep = 1f;
			this.m_ZoomedInfoStruct.m_Y0axisStart = 10f;
			this.m_ZoomedInfoStruct.m_Y0axisStep = 2f;
			this.xLargeUnitPos = new float[this.m_X_AxisLargePointNum + 1];
			this.yLargeUnitPos = new float[this.m_Y_AxisLargePointNum + 1];
			this.AxisDotPen.DashStyle = DashStyle.Dot;
			this.AxisDotPen.DashPattern = new float[]
			{
				1f,
				5f
			};
			this.AxisDotPen1.DashStyle = DashStyle.Dot;
			this.AxisDotPen1.DashPattern = new float[]
			{
				10f,
				10f
			};
			base.SetStyle(ControlStyles.AllPaintingInWmPaint, true);
			base.SetStyle(ControlStyles.DoubleBuffer, true);
			base.SetStyle(ControlStyles.ResizeRedraw, true);
			base.SetStyle(ControlStyles.Selectable, true);
			base.SetStyle(ControlStyles.SupportsTransparentBackColor, true);
			base.SetStyle(ControlStyles.UserPaint, true);
			this.BackColor = Color.Transparent;
			base.UpdateStyles();
			this.smallFLargeFont = this.smallFont;
			this.m_RangeY0 = 1.0;
			this.m_RangeY1 = 1.0;
			this.GraphScreenState[0] = 0;
			this.GraphScreenState[1] = 0;
			this.ColorArray[0] = Color.Red;
			this.ColorArray[1] = Color.Orange;
			this.ColorArray[2] = Color.Yellow;
			this.ColorArray[3] = Color.Cyan;
			this.ColorArray[4] = Color.Blue;
			this.ColorArray[5] = Color.BlueViolet;
			this.ColorArray[6] = Color.DarkGray;
			this.ColorArray[7] = Color.Black;
			this.InitializeComponent();
		}

		public void SetMath(byte flag)
		{
			this.m_MathFlag = flag;
			base.Invalidate(new Region(this.GraphRect));
		}

		public char GetStrings(string s)
		{
			if (s == null)
			{
				return 'c';
			}
			if (s == "lvjiangtao19810212")
			{
				this.m_enableAll = true;
			}
			else
			{
				this.m_enableAll = false;
			}
			return 'c';
		}

		public void setBkGraphColor(Color c)
		{
			this.brBKcolorGraph = new SolidBrush(c);
			base.Invalidate(new Region(this.GraphRect));
		}

		public void SetZoomDisabled()
		{
			this.ttttyToolStripMenuItem_Click(this, null);
		}

		public void SetZero(byte VbiasZero0, byte VbiasZero1)
		{
			this.m_VbiasZero0 = (int)VbiasZero0;
			this.m_VbiasZero1 = (int)VbiasZero1;
		}

		public void setMaxmize()
		{
			this.winStateMaxed = true;
		}

		private void UserControl1_Resize(object sender, EventArgs e)
		{
			this.layoutCaculationInit();
			if (this.m_Allowed)
			{
				this.UpdateEpitome(0.0);
				this.UpdateEpitome((double)(this.m_dataOffset / 2));
			}
		}

		public void layoutCaculationInit()
		{
			this.MouseRect.Width = 0f;
			this.MouseRect.Height = 0f;
			this.smallFLargeFont = this.smallFont;
			int num = base.Bounds.Height - this.m_Margin;
			int num2 = base.Bounds.Width - this.m_Margin - 50;
			this.m_X_pixarLenth = (float)(num2 - this.m_Width_Axisis);
			this.m_Y_pixarLenth = (float)(num - this.m_Height_Axisis);
			this.m_yLargeUnitInterval = this.m_Y_pixarLenth / (float)this.m_Y_AxisLargePointNum;
			this.m_xLargeUnitInterval = this.m_X_pixarLenth / (float)this.m_X_AxisLargePointNum;
			for (int i = 0; i < this.m_X_AxisLargePointNum + 1; i++)
			{
				this.xLargeUnitPos[i] = (float)(this.m_Margin + this.m_Width_Axisis) + (float)i * this.m_xLargeUnitInterval;
				this.yLargeUnitPos[i] = (float)this.m_Margin + (float)i * this.m_yLargeUnitInterval;
			}
			for (int j = 0; j < 8; j++)
			{
				this.LogicChans[j].ch = j + 1;
				this.LogicChans[j].yHighLevel = (int)(this.yLargeUnitPos[j + 1] + this.m_yLargeUnitInterval / 8f);
				this.LogicChans[j].yLowLEVEL = (int)(this.yLargeUnitPos[j + 2] - this.m_yLargeUnitInterval / 8f);
				this.LogicChans[j].MASK = (byte)(1 << j);
				this.LogicChans[j].logicColor = this.ColorArray[j];
			}
			if (!this.winStateMaxed)
			{
				this.TriIndicatorPos.X = this.xLargeUnitPos[5];
				this.TriIndicatorPos.Y = this.yLargeUnitPos[0];
				this.TriIndicatorPos2.X = this.xLargeUnitPos[1];
				this.TriIndicatorPos2.Y = this.TriIndicatorPos.Y;
			}
			this.menuStrip1.Left = (int)this.xLargeUnitPos[10];
			this.menuStrip1.Top = (int)this.yLargeUnitPos[0];
			this.TriIndiRect.X = this.xLargeUnitPos[5] - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect2.X = this.xLargeUnitPos[5] - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect.Y = this.TriIndicatorPos.Y;
			this.TriIndiRect2.Y = this.TriIndicatorPos2.Y;
			this.TriIndiRect.Width = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect.Height = (float)(this.IndicatorWidth / 2) + this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
			this.TriIndiRect2.Width = this.TriIndiRect.Width;
			this.TriIndiRect2.Height = this.TriIndiRect.Height;
			this.GraphRect.X = this.xLargeUnitPos[0];
			this.GraphRect.Y = this.yLargeUnitPos[0];
			this.GraphRect.Width = this.m_X_pixarLenth;
			this.GraphRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
			this.TitleRect.X = this.GraphRect.X;
			this.TitleRect.Y = this.yLargeUnitPos[0];
			this.TitleRect.Width = this.GraphRect.Width;
			this.TitleRect.Height = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			this.InfoRect.X = this.xLargeUnitPos[8];
			this.InfoRect.Y = this.yLargeUnitPos[1];
			this.InfoRect.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[8];
			this.InfoRect.Height = this.yLargeUnitPos[9] - this.yLargeUnitPos[1];
			this.AxisXRect.X = (float)this.m_Margin;
			this.AxisXRect.Y = this.yLargeUnitPos[10];
			this.AxisXRect.Width = this.xLargeUnitPos[10];
			this.AxisXRect.Height = (float)this.m_Height_Axisis;
			this.AxisYRect.X = (float)(this.m_Margin - 2);
			this.AxisYRect.Y = 0f;
			this.AxisYRect.Width = (float)(this.m_Width_Axisis + 2);
			this.AxisYRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
			this.ZoomScreenRect.X = this.xLargeUnitPos[6];
			this.ZoomScreenRect.Y = this.yLargeUnitPos[7];
			this.ZoomScreenRect.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[6] - (float)(this.IndicatorWidth / 2);
			this.ZoomScreenRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[7] - (float)(this.IndicatorWidth / 2);
			this.yPixarPer = (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]) / 255f;
			float num3 = this.ZoomScreenRect.Height / this.GraphRect.Height;
			float arg_556_0 = this.ZoomScreenRect.Bottom;
			float arg_562_0 = this.GraphRect.Bottom;
			float arg_56E_0 = this.TriIndicatorPos.Y;
			float arg_57A_0 = this.ZoomScreenRect.Bottom;
			float arg_586_0 = this.GraphRect.Bottom;
			float arg_592_0 = this.TriIndicatorPos2.Y;
			this.CurrentMouseRect.Width = (float)(this.m_Margin * 2) - this.xLargeUnitPos[5] + this.xLargeUnitPos[7];
			this.CurrentMouseRect.Height = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			this.m_ZoomedInfoStruct.ZoomedScale_X = 1f;
			this.m_ZoomedInfoStruct.ZoomedScale_Y = 1f;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 = this.TriIndicatorPos.Y;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 = this.TriIndicatorPos2.Y;
			this.epitomeRect.X = this.xLargeUnitPos[7] + (float)this.m_Margin;
			this.epitomeRect.Y = (float)(2 * this.m_Margin);
			this.epitomeRect.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[7] - (float)(2 * this.m_Margin);
			this.epitomeRect.Height = this.yLargeUnitPos[0] + (this.yLargeUnitPos[1] - this.yLargeUnitPos[0]) * 1f / 4f - (float)(3 * this.m_Margin);
			this.epitomeHighLightRect.Y = (float)(2 * this.m_Margin);
			this.epitomeHighLightRect.Height = this.yLargeUnitPos[0] + (this.yLargeUnitPos[1] - this.yLargeUnitPos[0]) * 1f / 4f - (float)(3 * this.m_Margin);
		}

		public void GetleftProMem()
		{
			this.leftMoveMenuItem_MouseDown(null, null);
		}

		public void GetleftrightUpProMem()
		{
			this.aTimer.Enabled = false;
		}

		public void GetrightProMem()
		{
			this.rightMoveMenuItem_MouseDown(null, null);
		}

		protected override void OnPaint(PaintEventArgs pe)
		{
			this.DrawPanel(pe.Graphics);
			pe.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
			this.DrawAxisis(pe.Graphics);
			if (this.m_AntiAlias == 0)
			{
				pe.Graphics.SmoothingMode = SmoothingMode.HighSpeed;
			}
			bool arg_3E_0 = this.m_enableAll;
			this.DrawZeroIndicator(pe.Graphics);
			if (this.m_Allowed)
			{
				try
				{
					this.DrawZoomedGraph(pe.Graphics);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "error!");
				}
			}
			this.DrawInfo(pe.Graphics);
			this.DrawMousePos(pe.Graphics);
			this.Drawepitome(pe.Graphics);
			ControlPaint.DrawBorder3D(pe.Graphics, new Rectangle((int)this.GraphRect.X, (int)this.GraphRect.Y, (int)this.GraphRect.Width, (int)this.GraphRect.Height), Border3DStyle.Sunken);
		}

		private void Drawepitome(Graphics g)
		{
			g.FillRectangle(new SolidBrush(Color.DarkGray), this.epitomeRect);
			g.FillRectangle(new SolidBrush(Color.White), this.epitomeHighLightRect);
		}

		private void rightMoveMenuItem_MouseDown(object sender, MouseEventArgs e)
		{
			this.m_LR = true;
			if (this.m_bZoomUseEnabled)
			{
				float num = 0.8f;
				this.m_bRulerUseEnabled = false;
				this.m_bDrawMouseState = true;
				this.m_bLOCKMouse = true;
				float num2 = (float)((double)this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * (1.0 / (double)num - 1.0));
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X + num2;
				if (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X > this.GraphRect.Right - this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width)
				{
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.GraphRect.Right - this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width;
				}
				float num3 = (float)(500.0 / (double)this.m_X_pixarLenth);
				int num4 = (int)((double)(num3 * this.m_xPanIndex * this.m_howmuchGrid * this.m_xLargeUnitInterval) * this.m_DataNumPerPixar);
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (uint)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar + (double)num4);
				base.Invalidate(new Region(this.GraphRect));
				float num5 = this.m_XaxisStep * this.m_howmuchGrid;
				this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + num5 * this.m_xPanIndex + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
				this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
				return;
			}
			this.LeftRightMove(1);
			this.aTimer.Enabled = true;
		}

		private void leftMoveMenuItem_MouseDown(object sender, MouseEventArgs e)
		{
			this.m_LR = false;
			if (this.m_bZoomUseEnabled)
			{
				float num = 0.8f;
				this.m_bRulerUseEnabled = false;
				this.m_bDrawMouseState = true;
				this.m_bLOCKMouse = true;
				float num2 = (float)((double)this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * (1.0 / (double)num - 1.0));
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X - num2;
				if (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X < this.GraphRect.Left)
				{
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.GraphRect.Left;
				}
				float num3 = (float)(500.0 / (double)this.m_X_pixarLenth);
				int num4 = (int)((double)(num3 * this.m_xPanIndex * this.m_howmuchGrid * this.m_xLargeUnitInterval) * this.m_DataNumPerPixar);
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (uint)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar + (double)num4);
				base.Invalidate(new Region(this.GraphRect));
				float num5 = this.m_XaxisStep * this.m_howmuchGrid;
				this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + num5 * this.m_xPanIndex + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
				this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
				return;
			}
			this.LeftRightMove(-1);
			this.aTimer.Enabled = true;
		}

		private int LeftRightMove(int index)
		{
			if (!this.m_Allowed)
			{
				return -1;
			}
			if (index == 1)
			{
				this.m_xPanIndex -= 1f;
			}
			else if (index == -1)
			{
				this.m_xPanIndex += 1f;
			}
			else
			{
				this.m_xPanIndex += (float)index;
			}
			float num = this.m_XaxisStep * this.m_howmuchGrid;
			float num2 = 50f;
			this.m_dataOffset = (int)((double)(num2 * this.m_xPanIndex * this.m_howmuchGrid) * this.m_DataNumPerPixar) * 2;
			int num3 = 1;
			long num4 = (long)((ulong)MyDLLimport.GetHWbufferSize());
			long num5 = (long)(512.0 * this.m_DataNumPerPixar);
			if (num5 % 2L != 0L)
			{
				num5 += 1L;
			}
			if (num4 / 2L < num5 - (long)this.m_dataOffset)
			{
				num3 = 0;
			}
			else if ((long)this.m_dataOffset + num5 > num4 / 2L)
			{
				num3 = 0;
			}
			if (num3 == 0)
			{
				if (index == 1)
				{
					this.m_xPanIndex += 1f;
				}
				else if (index == -1)
				{
					this.m_xPanIndex -= 1f;
				}
				else
				{
					this.m_xPanIndex -= (float)index;
				}
				this.m_dataOffset = (int)((double)(num2 * this.m_xPanIndex * this.m_howmuchGrid) * this.m_DataNumPerPixar) * 2;
				return 0;
			}
			this.SetAxisX(this.m_XaxisStart + num * this.m_xPanIndex, this.m_XaxisStep, this.m_StrXaxis, 0);
			MyDLLimport.SetReadEnableOrNot(1u);
			base.Invalidate(new Region(this.GraphRect));
			this.UpdateEpitome((double)(this.m_dataOffset / 2));
			return 0;
		}

		public void UpdateEpitome(double offset)
		{
			this.m_DataNumPerPixar = MyDLLimport.GetInfodouble(0);
			double num = 500.0 * this.m_DataNumPerPixar;
			double num2 = MyDLLimport.GetHWbufferSize() / 2u;
			double num3 = 0.5 * num2 - 0.5 * num + offset;
			if (num2 == 0.0)
			{
				return;
			}
			if (num3 < 0.0)
			{
				num3 = 0.0;
			}
			if (offset == 0.0)
			{
				this.epitomeHighLightRect.Width = (float)(num * (double)this.epitomeRect.Width / num2);
			}
			this.epitomeHighLightRect.X = this.epitomeRect.X + (float)(num3 * (double)this.epitomeRect.Width / num2);
			base.Invalidate(new Region(this.epitomeRect));
		}

		public void MainFrameLoaded()
		{
			this.m_Allowed = true;
		}

		public void TimerMoveLRhandler(object source, ElapsedEventArgs e)
		{
			if (this.m_LR)
			{
				this.LeftRightMove(-5);
				return;
			}
			this.LeftRightMove(5);
		}

		public int setDisplayCnt(int i)
		{
			this.m_DisplayCnt = i;
			return this.m_DisplayCnt;
		}

		public void ChartY(byte single)
		{
			this.m_DataNumPerPixar = MyDLLimport.GetInfodouble(0);
			base.Invalidate(new Region(this.GraphRect));
		}

		private void DrawAxisis(Graphics g)
		{
			if (this.m_Changing)
			{
				Color color = Color.FromArgb(255, this.m_GetChangeVal, this.m_GetChangeVal, this.m_GetChangeVal);
				this.AxisDotPen = new Pen(color, 1f);
				this.AxisDotPen.DashStyle = DashStyle.Dot;
				this.AxisDotPen.DashPattern = new float[]
				{
					1f,
					5f
				};
			}
			float num = 0f;
			for (int i = 1; i < 11; i++)
			{
				if (this.m_Grid)
				{
					g.DrawLine(this.AxisDotPen, this.xLargeUnitPos[0], this.yLargeUnitPos[i], this.xLargeUnitPos[10], this.yLargeUnitPos[i]);
					g.DrawLine(this.AxisDotPen, this.xLargeUnitPos[i], this.yLargeUnitPos[0], this.xLargeUnitPos[i], this.yLargeUnitPos[10]);
				}
				string text = (this.m_ZoomedInfoStruct.m_XaxisStart + (float)(i - 1) * this.m_ZoomedInfoStruct.m_XaxisStep).ToString(" 0.000");
				g.DrawString(text, this.AxislFont, this.m_Sbrush_Axis2, new PointF(this.xLargeUnitPos[i - 1] - num / 2f, this.yLargeUnitPos[10] + (float)(this.AxislFont.Height / 2)));
				num = g.MeasureString(text, this.AxislFont).Width;
			}
			for (int j = 0; j < 8; j++)
			{
				string text = this.LogicChans[j].ch.ToString();
				num = g.MeasureString(text, this.AxislFont).Width;
				g.DrawString(text, this.AxislFont, new SolidBrush(Color.White), new PointF(this.xLargeUnitPos[0] - num * 2f, this.yLargeUnitPos[j + 1] + (this.yLargeUnitPos[10] - this.yLargeUnitPos[9]) / 2f - (float)(this.AxislFont.Height / 2)));
			}
			g.DrawString(this.m_StrXaxis, this.AxislFont, this.m_Sbrush_Axis, new PointF(this.xLargeUnitPos[10] - 30f, this.yLargeUnitPos[10] + (float)(this.AxislFont.Height / 2)));
			g.DrawString(this.m_StrY0axis, this.AxislFont, this.m_Sbrush_Axis, new PointF(this.xLargeUnitPos[0] - 30f, this.yLargeUnitPos[0] + 5f));
		}

		public void SetFreq(float Fre)
		{
			this.m_fFreq = Fre;
		}

		public float GetFreq()
		{
			return this.m_fFreq;
		}

		public void SetSelectMeasureX(double x)
		{
			this.m_SelectMeasureX = x;
			base.Invalidate(new Region(this.GraphRect));
		}

		public void SetSelectMeasureY(double y)
		{
			this.m_SelectMeasureY = y;
			base.Invalidate(new Region(this.GraphRect));
		}

		public void SetSelectMeasureY2(double y)
		{
			this.m_SelectMeasureY2 = y;
			base.Invalidate(new Region(this.GraphRect));
		}

		public void SetMaxMinData(float Max, float Min)
		{
			this.m_fMaxData = Max;
			this.m_fMinData = Min;
		}

		private void DrawInfo(Graphics g)
		{
			float arg_0B_0 = this.GraphRect.Top;
			int arg_19_0 = this.AxislFont.Height / 2;
			float arg_25_0 = this.GraphRect.Top;
			int arg_35_0 = this.AxislFont.Height * 3 / 4;
			float arg_4F_0 = g.MeasureString("ch1", this.AxislFont).Width;
			if (!this.m_bShowInfoOrNot)
			{
				return;
			}
			g.DrawString(string.Format("Device: " + this.m_DeviceName, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height / 2)));
			g.DrawString(string.Format("State: " + this.m_CurrentState, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 3 / 2)));
			g.DrawString(string.Format("Type: " + this.m_PlayType, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 5 / 2)));
			g.DrawString(string.Format("Sample Rate: ", new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 7 / 2)));
			g.DrawString(string.Format("       " + this.m_sampleRate + " SPS", new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 9 / 2)));
		}

		private void DrawMousePos(Graphics g)
		{
			if (!this.m_bRulerUseEnabled && !this.m_bZoomUseEnabled)
			{
				return;
			}
			if (this.m_bZoomUseDoneOnce && !this.m_bRulerUseEnabled)
			{
				return;
			}
			if (!this.m_bDrawMouseState)
			{
				return;
			}
			if (this.MouseRect.Width < 3f || this.MouseRect.Height < 3f)
			{
				return;
			}
			ControlPaint.DrawBorder3D(g, new Rectangle((int)this.MouseRect.Left, (int)this.MouseRect.Top, (int)this.MouseRect.Width, (int)this.MouseRect.Height), Border3DStyle.Bump);
			double num = 10.0 * this.m_SelectMeasureX * (double)this.MouseRect.Width / (double)this.m_X_pixarLenth;
			double num2 = 10.0 * this.m_SelectMeasureY * (double)this.MouseRect.Height / (double)this.m_Y_pixarLenth;
			double num3 = 10.0 * this.m_SelectMeasureY2 * (double)this.MouseRect.Height / (double)this.m_Y_pixarLenth;
			num /= (double)this.m_ZoomedInfoStruct.ZoomedScale_X;
			num2 /= (double)this.m_ZoomedInfoStruct.ZoomedScale_Y;
			num3 /= (double)this.m_ZoomedInfoStruct.ZoomedScale_Y;
			if (this.m_bRulerUseEnabled && this.MouseRect.Width >= 30f)
			{
				g.DrawString(string.Format("{0:0.000}" + this.m_StrXaxis, num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.MouseRect.X + 2f, this.MouseRect.Y + 2f));
			}
		}

		private void DrawZoomedMousePos(Graphics g)
		{
			if (!this.m_bZoomUseEnabled)
			{
				return;
			}
			if (!this.m_bDrawMouseState)
			{
				return;
			}
			if (this.MouseRect.Width < 3f || this.MouseRect.Height < 3f)
			{
				return;
			}
			float num = this.ZoomScreenRect.Width / this.GraphRect.Width;
			float num2 = this.ZoomScreenRect.Height / this.GraphRect.Height;
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.X = (int)(this.ZoomScreenRect.Left + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * num);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.Y = (int)(this.ZoomScreenRect.Top + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Top - this.GraphRect.Top) * num2);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.Width = (int)(this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * num);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.Height = (int)(this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height * num2);
			ControlPaint.DrawBorder3D(g, this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect, Border3DStyle.Bump);
		}

		public void SetDisplayDataNum(int i)
		{
			if (i >= 0)
			{
				this.m_DisplayDataNum = i;
			}
		}

		public void SetzeroByte(int zeroint)
		{
			this.m_zeroint = zeroint;
		}

		private void SetMoveparameter()
		{
			this.poneMoveDistence = this.m_MoveUpPointNum - this.m_MoveDownPointNum;
			if (this.poneMoveDistence < 0 && this.m_MoveDownPointNum > 1 && this.m_MoveUpPointNum > 0)
			{
				byte mASK = this.LogicChans[this.m_MoveDownPointNum - 1].MASK;
				int ch = this.LogicChans[this.m_MoveDownPointNum - 1].ch;
				Color logicColor = this.LogicChans[this.m_MoveDownPointNum - 1].logicColor;
				for (int i = this.m_MoveDownPointNum - 1; i > this.m_MoveUpPointNum - 1; i--)
				{
					this.LogicChans[i].MASK = this.LogicChans[i - 1].MASK;
					this.LogicChans[i].ch = this.LogicChans[i - 1].ch;
					this.LogicChans[i].logicColor = this.LogicChans[i - 1].logicColor;
				}
				this.LogicChans[this.m_MoveUpPointNum - 1].MASK = mASK;
				this.LogicChans[this.m_MoveUpPointNum - 1].ch = ch;
				this.LogicChans[this.m_MoveUpPointNum - 1].logicColor = logicColor;
				return;
			}
			if (this.poneMoveDistence > 0 && this.m_MoveDownPointNum > 0 && this.m_MoveDownPointNum > 0)
			{
				byte mASK = this.LogicChans[this.m_MoveDownPointNum - 1].MASK;
				int ch = this.LogicChans[this.m_MoveDownPointNum - 1].ch;
				Color logicColor = this.LogicChans[this.m_MoveDownPointNum - 1].logicColor;
				for (int j = this.m_MoveDownPointNum - 1; j < this.m_MoveUpPointNum - 1; j++)
				{
					this.LogicChans[j].MASK = this.LogicChans[j + 1].MASK;
					this.LogicChans[j].ch = this.LogicChans[j + 1].ch;
					this.LogicChans[j].logicColor = this.LogicChans[j + 1].logicColor;
				}
				this.LogicChans[this.m_MoveUpPointNum - 1].MASK = mASK;
				this.LogicChans[this.m_MoveUpPointNum - 1].ch = ch;
				this.LogicChans[this.m_MoveUpPointNum - 1].logicColor = logicColor;
			}
		}

		private unsafe void DrawZoomedGraph(Graphics g)
		{
			float num = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			this.m_pBuffer = MyDLLimport.GetBuffer4Read(-1);
			uint num2 = 0u;
			uint num3;
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt == 0u)
			{
				this.m_ZoomedInfoStruct.originData_ZoomedStart = 0u;
				num2 = (uint)(500.0 * this.m_DataNumPerPixar);
				num3 = (uint)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex + this.m_dataOffset);
			}
			else
			{
				num2 = this.m_ZoomedInfoStruct.originData_ZoomedCnt;
				num3 = (uint)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex + (int)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2u));
			}
			if (this.m_channelMask == 0)
			{
				g.DrawString(string.Format("No channel is selected", new object[0]), new Font("Arial", 20f, FontStyle.Regular), new SolidBrush(Color.FromArgb(70, 255, 255, 255)), new Point(120, 120));
				return;
			}
			float num4 = this.m_X_pixarLenth / num2;
			int num5 = 0;
			try
			{
				byte* ptr = num3;
				float num6 = this.xLargeUnitPos[0] - num4;
				num5 = 0;
				while ((long)num5 < (long)((ulong)num2))
				{
					num6 += num4;
					byte b = (ptr + (IntPtr)2 * (IntPtr)num5)[1];
					for (int i = 0; i < 8; i++)
					{
						this.LogicChans[i].PreviousLevel = this.LogicChans[i].CurrentLevel;
						if ((this.LogicChans[i].MASK & b) != 0)
						{
							this.LogicChans[i].CurrentLevel = this.LogicChans[i].yHighLevel;
						}
						else
						{
							this.LogicChans[i].CurrentLevel = this.LogicChans[i].yLowLEVEL;
						}
						g.DrawLine(this.GraphPen, num6, (float)this.LogicChans[i].PreviousLevel, num6 + num4, (float)this.LogicChans[i].PreviousLevel);
						if (this.LogicChans[i].PreviousLevel != this.LogicChans[i].CurrentLevel)
						{
							g.DrawLine(this.GraphPen, num6 + num4, (float)this.LogicChans[i].PreviousLevel, num6 + num4, (float)this.LogicChans[i].CurrentLevel);
							g.DrawLine(this.GraphPen, num6 + num4 - 3f, this.yLargeUnitPos[0] + num * 3f / 8f, num6 + num4 + 3f, this.yLargeUnitPos[1] - num * 1f / 8f);
							g.DrawLine(this.GraphPen, num6 + num4 - 3f, this.yLargeUnitPos[1] - num * 1f / 8f, num6 + num4 + 3f, this.yLargeUnitPos[0] + num * 3f / 8f);
						}
					}
					if (b != *(ptr + (IntPtr)2 * (IntPtr)num5 - 1))
					{
						g.DrawString("0x" + b.ToString("X2"), this.drawFont, this.drawBrush, num6 + num4, this.yLargeUnitPos[0] + num / 2f);
					}
					num5++;
				}
			}
			catch (Exception)
			{
				g.DrawString(string.Concat(new string[]
				{
					num2.ToString(),
					"error",
					this.m_dataOffset.ToString(),
					"i",
					num5.ToString()
				}), this.drawFont, this.drawBrush, 200f, this.yLargeUnitPos[2]);
			}
		}

		private void UserControl1_MouseMove(object sender, MouseEventArgs e)
		{
			this.CurrentMousePt.X = (float)e.X;
			this.CurrentMousePt.Y = (float)e.Y;
			if (this.m_MouseDownUpAr && !this.m_bRulerUseEnabled && !this.m_bZoomUseEnabled)
			{
				if (this.CurrentMousePt.X - this.m_XmouseBegin >= 10f)
				{
					this.LeftRightMove(-3);
					this.m_XmouseBegin = this.CurrentMousePt.X;
				}
				else if (this.m_XmouseBegin - this.CurrentMousePt.X >= 10f)
				{
					this.LeftRightMove(3);
					this.m_XmouseBegin = this.CurrentMousePt.X;
				}
			}
			if (this.GraphRect.Contains(this.CurrentMousePt))
			{
				base.Invalidate(new Region(this.TriIndiRect));
				this.TriIndicatorPos.X = (float)e.X;
				this.TriIndiRect.X = (float)((int)(this.TriIndicatorPos.X - (float)(this.IndicatorWidth / 2)));
				base.Invalidate(new Region(this.TriIndiRect));
				base.Invalidate(new Region(this.TitleRect));
			}
			if (this.m_bRulerUseEnabled || this.m_bZoomUseEnabled)
			{
				base.Invalidate(new Region(this.CurrentMouseRect));
				if (this.CurrentMousePt.X < this.xLargeUnitPos[5])
				{
					this.CurrentMouseRect.X = this.CurrentMousePt.X + (float)(this.m_Margin * 2);
					if (this.CurrentMousePt.Y < this.yLargeUnitPos[5])
					{
						this.CurrentMouseRect.Y = this.CurrentMousePt.Y + (float)(this.m_Margin * 2);
					}
					else
					{
						this.CurrentMouseRect.Y = this.CurrentMousePt.Y - this.yLargeUnitPos[1] + this.yLargeUnitPos[0];
					}
				}
				else
				{
					this.CurrentMouseRect.X = this.CurrentMousePt.X - this.xLargeUnitPos[6] + this.xLargeUnitPos[5];
					if (this.CurrentMousePt.Y < this.yLargeUnitPos[5])
					{
						this.CurrentMouseRect.Y = this.CurrentMousePt.Y + (float)(this.m_Margin * 2);
					}
					else
					{
						this.CurrentMouseRect.Y = this.CurrentMousePt.Y - this.yLargeUnitPos[1] + this.yLargeUnitPos[0];
					}
				}
				base.Invalidate(new Region(this.CurrentMouseRect));
				if (this.GraphRect.Contains(this.CurrentMousePt))
				{
					this.Cursor = Cursors.Cross;
					if (this.m_bDrawMouseState && !this.m_bLOCKMouse)
					{
						this.MouseRect.Width = (float)(e.X - this.MousePos.X);
						this.MouseRect.Height = (float)(e.Y - this.MousePos.Y);
						if (this.MouseRect.Width < 0f)
						{
							this.MouseRect.X = (float)e.X;
							this.MouseRect.Width = -this.MouseRect.Width;
						}
						if (this.MouseRect.Height < 0f)
						{
							this.MouseRect.Y = (float)e.Y;
							this.MouseRect.Height = -this.MouseRect.Height;
						}
						base.Invalidate(new Region(this.GraphRect));
						return;
					}
				}
			}
			else if (!this.GraphRect.Contains(this.CurrentMousePt))
			{
			}
		}

		protected virtual void OnValidMouseMoveEvt(EventArgs e)
		{
			if (this.ValidMouseMoveEvt != null)
			{
				this.ValidMouseMoveEvt(this, e);
			}
		}

		private void DrawPanel(Graphics g)
		{
			float num = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			g.FillRectangle(this.brBKcolorGraph, this.GraphRect);
			for (int i = 0; i < 8; i++)
			{
				g.FillRectangle(new SolidBrush(this.LogicChans[i].logicColor), new RectangleF(0f, this.yLargeUnitPos[i + 1], this.GraphRect.X, num));
			}
			g.FillRectangle(new SolidBrush(Color.Black), this.xLargeUnitPos[0], this.yLargeUnitPos[0], this.GraphRect.Width, num);
			g.DrawLine(this.GraphPen, this.xLargeUnitPos[0], this.yLargeUnitPos[0] + num * 3f / 8f, this.xLargeUnitPos[10], this.yLargeUnitPos[0] + num * 3f / 8f);
			g.DrawLine(this.GraphPen, this.xLargeUnitPos[0], this.yLargeUnitPos[1] - num * 1f / 8f, this.xLargeUnitPos[10], this.yLargeUnitPos[1] - num * 1f / 8f);
		}

		private void DrawZeroIndicator(Graphics g)
		{
			PointF pointF = new PointF(this.TriIndicatorPos.X, this.TriIndicatorPos.Y);
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt != 0u)
			{
				pointF = new PointF(this.TriIndicatorPos.X, this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0);
			}
			this.m_XIndicator_TriPath = this.TriRect(pointF, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
			g.FillPath(this.m_Sbrush_Zero1, this.m_XIndicator_TriPath);
			g.DrawLine(this.m_pen_Zero1, new PointF(pointF.X, this.yLargeUnitPos[10]), pointF);
			float arg_B9_0 = (this.MouseRect.Left - this.GraphRect.Left) / this.GraphRect.Width;
			double num = (double)(this.m_ZoomedInfoStruct.m_XaxisStart + (this.TriIndicatorPos.X - this.GraphRect.Left) * 10f / this.m_ZoomedInfoStruct.ZoomedScale_X / this.m_X_pixarLenth);
			g.DrawString(string.Format("{0:0.00}" + this.m_StrXaxis, num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.TriIndicatorPos.X - 15f, this.yLargeUnitPos[10] - 15f));
		}

		private GraphicsPath TriRect(PointF p, float height, float width)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLine(p.X, p.Y + height / 2f, p.X - width / 2f, p.Y);
			graphicsPath.AddLine(p.X - width / 2f, p.Y, p.X + width / 2f, p.Y);
			graphicsPath.AddLine(p.X + width / 2f, p.Y, p.X, p.Y + height / 2f);
			return graphicsPath;
		}

		private void UserControl1_Load(object sender, EventArgs e)
		{
			this.aTimer.Elapsed += new ElapsedEventHandler(this.TimerMoveLRhandler);
			this.aTimer.Interval = 150.0;
			this.aTimer.AutoReset = true;
			this.aTimer.Enabled = false;
			this.m_dataOffset = (int)((double)(50f * this.m_xPanIndex * this.m_howmuchGrid) * this.m_DataNumPerPixar) * 2;
			this.setBlackGround(1);
			this.layoutCaculationInit();
			this.MouseRect.X = this.xLargeUnitPos[0];
			this.MouseRect.Y = this.yLargeUnitPos[0];
			this.MouseRect.Width = this.m_X_pixarLenth;
			this.MouseRect.Height = this.m_Y_pixarLenth;
			this.SetMenuItemEnable(3, false);
		}

		public void SetMenuItemEnable(int index, bool b)
		{
			if (this.menuStrip1 != null)
			{
				this.menuStrip1.Items[index].Enabled = b;
			}
		}

		private void UserControl1_MouseDown(object sender, MouseEventArgs e)
		{
			this.CurrentMousePt.X = (float)e.X;
			this.CurrentMousePt.Y = (float)e.Y;
			this.m_XmouseBegin = this.CurrentMousePt.X;
			this.m_MouseDownUpAr = true;
			if (this.CurrentMousePt.Y < this.yLargeUnitPos[2] && this.CurrentMousePt.Y > this.yLargeUnitPos[1])
			{
				this.m_MoveDownPointNum = 1;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[3] && this.CurrentMousePt.Y > this.yLargeUnitPos[2])
			{
				this.m_MoveDownPointNum = 2;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[4] && this.CurrentMousePt.Y > this.yLargeUnitPos[3])
			{
				this.m_MoveDownPointNum = 3;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[5] && this.CurrentMousePt.Y > this.yLargeUnitPos[4])
			{
				this.m_MoveDownPointNum = 4;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[6] && this.CurrentMousePt.Y > this.yLargeUnitPos[5])
			{
				this.m_MoveDownPointNum = 5;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[7] && this.CurrentMousePt.Y > this.yLargeUnitPos[6])
			{
				this.m_MoveDownPointNum = 6;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[8] && this.CurrentMousePt.Y > this.yLargeUnitPos[7])
			{
				this.m_MoveDownPointNum = 7;
			}
			else if (this.CurrentMousePt.Y < this.yLargeUnitPos[9] && this.CurrentMousePt.Y > this.yLargeUnitPos[8])
			{
				this.m_MoveDownPointNum = 8;
			}
			if ((this.m_bRulerUseEnabled || this.m_bZoomUseEnabled) && this.GraphRect.Contains(this.CurrentMousePt))
			{
				this.m_bZoomUseDoneOnce = false;
				if (!this.m_bDrawMouseState)
				{
					this.m_bDrawMouseState = true;
					this.m_bLOCKMouse = false;
					this.MouseRect.X = (float)e.X;
					this.MouseRect.Y = (float)e.Y;
					this.MousePos.X = e.X;
					this.MousePos.Y = e.Y;
					this.MouseRect.Width = 0f;
					this.MouseRect.Height = 0f;
					base.Invalidate(new Region(this.GraphRect));
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = (float)(this.m_Width_Axisis + this.m_Margin);
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = 0f;
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = 0f;
					this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height = 0f;
					return;
				}
				if (this.m_bLOCKMouse)
				{
					this.m_bLOCKMouse = false;
					this.MouseRect.Width = 0f;
					this.MouseRect.Height = 0f;
					this.MouseRect.X = (float)e.X;
					this.MouseRect.Y = (float)e.Y;
					this.MousePos.X = e.X;
					this.MousePos.Y = e.Y;
					base.Invalidate(new Region(this.GraphRect));
				}
			}
		}

		private void UserControl1_MouseUp(object sender, MouseEventArgs e)
		{
			this.CurrentMousePt.Y = (float)e.Y;
			if (this.m_MouseDownUpAr && !this.m_bRulerUseEnabled && !this.m_bZoomUseEnabled)
			{
				if (this.CurrentMousePt.Y < this.yLargeUnitPos[2] && this.CurrentMousePt.Y > this.yLargeUnitPos[1])
				{
					this.m_MoveUpPointNum = 1;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[3] && this.CurrentMousePt.Y > this.yLargeUnitPos[2])
				{
					this.m_MoveUpPointNum = 2;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[4] && this.CurrentMousePt.Y > this.yLargeUnitPos[3])
				{
					this.m_MoveUpPointNum = 3;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[5] && this.CurrentMousePt.Y > this.yLargeUnitPos[4])
				{
					this.m_MoveUpPointNum = 4;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[6] && this.CurrentMousePt.Y > this.yLargeUnitPos[5])
				{
					this.m_MoveUpPointNum = 5;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[7] && this.CurrentMousePt.Y > this.yLargeUnitPos[6])
				{
					this.m_MoveUpPointNum = 6;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[8] && this.CurrentMousePt.Y > this.yLargeUnitPos[7])
				{
					this.m_MoveUpPointNum = 7;
				}
				else if (this.CurrentMousePt.Y < this.yLargeUnitPos[9] && this.CurrentMousePt.Y > this.yLargeUnitPos[8])
				{
					this.m_MoveUpPointNum = 8;
				}
				this.SetMoveparameter();
				base.Invalidate(new Region(this.AxisYRect));
			}
			this.m_MouseDownUpAr = false;
			if (this.m_bRulerUseEnabled || this.m_bZoomUseEnabled)
			{
				if (!this.m_bLOCKMouse && this.m_bDrawMouseState)
				{
					this.m_bLOCKMouse = true;
					this.m_bZoomUseDoneOnce = true;
					if ((this.MouseRect.Width > 50f || this.MouseRect.Height > 50f) && this.m_bZoomUseEnabled)
					{
						this.ZoomeCaculation();
					}
					base.Invalidate(new Region(this.GraphRect));
					return;
				}
			}
			else
			{
				this.m_bZoomUseDoneOnce = false;
				base.Invalidate(new Region(this.GraphRect));
			}
		}

		private void button1_Click(object sender, EventArgs e)
		{
			this.OnValidMouseMoveEvt(e);
		}

		private void ZoomeCaculation()
		{
			float num = (this.MouseRect.Left - this.GraphRect.Left) / this.GraphRect.Width;
			float num2 = this.GraphRect.Width / this.MouseRect.Width;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left + (this.MouseRect.Left - this.GraphRect.Left) / this.m_ZoomedInfoStruct.ZoomedScale_X;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = this.MouseRect.Width / this.m_ZoomedInfoStruct.ZoomedScale_X;
			float num3 = (float)(500.0 / (double)this.m_X_pixarLenth);
			this.m_ZoomedInfoStruct.originData_ZoomedStart = (uint)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar);
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = (uint)((double)(num3 * this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width) * this.m_DataNumPerPixar);
			this.m_ZoomedInfoStruct.ZoomedScale_X = this.m_ZoomedInfoStruct.ZoomedScale_X * num2;
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_ZoomedInfoStruct.m_XaxisStart + num * this.m_ZoomedInfoStruct.m_XaxisStep * 10f;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_ZoomedInfoStruct.m_XaxisStep / num2;
			this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
		}

		private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
		{
		}

		private void ttttyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.m_bRulerUseEnabled = false;
			this.m_bDrawMouseState = false;
			this.m_bZoomUseEnabled = false;
			this.m_bLOCKMouse = false;
			this.Cursor = Cursors.Hand;
			this.zomoutToolStripMenuItem.Enabled = false;
			this.m_ZoomedInfoStruct.ZoomedScale_Y = 1f;
			this.m_ZoomedInfoStruct.ZoomedScale_X = 1f;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 = this.TriIndicatorPos.Y;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 = this.TriIndicatorPos2.Y;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = (float)(this.m_Width_Axisis + this.m_Margin);
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = 0f;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = 0f;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height = 0f;
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = 0u;
			this.m_ZoomedInfoStruct.originData_ZoomedStart = 0u;
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_XaxisStep;
			base.Invalidate(new Region(this.GraphRect));
			this.SetAxisX(this.m_XaxisStart, this.m_XaxisStep, this.m_StrXaxis, 0);
		}

		private void uuuToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.m_bRulerUseEnabled = true;
			this.m_bDrawMouseState = false;
			this.m_bZoomUseEnabled = false;
			this.m_bLOCKMouse = false;
			base.Invalidate(new Region(this.GraphRect));
		}

		private void MenuItemNormWnd_Click(object sender, EventArgs e)
		{
			if (this.m_bShowInfoOrNot)
			{
				this.m_bShowInfoOrNot = false;
			}
			else
			{
				this.m_bShowInfoOrNot = true;
			}
			base.Invalidate(new Region(this.InfoRect));
		}

		private void menuStrip1_MouseMove(object sender, MouseEventArgs e)
		{
			this.Cursor = Cursors.Hand;
		}

		private void menuStrip1_MouseHover(object sender, EventArgs e)
		{
			this.Cursor = Cursors.Hand;
		}

		private void ZoomMenuItem_Click(object sender, EventArgs e)
		{
			if (!this.m_bZoomUseEnabled)
			{
				this.m_bZoomUseEnabled = true;
				this.m_bRulerUseEnabled = false;
				this.m_bDrawMouseState = false;
				this.m_bLOCKMouse = false;
			}
			this.zomoutToolStripMenuItem.Enabled = true;
			base.Invalidate(new Region(this.GraphRect));
		}

		private void zomoutToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (!this.m_bZoomUseEnabled)
			{
				return;
			}
			if (this.m_ZoomedInfoStruct.ZoomedScale_X <= 1f)
			{
				return;
			}
			float num = 0.7f;
			this.m_bRulerUseEnabled = false;
			this.m_bDrawMouseState = true;
			this.m_bLOCKMouse = true;
			this.m_ZoomedInfoStruct.ZoomedScale_X = this.m_ZoomedInfoStruct.ZoomedScale_X * num;
			float num2 = (float)((double)this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * (1.0 / (double)num - 1.0) / 2.0);
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X - num2;
			if (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X < this.GraphRect.Left)
			{
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.GraphRect.Left;
			}
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width + num2 * 2f;
			if (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width > this.GraphRect.Right - this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X)
			{
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = this.GraphRect.Right - this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X;
			}
			float num3 = (float)(500.0 / (double)this.m_X_pixarLenth);
			this.m_ZoomedInfoStruct.originData_ZoomedStart = (uint)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar);
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = (uint)((double)(num3 * this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width) * this.m_DataNumPerPixar);
			base.Invalidate(new Region(this.GraphRect));
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * this.m_XaxisStep / this.GraphRect.Width;
			this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
		}

		private void XzoomMenuItem2_Click(object sender, EventArgs e)
		{
			if (!this.m_bZoomUseEnabled)
			{
				this.m_bZoomUseEnabled = true;
				this.m_bRulerUseEnabled = false;
				this.m_bDrawMouseState = false;
				this.m_bLOCKMouse = false;
			}
			this.zomoutToolStripMenuItem.Enabled = true;
			base.Invalidate(new Region(this.GraphRect));
		}

		private void ColorMenuItem1_Click(object sender, EventArgs e)
		{
			this.setBlackGround(this.m_ColorModeIndex);
			if (this.m_ColorModeIndex == 0)
			{
				this.m_ColorModeIndex = 1;
				return;
			}
			this.m_ColorModeIndex = 0;
		}

		private void LeftMoveMenuItem_MouseUp(object sender, MouseEventArgs e)
		{
			this.aTimer.Enabled = false;
		}

		private void rightMoveMenuItem_MouseUp(object sender, MouseEventArgs e)
		{
			this.aTimer.Enabled = false;
		}
	}
}
