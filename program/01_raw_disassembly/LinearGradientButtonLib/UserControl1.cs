using LinearGradientButtonLib.Properties;
using SaveData;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Printing;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Timers;
using System.Windows.Forms;

namespace LinearGradientButtonLib
{
	public class UserControl1 : UserControl
	{
		public enum XYGraphBase
		{
			None,
			X_Channel1,
			X_Channel2
		}

		public struct structZOOMINFO
		{
			public uint rawdata_ZoomedStart;

			public uint rawdata_ZoomedCnt;

			public int originData_ZoomedStart;

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

			public float m_Y1axisStart;

			public float m_Y1axisStep;

			public uint Origin_Trigindex;
		}

		public enum Music
		{
			Do = 523,
			So = 784,
			La = 880
		}

		private SolidBrush brBKcolorGraph1 = new SolidBrush(Color.FromArgb(255, 13, 33, 51));

		private SolidBrush m_Sbrush_Zero0 = new SolidBrush(Color.Blue);

		private SolidBrush m_Sbrush_Zero1 = new SolidBrush(Color.Red);

		private SolidBrush m_Sbrush_Zero2 = new SolidBrush(Color.White);

		private SolidBrush m_Sbrush_Zero3 = new SolidBrush(Color.White);

		private SolidBrush m_Sbrush_Zero4 = new SolidBrush(Color.White);

		private SolidBrush m_Sbrush_Measure = new SolidBrush(Color.FromArgb(53, 204, 15));

		private SolidBrush m_Sbrush_Axis = new SolidBrush(Color.DarkCyan);

		private SolidBrush ch1_Sbrush_Aectangle = new SolidBrush(Color.Blue);

		private SolidBrush ch2_Sbrush_Aectangle = new SolidBrush(Color.Red);

		private SolidBrush m_Sbrush_Axis2 = new SolidBrush(Color.FromArgb(255, 90, 90, 90));

		private SolidBrush m_Sbrush_AxisNum = new SolidBrush(Color.FromArgb(255, 205, 130, 46));

		private SolidBrush InfoSb = new SolidBrush(Color.FromArgb(190, 140, 70, 91));

		private SolidBrush PanellgHighlight = new SolidBrush(Color.FromArgb(255, 17, 44, 68));

		private SolidBrush lg4ZoomScreenRect = new SolidBrush(Color.Black);

		private SolidBrush lg5ZoomScreenRect = new SolidBrush(Color.FromArgb(80, Color.Red));

		private SolidBrush lg6ZoomScreenRect = new SolidBrush(Color.FromArgb(200, 150, 0, 0));

		private SolidBrush drawBrush = new SolidBrush(Color.FromArgb(200, Color.Wheat));

		public RectangleF GraphRect = new RectangleF(0f, 0f, 40f, 20f);

		private Rectangle GraphRect_Pt = new Rectangle(0, 0, 40, 20);

		private RectangleF ZoomScreenRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF ZoomScreenRect_Pt = new RectangleF(0f, 0f, 40f, 20f);

		private Rectangle epitomeRect = new Rectangle(0, 0, 40, 20);

		private Rectangle epitomeHighLightRect = new Rectangle(10, 10, 10, 10);

		private Rectangle epitomeRect_Pt = new Rectangle(0, 0, 40, 20);

		private Rectangle epitomeHighLightRect_Pt = new Rectangle(10, 10, 10, 10);

		private RectangleF InfoRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF TitleRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF AxisXRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF AxisYRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF ActiveRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF TriIndiRectM = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRectM2 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRectM3 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRectM4 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect2 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect3 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect4 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriLevelRect = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriLevelRect2 = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect2_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect3_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriIndiRect4_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriLevelRect_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF TriLevelRect2_Pt = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF MouseRect = new RectangleF(0f, 0f, 0f, 0f);

		private RectangleF CurrentMouseRect = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF rectTrig = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF rectTrig2 = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF rectTrig_Pt = new RectangleF(0f, 0f, 40f, 20f);

		private RectangleF rectTrig2_Pt = new RectangleF(0f, 0f, 40f, 20f);

		private int m_DisplayDataNum;

		private int m_AntiAlias;

		private int m_ZoomType;

		private double m_RangeY0 = 1.0;

		private double m_RangeY1 = 1.0;

		private int m_VbiasZero0 = 128;

		private int m_VbiasZero1 = 128;

		private bool m_Allowed;

		private int m_dataOffset;

		private float m_X_pixarLenth = 500f;

		private float m_X_pixarLenth_Pt = 500f;

		private float m_Y_pixarLenth = 350f;

		private float m_Y_pixarLenth_Pt = 350f;

		private int m_X_AxisAllPointNum = 50;

		private int m_X_AxisLargePointNum = 10;

		private int m_Y_AxisAllPointNum = 50;

		private int m_Y_AxisLargePointNum = 10;

		private float m_yLargeUnitInterval = 50f;

		private float m_xLargeUnitInterval = 50f;

		private float m_xSmallUnitInterval = 5f;

		private float m_ySmallUnitInterval = 5f;

		private float m_yLargeUnitInterval_Pt = 50f;

		private float m_xLargeUnitInterval_Pt = 50f;

		private float m_xSmallUnitInterval_Pt = 5f;

		private float m_ySmallUnitInterval_Pt = 5f;

		private int ControlWidth = 1000;

		private int ControlHeight = 500;

		private float m_howmuchGrid = 0.02f;

		private bool m_bShowInfoOrNot;

		private string m_sampleRate = "";

		private string m_CurrentState = "";

		private string m_DeviceName = "";

		private string m_PlayType = "";

		private int m_ColorModeIndex;

		private double m_SelectMeasureX = 1.0;

		private double m_SelectMeasureY = 1.0;

		private double m_SelectMeasureY2 = 1.0;

		private double m_rate0 = 1.0;

		private double m_offset0;

		private double m_rate1 = 1.0;

		private double m_offset1;

		private int m_DisplayCnt;

		private int m_Width_Axisis = 55;

		private int m_Height_Axisis = 30;

		private float m_XaxisStart;

		private float m_Y0axisStart = 10f;

		private float m_Y1axisStart = 10f;

		private float m_XaxisStep = 1f;

		private float m_Y0axisStep = 2f;

		private float m_Y1axisStep = 2f;

		private string m_StrXaxis = "us";

		private string m_StrY0axis = "CH1:V";

		private string m_StrY1axis = "CH2:V";

		private int[] GraphScreenState = new int[2];

		private UserControl1.structZOOMINFO m_ZoomedInfoStruct = default(UserControl1.structZOOMINFO);

		private int m_Margin = 2;

		private int heightScroll = 20;

		private int m_zeroint;

		private float m_fMaxData;

		private float m_fMinData;

		private volatile float m_fFreq;

		private int IndicatorWidth = 26;

		private int IndicatorWidthM = 16;

		private bool m_bshowActiveCH1 = true;

		private bool m_bshowActiveCH2 = true;

		private bool m_TriIndicatorMove;

		private bool m_TriIndicatorMove2;

		private bool m_LevelIndicatorMove;

		private bool m_LevelIndicatorMove2;

		private bool m_MeasureIndicatorMove;

		private bool m_MeasureIndicatorMove2;

		private bool m_MeasureIndicatorMove3;

		private bool m_MeasureIndicatorMove4;

		private bool m_bDrawEpitome;

		private bool m_bRulerUseEnabled;

		private bool m_bZoomUseEnabled;

		private bool m_bZoomUseDoneOnce;

		private bool m_bDrawMouseState;

		private bool m_bLOCKMouse;

		private bool m_bDrawTrigLevelOrNot;

		private bool m_bDrawTrigLevel1rNot;

		private bool m_enableAll;

		private bool m_LR;

		private bool m_MouseDownUpAr;

		public bool m_VectorDot = true;

		public bool m_Grid = true;

		public bool m_Changing;

		public bool m_Changingwave;

		private float m_ch0ZeroPosScale;

		private float m_ch1ZeroPosScale;

		private float m_ch0ZeroMeaScale;

		private float m_ch1ZeroMeaScale;

		private float m_0ZeroMeaScale;

		private float m_1ZeroMeaScale;

		private float m_ch0ZeroPosScale_Pt;

		private float m_ch1ZeroPosScale_Pt;

		private float m_ch0TrigPosScale;

		private float m_ch1TrigPosScale;

		public int m_GetChangeVal;

		private int m_TrigIndex;

		private uint m_OriginTrigIndex;

		private byte m_MathFlag;

		private float m_XmouseBegin;

		private int m_Fullnum = 255;

		private GraphicsPath m_XIndicator_TriPath;

		private GraphicsPath m_XIndicator_TriPath2;

		private GraphicsPath m_XIndicator_LevelPath;

		private GraphicsPath m_XIndicator_LevelPath2;

		private GraphicsPath m_XIndicator_Measure;

		private GraphicsPath m_XIndicator_Measure2;

		private GraphicsPath m_XIndicator_Measure3;

		private GraphicsPath m_XIndicator_Measure4;

		private IntPtr m_pBuffer = (IntPtr)0;

		private IntPtr pGraphNativeMem = (IntPtr)0;

		private IntPtr pGraphNativeMem2 = (IntPtr)0;

		private float yPixarPer = 1f;

		private double m_DataNumPerPixar = 1.0;

		private byte m_channelMask = 1;

		private Point MousePos = new Point(0, 0);

		private PointF TriIndicatorPos = new PointF(0f, 0f);

		private PointF TriIndicatorPos2 = new PointF(0f, 0f);

		private PointF TriIndicatorPos3 = new PointF(0f, 0f);

		private PointF LevelIndicatorPos = new PointF(0f, 0f);

		private PointF LevelIndicatorPos2 = new PointF(0f, 0f);

		private PointF TriIndicatorPos_Pt = new PointF(0f, 0f);

		private PointF TriIndicatorPos2_Pt = new PointF(0f, 0f);

		private PointF TriIndicatorPos3_Pt = new PointF(0f, 0f);

		private PointF LevelIndicatorPos_Pt = new PointF(0f, 0f);

		private PointF LevelIndicatorPos2_Pt = new PointF(0f, 0f);

		private PointF MeasureIndicator = new PointF(0f, 0f);

		private PointF MeasureIndicator2 = new PointF(0f, 0f);

		private PointF MeasureIndicator3 = new PointF(0f, 0f);

		private PointF MeasureIndicator4 = new PointF(0f, 0f);

		private Point CurrentMousePt = new Point(0, 0);

		private float[] xLargeUnitPos;

		private float[] yLargeUnitPos;

		private float[] m_index_Array0 = new float[256];

		private float[] m_index_Array1 = new float[256];

		private float[] m_index_Array0_Pt = new float[256];

		private float[] m_index_Array1_Pt = new float[256];

		private float[] m_index_BiasArray0 = new float[256];

		private float[] m_index_BiasArray1 = new float[256];

		private float[] m_index_BiasArray0_Pt = new float[256];

		private float[] m_index_BiasArray1_Pt = new float[256];

		private float[] m_Zoom_BiasArray0 = new float[256];

		private float[] m_Zoom_BiasArray1 = new float[256];

		private float[] m_Zoom_BiasArray0_Pt = new float[256];

		private float[] m_Zoom_BiasArray1_Pt = new float[256];

		private Font smallFont = new Font("Arial", 14f, FontStyle.Bold);

		private Font AxislFont = new Font("Calibri", 9f, FontStyle.Regular);

		private Font LargeFont = new Font("Arial", 20f, FontStyle.Bold);

		private Font InfoFont = new Font("Calibri", 9f, FontStyle.Regular);

		private Font smallFLargeFont = new Font("Calibri", 9f, FontStyle.Regular);

		private string m_screenshotPath;

		private float[] m_Position = new float[2];

		public bool isDrawMouseCur = true;

		private bool isDrawMeasurCur;

		private System.Timers.Timer aTimer = new System.Timers.Timer();

		private Pen Grapenvord;

		private Pen Grapenvord2;

		public int m_R0 = 6;

		public int m_G0 = 221;

		public int m_B0 = 238;

		public int m_R1 = 225;

		public int m_G1 = 225;

		public int m_B1;

		private Pen m_xyPen;

		private Pen MathAddPen;

		private Pen MathSubPen;

		private Pen MathMultiPen;

		private Pen m_pen_Zero0;

		private Pen m_pen_Zero1;

		private Pen m_pen_Ruler;

		private Pen m_pen_Select;

		private Pen m_pen_Measure;

		private Color m_channel0Color = Color.FromArgb(6, 221, 238);

		private Color m_channel1Color = Color.FromArgb(255, 255, 0);

		private Color m_channe20Color = Color.Blue;

		private Color m_channe21Color = Color.Red;

		private Color m_mousePosColor = Color.FromArgb(255, 255, 0);

		private Color m_mousePosColor2 = Color.FromArgb(255, 142, 30);

		private Color m_addColor = Color.FromArgb(255, 255, 0, 255);

		private Color m_subColor = Color.FromArgb(255, 128, 255, 0);

		private Color m_MultiColor = Color.FromArgb(255, 209, 164, 0);

		private Color m_ZeroLineColor0 = Color.Blue;

		private Color m_ZeroLineColor1 = Color.Red;

		private Color m_ZeroLineColor2 = Color.Black;

		private Color m_line_SelectColor = Color.Red;

		private Pen PanelPen = new Pen(Color.FromArgb(100, 100, 100), 3f);

		private Pen AxisPen = new Pen(Color.FromArgb(200, 167, 167, 167), 1f);

		private Pen AxisDotPen = new Pen(Color.FromArgb(255, 185, 185, 185), 1f);

		private Pen AxisDotPen1;

		private Pen AxisDotPen2;

		private Pen MousePosPen;

		private Pen MousePosPen2;

		private Pen GraphPen;

		private Pen GraphPen2;

		private float m_xPanIndex;

		private bool m_enablePan = true;

		private uint m_panCount = 10u;

		private float[] m_x_BiasArray = new float[256];

		private float[] m_y_BiasArray = new float[256];

		public UserControl1.XYGraphBase m_xyBase;

		public bool isDisp;

		public bool isEcho;

		private IContainer components;

		private MenuStrip menuStrip1;

		private ToolStripMenuItem uuuToolStripMenuItem;

		private ToolStripMenuItem MenuItemNormWnd;

		private ToolStripMenuItem ZoomMenuItem;

		private ToolStripMenuItem zomoutToolStripMenuItem;

		private ToolStripMenuItem LeftMoveMenuItem;

		private ToolStripMenuItem ttttyToolStripMenuItem;

		private ToolStripMenuItem rightMoveMenuItem;

		private ToolStripMenuItem XzoomMenuItem2;

		private ToolStripMenuItem ColorMenuItem1;

		private ToolStripMenuItem XYMenuItem1;

		private ToolStripMenuItem toolStripMenuItem1;

		private ToolStripMenuItem fileToolStripMenuItem;

		private ToolStripMenuItem snapshot;

		private PrintDocument printDocument1;

		private PrintPreviewDialog printPreviewDialog1;

		private PrintDialog printDialog1;

		private PageSetupDialog pageSetupDialog1;

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

		public uint panCount
		{
			get
			{
				return this.m_panCount;
			}
			set
			{
				this.m_panCount = value;
			}
		}

		public double Chan0Offset
		{
			get
			{
				return this.m_offset0;
			}
			set
			{
				if (this.m_offset0 != value)
				{
					this.m_offset0 = value;
				}
			}
		}

		public double Chan0Rate
		{
			get
			{
				return this.m_rate0;
			}
			set
			{
				if (this.m_rate0 != value)
				{
					this.m_rate0 = value;
				}
			}
		}

		public double Chan1Offset
		{
			get
			{
				return this.m_offset1;
			}
			set
			{
				if (this.m_offset1 != value)
				{
					this.m_offset1 = value;
				}
			}
		}

		public double Chann1Rate
		{
			get
			{
				return this.m_rate1;
			}
			set
			{
				if (this.m_rate1 != value)
				{
					this.m_rate1 = value;
				}
			}
		}

		public UserControl1()
		{
			this.m_ZoomedInfoStruct.originData_ZoomedStart = 0;
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = 0u;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect = new RectangleF(0f, (float)this.heightScroll, 0f, 0f);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect = new Rectangle(0, 0, 0, 0);
			this.m_ZoomedInfoStruct.Origin_Trigindex = 0u;
			this.m_ZoomedInfoStruct.m_XaxisStart = 0f;
			this.m_ZoomedInfoStruct.m_XaxisStep = 1f;
			this.m_ZoomedInfoStruct.m_Y0axisStart = 10f;
			this.m_ZoomedInfoStruct.m_Y0axisStep = 2f;
			this.m_ZoomedInfoStruct.m_Y1axisStart = 10f;
			this.m_ZoomedInfoStruct.m_Y1axisStep = 2f;
			this.xLargeUnitPos = new float[2 * (this.m_X_AxisLargePointNum + 1)];
			this.yLargeUnitPos = new float[2 * (this.m_Y_AxisLargePointNum + 1)];
			base.SetStyle(ControlStyles.AllPaintingInWmPaint, true);
			base.SetStyle(ControlStyles.DoubleBuffer, true);
			base.SetStyle(ControlStyles.ResizeRedraw, true);
			base.SetStyle(ControlStyles.Selectable, true);
			base.SetStyle(ControlStyles.SupportsTransparentBackColor, true);
			base.SetStyle(ControlStyles.UserPaint, true);
			this.BackColor = Color.Transparent;
			base.UpdateStyles();
			this.smallFLargeFont = this.smallFont;
			this.GraphScreenState[0] = 0;
			this.GraphScreenState[1] = 0;
			this.InitializeComponent();
			this.InitializePanPara();
			this.InitializePens();
		}

		private void InitializePens()
		{
			this.AxisDotPen.DashStyle = DashStyle.Dot;
			this.AxisDotPen.DashPattern = new float[]
			{
				1f,
				5f
			};
			this.AxisDotPen1 = new Pen(this.m_channel0Color, 1f);
			this.AxisDotPen1.DashStyle = DashStyle.Dot;
			this.AxisDotPen1.DashPattern = new float[]
			{
				10f,
				10f
			};
			this.AxisDotPen2 = new Pen(this.m_channel1Color, 1f);
			this.AxisDotPen2.DashStyle = DashStyle.Dot;
			this.AxisDotPen2.DashPattern = new float[]
			{
				10f,
				10f
			};
			this.MousePosPen = new Pen(this.m_mousePosColor, 1f);
			this.MousePosPen2 = new Pen(this.m_mousePosColor2, 1f);
			this.GraphPen = new Pen(this.m_channel0Color, 1f);
			this.GraphPen2 = new Pen(this.m_channel1Color, 1f);
			this.m_xyPen = new Pen(Color.Pink, 1f);
			this.MathAddPen = new Pen(this.m_addColor, 1f);
			this.MathSubPen = new Pen(this.m_subColor, 1f);
			this.MathMultiPen = new Pen(this.m_MultiColor, 1f);
			this.m_pen_Zero0 = new Pen(this.m_ZeroLineColor0);
			this.m_pen_Zero1 = new Pen(this.m_ZeroLineColor1);
			this.m_pen_Measure = new Pen(Color.White);
			this.m_pen_Ruler = new Pen(Color.Orange);
			this.m_pen_Select = new Pen(this.m_line_SelectColor);
		}

		public void SetEpitomeEnable(bool b)
		{
			this.m_bDrawEpitome = b;
		}

		public void SetDrawTrigLevelOrNot(bool b)
		{
			this.m_bDrawTrigLevelOrNot = b;
			base.Invalidate(new Region(this.TriLevelRect));
			base.Invalidate(new Region(this.rectTrig));
		}

		public void SetDrawMeasurCurOrNot(bool b)
		{
			this.isDrawMeasurCur = b;
			base.Invalidate(new Region(this.GraphRect));
		}

		public void InitializePanPara()
		{
			this.m_xPanIndex = 0f;
			this.m_panCount = 10u;
			this.m_enablePan = true;
			this.m_xyBase = UserControl1.XYGraphBase.None;
		}

		public void LeftRightMVstate_stoped()
		{
			this.m_xPanIndex = 0f;
			this.m_enablePan = false;
			this.rightMoveMenuItem.Enabled = false;
			this.LeftMoveMenuItem.Enabled = false;
		}

		public void LeftRightMVstate_started()
		{
			this.m_enablePan = true;
			this.rightMoveMenuItem.Enabled = true;
			this.LeftMoveMenuItem.Enabled = true;
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

		public void MainFrameLoaded()
		{
			this.m_Allowed = true;
		}

		public void UpdateEpitome(double offset)
		{
			this.m_DataNumPerPixar = MyDLLimport.GetInfodouble(0);
			double num = 500.0 * this.m_DataNumPerPixar;
			double num2 = MyDLLimport.GetHWbufferSize() / 2u;
			double num3 = 0.5 * (num2 - num) + offset;
			double num4 = num3 / num2;
			if (num2 == 0.0)
			{
				return;
			}
			if (num3 < 0.0)
			{
			}
			if (offset == 0.0)
			{
				this.epitomeHighLightRect.Width = (int)(num / num2 * (double)this.epitomeRect.Width);
				this.epitomeHighLightRect_Pt.Width = (int)(num / num2 * (double)this.epitomeRect_Pt.Width);
			}
			this.epitomeHighLightRect.X = this.epitomeRect.X + (int)(num4 * (double)this.epitomeRect.Width);
			this.epitomeHighLightRect_Pt.X = this.epitomeRect_Pt.X + (int)(num4 * (double)this.epitomeRect_Pt.Width);
			base.Invalidate(new Region(this.epitomeRect));
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
				if (CurrentState == "Stopped" || CurrentState == "Paused")
				{
					this.m_enablePan = true;
				}
				else
				{
					this.m_enablePan = false;
					this.SetAxisX(this.m_XaxisStart, this.m_XaxisStep, this.m_StrXaxis, 0);
				}
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

		public void SetAxisY1(float start, float step, string str, int index)
		{
			if (index == 1)
			{
				this.m_Y1axisStart = start;
				this.m_Y1axisStep = step;
			}
			this.m_ZoomedInfoStruct.m_Y1axisStart = start;
			this.m_ZoomedInfoStruct.m_Y1axisStep = step;
			if (str != null)
			{
				this.m_StrY1axis = str;
			}
			base.Invalidate(new Region(this.AxisYRect));
		}

		public void setBlackGround(int index)
		{
			switch (index)
			{
			case 0:
				this.m_xyPen.Color = Color.Black;
				this.AxisPen.Color = Color.Black;
				this.AxisDotPen.Color = Color.Black;
				this.setBkGraphColor(Color.White);
				this.GraphPen.Color = this.m_channe20Color;
				this.GraphPen2.Color = this.m_channe21Color;
				this.m_Sbrush_Zero2.Color = Color.Black;
				this.ch1_Sbrush_Aectangle.Color = Color.Blue;
				this.ch2_Sbrush_Aectangle.Color = Color.Red;
				this.drawBrush.Color = Color.Black;
				this.PanellgHighlight.Color = Color.FromArgb(253, 249, 235);
				return;
			case 1:
				this.m_pen_Zero0.Color = this.m_ZeroLineColor0;
				this.m_pen_Zero1.Color = this.m_ZeroLineColor1;
				this.GraphPen.Color = this.m_channel0Color;
				this.GraphPen2.Color = this.m_channel1Color;
				this.m_xyPen.Color = Color.Pink;
				this.AxisPen.Color = Color.FromArgb(200, 167, 167, 167);
				this.AxisDotPen.Color = Color.FromArgb(255, 185, 185, 185);
				this.setBkGraphColor(Color.FromArgb(255, 13, 33, 51));
				this.m_Sbrush_Zero2.Color = Color.White;
				this.ch1_Sbrush_Aectangle.Color = Color.FromArgb(6, 221, 238);
				this.ch2_Sbrush_Aectangle.Color = Color.FromArgb(255, 255, 0);
				this.drawBrush.Color = Color.FromArgb(200, Color.Wheat);
				this.PanellgHighlight.Color = Color.FromArgb(255, 17, 44, 68);
				return;
			default:
				return;
			}
		}

		public void setAntiAlias(int flg)
		{
			this.m_AntiAlias = flg;
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
			this.brBKcolorGraph1 = new SolidBrush(c);
			base.Invalidate(new Region(this.GraphRect));
		}

		public void SetMemDataNull()
		{
			this.pGraphNativeMem = (IntPtr)0;
			this.pGraphNativeMem2 = (IntPtr)0;
		}

		public void SetDrawTrigLevel1rNot(bool b)
		{
			this.m_bDrawTrigLevel1rNot = b;
			base.Invalidate(new Region(this.TriLevelRect2));
			base.Invalidate(new Region(this.rectTrig2));
		}

		public void SetTrigLevelByte0(byte level0)
		{
			if (!this.m_bDrawTrigLevelOrNot)
			{
				return;
			}
			int num = (int)((-(double)this.m_VbiasZero0 + (double)level0) * ((double)this.yPixarPer * this.m_RangeY0));
			this.LevelIndicatorPos.Y = this.TriIndicatorPos.Y - (float)num;
			this.TriLevelRect.Y = (float)((int)(this.LevelIndicatorPos.Y - (float)(this.IndicatorWidth / 2) - 1f));
			base.Invalidate(new Region(this.TriLevelRect));
			this.rectTrig.Y = (float)((int)this.LevelIndicatorPos.Y);
			this.rectTrig.Height = (float)((int)(this.TriIndicatorPos.Y - this.LevelIndicatorPos.Y - 1f));
			base.Invalidate(new Region(this.rectTrig));
		}

		public void SetTrigLevelByte1(byte level1)
		{
			if (!this.m_bDrawTrigLevel1rNot)
			{
				return;
			}
			int num = (int)((-(double)this.m_VbiasZero1 + (double)level1) * ((double)this.yPixarPer * this.m_RangeY0));
			this.LevelIndicatorPos2.Y = this.TriIndicatorPos2.Y - (float)num;
			this.TriLevelRect2.Y = (float)((int)(this.LevelIndicatorPos2.Y - (float)(this.IndicatorWidth / 2) - 1f));
			base.Invalidate(new Region(this.TriLevelRect2));
			this.rectTrig2.Y = (float)((int)this.LevelIndicatorPos2.Y);
			this.rectTrig2.Height = (float)((int)(this.TriIndicatorPos2.Y - this.LevelIndicatorPos2.Y - 1f));
			base.Invalidate(new Region(this.rectTrig2));
		}

		public byte GetTrigLevelByte0()
		{
			double num = (double)(this.TriIndicatorPos.Y - this.LevelIndicatorPos.Y);
			double num2 = (double)this.m_VbiasZero0 + num / ((double)this.yPixarPer * this.m_RangeY0);
			byte result;
			if (num2 < 0.0)
			{
				result = 0;
			}
			else if (num2 >= 255.0)
			{
				result = 255;
			}
			else
			{
				result = (byte)num2;
			}
			return result;
		}

		public byte GetTrigLevelByte1()
		{
			double num = (double)(this.TriIndicatorPos2.Y - this.LevelIndicatorPos2.Y);
			double num2 = (double)this.m_VbiasZero1 + num / ((double)this.yPixarPer * this.m_RangeY1);
			byte result;
			if (num2 < 0.0)
			{
				result = 0;
			}
			else if (num2 >= 255.0)
			{
				result = 255;
			}
			else
			{
				result = (byte)num2;
			}
			return result;
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

		public void SetRangeY(double Y0, double Y1)
		{
			this.m_RangeY0 = Y0;
			this.m_RangeY1 = Y1;
			float num = this.ZoomScreenRect.Height / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			float num2 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos.Y) * num;
			float num3 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos2.Y) * num;
			float num4 = (float)((double)this.yPixarPer * this.m_RangeY0);
			float num5 = (float)((double)this.yPixarPer * this.m_RangeY1);
			for (int i = 0; i < 256; i++)
			{
				this.m_index_Array0[i] = (float)(this.m_VbiasZero0 - i) * num4;
				this.m_index_Array1[i] = (float)(this.m_VbiasZero1 - i) * num5;
				this.m_index_BiasArray0[i] = this.TriIndicatorPos.Y + this.m_index_Array0[i];
				this.m_index_BiasArray1[i] = this.TriIndicatorPos2.Y + this.m_index_Array1[i];
				float num6 = num2 + this.m_index_Array0[i] * num;
				if (num6 <= this.ZoomScreenRect.Top)
				{
					this.m_Zoom_BiasArray0[i] = this.ZoomScreenRect.Top;
				}
				else if (num6 >= this.ZoomScreenRect.Bottom)
				{
					this.m_Zoom_BiasArray0[i] = this.ZoomScreenRect.Bottom;
				}
				else
				{
					this.m_Zoom_BiasArray0[i] = num6;
				}
				num6 = num3 + this.m_index_Array1[i] * num;
				if (num6 <= this.ZoomScreenRect.Top)
				{
					this.m_Zoom_BiasArray1[i] = this.ZoomScreenRect.Top;
				}
				else if (num6 >= this.ZoomScreenRect.Bottom)
				{
					this.m_Zoom_BiasArray1[i] = this.ZoomScreenRect.Bottom;
				}
				else
				{
					this.m_Zoom_BiasArray1[i] = num6;
				}
			}
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

		public void layoutCaculationInit_Pt(int Xmargin, int Ymargin, int BoundPureWidth, int BoundPureHeight, int PrintOffset)
		{
			this.MouseRect.Width = 0f;
			this.MouseRect.Height = 0f;
			this.smallFLargeFont = this.smallFont;
			this.m_X_pixarLenth_Pt = (float)(BoundPureWidth - this.m_Width_Axisis);
			this.m_Y_pixarLenth_Pt = (float)(BoundPureHeight - this.m_Height_Axisis);
			this.m_yLargeUnitInterval_Pt = this.m_Y_pixarLenth_Pt / (float)this.m_Y_AxisLargePointNum;
			this.m_ySmallUnitInterval_Pt = this.m_Y_pixarLenth_Pt / (float)this.m_Y_AxisAllPointNum;
			this.m_xLargeUnitInterval_Pt = this.m_X_pixarLenth_Pt / (float)this.m_X_AxisLargePointNum;
			this.m_xSmallUnitInterval_Pt = this.m_X_pixarLenth_Pt / (float)this.m_X_AxisAllPointNum;
			for (int i = 0; i < this.m_X_AxisLargePointNum + 1; i++)
			{
				this.xLargeUnitPos[i + PrintOffset] = (float)(Xmargin + this.m_Width_Axisis) + (float)i * this.m_xLargeUnitInterval_Pt;
				this.yLargeUnitPos[i + PrintOffset] = (float)(Ymargin + this.heightScroll) + (float)i * this.m_yLargeUnitInterval_Pt;
			}
			this.GraphRect_Pt.X = (int)this.xLargeUnitPos[PrintOffset];
			this.GraphRect_Pt.Y = Ymargin;
			this.GraphRect_Pt.Width = (int)this.m_X_pixarLenth_Pt;
			this.GraphRect_Pt.Height = (int)(this.yLargeUnitPos[10 + PrintOffset] - (float)this.GraphRect_Pt.Top);
			this.TriIndicatorPos_Pt.X = this.xLargeUnitPos[10 + PrintOffset] - (float)this.IndicatorWidth - (float)this.m_Margin;
			this.TriIndicatorPos_Pt.Y = this.yLargeUnitPos[10 + PrintOffset] - (this.yLargeUnitPos[10] - this.TriIndicatorPos.Y) * (this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[PrintOffset]) / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			this.TriIndicatorPos2_Pt.Y = this.yLargeUnitPos[10 + PrintOffset] - (this.yLargeUnitPos[10] - this.TriIndicatorPos2.Y) * (this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[PrintOffset]) / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			this.TriIndicatorPos2_Pt.X = this.TriIndicatorPos_Pt.X;
			this.TriIndicatorPos3_Pt.X = this.xLargeUnitPos[5 + PrintOffset];
			this.TriIndicatorPos3_Pt.Y = this.yLargeUnitPos[PrintOffset];
			this.TriIndiRect_Pt.X = this.xLargeUnitPos[PrintOffset];
			this.TriIndiRect2_Pt.X = this.xLargeUnitPos[PrintOffset];
			this.TriIndiRect_Pt.Y = this.TriIndicatorPos_Pt.Y - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect2_Pt.Y = this.TriIndicatorPos2_Pt.Y - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect_Pt.Width = (float)(this.IndicatorWidth + 10) + this.TriIndicatorPos_Pt.X - this.xLargeUnitPos[PrintOffset];
			this.TriIndiRect_Pt.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect2_Pt.Width = (float)(this.IndicatorWidth + 10) + this.TriIndicatorPos2_Pt.X - this.xLargeUnitPos[PrintOffset];
			this.TriIndiRect2_Pt.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect3_Pt.X = this.xLargeUnitPos[5 + PrintOffset] - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect3_Pt.Y = this.TriIndicatorPos3_Pt.Y;
			this.TriIndiRect3_Pt.Width = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect3_Pt.Height = (float)(this.IndicatorWidth / 2) + this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[PrintOffset];
			this.TriIndiRect4_Pt.X = this.xLargeUnitPos[PrintOffset];
			this.TriIndiRect4_Pt.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect4_Pt.Width = this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[PrintOffset];
			this.rectTrig_Pt.X = this.xLargeUnitPos[PrintOffset] + 3f;
			this.rectTrig_Pt.Y = this.LevelIndicatorPos_Pt.Y;
			this.rectTrig_Pt.Width = this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[PrintOffset] - 6f;
			this.rectTrig_Pt.Height = this.TriIndicatorPos_Pt.Y - this.LevelIndicatorPos_Pt.Y;
			this.rectTrig2_Pt.X = this.xLargeUnitPos[PrintOffset] + 3f;
			this.rectTrig2_Pt.Y = this.LevelIndicatorPos2_Pt.Y;
			this.rectTrig2_Pt.Width = this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[PrintOffset] - 6f;
			this.rectTrig2_Pt.Height = this.TriIndicatorPos2_Pt.Y - this.LevelIndicatorPos2_Pt.Y;
			float num = (this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[PrintOffset]) / (this.xLargeUnitPos[10] - this.xLargeUnitPos[0]);
			this.epitomeRect_Pt.X = (int)this.xLargeUnitPos[7 + PrintOffset] + this.m_Margin;
			this.epitomeRect_Pt.Y = this.GraphRect_Pt.Y + this.m_Margin;
			this.epitomeRect_Pt.Width = (int)(this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[7 + PrintOffset] - (float)(2 * this.m_Margin));
			this.epitomeRect_Pt.Height = this.heightScroll - 2 * this.m_Margin;
			this.epitomeHighLightRect_Pt.Y = this.GraphRect_Pt.Y + this.m_Margin;
			this.epitomeHighLightRect_Pt.X = (int)((float)(this.epitomeHighLightRect.X - this.epitomeRect.X) * num) + this.epitomeRect_Pt.X;
			this.epitomeHighLightRect_Pt.Height = this.epitomeRect_Pt.Height;
			this.epitomeHighLightRect_Pt.Width = (int)((float)this.epitomeHighLightRect.Width * num);
			this.ZoomScreenRect_Pt.X = this.xLargeUnitPos[6 + PrintOffset];
			this.ZoomScreenRect_Pt.Y = this.yLargeUnitPos[7 + PrintOffset];
			this.ZoomScreenRect_Pt.Width = this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[6 + PrintOffset] - (float)(this.IndicatorWidth / 2);
			this.ZoomScreenRect_Pt.Height = this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[7 + PrintOffset] - (float)(this.IndicatorWidth / 2);
			float num2 = (this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[PrintOffset]) / 255f;
			float num3 = this.ZoomScreenRect_Pt.Height / (this.yLargeUnitPos[10 + PrintOffset] - this.yLargeUnitPos[PrintOffset]);
			float num4 = this.ZoomScreenRect_Pt.Bottom - ((float)this.GraphRect_Pt.Bottom - this.TriIndicatorPos_Pt.Y) * num3;
			float num5 = this.ZoomScreenRect_Pt.Bottom - ((float)this.GraphRect_Pt.Bottom - this.TriIndicatorPos2_Pt.Y) * num3;
			float num6 = (float)((double)num2 * this.m_RangeY0);
			float num7 = (float)((double)num2 * this.m_RangeY1);
			float arg_769_0 = (this.xLargeUnitPos[10 + PrintOffset] - this.xLargeUnitPos[PrintOffset]) / 255f;
			for (int j = 0; j < 256; j++)
			{
				this.m_index_Array0_Pt[j] = (float)(this.m_VbiasZero0 - j) * num6;
				this.m_index_Array1_Pt[j] = (float)(this.m_VbiasZero1 - j) * num7;
				this.m_index_BiasArray0_Pt[j] = this.TriIndicatorPos_Pt.Y + this.m_index_Array0_Pt[j];
				this.m_index_BiasArray1_Pt[j] = this.TriIndicatorPos2_Pt.Y + this.m_index_Array1_Pt[j];
				this.m_Zoom_BiasArray0_Pt[j] = num4 + this.m_index_Array0_Pt[j] * num3;
				this.m_Zoom_BiasArray1_Pt[j] = num5 + this.m_index_Array1_Pt[j] * num3;
			}
		}

		public void layoutCaculationInit()
		{
			this.MouseRect.Width = 0f;
			this.MouseRect.Height = 0f;
			this.smallFLargeFont = this.smallFont;
			int num = base.Bounds.Height - this.m_Margin - this.heightScroll;
			int num2 = base.Bounds.Width - this.m_Margin - 50;
			this.m_X_pixarLenth = (float)(num2 - this.m_Width_Axisis);
			this.m_Y_pixarLenth = (float)(num - this.m_Height_Axisis);
			this.m_yLargeUnitInterval = this.m_Y_pixarLenth / (float)this.m_Y_AxisLargePointNum;
			this.m_ySmallUnitInterval = this.m_Y_pixarLenth / (float)this.m_Y_AxisAllPointNum;
			this.m_xLargeUnitInterval = this.m_X_pixarLenth / (float)this.m_X_AxisLargePointNum;
			this.m_xSmallUnitInterval = this.m_X_pixarLenth / (float)this.m_X_AxisAllPointNum;
			for (int i = 0; i < this.m_X_AxisLargePointNum + 1; i++)
			{
				this.xLargeUnitPos[i] = (float)(this.m_Margin + this.m_Width_Axisis) + (float)i * this.m_xLargeUnitInterval;
				this.yLargeUnitPos[i] = (float)(this.m_Margin + this.heightScroll) + (float)i * this.m_yLargeUnitInterval;
			}
			this.TriIndicatorPos.X = this.xLargeUnitPos[10] - (float)this.IndicatorWidth - (float)this.m_Margin;
			this.TriIndicatorPos.Y = this.yLargeUnitPos[5] + this.m_Y_pixarLenth * this.m_ch0ZeroPosScale;
			this.TriIndicatorPos2.X = this.TriIndicatorPos.X;
			this.TriIndicatorPos2.Y = this.yLargeUnitPos[5] + this.m_Y_pixarLenth * this.m_ch1ZeroPosScale;
			this.MeasureIndicator.X = this.xLargeUnitPos[0];
			this.MeasureIndicator.Y = this.yLargeUnitPos[2] + this.m_Y_pixarLenth * this.m_ch0ZeroMeaScale;
			this.MeasureIndicator2.X = this.xLargeUnitPos[0];
			this.MeasureIndicator2.Y = this.yLargeUnitPos[8] + this.m_Y_pixarLenth * this.m_ch1ZeroMeaScale;
			this.MeasureIndicator3.X = this.xLargeUnitPos[2] + this.m_X_pixarLenth * this.m_0ZeroMeaScale;
			this.MeasureIndicator3.Y = this.yLargeUnitPos[0];
			this.MeasureIndicator4.X = this.xLargeUnitPos[8] + this.m_X_pixarLenth * this.m_1ZeroMeaScale;
			this.MeasureIndicator4.Y = this.yLargeUnitPos[0];
			this.LevelIndicatorPos.X = this.TriIndicatorPos.X;
			this.LevelIndicatorPos2.X = this.TriIndicatorPos.X;
			this.LevelIndicatorPos.Y = this.yLargeUnitPos[3] + this.m_Y_pixarLenth * this.m_ch0TrigPosScale;
			this.LevelIndicatorPos2.Y = this.yLargeUnitPos[3] + this.m_Y_pixarLenth * this.m_ch1TrigPosScale;
			this.TriIndicatorPos3.X = this.xLargeUnitPos[5];
			this.TriIndicatorPos3.Y = this.yLargeUnitPos[0];
			this.menuStrip1.Left = (int)this.xLargeUnitPos[10];
			this.menuStrip1.Top = (int)this.yLargeUnitPos[0] - this.heightScroll;
			this.TriIndiRectM.X = this.xLargeUnitPos[0];
			this.TriIndiRectM.Y = this.MeasureIndicator.Y - (float)(this.IndicatorWidthM / 2);
			this.TriIndiRectM2.X = this.xLargeUnitPos[0];
			this.TriIndiRectM2.Y = this.MeasureIndicator2.Y - (float)(this.IndicatorWidthM / 2);
			this.TriIndiRectM3.X = this.MeasureIndicator3.X - (float)(this.IndicatorWidthM / 2);
			this.TriIndiRectM3.Y = this.yLargeUnitPos[0];
			this.TriIndiRectM4.X = this.MeasureIndicator4.X - (float)(this.IndicatorWidthM / 2);
			this.TriIndiRectM4.Y = this.yLargeUnitPos[0];
			this.TriIndiRect.X = this.xLargeUnitPos[0];
			this.TriIndiRect2.X = this.xLargeUnitPos[0];
			this.TriLevelRect.X = this.xLargeUnitPos[0];
			this.TriLevelRect2.X = this.xLargeUnitPos[0];
			this.TriIndiRect.Y = this.TriIndicatorPos.Y - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect2.Y = this.TriIndicatorPos2.Y - (float)(this.IndicatorWidth / 2);
			this.TriLevelRect.Y = this.LevelIndicatorPos.Y - (float)(this.IndicatorWidth / 2);
			this.TriLevelRect2.Y = this.LevelIndicatorPos2.Y - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect.Width = (float)(this.IndicatorWidth + 10) + this.TriIndicatorPos.X - this.xLargeUnitPos[0];
			this.TriIndiRect.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect2.Width = (float)(this.IndicatorWidth + 10) + this.TriIndicatorPos2.X - this.xLargeUnitPos[0];
			this.TriIndiRect2.Height = (float)(this.IndicatorWidth + 10);
			this.TriLevelRect.Width = (float)(this.IndicatorWidth + 10) + this.LevelIndicatorPos.X - this.xLargeUnitPos[0];
			this.TriLevelRect.Height = (float)(this.IndicatorWidth + 10);
			this.TriLevelRect2.Width = (float)(this.IndicatorWidth + 10) + this.LevelIndicatorPos2.X - this.xLargeUnitPos[0];
			this.TriLevelRect2.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRectM.Width = (float)(this.IndicatorWidthM + 10) + this.MeasureIndicator.X - this.xLargeUnitPos[0];
			this.TriIndiRectM.Height = (float)(this.IndicatorWidthM + 10);
			this.TriIndiRectM2.Width = (float)(this.IndicatorWidthM + 10) + this.MeasureIndicator2.X - this.xLargeUnitPos[0];
			this.TriIndiRectM2.Height = (float)(this.IndicatorWidthM + 10);
			this.TriIndiRectM3.Width = (float)(this.IndicatorWidthM + 10);
			this.TriIndiRectM3.Height = (float)(this.IndicatorWidthM + 10) + this.MeasureIndicator3.X - this.yLargeUnitPos[0];
			this.TriIndiRectM4.Width = (float)(this.IndicatorWidthM + 10);
			this.TriIndiRectM4.Height = (float)(this.IndicatorWidthM + 10) + this.MeasureIndicator4.X - this.yLargeUnitPos[0];
			this.TriIndiRect3.X = this.xLargeUnitPos[5] - (float)(this.IndicatorWidth / 2);
			this.TriIndiRect3.Y = this.TriIndicatorPos3.Y;
			this.TriIndiRect3.Width = (float)(this.IndicatorWidth + 20);
			this.TriIndiRect3.Height = (float)(this.IndicatorWidth / 2) + this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
			this.TriIndiRect4.X = this.xLargeUnitPos[0];
			this.TriIndiRect4.Height = (float)(this.IndicatorWidth + 10);
			this.TriIndiRect4.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[0];
			this.rectTrig.X = this.xLargeUnitPos[0] + 3f;
			this.rectTrig.Y = this.LevelIndicatorPos.Y;
			this.rectTrig.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[0] - 6f;
			this.rectTrig.Height = this.TriIndicatorPos.Y - this.LevelIndicatorPos.Y;
			this.rectTrig2.X = this.xLargeUnitPos[0] + 3f;
			this.rectTrig2.Y = this.LevelIndicatorPos2.Y;
			this.rectTrig2.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[0] - 6f;
			this.rectTrig2.Height = this.TriIndicatorPos2.Y - this.LevelIndicatorPos2.Y;
			this.GraphRect.X = this.xLargeUnitPos[0];
			this.GraphRect.Y = 0f;
			this.GraphRect.Width = this.m_X_pixarLenth;
			this.GraphRect.Height = this.yLargeUnitPos[10] - this.GraphRect.Top;
			this.InfoRect.X = this.xLargeUnitPos[8];
			this.InfoRect.Y = this.yLargeUnitPos[1];
			this.InfoRect.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[8];
			this.InfoRect.Height = this.yLargeUnitPos[9] - this.yLargeUnitPos[1];
			this.AxisXRect.X = (float)this.m_Margin;
			this.AxisXRect.Y = this.yLargeUnitPos[10];
			this.AxisXRect.Width = this.xLargeUnitPos[10];
			this.AxisXRect.Height = (float)this.m_Height_Axisis;
			this.AxisYRect.X = (float)this.m_Margin;
			this.AxisYRect.Y = 0f;
			this.AxisYRect.Width = (float)this.m_Width_Axisis;
			this.AxisYRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
			this.ZoomScreenRect.X = this.xLargeUnitPos[6];
			this.ZoomScreenRect.Y = this.yLargeUnitPos[7];
			this.ZoomScreenRect.Width = this.xLargeUnitPos[10] - this.xLargeUnitPos[6] - (float)(this.IndicatorWidth / 2);
			this.ZoomScreenRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[7] - (float)(this.IndicatorWidth / 2);
			this.epitomeRect.X = (int)this.xLargeUnitPos[7] + this.m_Margin;
			this.epitomeRect.Y = (int)this.GraphRect.Y + 2 * this.m_Margin;
			this.epitomeRect.Width = (int)(this.xLargeUnitPos[10] - this.xLargeUnitPos[7] - (float)(3 * this.m_Margin));
			this.epitomeRect.Height = this.heightScroll - 2 * this.m_Margin;
			this.epitomeHighLightRect.Y = (int)this.GraphRect.Y + 2 * this.m_Margin;
			this.epitomeHighLightRect.Height = this.epitomeRect.Height;
			this.TitleRect.X = this.GraphRect.X;
			this.TitleRect.Y = this.yLargeUnitPos[0];
			this.TitleRect.Width = this.GraphRect.Width;
			this.TitleRect.Height = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			this.ActiveRect.X = this.GraphRect.Left;
			this.ActiveRect.Y = this.GraphRect.Top;
			this.ActiveRect.Width = this.xLargeUnitPos[2] - this.xLargeUnitPos[0];
			this.yPixarPer = (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]) / 255f;
			float num3 = this.ZoomScreenRect.Height / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			float num4 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos.Y) * num3;
			float num5 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos2.Y) * num3;
			float num6 = (float)((double)this.yPixarPer * this.m_RangeY0);
			float num7 = (float)((double)this.yPixarPer * this.m_RangeY1);
			float num8 = (this.xLargeUnitPos[10] - this.xLargeUnitPos[0]) / 255f;
			for (int j = 0; j < 256; j++)
			{
				this.m_index_Array0[j] = (float)(this.m_VbiasZero0 - j) * num6;
				this.m_index_Array1[j] = (float)(this.m_VbiasZero1 - j) * num7;
				this.m_index_BiasArray0[j] = this.TriIndicatorPos.Y + this.m_index_Array0[j];
				this.m_index_BiasArray1[j] = this.TriIndicatorPos2.Y + this.m_index_Array1[j];
				this.m_y_BiasArray[j] = (float)(255 - j) * this.yPixarPer + this.yLargeUnitPos[0];
				this.m_x_BiasArray[j] = (float)j * num8 + this.xLargeUnitPos[0];
				this.m_Zoom_BiasArray0[j] = num4 + this.m_index_Array0[j] * num3;
				this.m_Zoom_BiasArray1[j] = num5 + this.m_index_Array1[j] * num3;
			}
			this.CurrentMouseRect.Width = (float)(this.m_Margin * 2) - this.xLargeUnitPos[5] + this.xLargeUnitPos[7];
			this.CurrentMouseRect.Height = this.yLargeUnitPos[1] - this.yLargeUnitPos[0];
			this.m_ZoomedInfoStruct.ZoomedScale_X = 1f;
			this.m_ZoomedInfoStruct.ZoomedScale_Y = 1f;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 = this.TriIndicatorPos.Y;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 = this.TriIndicatorPos2.Y;
		}

		public int setDisplayCnt(int i)
		{
			this.m_DisplayCnt = i;
			return this.m_DisplayCnt;
		}

		public void ChartY(byte single)
		{
			MyDLLimport.DataPreDisposal(0u, 0, 1u);
			byte trigLevelByte = this.GetTrigLevelByte0();
			byte trigLevelByte2 = this.GetTrigLevelByte1();
			MyDLLimport.AutoMeasurement(0);
			this.m_TrigIndex = MyDLLimport.TrigDataPrepare(trigLevelByte, trigLevelByte2);
			this.m_channelMask = MyDLLimport.GetInfoByte(0);
			uint originTrigIndex = (uint)MyDLLimport.GetInfodouble(1);
			this.SetMenuItemEnable(3, true);
			if (this.m_TrigIndex < 0)
			{
				if (single != 1)
				{
					this.m_OriginTrigIndex = 0u;
				}
				else
				{
					this.m_TrigIndex = 0;
					this.InitializePanPara();
				}
				this.pGraphNativeMem = (IntPtr)0;
				this.pGraphNativeMem2 = (IntPtr)0;
				base.Invalidate(new Region(this.GraphRect));
				return;
			}
			this.m_OriginTrigIndex = originTrigIndex;
			if (single == 1)
			{
				MyDLLimport.SetReadEnableOrNot(0u);
			}
			else
			{
				MyDLLimport.SetReadEnableOrNot(1u);
			}
			if (this.m_channelMask == 1)
			{
				this.pGraphNativeMem = MyDLLimport.GetRawData4Read(0);
			}
			else if (this.m_channelMask == 16)
			{
				this.pGraphNativeMem2 = MyDLLimport.GetRawData4Read(1);
			}
			else if (this.m_channelMask == 17 || (this.m_channelMask & 128) == 128)
			{
				this.pGraphNativeMem = MyDLLimport.GetRawData4Read(0);
				this.pGraphNativeMem2 = MyDLLimport.GetRawData4Read(1);
			}
			else
			{
				this.pGraphNativeMem = (IntPtr)0;
				this.pGraphNativeMem2 = (IntPtr)0;
			}
			this.m_DataNumPerPixar = MyDLLimport.GetInfodouble(0);
			base.Invalidate(new Region(this.GraphRect));
		}

		private void DrawAxisis(Graphics g, bool bPt)
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
			uint num = 0u;
			float num2 = this.m_xSmallUnitInterval;
			float num3 = this.m_ySmallUnitInterval;
			if (bPt)
			{
				num = 11u;
				num2 = this.m_xSmallUnitInterval_Pt;
				num3 = this.m_ySmallUnitInterval_Pt;
			}
			g.DrawLine(this.AxisPen, this.xLargeUnitPos[(int)((UIntPtr)num)], this.yLargeUnitPos[(int)((UIntPtr)(5u + num))], this.xLargeUnitPos[(int)((UIntPtr)(10u + num))], this.yLargeUnitPos[(int)((UIntPtr)(5u + num))]);
			g.DrawLine(this.AxisPen, this.xLargeUnitPos[(int)((UIntPtr)(5u + num))], this.yLargeUnitPos[(int)((UIntPtr)num)], this.xLargeUnitPos[(int)((UIntPtr)(5u + num))], this.yLargeUnitPos[(int)((UIntPtr)(10u + num))]);
			float num4 = 0f;
			g.DrawLine(this.AxisPen, this.xLargeUnitPos[(int)((UIntPtr)num)], this.yLargeUnitPos[(int)((UIntPtr)num)], this.xLargeUnitPos[(int)((UIntPtr)(10u + num))], this.yLargeUnitPos[(int)((UIntPtr)num)]);
			for (int i = 1; i < 11; i++)
			{
				if (this.m_Grid)
				{
					g.DrawLine(this.AxisDotPen, this.xLargeUnitPos[(int)((UIntPtr)num)], this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)i + (long)((ulong)num)))))], this.xLargeUnitPos[(int)((UIntPtr)(10u + num))], this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)i + (long)((ulong)num)))))]);
					g.DrawLine(this.AxisDotPen, this.xLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)i + (long)((ulong)num)))))], this.yLargeUnitPos[(int)((UIntPtr)num)], this.xLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)i + (long)((ulong)num)))))], this.yLargeUnitPos[(int)((UIntPtr)(10u + num))]);
				}
				for (int j = 1; j < 5; j++)
				{
					g.DrawLine(this.AxisPen, this.xLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)(i - 1) + (long)((ulong)num)))))] + num2 * (float)j, this.yLargeUnitPos[(int)((UIntPtr)(5u + num))] + 2f, this.xLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)(i - 1) + (long)((ulong)num)))))] + num2 * (float)j, this.yLargeUnitPos[(int)((UIntPtr)(5u + num))] - 2f);
					g.DrawLine(this.AxisPen, this.xLargeUnitPos[(int)((UIntPtr)(5u + num))] - 2f, this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)(i - 1) + (long)((ulong)num)))))] + num3 * (float)j, this.xLargeUnitPos[(int)((UIntPtr)(5u + num))] + 2f, this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)(i - 1) + (long)((ulong)num)))))] + num3 * (float)j);
				}
				string text = (this.m_ZoomedInfoStruct.m_XaxisStart + (float)(i - 1) * this.m_ZoomedInfoStruct.m_XaxisStep).ToString(" 0.00");
				g.DrawString(text, this.AxislFont, this.m_Sbrush_Axis2, new PointF(this.xLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)(i - 1) + (long)((ulong)num)))))] - num4 / 2f, this.yLargeUnitPos[(int)((UIntPtr)(10u + num))] + (float)(this.AxislFont.Height / 2)));
				num4 = g.MeasureString(text, this.AxislFont).Width;
			}
			double num5 = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (this.TriIndicatorPos.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth);
			double num6 = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (this.TriIndicatorPos2.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth);
			for (int k = 1; k < 10; k++)
			{
				string text = ((double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (float)k * this.m_ZoomedInfoStruct.m_Y0axisStep) - num5).ToString(" 0.000");
				num4 = g.MeasureString(text, this.AxislFont).Width;
				g.DrawString(text, this.AxislFont, this.m_Sbrush_Axis, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)] - num4, this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)k + (long)((ulong)num)))))] - (float)this.AxislFont.Height + 3f));
				text = ((double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (float)k * this.m_ZoomedInfoStruct.m_Y1axisStep) - num6).ToString(" 0.000");
				num4 = g.MeasureString(text, this.AxislFont).Width;
				g.DrawString(text, this.AxislFont, this.m_Sbrush_AxisNum, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)] - num4, this.yLargeUnitPos[(int)(checked((IntPtr)(unchecked((long)k + (long)((ulong)num)))))] - 3f));
			}
			g.DrawString(this.m_StrXaxis, this.AxislFont, this.m_Sbrush_Axis, new PointF(this.xLargeUnitPos[(int)((UIntPtr)(10u + num))] - 30f, this.yLargeUnitPos[(int)((UIntPtr)(10u + num))] + (float)(this.AxislFont.Height / 2)));
			g.DrawString(this.m_StrY0axis, this.AxislFont, this.m_Sbrush_Axis, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)] - 40f, this.yLargeUnitPos[(int)((UIntPtr)num)] - (float)this.heightScroll + 5f));
			g.DrawString(this.m_StrY1axis, this.AxislFont, this.m_Sbrush_AxisNum, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)] - 40f, this.yLargeUnitPos[(int)((UIntPtr)(10u + num))] - 5f));
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

		public void SetCH1Blink(bool b)
		{
			this.m_bshowActiveCH1 = b;
			base.Invalidate(new Region(this.ActiveRect));
		}

		public void SetCH2Blink(bool b)
		{
			this.m_bshowActiveCH2 = b;
			base.Invalidate(new Region(this.ActiveRect));
		}

		private void DrawInfo(Graphics g, bool bPt)
		{
			if (bPt)
			{
				uint num = 11u;
				float y = (float)(this.GraphRect_Pt.Top + this.AxislFont.Height / 2 - 5);
				float y2 = (float)(this.GraphRect_Pt.Top + this.AxislFont.Height * 3 / 4 - 5);
				float width = g.MeasureString("CH1", this.AxislFont).Width;
				g.FillRectangle(new SolidBrush(Color.White), new RectangleF((float)this.GraphRect_Pt.Left, (float)this.GraphRect_Pt.Top, this.xLargeUnitPos[(int)((UIntPtr)(10u + num))] - this.xLargeUnitPos[(int)((UIntPtr)num)], (float)this.heightScroll));
				if (this.m_bshowActiveCH1)
				{
					g.DrawString("CH1", this.AxislFont, new SolidBrush(Color.Black), new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)] + 5f, y));
					g.FillRectangle(new SolidBrush(Color.Blue), new RectangleF(this.xLargeUnitPos[(int)((UIntPtr)num)] + 5f + width, y2, (float)this.AxislFont.Height, (float)(this.AxislFont.Height / 2)));
				}
				if (this.m_bshowActiveCH2)
				{
					g.DrawString("CH2", this.AxislFont, new SolidBrush(Color.Black), new PointF(this.xLargeUnitPos[(int)((UIntPtr)(1u + num))] + 5f, y));
					g.FillRectangle(new SolidBrush(Color.Red), new RectangleF(this.xLargeUnitPos[(int)((UIntPtr)(1u + num))] + 5f + width, y2, (float)this.AxislFont.Height, (float)(this.AxislFont.Height / 2)));
					return;
				}
			}
			else
			{
				float y3 = this.GraphRect.Top + (float)(this.AxislFont.Height / 2) - 5f;
				float y4 = this.GraphRect.Top + (float)(this.AxislFont.Height * 3 / 4) - 5f;
				float width2 = g.MeasureString("CH1", this.AxislFont).Width;
				g.FillRectangle(this.brBKcolorGraph1, new RectangleF(this.GraphRect.Left, this.GraphRect.Top, this.xLargeUnitPos[10] - this.xLargeUnitPos[0], (float)(this.heightScroll + 2)));
				if (this.m_bshowActiveCH1)
				{
					g.DrawString("CH1", this.AxislFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[0] + 5f, y3));
					g.FillRectangle(this.ch1_Sbrush_Aectangle, new RectangleF(this.xLargeUnitPos[0] + 5f + width2, y4, (float)this.AxislFont.Height, (float)(this.AxislFont.Height / 2)));
				}
				if (this.m_bshowActiveCH2)
				{
					g.DrawString("CH2", this.AxislFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[1] + 5f, y3));
					g.FillRectangle(this.ch2_Sbrush_Aectangle, new RectangleF(this.xLargeUnitPos[1] + 5f + width2, y4, (float)this.AxislFont.Height, (float)(this.AxislFont.Height / 2)));
				}
				if (!this.m_bShowInfoOrNot)
				{
					return;
				}
				g.DrawString(string.Format("Device: " + this.m_DeviceName, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height / 2)));
				g.DrawString(string.Format("State: " + this.m_CurrentState, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 3 / 2)));
				g.DrawString(string.Format("Type: " + this.m_PlayType, new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 5 / 2)));
				g.DrawString(string.Format("Sample Rate: ", new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 7 / 2)));
				g.DrawString(string.Format("       " + this.m_sampleRate + "SPS", new object[0]), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.InfoRect.Left, this.InfoRect.Top + (float)(this.InfoFont.Height * 9 / 2)));
			}
		}

		private void DrawMousePos(Graphics g, bool bPt)
		{
			if (bPt)
			{
				return;
			}
			if (!this.GraphRect.Contains(this.CurrentMousePt))
			{
				return;
			}
			PointF pointF = new PointF(this.TriIndicatorPos3.X, this.TriIndicatorPos3.Y);
			this.m_XIndicator_TriPath = this.TriRect2(pointF, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
			double num = (double)(this.m_ZoomedInfoStruct.m_XaxisStart + (this.TriIndicatorPos3.X - this.GraphRect.Left) * 10f * this.m_ZoomedInfoStruct.m_XaxisStep / this.m_X_pixarLenth);
			double num2 = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (this.TriIndicatorPos.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth);
			double num3 = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (this.TriIndicatorPos2.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth);
			if (this.isDrawMouseCur)
			{
				g.FillPath(new SolidBrush(Color.Orange), this.m_XIndicator_TriPath);
				g.DrawLine(this.m_pen_Ruler, new PointF(pointF.X, this.yLargeUnitPos[10]), pointF);
				g.DrawLine(this.m_pen_Ruler, new PointF(this.xLargeUnitPos[0], (float)this.CurrentMousePt.Y), new PointF(this.xLargeUnitPos[10], (float)this.CurrentMousePt.Y));
				g.DrawString(string.Format("{0:0.00}" + this.m_StrXaxis, num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.TriIndicatorPos3.X - 15f, this.yLargeUnitPos[0] + 15f));
				num = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - ((float)this.CurrentMousePt.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth) - num2;
				g.DrawString(string.Format("CH1: {0:0.00} V", num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[0] + 10f, (float)(this.CurrentMousePt.Y - 15)));
				num = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - ((float)this.CurrentMousePt.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth) - num3;
				g.DrawString(string.Format("CH2: {0:0.00} V", num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[0] + 10f, (float)this.CurrentMousePt.Y));
			}
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
			num = 10.0 * this.m_SelectMeasureX * (double)this.MouseRect.Width / (double)this.m_X_pixarLenth;
			double num4 = 10.0 * this.m_SelectMeasureY * (double)this.MouseRect.Height / (double)this.m_Y_pixarLenth;
			double num5 = 10.0 * this.m_SelectMeasureY2 * (double)this.MouseRect.Height / (double)this.m_Y_pixarLenth;
			num /= (double)this.m_ZoomedInfoStruct.ZoomedScale_X;
			num4 /= (double)this.m_ZoomedInfoStruct.ZoomedScale_Y;
			num5 /= (double)this.m_ZoomedInfoStruct.ZoomedScale_Y;
			if (this.m_bRulerUseEnabled)
			{
				if (this.MouseRect.Width >= 30f)
				{
					g.DrawString(string.Format("Time:{0:0.000} us", num), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.MouseRect.X + 2f, this.MouseRect.Y + 2f));
				}
				if (this.MouseRect.Height >= 30f)
				{
					g.DrawString(string.Format("CH1:{0:0.000} V", num4), this.InfoFont, this.ch1_Sbrush_Aectangle, new PointF(this.MouseRect.X + 2f, this.MouseRect.Y + 2f + (float)this.InfoFont.Height));
					g.DrawString(string.Format("CH2:{0:0.000} V", num5), this.InfoFont, this.ch2_Sbrush_Aectangle, new PointF(this.MouseRect.X + 2f, this.MouseRect.Y + 2f + (float)(this.InfoFont.Height * 2)));
				}
			}
			ControlPaint.DrawBorder3D(g, new Rectangle((int)this.MouseRect.Left, (int)this.MouseRect.Top, (int)this.MouseRect.Width, (int)this.MouseRect.Height), Border3DStyle.Bump);
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
			float num2 = this.ZoomScreenRect.Height / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.X = (int)(this.ZoomScreenRect.Left + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * num);
			this.m_ZoomedInfoStruct.ZoomSelectedInZoomRect.Y = (int)(this.ZoomScreenRect.Top + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Top - this.yLargeUnitPos[0]) * num2);
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

		private void MyPaint(Graphics g, bool bPt)
		{
			this.DrawPanel(g, bPt);
			g.SmoothingMode = SmoothingMode.AntiAlias;
			this.DrawTriIndicator(g, bPt);
			this.DrawAxisis(g, bPt);
			if (this.m_AntiAlias == 0 && !bPt)
			{
				g.SmoothingMode = SmoothingMode.HighSpeed;
			}
			bool arg_37_0 = this.m_enableAll;
			this.DrawZoomedGraph(g, bPt);
			this.DrawZeroIndicator(g, bPt);
			this.DrawMousePos(g, bPt);
			this.DrawInfo(g, bPt);
			this.DrawZoomPanel(g, bPt);
			if (this.m_Position[0] != 0f && !bPt)
			{
				if (!this.isDisp)
				{
					this.DrawWarnning(g, 0);
				}
				this.m_Position[0] = 0f;
				if (!this.isEcho)
				{
					UserControl1.Beep(523, 300);
					UserControl1.Beep(523, 300);
				}
			}
			if (this.m_Position[1] != 0f && !bPt)
			{
				if (!this.isEcho)
				{
					UserControl1.Beep(523, 300);
					UserControl1.Beep(523, 300);
				}
				if (this.isDisp)
				{
					this.DrawWarnning(g, 1);
				}
				this.m_Position[1] = 0f;
			}
			this.Drawepitome(g, bPt);
			if (bPt)
			{
				return;
			}
			ControlPaint.DrawBorder3D(g, new Rectangle((int)this.GraphRect.X, (int)this.GraphRect.Y, (int)this.GraphRect.Width, (int)this.GraphRect.Height), Border3DStyle.Sunken);
		}

		[DllImport("kernel32.dll")]
		private static extern int Beep(int dwFreq, int dwDuration);

		private void SaveScreenshot()
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Filter = "Image Files(*.bmp)|*.bmp|All Files(*.*)|(*.*)";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				string text = saveFileDialog.FileName;
				if (!text.Contains(".bmp"))
				{
					text += ".bmp";
				}
				this.m_screenshotPath = saveFileDialog.FileName;
			}
		}

		protected override void OnPaint(PaintEventArgs pe)
		{
			this.MyPaint(pe.Graphics, false);
		}

		private void Drawepitome(Graphics g, bool bPt)
		{
			if (bPt)
			{
				g.FillRectangle(new SolidBrush(Color.Gray), this.epitomeRect_Pt);
				g.FillRectangle(new SolidBrush(Color.White), this.epitomeHighLightRect_Pt);
				return;
			}
			g.FillRectangle(new SolidBrush(Color.Gray), this.epitomeRect);
			g.FillRectangle(new SolidBrush(Color.White), this.epitomeHighLightRect);
		}

		private unsafe void DrawGraph(Graphics g, bool bPt)
		{
			double num = this.m_DataNumPerPixar;
			uint num2 = 11u;
			if (this.m_DataNumPerPixar > 4.0)
			{
				num = 4.0;
			}
			if (bPt)
			{
				if (this.m_channelMask == 1)
				{
					if (this.pGraphNativeMem == (IntPtr)0)
					{
						return;
					}
					this.DrawChannel(g, this.pGraphNativeMem, this.xLargeUnitPos[(int)((UIntPtr)num2)], this.m_X_pixarLenth_Pt, this.Grapenvord, this.m_index_BiasArray0_Pt, 0);
					return;
				}
				else if (this.m_channelMask == 16)
				{
					if (this.pGraphNativeMem2 == (IntPtr)0)
					{
						return;
					}
					this.DrawChannel(g, this.pGraphNativeMem2, this.xLargeUnitPos[(int)((UIntPtr)num2)], this.m_X_pixarLenth_Pt, this.Grapenvord2, this.m_index_BiasArray1_Pt, 1);
					return;
				}
				else if (this.m_channelMask == 17)
				{
					if (this.pGraphNativeMem == (IntPtr)0 || this.pGraphNativeMem2 == (IntPtr)0)
					{
						return;
					}
					this.DrawChannel(g, this.pGraphNativeMem, this.xLargeUnitPos[(int)((UIntPtr)num2)], this.m_X_pixarLenth_Pt, this.Grapenvord, this.m_index_BiasArray0_Pt, 0);
					this.DrawChannel(g, this.pGraphNativeMem2, this.xLargeUnitPos[(int)((UIntPtr)num2)], this.m_X_pixarLenth_Pt, this.Grapenvord2, this.m_index_BiasArray1_Pt, 1);
					this.DrawArithmeticChannel(g, num);
					return;
				}
				else if ((this.m_channelMask & 128) == 128)
				{
					if (this.pGraphNativeMem == (IntPtr)0 || this.pGraphNativeMem2 == (IntPtr)0)
					{
						return;
					}
					float num3 = this.m_X_pixarLenth_Pt / 500f;
					float num4 = (float)(1.0 / num) * num3;
					int num5 = (int)(500.0 * num / 2.0 - 1.0);
					float num6 = this.xLargeUnitPos[(int)((UIntPtr)num2)] - num4 * 2f;
					if (num < 2.0)
					{
						byte* ptr = (byte*)((void*)this.pGraphNativeMem);
						byte* ptr2 = (byte*)((void*)this.pGraphNativeMem2);
						for (int i = 0; i < num5; i++)
						{
							num6 += num4;
							g.DrawLine(this.Grapenvord, num6, this.m_index_BiasArray0_Pt[(int)(ptr + i)[this.m_TrigIndex]], num6 + num4, this.m_index_BiasArray0_Pt[(int)(ptr2 + i + this.m_TrigIndex)[1]]);
							num6 += num4;
							g.DrawLine(this.Grapenvord, num6, this.m_index_BiasArray0_Pt[(int)(ptr2 + i + this.m_TrigIndex)[1]], num6 + num4, this.m_index_BiasArray0_Pt[(int)(ptr + i + 1)[this.m_TrigIndex]]);
							if (this.m_Fullnum == (int)(ptr2 + i + this.m_TrigIndex)[1])
							{
								this.m_Position[0] = this.m_index_BiasArray0_Pt[(int)(ptr2 + i + this.m_TrigIndex)[1]];
							}
						}
						return;
					}
				}
			}
			else if (this.m_channelMask == 1)
			{
				if (this.pGraphNativeMem == (IntPtr)0)
				{
					return;
				}
				this.DrawChannel(g, this.pGraphNativeMem, this.xLargeUnitPos[0], this.m_X_pixarLenth, this.Grapenvord, this.m_index_BiasArray0, 0);
				return;
			}
			else if (this.m_channelMask == 16)
			{
				if (this.pGraphNativeMem2 == (IntPtr)0)
				{
					return;
				}
				this.DrawChannel(g, this.pGraphNativeMem2, this.xLargeUnitPos[0], this.m_X_pixarLenth, this.Grapenvord2, this.m_index_BiasArray1, 1);
				return;
			}
			else if (this.m_channelMask == 17)
			{
				if (this.pGraphNativeMem == (IntPtr)0 || this.pGraphNativeMem2 == (IntPtr)0)
				{
					return;
				}
				this.DrawChannel(g, this.pGraphNativeMem, this.xLargeUnitPos[0], this.m_X_pixarLenth, this.Grapenvord, this.m_index_BiasArray0, 0);
				this.DrawChannel(g, this.pGraphNativeMem2, this.xLargeUnitPos[0], this.m_X_pixarLenth, this.Grapenvord2, this.m_index_BiasArray1, 1);
				this.DrawArithmeticChannel(g, num);
				return;
			}
			else if ((this.m_channelMask & 128) == 128)
			{
				if (this.pGraphNativeMem == (IntPtr)0 || this.pGraphNativeMem2 == (IntPtr)0)
				{
					return;
				}
				float num7 = this.m_X_pixarLenth / 500f;
				float num8 = (float)(1.0 / num) * num7;
				int num9 = (int)(500.0 * num / 2.0 - 1.0);
				float num10 = this.xLargeUnitPos[0] - num8 * 2f;
				if (num < 2.0)
				{
					byte* ptr3 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr4 = (byte*)((void*)this.pGraphNativeMem2);
					for (int j = 0; j < num9; j++)
					{
						num10 += num8;
						g.DrawLine(this.Grapenvord, num10, this.m_index_BiasArray0[(int)(ptr3 + j)[this.m_TrigIndex]], num10 + num8, this.m_index_BiasArray0[(int)(ptr4 + j + this.m_TrigIndex)[1]]);
						num10 += num8;
						g.DrawLine(this.Grapenvord, num10, this.m_index_BiasArray0[(int)(ptr4 + j + this.m_TrigIndex)[1]], num10 + num8, this.m_index_BiasArray0[(int)(ptr3 + j + 1)[this.m_TrigIndex]]);
						if (this.m_Fullnum == (int)(ptr4 + j + this.m_TrigIndex)[1])
						{
							this.m_Position[0] = this.m_index_BiasArray0[(int)(ptr4 + j + this.m_TrigIndex)[1]];
						}
					}
				}
			}
		}

		private void DrawWarnning(Graphics g, int i)
		{
			Font font = new Font("Arial", 5f, FontStyle.Italic, GraphicsUnit.Millimeter);
			if (i == 0)
			{
				g.FillRectangle(this.lg5ZoomScreenRect, this.rectTrig.X, this.m_Position[i] - 51f, this.rectTrig.Width, 50f);
				g.DrawString("Channal 1: Warning! Out of range! ", font, this.drawBrush, this.rectTrig.X + this.rectTrig.Width / 4f, this.m_Position[i] - 40f);
				return;
			}
			g.FillRectangle(this.lg6ZoomScreenRect, this.rectTrig.X, this.m_Position[i] - 51f, this.rectTrig.Width, 50f);
			g.DrawString("Channal 2: Warning! Out of range! ", font, this.drawBrush, this.rectTrig.X + this.rectTrig.Width / 4f, this.m_Position[i] - 40f);
		}

		private unsafe void DrawChannel(Graphics g, IntPtr psource, float Xpos0, float XSpan, Pen pen, float[] biasArray, int j)
		{
			if (g == null)
			{
				return;
			}
			double num = this.m_DataNumPerPixar;
			if (this.m_DataNumPerPixar > 4.0)
			{
				num = 4.0;
			}
			float num2 = XSpan / 500f;
			byte* ptr = (byte*)((void*)psource);
			float num5;
			if (num < 2.0)
			{
				float num3 = (float)((double)num2 / num);
				int num4 = (int)(500.0 * num - 1.0);
				num5 = Xpos0 - num3;
				for (int i = 0; i < num4; i++)
				{
					num5 += num3;
					g.DrawLine(pen, num5, biasArray[(int)(ptr + i)[this.m_TrigIndex]], num5 + num3, biasArray[(int)(ptr + i + this.m_TrigIndex)[1]]);
					if (this.m_Fullnum == (int)(ptr + i)[this.m_TrigIndex])
					{
						this.m_Position[j] = biasArray[(int)(ptr + i)[this.m_TrigIndex]];
					}
				}
				return;
			}
			num5 = Xpos0 - num2;
			for (int k = 0; k < 499; k++)
			{
				num5 += num2;
				int num6 = (int)((double)k * num + (double)this.m_TrigIndex);
				int num7 = (int)((double)num6 + num);
				int num8 = 0;
				while ((double)num8 < num - 1.0)
				{
					g.DrawLine(pen, num5, biasArray[(int)(ptr + num6)[num8]], num5, biasArray[(int)(ptr + num6 + num8)[1]]);
					if (this.m_Fullnum == (int)(ptr + num6)[num8])
					{
						this.m_Position[j] = biasArray[(int)(ptr + num6)[num8]];
					}
					num8++;
				}
				g.DrawLine(pen, num5, biasArray[(int)(*(ptr + num7 - 1))], num5 + num2, biasArray[(int)ptr[num7]]);
				if (this.m_Fullnum == (int)(*(ptr + num7 - 1)))
				{
					this.m_Position[j] = biasArray[(int)(*(ptr + num7 - 1))];
				}
			}
		}

		private unsafe void DrawArithmeticChannel(Graphics g, double num)
		{
			if (g == null || this.m_channelMask != 17 || this.m_MathFlag == 0)
			{
				return;
			}
			float num2 = this.m_X_pixarLenth / 500f;
			Pen pen = this.MathAddPen;
			float num3 = 1f;
			float[] array = this.m_index_Array0;
			float[] array2 = this.m_index_BiasArray1;
			if (this.m_MathFlag == 3)
			{
				num3 = 0.003921569f;
				array2 = this.m_index_Array1;
				array = this.m_index_Array0;
				pen = this.MathMultiPen;
				float num6;
				if (num < 2.0)
				{
					float num4 = (float)(1.0 / num) * num2;
					int num5 = (int)(500.0 * num - 1.0);
					num6 = this.xLargeUnitPos[0] - num4;
					byte* ptr = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr2 = (byte*)((void*)this.pGraphNativeMem2);
					for (int i = 0; i < num5; i++)
					{
						num6 += num4;
						float num7 = (float)(ptr2 + i)[this.m_TrigIndex];
						float num8 = (float)(ptr + i)[this.m_TrigIndex] * num7 * num3;
						float num9 = (float)(ptr2 + i + 1)[this.m_TrigIndex];
						float num10 = (float)(ptr + i + 1)[this.m_TrigIndex] * num9 * num3;
						g.DrawLine(pen, num6, this.yLargeUnitPos[7] - num8, num6 + num4, this.yLargeUnitPos[7] - num10);
					}
					return;
				}
				num6 = this.xLargeUnitPos[0] - num2;
				for (int j = 0; j < 499; j++)
				{
					num6 += num2;
					int num11 = (int)((double)j * num + (double)this.m_TrigIndex);
					int num12 = (int)((double)num11 + num);
					byte* ptr3 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr4 = (byte*)((void*)this.pGraphNativeMem2);
					int num13 = 0;
					float num7;
					float num8;
					float num9;
					float num10;
					while ((double)num13 < num - 1.0)
					{
						num7 = (float)(ptr4 + num11)[num13];
						num8 = (float)(ptr3 + num11)[num13] * num7 * num3;
						num9 = (float)(ptr4 + num11 + num13)[1];
						num10 = (float)(ptr3 + num11 + num13)[1] * num9 * num3;
						g.DrawLine(pen, num6, this.TriIndicatorPos.Y - num8, num6, this.TriIndicatorPos.Y - num10);
						num13++;
					}
					num7 = (float)(*(ptr4 + num12 - 1));
					num8 = (float)(*(ptr3 + num12 - 1)) * num7 * num3;
					num9 = (float)ptr4[num12];
					num10 = (float)ptr3[num12] * num9 * num3;
					g.DrawLine(pen, num6, this.TriIndicatorPos.Y - num8, num6 + num2, this.TriIndicatorPos.Y - num10);
				}
				return;
			}
			else
			{
				if (this.m_MathFlag == 2)
				{
					num3 = -1f;
					pen = this.MathSubPen;
					array = this.m_index_BiasArray0;
					array2 = this.m_index_Array1;
				}
				else if (this.m_MathFlag == 1)
				{
					num3 = 1f;
					pen = this.MathAddPen;
					array2 = this.m_index_BiasArray1;
					array = this.m_index_Array0;
				}
				float num6;
				if (num < 2.0)
				{
					float num14 = (float)(1.0 / num) * num2;
					int num15 = (int)(500.0 * num - 1.0);
					num6 = this.xLargeUnitPos[0] - num14;
					byte* ptr5 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr6 = (byte*)((void*)this.pGraphNativeMem2);
					for (int k = 0; k < num15; k++)
					{
						num6 += num14;
						float y = num3 * array2[(int)(ptr6 + k)[this.m_TrigIndex]] + array[(int)(ptr5 + k)[this.m_TrigIndex]];
						float y2 = num3 * array2[(int)(ptr6 + k + 1)[this.m_TrigIndex]] + array[(int)(ptr5 + k + 1)[this.m_TrigIndex]];
						g.DrawLine(pen, num6, y, num6 + num14, y2);
					}
					return;
				}
				num6 = this.xLargeUnitPos[0] - num2;
				for (int l = 0; l < 499; l++)
				{
					num6 += num2;
					int num11 = (int)((double)l * num + (double)this.m_TrigIndex);
					int num12 = (int)((double)num11 + num);
					byte* ptr7 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr8 = (byte*)((void*)this.pGraphNativeMem2);
					int num16 = 0;
					float y;
					float y2;
					while ((double)num16 < num - 1.0)
					{
						y = array[(int)(ptr7 + num11)[num16]] + num3 * array2[(int)(ptr8 + num11)[num16]];
						y2 = array[(int)(ptr7 + num11 + num16)[1]] + num3 * array2[(int)(ptr8 + num11 + num16)[1]];
						g.DrawLine(pen, num6, y, num6, y2);
						num16++;
					}
					y = array[(int)(*(ptr7 + num12 - 1))] + num3 * array2[(int)(*(ptr8 + num12 - 1))];
					y2 = array[(int)ptr7[num12]] + num3 * array2[(int)ptr8[num12]];
					g.DrawLine(pen, num6, y, num6 + num2, y2);
				}
				return;
			}
		}

		private unsafe void DrawZoomedGraph(Graphics g, bool bPt)
		{
			if (this.m_Changingwave)
			{
				Color color = Color.FromArgb(this.m_R0, this.m_G0, this.m_B0);
				Color color2 = Color.FromArgb(this.m_R1, this.m_G1, this.m_B1);
				this.GraphPen = new Pen(color, 1f);
				this.GraphPen2 = new Pen(color2, 1f);
				this.AxisDotPen1 = new Pen(color, 1f);
				this.AxisDotPen1.DashStyle = DashStyle.Dot;
				this.AxisDotPen1.DashPattern = new float[]
				{
					10f,
					10f
				};
				this.AxisDotPen2 = new Pen(color2, 1f);
				this.AxisDotPen2.DashStyle = DashStyle.Dot;
				this.AxisDotPen2.DashPattern = new float[]
				{
					10f,
					10f
				};
			}
			if (this.m_VectorDot)
			{
				this.Grapenvord = this.GraphPen;
				this.Grapenvord2 = this.GraphPen2;
			}
			else
			{
				this.Grapenvord = this.AxisDotPen1;
				this.Grapenvord2 = this.AxisDotPen2;
			}
			if (bPt)
			{
				int num = 11;
				if (this.m_channelMask == 0)
				{
					return;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt == 0u)
				{
					this.DrawGraph(g, bPt);
					this.DrawXYGraph(g);
					return;
				}
				float num2 = (float)this.GraphRect_Pt.Bottom - (this.GraphRect.Bottom - this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0) * this.m_Y_pixarLenth_Pt / this.m_Y_pixarLenth;
				float num3 = (float)this.GraphRect_Pt.Bottom - (this.GraphRect.Bottom - this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1) * this.m_Y_pixarLenth_Pt / this.m_Y_pixarLenth;
				for (int i = 0; i < 256; i++)
				{
					float num4 = num2 + this.m_index_Array0_Pt[i] * this.m_ZoomedInfoStruct.ZoomedScale_Y;
					float num5 = num3 + this.m_index_Array1_Pt[i] * this.m_ZoomedInfoStruct.ZoomedScale_Y;
					if (num4 < this.yLargeUnitPos[num])
					{
						this.m_index_BiasArray0_Pt[i] = this.yLargeUnitPos[num] - 2f;
					}
					else if (num4 > (float)this.GraphRect_Pt.Bottom)
					{
						this.m_index_BiasArray0_Pt[i] = (float)this.GraphRect_Pt.Bottom;
					}
					else
					{
						this.m_index_BiasArray0_Pt[i] = num4;
					}
					if (num5 < this.yLargeUnitPos[num])
					{
						this.m_index_BiasArray1_Pt[i] = this.yLargeUnitPos[num] - 2f;
					}
					else if (num5 > (float)this.GraphRect_Pt.Bottom)
					{
						this.m_index_BiasArray1_Pt[i] = (float)(this.GraphRect_Pt.Bottom + 2);
					}
					else
					{
						this.m_index_BiasArray1_Pt[i] = num5;
					}
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedStart % 2 != 0)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedStart = this.m_ZoomedInfoStruct.originData_ZoomedStart + 1;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt % 2u != 0u)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedCnt = this.m_ZoomedInfoStruct.originData_ZoomedCnt + 1u;
				}
				this.m_pBuffer = MyDLLimport.GetBuffer4Read(-1);
				float num6 = this.m_X_pixarLenth_Pt / this.m_ZoomedInfoStruct.originData_ZoomedCnt;
				if (this.m_channelMask == 1)
				{
					uint num7 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr = num7;
					float num8 = this.xLargeUnitPos[num] - num6;
					int num9 = 0;
					while ((long)num9 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num8 += num6;
						g.DrawLine(this.Grapenvord, num8, this.m_index_BiasArray0_Pt[(int)ptr[(IntPtr)2 * (IntPtr)num9]], num8 + num6, this.m_index_BiasArray0_Pt[(int)(ptr + (IntPtr)2 * (IntPtr)num9)[2]]);
						num9++;
					}
					return;
				}
				if (this.m_channelMask == 16)
				{
					uint num10 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr2 = num10;
					float num8 = this.xLargeUnitPos[num] - num6;
					int num11 = 0;
					while ((long)num11 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num8 += num6;
						g.DrawLine(this.Grapenvord2, num8, this.m_index_BiasArray1_Pt[(int)(ptr2 + (IntPtr)2 * (IntPtr)num11)[1]], num8 + num6, this.m_index_BiasArray1_Pt[(int)(ptr2 + (IntPtr)2 * (IntPtr)num11)[3]]);
						num11++;
					}
					return;
				}
				if (this.m_channelMask == 17)
				{
					uint num12 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr3 = num12;
					float num8 = this.xLargeUnitPos[num] - num6;
					int num13 = 0;
					while ((long)num13 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num8 += num6;
						g.DrawLine(this.Grapenvord, num8, this.m_index_BiasArray0_Pt[(int)ptr3[(IntPtr)2 * (IntPtr)num13]], num8 + num6, this.m_index_BiasArray0_Pt[(int)(ptr3 + (IntPtr)2 * (IntPtr)num13)[2]]);
						g.DrawLine(this.Grapenvord2, num8, this.m_index_BiasArray1_Pt[(int)(ptr3 + (IntPtr)2 * (IntPtr)num13)[1]], num8 + num6, this.m_index_BiasArray1_Pt[(int)(ptr3 + (IntPtr)2 * (IntPtr)num13)[3]]);
						num13++;
					}
					this.DrawXYGraph(g);
					return;
				}
				if ((this.m_channelMask & 128) == 128)
				{
					uint num14 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr4 = num14;
					float num8 = this.xLargeUnitPos[num] - num6;
					int num15 = 0;
					while ((long)num15 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num8 += num6;
						g.DrawLine(this.Grapenvord, num8, this.m_index_BiasArray0_Pt[(int)(ptr4 + num15)[1]], num8 + num6, this.m_index_BiasArray0_Pt[(int)ptr4[num15]]);
						num8 += num6;
						g.DrawLine(this.Grapenvord, num8, this.m_index_BiasArray0_Pt[(int)ptr4[num15]], num8 + num6, this.m_index_BiasArray0_Pt[(int)(ptr4 + num15)[3]]);
						num15 += 2;
					}
					return;
				}
			}
			else
			{
				if (this.m_channelMask == 0)
				{
					g.DrawString(string.Format("No channel is selected", new object[0]), new Font("Arial", 20f, FontStyle.Regular), new SolidBrush(Color.FromArgb(70, 255, 255, 255)), new Point(120, 120));
					return;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt == 0u)
				{
					this.DrawGraph(g, bPt);
					this.DrawXYGraph(g);
					return;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedStart % 2 != 0)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedStart = this.m_ZoomedInfoStruct.originData_ZoomedStart + 1;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt % 2u != 0u)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedCnt = this.m_ZoomedInfoStruct.originData_ZoomedCnt + 1u;
				}
				this.m_pBuffer = MyDLLimport.GetBuffer4Read(-1);
				float num16 = this.m_X_pixarLenth / this.m_ZoomedInfoStruct.originData_ZoomedCnt;
				if (this.m_channelMask == 1)
				{
					uint num17 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr5 = num17;
					float num18 = this.xLargeUnitPos[0] - num16;
					int num19 = 0;
					while ((long)num19 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num18 += num16;
						g.DrawLine(this.Grapenvord, num18, this.m_index_BiasArray0[(int)ptr5[(IntPtr)2 * (IntPtr)num19]], num18 + num16, this.m_index_BiasArray0[(int)(ptr5 + (IntPtr)2 * (IntPtr)num19)[2]]);
						num19++;
					}
					return;
				}
				if (this.m_channelMask == 16)
				{
					uint num20 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr6 = num20;
					float num18 = this.xLargeUnitPos[0] - num16;
					int num21 = 0;
					while ((long)num21 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num18 += num16;
						g.DrawLine(this.Grapenvord2, num18, this.m_index_BiasArray1[(int)(ptr6 + (IntPtr)2 * (IntPtr)num21)[1]], num18 + num16, this.m_index_BiasArray1[(int)(ptr6 + (IntPtr)2 * (IntPtr)num21)[3]]);
						num21++;
					}
					return;
				}
				if (this.m_channelMask == 17)
				{
					uint num22 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr7 = num22;
					float num18 = this.xLargeUnitPos[0] - num16;
					int num23 = 0;
					while ((long)num23 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num18 += num16;
						g.DrawLine(this.Grapenvord, num18, this.m_index_BiasArray0[(int)ptr7[(IntPtr)2 * (IntPtr)num23]], num18 + num16, this.m_index_BiasArray0[(int)(ptr7 + (IntPtr)2 * (IntPtr)num23)[2]]);
						g.DrawLine(this.Grapenvord2, num18, this.m_index_BiasArray1[(int)(ptr7 + (IntPtr)2 * (IntPtr)num23)[1]], num18 + num16, this.m_index_BiasArray1[(int)(ptr7 + (IntPtr)2 * (IntPtr)num23)[3]]);
						num23++;
					}
					this.DrawXYGraph(g);
					return;
				}
				if ((this.m_channelMask & 128) == 128)
				{
					uint num24 = (uint)((ulong)((int)this.m_pBuffer + (int)this.m_OriginTrigIndex) + (ulong)((long)(this.m_ZoomedInfoStruct.originData_ZoomedStart * 2)));
					byte* ptr8 = num24;
					float num18 = this.xLargeUnitPos[0] - num16;
					int num25 = 0;
					while ((long)num25 < (long)((ulong)this.m_ZoomedInfoStruct.originData_ZoomedCnt))
					{
						num18 += num16;
						g.DrawLine(this.Grapenvord, num18, this.m_index_BiasArray0[(int)(ptr8 + num25)[1]], num18 + num16, this.m_index_BiasArray0[(int)ptr8[num25]]);
						num18 += num16;
						g.DrawLine(this.Grapenvord, num18, this.m_index_BiasArray0[(int)ptr8[num25]], num18 + num16, this.m_index_BiasArray0[(int)(ptr8 + num25)[3]]);
						num25 += 2;
					}
				}
			}
		}

		private void DrawXYGraph(Graphics g)
		{
			if (this.m_channelMask == 17)
			{
				switch (this.m_xyBase)
				{
				case UserControl1.XYGraphBase.X_Channel1:
					this.DrawLissajousGraph(g, this.pGraphNativeMem, this.pGraphNativeMem2, this.m_xyPen);
					return;
				case UserControl1.XYGraphBase.X_Channel2:
					this.DrawLissajousGraph(g, this.pGraphNativeMem2, this.pGraphNativeMem, this.m_xyPen);
					break;
				default:
					return;
				}
			}
		}

		private unsafe void DrawLissajousGraph(Graphics g, IntPtr pXSource, IntPtr pYSource, Pen pen)
		{
			if (g == null)
			{
				return;
			}
			double num = this.m_DataNumPerPixar;
			if (this.m_DataNumPerPixar > 4.0)
			{
				num = 4.0;
			}
			byte* ptr = (byte*)((void*)pXSource);
			byte* ptr2 = (byte*)((void*)pYSource);
			float[] x_BiasArray = this.m_x_BiasArray;
			float[] y_BiasArray = this.m_y_BiasArray;
			int num2 = 0;
			if (num < 2.0)
			{
				int num3 = (int)(500.0 * num - 1.0);
				for (int i = 0; i < num3; i++)
				{
					num2 = i + this.m_TrigIndex;
					g.DrawLine(pen, x_BiasArray[(int)ptr[num2]], y_BiasArray[(int)ptr2[num2]], x_BiasArray[(int)(ptr + num2)[1]], y_BiasArray[(int)(ptr2 + num2)[1]]);
				}
				return;
			}
			for (int j = 0; j < 499; j++)
			{
				int num4 = (int)((double)j * num + (double)this.m_TrigIndex);
				int num5 = (int)((double)num4 + num);
				int num6 = 0;
				while ((double)num6 < num - 1.0)
				{
					num2 = num4 + num6;
					g.DrawLine(pen, x_BiasArray[(int)ptr[num2]], y_BiasArray[(int)ptr2[num2]], x_BiasArray[(int)(ptr + num2)[1]], y_BiasArray[(int)(ptr2 + num2)[1]]);
					num6++;
				}
				g.DrawLine(pen, x_BiasArray[(int)(ptr + num2)[1]], y_BiasArray[(int)(*(ptr2 + num5 - 1))], x_BiasArray[(int)ptr[num5]], y_BiasArray[(int)ptr2[num5]]);
			}
		}

		private unsafe void DrawZoomGraph(Graphics g, bool bPt)
		{
			if (bPt)
			{
				float left = this.ZoomScreenRect_Pt.Left;
				float arg_1D_0 = this.ZoomScreenRect_Pt.Top;
				float width = this.ZoomScreenRect_Pt.Width;
				float arg_35_0 = this.ZoomScreenRect_Pt.Height;
				if (this.m_channelMask == 0)
				{
					return;
				}
				if (this.pGraphNativeMem == (IntPtr)0)
				{
					return;
				}
				double num;
				if (this.m_DataNumPerPixar > 4.0)
				{
					num = 4.0;
				}
				else
				{
					num = this.m_DataNumPerPixar;
				}
				float num2 = width / 500f;
				if (this.m_channelMask == 1)
				{
					byte* ptr = (byte*)((void*)this.pGraphNativeMem);
					if (num < 2.0)
					{
						float num3 = (float)(1.0 / num) * num2;
						int num4 = (int)(500.0 * num - 1.0);
						for (int i = 0; i < num4; i++)
						{
							float num5 = left + (float)i * num3;
							g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr + i)[this.m_TrigIndex]], num5 + num3, this.m_Zoom_BiasArray0_Pt[(int)(ptr + i + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int j = 0; j < 499; j++)
					{
						float num5 = left + (float)j * num2;
						int num6 = (int)((double)j * num + (double)this.m_TrigIndex);
						int num7 = (int)((double)num6 + num);
						int num8 = 0;
						while ((double)num8 < num - 1.0)
						{
							g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr + num6)[num8]], num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr + num6 + num8)[1]]);
							num8++;
						}
						g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(*(ptr + num7 - 1))], num5 + 1f * num2, this.m_Zoom_BiasArray0_Pt[(int)ptr[num7]]);
					}
					return;
				}
				else if (this.m_channelMask == 16)
				{
					byte* ptr2 = (byte*)((void*)this.pGraphNativeMem);
					if (num < 2.0)
					{
						float num9 = (float)(1.0 / num) * num2;
						int num10 = (int)(500.0 * num - 1.0);
						for (int k = 0; k < num10; k++)
						{
							float num5 = left + (float)k * num9;
							g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr2 + k)[this.m_TrigIndex]], num5 + num9, this.m_Zoom_BiasArray1_Pt[(int)(ptr2 + k + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int l = 0; l < 499; l++)
					{
						float num5 = left + (float)l * num2;
						int num6 = (int)((double)l * num + (double)this.m_TrigIndex);
						int num7 = (int)((double)num6 + num);
						int num11 = 0;
						while ((double)num11 < num - 1.0)
						{
							g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr2 + num6)[num11]], num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr2 + num6 + num11)[1]]);
							num11++;
						}
						g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(*(ptr2 + num7 - 1))], num5 + 1f * num2, this.m_Zoom_BiasArray1_Pt[(int)ptr2[num7]]);
					}
					return;
				}
				else if (this.m_channelMask == 17)
				{
					if (num < 2.0)
					{
						float num12 = (float)(1.0 / num) * num2;
						int num13 = (int)(500.0 * num - 1.0);
						byte* ptr3 = (byte*)((void*)this.pGraphNativeMem);
						byte* ptr4 = (byte*)((void*)this.pGraphNativeMem2);
						for (int m = 0; m < num13; m++)
						{
							float num5 = left + (float)m * num12;
							g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr3 + m)[this.m_TrigIndex]], num5 + num12, this.m_Zoom_BiasArray0_Pt[(int)(ptr3 + m + 1)[this.m_TrigIndex]]);
							g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr4 + m)[this.m_TrigIndex]], num5 + num12, this.m_Zoom_BiasArray1_Pt[(int)(ptr4 + m + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int n = 0; n < 499; n++)
					{
						float num5 = left + (float)n * num2;
						int num6 = (int)((double)n * num + (double)this.m_TrigIndex);
						int num7 = (int)((double)num6 + num);
						byte* ptr5 = (byte*)((void*)this.pGraphNativeMem);
						byte* ptr6 = (byte*)((void*)this.pGraphNativeMem2);
						int num14 = 0;
						while ((double)num14 < num - 1.0)
						{
							g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr5 + num6)[num14]], num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr5 + num6 + num14)[1]]);
							g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr6 + num6)[num14]], num5, this.m_Zoom_BiasArray1_Pt[(int)(ptr6 + num6 + num14)[1]]);
							num14++;
						}
						g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(*(ptr5 + num7 - 1))], num5 + 1f * num2, this.m_Zoom_BiasArray0_Pt[(int)ptr5[num7]]);
						g.DrawLine(this.GraphPen2, num5, this.m_Zoom_BiasArray1_Pt[(int)(*(ptr6 + num7 - 1))], num5 + 1f * num2, this.m_Zoom_BiasArray1_Pt[(int)ptr6[num7]]);
					}
					return;
				}
				else if ((this.m_channelMask & 128) == 128 && num < 2.0)
				{
					float num15 = (float)(1.0 / num) * num2;
					int num16 = (int)(500.0 * num / 2.0 - 1.0);
					byte* ptr7 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr8 = (byte*)((void*)this.pGraphNativeMem2);
					for (int num17 = 0; num17 < num16; num17++)
					{
						float num5 = left + (float)num17 * num15 * 2f;
						g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr7 + num17)[this.m_TrigIndex]], num5 + num15, this.m_Zoom_BiasArray0_Pt[(int)(ptr8 + num17 + this.m_TrigIndex)[1]]);
						num5 += num15;
						g.DrawLine(this.GraphPen, num5, this.m_Zoom_BiasArray0_Pt[(int)(ptr8 + num17 + this.m_TrigIndex)[1]], num5 + num15, this.m_Zoom_BiasArray0_Pt[(int)(ptr7 + num17 + 1)[this.m_TrigIndex]]);
					}
					return;
				}
			}
			else
			{
				float left2 = this.ZoomScreenRect.Left;
				float arg_6C3_0 = this.ZoomScreenRect.Top;
				float width2 = this.ZoomScreenRect.Width;
				float arg_6DC_0 = this.ZoomScreenRect.Height;
				if (this.m_channelMask == 0)
				{
					return;
				}
				if (this.pGraphNativeMem == (IntPtr)0)
				{
					return;
				}
				double num18;
				if (this.m_DataNumPerPixar > 4.0)
				{
					num18 = 4.0;
				}
				else
				{
					num18 = this.m_DataNumPerPixar;
				}
				float num19 = width2 / 500f;
				if (this.m_channelMask == 1)
				{
					byte* ptr9 = (byte*)((void*)this.pGraphNativeMem);
					if (num18 < 2.0)
					{
						float num20 = (float)(1.0 / num18) * num19;
						int num21 = (int)(500.0 * num18 - 1.0);
						for (int num22 = 0; num22 < num21; num22++)
						{
							float num23 = left2 + (float)num22 * num20;
							g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr9 + num22)[this.m_TrigIndex]], num23 + num20, this.m_Zoom_BiasArray0[(int)(ptr9 + num22 + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int num24 = 0; num24 < 499; num24++)
					{
						float num23 = left2 + (float)num24 * num19;
						int num25 = (int)((double)num24 * num18 + (double)this.m_TrigIndex);
						int num26 = (int)((double)num25 + num18);
						int num27 = 0;
						while ((double)num27 < num18 - 1.0)
						{
							g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr9 + num25)[num27]], num23, this.m_Zoom_BiasArray0[(int)(ptr9 + num25 + num27)[1]]);
							num27++;
						}
						g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(*(ptr9 + num26 - 1))], num23 + 1f * num19, this.m_Zoom_BiasArray0[(int)ptr9[num26]]);
					}
					return;
				}
				else if (this.m_channelMask == 16)
				{
					byte* ptr10 = (byte*)((void*)this.pGraphNativeMem);
					if (num18 < 2.0)
					{
						float num28 = (float)(1.0 / num18) * num19;
						int num29 = (int)(500.0 * num18 - 1.0);
						for (int num30 = 0; num30 < num29; num30++)
						{
							float num23 = left2 + (float)num30 * num28;
							g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(ptr10 + num30)[this.m_TrigIndex]], num23 + num28, this.m_Zoom_BiasArray1[(int)(ptr10 + num30 + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int num31 = 0; num31 < 499; num31++)
					{
						float num23 = left2 + (float)num31 * num19;
						int num25 = (int)((double)num31 * num18 + (double)this.m_TrigIndex);
						int num26 = (int)((double)num25 + num18);
						int num32 = 0;
						while ((double)num32 < num18 - 1.0)
						{
							g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(ptr10 + num25)[num32]], num23, this.m_Zoom_BiasArray1[(int)(ptr10 + num25 + num32)[1]]);
							num32++;
						}
						g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(*(ptr10 + num26 - 1))], num23 + 1f * num19, this.m_Zoom_BiasArray1[(int)ptr10[num26]]);
					}
					return;
				}
				else if (this.m_channelMask == 17)
				{
					if (num18 < 2.0)
					{
						float num33 = (float)(1.0 / num18) * num19;
						int num34 = (int)(500.0 * num18 - 1.0);
						byte* ptr11 = (byte*)((void*)this.pGraphNativeMem);
						byte* ptr12 = (byte*)((void*)this.pGraphNativeMem2);
						for (int num35 = 0; num35 < num34; num35++)
						{
							float num23 = left2 + (float)num35 * num33;
							g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr11 + num35)[this.m_TrigIndex]], num23 + num33, this.m_Zoom_BiasArray0[(int)(ptr11 + num35 + 1)[this.m_TrigIndex]]);
							g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(ptr12 + num35)[this.m_TrigIndex]], num23 + num33, this.m_Zoom_BiasArray1[(int)(ptr12 + num35 + 1)[this.m_TrigIndex]]);
						}
						return;
					}
					for (int num36 = 0; num36 < 499; num36++)
					{
						float num23 = left2 + (float)num36 * num19;
						int num25 = (int)((double)num36 * num18 + (double)this.m_TrigIndex);
						int num26 = (int)((double)num25 + num18);
						byte* ptr13 = (byte*)((void*)this.pGraphNativeMem);
						byte* ptr14 = (byte*)((void*)this.pGraphNativeMem2);
						int num37 = 0;
						while ((double)num37 < num18 - 1.0)
						{
							g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr13 + num25)[num37]], num23, this.m_Zoom_BiasArray0[(int)(ptr13 + num25 + num37)[1]]);
							g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(ptr14 + num25)[num37]], num23, this.m_Zoom_BiasArray1[(int)(ptr14 + num25 + num37)[1]]);
							num37++;
						}
						g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(*(ptr13 + num26 - 1))], num23 + 1f * num19, this.m_Zoom_BiasArray0[(int)ptr13[num26]]);
						g.DrawLine(this.GraphPen2, num23, this.m_Zoom_BiasArray1[(int)(*(ptr14 + num26 - 1))], num23 + 1f * num19, this.m_Zoom_BiasArray1[(int)ptr14[num26]]);
					}
					return;
				}
				else if ((this.m_channelMask & 128) == 128 && num18 < 2.0)
				{
					float num38 = (float)(1.0 / num18) * num19;
					int num39 = (int)(500.0 * num18 / 2.0 - 1.0);
					byte* ptr15 = (byte*)((void*)this.pGraphNativeMem);
					byte* ptr16 = (byte*)((void*)this.pGraphNativeMem2);
					for (int num40 = 0; num40 < num39; num40++)
					{
						float num23 = left2 + (float)num40 * num38 * 2f;
						g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr15 + num40)[this.m_TrigIndex]], num23 + num38, this.m_Zoom_BiasArray0[(int)(ptr16 + num40 + this.m_TrigIndex)[1]]);
						num23 += num38;
						g.DrawLine(this.GraphPen, num23, this.m_Zoom_BiasArray0[(int)(ptr16 + num40 + this.m_TrigIndex)[1]], num23 + num38, this.m_Zoom_BiasArray0[(int)(ptr15 + num40 + 1)[this.m_TrigIndex]]);
					}
				}
			}
		}

		private void UserControl1_MouseMove(object sender, MouseEventArgs e)
		{
			this.CurrentMousePt.X = e.X;
			this.CurrentMousePt.Y = e.Y;
			if (this.m_MouseDownUpAr && !this.m_bRulerUseEnabled && !this.m_bZoomUseEnabled && !this.m_MeasureIndicatorMove && !this.m_MeasureIndicatorMove2 && !this.m_MeasureIndicatorMove3 && !this.m_MeasureIndicatorMove4)
			{
				if ((float)this.CurrentMousePt.X - this.m_XmouseBegin >= 10f)
				{
					this.LeftRightMove(1);
					this.m_XmouseBegin = (float)this.CurrentMousePt.X;
				}
				else if (this.m_XmouseBegin - (float)this.CurrentMousePt.X >= 10f)
				{
					this.LeftRightMove(-1);
					this.m_XmouseBegin = (float)this.CurrentMousePt.X;
				}
			}
			if (this.GraphRect.Contains(this.CurrentMousePt))
			{
				base.Invalidate(new Region(this.TriIndiRect3));
				base.Invalidate(new Region(this.TriIndiRect4));
				this.TriIndicatorPos3.X = (float)e.X;
				this.TriIndiRect3.X = (float)((int)(this.TriIndicatorPos3.X - (float)(this.IndicatorWidth / 2)));
				base.Invalidate(new Region(this.TriIndiRect3));
				this.TriIndiRect4.Y = (float)(this.CurrentMousePt.Y - this.IndicatorWidth / 2);
				base.Invalidate(new Region(this.TriIndiRect4));
				base.Invalidate(new Region(this.TitleRect));
			}
			if (this.m_bRulerUseEnabled || this.m_bZoomUseEnabled)
			{
				base.Invalidate(new Region(this.CurrentMouseRect));
				if ((float)this.CurrentMousePt.X < this.xLargeUnitPos[5])
				{
					this.CurrentMouseRect.X = (float)(this.CurrentMousePt.X + this.m_Margin * 2);
					if ((float)this.CurrentMousePt.Y < this.yLargeUnitPos[5])
					{
						this.CurrentMouseRect.Y = (float)(this.CurrentMousePt.Y + this.m_Margin * 2);
					}
					else
					{
						this.CurrentMouseRect.Y = (float)this.CurrentMousePt.Y - this.yLargeUnitPos[1] + this.yLargeUnitPos[0];
					}
				}
				else
				{
					this.CurrentMouseRect.X = (float)this.CurrentMousePt.X - this.xLargeUnitPos[6] + this.xLargeUnitPos[5];
					if ((float)this.CurrentMousePt.Y < this.yLargeUnitPos[5])
					{
						this.CurrentMouseRect.Y = (float)(this.CurrentMousePt.Y + this.m_Margin * 2);
					}
					else
					{
						this.CurrentMouseRect.Y = (float)this.CurrentMousePt.Y - this.yLargeUnitPos[1] + this.yLargeUnitPos[0];
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
			else
			{
				this.CurrentMousePt.X = e.X;
				this.CurrentMousePt.Y = e.Y;
				if (!this.GraphRect.Contains(this.CurrentMousePt))
				{
					return;
				}
				if (this.m_TriIndicatorMove)
				{
					base.Invalidate(new Region(this.TriIndiRect));
					this.TriIndicatorPos.Y = (float)e.Y;
					this.TriIndiRect.Y = (float)((int)(this.TriIndicatorPos.Y - (float)(this.IndicatorWidth / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRect));
					base.Invalidate();
					float num = this.ZoomScreenRect.Height / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
					float num2 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos.Y) * num;
					float arg_4ED_0 = this.ZoomScreenRect.Bottom;
					float arg_4F9_0 = this.GraphRect.Bottom;
					float arg_505_0 = this.TriIndicatorPos2.Y;
					for (int i = 0; i < 256; i++)
					{
						this.m_index_BiasArray0[i] = this.TriIndicatorPos.Y + this.m_index_Array0[i];
						this.m_Zoom_BiasArray0[i] = num2 + this.m_index_Array0[i] * num;
					}
				}
				else if (this.m_TriIndicatorMove2)
				{
					base.Invalidate(new Region(this.TriIndiRect2));
					this.TriIndicatorPos2.Y = (float)e.Y;
					this.TriIndiRect2.Y = (float)((int)(this.TriIndicatorPos2.Y - (float)(this.IndicatorWidth / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRect2));
					base.Invalidate();
					float num3 = this.ZoomScreenRect.Height / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
					float arg_5E2_0 = this.ZoomScreenRect.Bottom;
					float arg_5EE_0 = this.GraphRect.Bottom;
					float arg_5FA_0 = this.TriIndicatorPos.Y;
					float num4 = this.ZoomScreenRect.Bottom - (this.GraphRect.Bottom - this.TriIndicatorPos2.Y) * num3;
					for (int j = 0; j < 256; j++)
					{
						this.m_index_BiasArray1[j] = this.TriIndicatorPos2.Y + this.m_index_Array1[j];
						this.m_Zoom_BiasArray1[j] = num4 + this.m_index_Array1[j] * num3;
					}
				}
				else if (this.m_MeasureIndicatorMove)
				{
					base.Invalidate(new Region(this.TriIndiRectM));
					this.MeasureIndicator.Y = (float)e.Y;
					this.TriIndiRectM.Y = (float)((int)(this.MeasureIndicator.Y - (float)(this.IndicatorWidthM / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRectM));
				}
				else if (this.m_MeasureIndicatorMove2)
				{
					base.Invalidate(new Region(this.TriIndiRectM2));
					this.MeasureIndicator2.Y = (float)e.Y;
					this.TriIndiRectM2.Y = (float)((int)(this.MeasureIndicator2.Y - (float)(this.IndicatorWidthM / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRectM2));
				}
				else if (this.m_MeasureIndicatorMove3)
				{
					base.Invalidate(new Region(this.TriIndiRectM3));
					this.MeasureIndicator3.X = (float)e.X;
					this.TriIndiRectM3.X = (float)((int)(this.MeasureIndicator3.X - (float)(this.IndicatorWidthM / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRectM3));
					base.Invalidate();
				}
				else if (this.m_MeasureIndicatorMove4)
				{
					base.Invalidate(new Region(this.TriIndiRectM4));
					this.MeasureIndicator4.X = (float)e.X;
					this.TriIndiRectM4.X = (float)((int)(this.MeasureIndicator4.X - (float)(this.IndicatorWidthM / 2) - 1f));
					base.Invalidate(new Region(this.TriIndiRectM4));
					base.Invalidate();
				}
				else if (this.m_LevelIndicatorMove)
				{
					base.Invalidate(new Region(this.TriLevelRect));
					this.LevelIndicatorPos.Y = (float)e.Y;
					this.TriLevelRect.Y = (float)((int)(this.LevelIndicatorPos.Y - (float)(this.IndicatorWidth / 2) - 1f));
					base.Invalidate(new Region(this.TriLevelRect));
				}
				else if (this.m_LevelIndicatorMove2)
				{
					base.Invalidate(new Region(this.TriLevelRect2));
					this.LevelIndicatorPos2.Y = (float)e.Y;
					this.TriLevelRect2.Y = (float)((int)(this.LevelIndicatorPos2.Y - (float)(this.IndicatorWidth / 2) - 1f));
					base.Invalidate(new Region(this.TriLevelRect2));
				}
				if (this.TriIndicatorPos.Y - this.LevelIndicatorPos.Y > 1f)
				{
					this.rectTrig.Y = this.LevelIndicatorPos.Y;
					this.rectTrig.Height = this.TriIndicatorPos.Y - this.LevelIndicatorPos.Y - 1f;
				}
				else
				{
					this.rectTrig.Y = this.TriIndicatorPos.Y;
					this.rectTrig.Height = this.LevelIndicatorPos.Y - this.TriIndicatorPos.Y + 1f;
				}
				if (this.TriIndicatorPos2.Y - this.LevelIndicatorPos2.Y > 1f)
				{
					this.rectTrig2.Y = this.LevelIndicatorPos2.Y;
					this.rectTrig2.Height = this.TriIndicatorPos2.Y - this.LevelIndicatorPos2.Y - 1f;
				}
				else
				{
					this.rectTrig2.Y = this.TriIndicatorPos2.Y;
					this.rectTrig2.Height = this.LevelIndicatorPos2.Y - this.TriIndicatorPos2.Y + 1f;
				}
				if (this.m_bDrawTrigLevelOrNot || this.m_bDrawTrigLevel1rNot)
				{
					base.Invalidate(new Region(this.GraphRect));
				}
			}
		}

		protected virtual void OnValidMouseMoveEvt(EventArgs e)
		{
			if (this.ValidMouseMoveEvt != null)
			{
				this.ValidMouseMoveEvt(this, e);
			}
		}

		private void DrawPanel(Graphics g, bool bPt)
		{
			if (bPt)
			{
				g.DrawRectangle(new Pen(Color.Black, 1f), this.GraphRect_Pt);
				return;
			}
			g.FillRectangle(this.brBKcolorGraph1, this.GraphRect);
		}

		private void DrawZoomPanel(Graphics g, bool bPt)
		{
			if (!this.m_bZoomUseEnabled)
			{
				return;
			}
			if (bPt)
			{
				g.FillRectangle(this.lg4ZoomScreenRect, this.ZoomScreenRect_Pt);
				this.DrawZoomGraph(g, bPt);
				this.DrawZoomedMousePos(g);
				return;
			}
			g.FillRectangle(this.lg4ZoomScreenRect, this.ZoomScreenRect);
			this.DrawZoomGraph(g, bPt);
			this.DrawZoomedMousePos(g);
			ControlPaint.DrawBorder3D(g, new Rectangle((int)this.ZoomScreenRect.X, (int)this.ZoomScreenRect.Y, (int)this.ZoomScreenRect.Width, (int)this.ZoomScreenRect.Height), Border3DStyle.Sunken);
		}

		private void DrawTriIndicator(Graphics g, bool bPt)
		{
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt != 0u)
			{
				return;
			}
			if (bPt)
			{
				return;
			}
			if (this.m_bDrawTrigLevelOrNot)
			{
				this.m_XIndicator_LevelPath = this.TriRect(this.LevelIndicatorPos, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				g.FillRectangle(this.PanellgHighlight, this.rectTrig);
				return;
			}
			if (this.m_bDrawTrigLevel1rNot)
			{
				this.m_XIndicator_LevelPath2 = this.TriRect(this.LevelIndicatorPos2, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				g.FillRectangle(this.PanellgHighlight, this.rectTrig2);
			}
		}

		private void DrawZeroIndicator(Graphics g, bool bPt)
		{
			if (bPt)
			{
				uint num = 11u;
				PointF pointF = new PointF(this.TriIndicatorPos_Pt.X, this.TriIndicatorPos_Pt.Y);
				PointF pointF2 = new PointF(this.TriIndicatorPos2_Pt.X, this.TriIndicatorPos2_Pt.Y);
				this.m_ch0ZeroPosScale_Pt = (this.TriIndicatorPos_Pt.Y - this.yLargeUnitPos[(int)((UIntPtr)(5u + num))]) / this.m_Y_pixarLenth_Pt;
				this.m_ch1ZeroPosScale_Pt = (this.TriIndicatorPos2_Pt.Y - this.yLargeUnitPos[(int)((UIntPtr)(5u + num))]) / this.m_Y_pixarLenth_Pt;
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt != 0u)
				{
					pointF = new PointF(this.TriIndicatorPos_Pt.X, (float)this.GraphRect_Pt.Bottom - (this.GraphRect.Bottom - this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0) * this.m_Y_pixarLenth_Pt / this.m_Y_pixarLenth);
					pointF2 = new PointF(this.TriIndicatorPos2_Pt.X, (float)this.GraphRect_Pt.Bottom - (this.GraphRect.Bottom - this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1) * this.m_Y_pixarLenth_Pt / this.m_Y_pixarLenth);
				}
				GraphicsPath path = this.TriRect(pointF, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				GraphicsPath path2 = this.TriRect(pointF2, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				g.FillPath(this.m_Sbrush_Zero0, path);
				g.DrawString("1", this.smallFLargeFont, this.m_Sbrush_Zero3, new PointF(pointF.X + (float)(this.IndicatorWidth / 2), pointF.Y - (float)(this.IndicatorWidth * 3 / 8)));
				g.FillPath(this.m_Sbrush_Zero1, path2);
				g.DrawString("2", this.smallFLargeFont, this.m_Sbrush_Zero3, new PointF(pointF2.X + (float)(this.IndicatorWidth / 2), pointF2.Y - (float)(this.IndicatorWidth * 3 / 8)));
				g.DrawLine(this.m_pen_Zero0, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)], pointF.Y), pointF);
				g.DrawLine(this.m_pen_Zero1, new PointF(this.xLargeUnitPos[(int)((UIntPtr)num)], pointF2.Y), pointF2);
				return;
			}
			PointF pointF3 = new PointF(this.TriIndicatorPos.X, this.TriIndicatorPos.Y);
			PointF pointF4 = new PointF(this.TriIndicatorPos2.X, this.TriIndicatorPos2.Y);
			PointF p = new PointF(this.MeasureIndicator.X, this.MeasureIndicator.Y);
			PointF p2 = new PointF(this.MeasureIndicator2.X, this.MeasureIndicator2.Y);
			PointF pointF5 = new PointF(this.MeasureIndicator3.X, this.MeasureIndicator3.Y);
			PointF pointF6 = new PointF(this.MeasureIndicator4.X, this.MeasureIndicator4.Y);
			this.m_ch0ZeroPosScale = (this.TriIndicatorPos.Y - this.yLargeUnitPos[5]) / this.m_Y_pixarLenth;
			this.m_ch1ZeroPosScale = (this.TriIndicatorPos2.Y - this.yLargeUnitPos[5]) / this.m_Y_pixarLenth;
			this.m_ch0ZeroMeaScale = (this.MeasureIndicator.Y - this.yLargeUnitPos[2]) / this.m_Y_pixarLenth;
			this.m_ch1ZeroMeaScale = (this.MeasureIndicator2.Y - this.yLargeUnitPos[8]) / this.m_Y_pixarLenth;
			this.m_0ZeroMeaScale = (this.MeasureIndicator3.X - this.xLargeUnitPos[2]) / this.m_X_pixarLenth;
			this.m_1ZeroMeaScale = (this.MeasureIndicator4.X - this.xLargeUnitPos[8]) / this.m_X_pixarLenth;
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt != 0u)
			{
				pointF3 = new PointF(this.TriIndicatorPos.X, this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0);
				pointF4 = new PointF(this.TriIndicatorPos2.X, this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1);
			}
			this.m_XIndicator_TriPath = this.TriRect(pointF3, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
			this.m_XIndicator_TriPath2 = this.TriRect(pointF4, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
			g.FillPath(this.m_Sbrush_Zero0, this.m_XIndicator_TriPath);
			g.DrawString("1", this.smallFLargeFont, this.m_Sbrush_Zero3, new PointF(pointF3.X + (float)(this.IndicatorWidth / 2), pointF3.Y - (float)(this.IndicatorWidth * 3 / 8)));
			g.FillPath(this.m_Sbrush_Zero1, this.m_XIndicator_TriPath2);
			g.DrawString("2", this.smallFLargeFont, this.m_Sbrush_Zero3, new PointF(pointF4.X + (float)(this.IndicatorWidth / 2), pointF4.Y - (float)(this.IndicatorWidth * 3 / 8)));
			g.DrawLine(this.m_pen_Zero0, new PointF(this.xLargeUnitPos[0], pointF3.Y), pointF3);
			g.DrawLine(this.m_pen_Zero1, new PointF(this.xLargeUnitPos[0], pointF4.Y), pointF4);
			this.m_XIndicator_Measure = this.TriRect3(p, (float)this.IndicatorWidthM, (float)this.IndicatorWidthM);
			this.m_XIndicator_Measure2 = this.TriRect3(p2, (float)this.IndicatorWidthM, (float)this.IndicatorWidthM);
			this.m_XIndicator_Measure3 = this.TriRect2(pointF5, (float)this.IndicatorWidthM, (float)this.IndicatorWidthM);
			this.m_XIndicator_Measure4 = this.TriRect2(pointF6, (float)this.IndicatorWidthM, (float)this.IndicatorWidthM);
			float[] dashPattern = new float[]
			{
				5f,
				2f,
				15f,
				4f
			};
			Pen pen = new Pen(Color.FromArgb(53, 204, 15));
			pen.DashPattern = dashPattern;
			if (this.isDrawMeasurCur)
			{
				g.FillPath(this.m_Sbrush_Measure, this.m_XIndicator_Measure);
				g.DrawLine(pen, new PointF(this.xLargeUnitPos[0], p.Y), new PointF(this.xLargeUnitPos[10], p.Y));
				g.FillPath(this.m_Sbrush_Measure, this.m_XIndicator_Measure2);
				g.DrawLine(pen, new PointF(this.xLargeUnitPos[0], p2.Y), new PointF(this.xLargeUnitPos[10], p2.Y));
				double num2 = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (this.TriIndicatorPos.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth);
				double num3 = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (this.TriIndicatorPos2.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth);
				double num4 = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (p.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth) - num2;
				g.DrawString(string.Format("CH1:{0:0.00} V", num4), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[0] + 20f, p.Y));
				double num5 = (double)(this.m_ZoomedInfoStruct.m_Y0axisStart - (p2.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y0axisStep / this.m_Y_pixarLenth) - num2;
				g.DrawString(string.Format("CH1:{0:0.00} V", num5), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[0] + 20f, p2.Y));
				double num6 = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (p.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth) - num3;
				g.DrawString(string.Format("CH2:{0:0.00} V", num6), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[9] - 40f, p.Y));
				double num7 = (double)(this.m_ZoomedInfoStruct.m_Y1axisStart - (p2.Y - this.yLargeUnitPos[0]) * 10f * this.m_ZoomedInfoStruct.m_Y1axisStep / this.m_Y_pixarLenth) - num3;
				g.DrawString(string.Format("CH2:{0:0.00} V", num7), this.InfoFont, this.m_Sbrush_Zero2, new PointF(this.xLargeUnitPos[9] - 40f, p2.Y));
				g.FillPath(this.m_Sbrush_Measure, this.m_XIndicator_Measure3);
				g.DrawLine(pen, new PointF(pointF5.X, this.yLargeUnitPos[10]), pointF5);
				double num8 = (double)(this.m_ZoomedInfoStruct.m_XaxisStart + (this.MeasureIndicator3.X - this.GraphRect.Left) * 10f * this.m_ZoomedInfoStruct.m_XaxisStep / this.m_X_pixarLenth);
				g.DrawString(string.Format("{0:0.00}" + this.m_StrXaxis, num8), this.InfoFont, this.m_Sbrush_Zero2, new PointF(pointF5.X, this.yLargeUnitPos[0] + 10f));
				g.FillPath(this.m_Sbrush_Measure, this.m_XIndicator_Measure4);
				g.DrawLine(pen, new PointF(pointF6.X, this.yLargeUnitPos[10]), pointF6);
				double num9 = (double)(this.m_ZoomedInfoStruct.m_XaxisStart + (this.MeasureIndicator4.X - this.GraphRect.Left) * 10f * this.m_ZoomedInfoStruct.m_XaxisStep / this.m_X_pixarLenth);
				g.DrawString(string.Format("{0:0.00}" + this.m_StrXaxis, num9), this.InfoFont, this.m_Sbrush_Zero2, new PointF(pointF6.X, this.yLargeUnitPos[0] + 10f));
			}
			if (this.m_bDrawTrigLevelOrNot && this.m_ZoomedInfoStruct.originData_ZoomedCnt == 0u)
			{
				this.m_ch0TrigPosScale = (this.LevelIndicatorPos.Y - this.yLargeUnitPos[3]) / this.m_Y_pixarLenth;
				this.m_XIndicator_LevelPath = this.TriRect(this.LevelIndicatorPos, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				g.FillPath(this.m_Sbrush_Zero0, this.m_XIndicator_LevelPath);
				g.DrawString("T", this.smallFLargeFont, this.m_Sbrush_Zero4, new PointF(this.LevelIndicatorPos.X + (float)(this.IndicatorWidth / 2), this.LevelIndicatorPos.Y - (float)(this.IndicatorWidth * 3 / 8)));
				return;
			}
			if (this.m_bDrawTrigLevel1rNot && this.m_ZoomedInfoStruct.originData_ZoomedCnt == 0u)
			{
				this.m_ch1TrigPosScale = (this.LevelIndicatorPos2.Y - this.yLargeUnitPos[3]) / this.m_Y_pixarLenth;
				this.m_XIndicator_LevelPath2 = this.TriRect(this.LevelIndicatorPos2, (float)this.IndicatorWidth, (float)this.IndicatorWidth);
				g.FillPath(this.m_Sbrush_Zero1, this.m_XIndicator_LevelPath2);
				g.DrawString("T", this.smallFLargeFont, this.m_Sbrush_Zero4, new PointF(this.LevelIndicatorPos2.X + (float)(this.IndicatorWidth / 2), this.LevelIndicatorPos2.Y - (float)(this.IndicatorWidth * 3 / 8)));
			}
		}

		private GraphicsPath TriRect(PointF p, float height, float width)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLine(p.X, p.Y, p.X + width, p.Y - height / 2f);
			graphicsPath.AddLine(p.X + width, p.Y - height / 2f, p.X + width, p.Y + height / 2f);
			graphicsPath.AddLine(p.X + width, p.Y + height / 2f, p.X, p.Y);
			return graphicsPath;
		}

		private GraphicsPath TriRect2(PointF p, float height, float width)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLine(p.X, p.Y + height / 2f, p.X - width / 2f, p.Y);
			graphicsPath.AddLine(p.X - width / 2f, p.Y, p.X + width / 2f, p.Y);
			graphicsPath.AddLine(p.X + width / 2f, p.Y, p.X, p.Y + height / 2f);
			return graphicsPath;
		}

		private GraphicsPath TriRect3(PointF p, float height, float width)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLine(p.X + width, p.Y, p.X, p.Y - height / 2f);
			graphicsPath.AddLine(p.X, p.Y - height / 2f, p.X, p.Y + height / 2f);
			graphicsPath.AddLine(p.X, p.Y + height / 2f, p.X + width, p.Y);
			return graphicsPath;
		}

		private void UserControl1_Load(object sender, EventArgs e)
		{
			this.aTimer.Elapsed += new ElapsedEventHandler(this.TimerMoveLRhandler);
			this.aTimer.Interval = 150.0;
			this.aTimer.AutoReset = true;
			this.aTimer.Enabled = false;
			this.m_dataOffset = (int)((double)(50f * this.m_xPanIndex * this.m_howmuchGrid) * this.m_DataNumPerPixar) * 2;
			this.ControlWidth = base.Bounds.Width;
			this.ControlHeight = base.Bounds.Height;
			this.setBlackGround(1);
			this.layoutCaculationInit();
			this.MouseRect.X = this.xLargeUnitPos[0];
			this.MouseRect.Y = this.yLargeUnitPos[0];
			this.MouseRect.Width = this.m_X_pixarLenth;
			this.MouseRect.Height = this.m_Y_pixarLenth;
			this.SetMenuItemEnable(3, false);
			this.menuStrip1.Items[0].ToolTipText = Resource1.TipFitAll;
			this.menuStrip1.Items[1].ToolTipText = Resource1.TipRuler;
			this.menuStrip1.Items[2].ToolTipText = Resource1.TipInfo;
			this.menuStrip1.Items[3].ToolTipText = Resource1.TipZoom;
			this.menuStrip1.Items[4].ToolTipText = Resource1.StringMenuZoomOut;
			this.menuStrip1.Items[5].ToolTipText = Resource1.TipStringLeft;
			this.menuStrip1.Items[6].ToolTipText = Resource1.TipStringRight;
			this.menuStrip1.Items[7].ToolTipText = Resource1.TipStringZoomX;
			this.menuStrip1.Items[8].ToolTipText = Resource1.TipColor;
			this.menuStrip1.Items[9].ToolTipText = Resource1.TipLissajour;
			this.menuStrip1.Items[10].ToolTipText = Resource1.TipSaveText;
			this.menuStrip1.Items[11].ToolTipText = Resource1.TipScreenShot;
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
			this.CurrentMousePt.X = e.X;
			this.CurrentMousePt.Y = e.Y;
			this.m_XmouseBegin = (float)this.CurrentMousePt.X;
			this.m_MouseDownUpAr = true;
			if (this.m_bRulerUseEnabled || this.m_bZoomUseEnabled)
			{
				if (this.GraphRect.Contains(this.CurrentMousePt))
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
						this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = (float)this.heightScroll;
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
						return;
					}
				}
			}
			else
			{
				if (this.TriLevelRect.Contains(this.CurrentMousePt) && this.m_bDrawTrigLevelOrNot)
				{
					this.m_LevelIndicatorMove = true;
					return;
				}
				if (this.TriLevelRect2.Contains(this.CurrentMousePt) && this.m_bDrawTrigLevel1rNot)
				{
					this.m_LevelIndicatorMove2 = true;
					return;
				}
				if (this.TriIndiRect.Contains(this.CurrentMousePt))
				{
					this.m_TriIndicatorMove = true;
					return;
				}
				if (this.TriIndiRect2.Contains(this.CurrentMousePt))
				{
					this.m_TriIndicatorMove2 = true;
					return;
				}
				if (this.TriIndiRectM.Contains(this.CurrentMousePt))
				{
					this.m_MeasureIndicatorMove = true;
					return;
				}
				if (this.TriIndiRectM2.Contains(this.CurrentMousePt))
				{
					this.m_MeasureIndicatorMove2 = true;
					return;
				}
				if (this.TriIndiRectM3.Contains(this.CurrentMousePt))
				{
					this.m_MeasureIndicatorMove3 = true;
					return;
				}
				if (this.TriIndiRectM4.Contains(this.CurrentMousePt))
				{
					this.m_MeasureIndicatorMove4 = true;
				}
			}
		}

		private void UserControl1_MouseUp(object sender, MouseEventArgs e)
		{
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
				this.m_TriIndicatorMove = false;
				this.m_TriIndicatorMove2 = false;
				this.m_LevelIndicatorMove = false;
				this.m_LevelIndicatorMove2 = false;
				this.m_MeasureIndicatorMove = false;
				this.m_MeasureIndicatorMove2 = false;
				this.m_MeasureIndicatorMove3 = false;
				this.m_MeasureIndicatorMove4 = false;
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
			float num2 = (this.yLargeUnitPos[0] - this.MouseRect.Top) / (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]);
			float num3 = (this.yLargeUnitPos[10] - this.yLargeUnitPos[0]) / this.MouseRect.Height;
			float num4 = this.GraphRect.Width / this.MouseRect.Width;
			if (this.m_ZoomType == 0)
			{
				this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 = this.GraphRect.Bottom + (this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 - this.MouseRect.Bottom) * num3;
				this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 = this.GraphRect.Bottom + (this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 - this.MouseRect.Bottom) * num3;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left + (this.MouseRect.Left - this.GraphRect.Left) / this.m_ZoomedInfoStruct.ZoomedScale_X;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Top + 2f + (this.MouseRect.Top - this.yLargeUnitPos[0]) / this.m_ZoomedInfoStruct.ZoomedScale_Y;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = this.MouseRect.Width / this.m_ZoomedInfoStruct.ZoomedScale_X;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height = this.MouseRect.Height / this.m_ZoomedInfoStruct.ZoomedScale_Y;
				float num5 = (float)(500.0 / (double)this.m_X_pixarLenth);
				int num6 = (int)((double)(num5 * this.m_xPanIndex * this.m_howmuchGrid * this.m_xLargeUnitInterval) * this.m_DataNumPerPixar);
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (int)((double)(num5 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar) + num6;
				this.m_ZoomedInfoStruct.originData_ZoomedCnt = (uint)((double)(num5 * this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width) * this.m_DataNumPerPixar);
				if (this.m_ZoomedInfoStruct.originData_ZoomedStart % 2 != 0)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedStart = this.m_ZoomedInfoStruct.originData_ZoomedStart + 1;
				}
				if (this.m_ZoomedInfoStruct.originData_ZoomedCnt % 2u != 0u)
				{
					this.m_ZoomedInfoStruct.originData_ZoomedCnt = this.m_ZoomedInfoStruct.originData_ZoomedCnt + 1u;
				}
				this.m_ZoomedInfoStruct.ZoomedScale_X = this.m_ZoomedInfoStruct.ZoomedScale_X * num4;
				this.m_ZoomedInfoStruct.ZoomedScale_Y = this.m_ZoomedInfoStruct.ZoomedScale_Y * num3;
				for (int i = 0; i < 256; i++)
				{
					float num7 = this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 + this.m_index_Array0[i] * this.m_ZoomedInfoStruct.ZoomedScale_Y;
					float num8 = this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 + this.m_index_Array1[i] * this.m_ZoomedInfoStruct.ZoomedScale_Y;
					if (num7 < this.yLargeUnitPos[0])
					{
						this.m_index_BiasArray0[i] = this.yLargeUnitPos[0] - 2f;
					}
					else if (num7 > this.GraphRect.Bottom)
					{
						this.m_index_BiasArray0[i] = this.GraphRect.Bottom;
					}
					else
					{
						this.m_index_BiasArray0[i] = num7;
					}
					if (num8 < this.yLargeUnitPos[0])
					{
						this.m_index_BiasArray1[i] = this.yLargeUnitPos[0] - 2f;
					}
					else if (num8 > this.GraphRect.Bottom)
					{
						this.m_index_BiasArray1[i] = this.GraphRect.Bottom + 2f;
					}
					else
					{
						this.m_index_BiasArray1[i] = num8;
					}
				}
				this.m_ZoomedInfoStruct.m_Y0axisStart = this.m_ZoomedInfoStruct.m_Y0axisStart + num2 * this.m_ZoomedInfoStruct.m_Y0axisStep * 10f;
				this.m_ZoomedInfoStruct.m_Y0axisStep = this.m_ZoomedInfoStruct.m_Y0axisStep / num3;
				this.SetAxisY0(this.m_ZoomedInfoStruct.m_Y0axisStart, this.m_ZoomedInfoStruct.m_Y0axisStep, this.m_StrY0axis, 0);
				this.m_ZoomedInfoStruct.m_Y1axisStart = this.m_ZoomedInfoStruct.m_Y1axisStart + num2 * this.m_ZoomedInfoStruct.m_Y1axisStep * 10f;
				this.m_ZoomedInfoStruct.m_Y1axisStep = this.m_ZoomedInfoStruct.m_Y1axisStep / num3;
				this.SetAxisY1(this.m_ZoomedInfoStruct.m_Y1axisStart, this.m_ZoomedInfoStruct.m_Y1axisStep, this.m_StrY1axis, 0);
			}
			else if (this.m_ZoomType == 1)
			{
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left + (this.MouseRect.Left - this.GraphRect.Left) / this.m_ZoomedInfoStruct.ZoomedScale_X;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = this.yLargeUnitPos[0];
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = this.MouseRect.Width / this.m_ZoomedInfoStruct.ZoomedScale_X;
				this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height = this.yLargeUnitPos[10] - this.yLargeUnitPos[0];
				float num9 = (float)(500.0 / (double)this.m_X_pixarLenth);
				int num10 = (int)((double)(num9 * this.m_xPanIndex * this.m_howmuchGrid * this.m_xLargeUnitInterval) * this.m_DataNumPerPixar);
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (int)((double)(num9 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar) + num10;
				this.m_ZoomedInfoStruct.originData_ZoomedCnt = (uint)((double)(num9 * this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width) * this.m_DataNumPerPixar);
				this.m_ZoomedInfoStruct.ZoomedScale_X = this.m_ZoomedInfoStruct.ZoomedScale_X * num4;
			}
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_ZoomedInfoStruct.m_XaxisStart + num * this.m_ZoomedInfoStruct.m_XaxisStep * 10f;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_ZoomedInfoStruct.m_XaxisStep / num4;
			if (this.m_ZoomedInfoStruct.originData_ZoomedStart % 2 != 0)
			{
				this.m_ZoomedInfoStruct.originData_ZoomedStart = this.m_ZoomedInfoStruct.originData_ZoomedStart + 1;
			}
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt % 2u != 0u)
			{
				this.m_ZoomedInfoStruct.originData_ZoomedCnt = this.m_ZoomedInfoStruct.originData_ZoomedCnt + 1u;
			}
			this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
		}

		private void ttttyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.m_bRulerUseEnabled = false;
			this.m_bDrawMouseState = false;
			this.m_bZoomUseEnabled = false;
			this.m_bLOCKMouse = false;
			this.Cursor = Cursors.Hand;
			this.zomoutToolStripMenuItem.Enabled = false;
			this.m_ZoomType = 0;
			this.m_ZoomedInfoStruct.ZoomedScale_Y = 1f;
			this.m_ZoomedInfoStruct.ZoomedScale_X = 1f;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra0 = this.TriIndicatorPos.Y;
			this.m_ZoomedInfoStruct.ZommedZeroLevelPosY4Gra1 = this.TriIndicatorPos2.Y;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.X = (float)(this.m_Width_Axisis + this.m_Margin);
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Y = this.yLargeUnitPos[0];
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width = 0f;
			this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Height = 0f;
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = 0u;
			this.m_ZoomedInfoStruct.originData_ZoomedStart = 0;
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_XaxisStep;
			for (int i = 0; i < 256; i++)
			{
				this.m_index_BiasArray0[i] = this.TriIndicatorPos.Y + this.m_index_Array0[i];
				this.m_index_BiasArray1[i] = this.TriIndicatorPos2.Y + this.m_index_Array1[i];
			}
			base.Invalidate(new Region(this.GraphRect));
			float num = this.m_XaxisStep * this.m_howmuchGrid;
			this.SetAxisX(this.m_XaxisStart + num * this.m_xPanIndex, this.m_XaxisStep, this.m_StrXaxis, 0);
			this.SetAxisY0(this.m_Y0axisStart, this.m_Y0axisStep, this.m_StrY0axis, 0);
			this.SetAxisY1(this.m_Y1axisStart, this.m_Y1axisStep, this.m_StrY1axis, 0);
		}

		private void uuuToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.m_bRulerUseEnabled = true;
			this.m_bDrawMouseState = false;
			this.m_bZoomUseEnabled = false;
			this.m_bLOCKMouse = false;
			base.Invalidate(new Region(this.GraphRect));
		}

		public void printSetup()
		{
			this.pageSetupDialog1.Document = this.printDocument1;
			this.pageSetupDialog1.ShowDialog();
		}

		public void print()
		{
			this.printDialog1.Document = this.printDocument1;
			if (this.printDialog1.ShowDialog() == DialogResult.OK)
			{
				try
				{
					this.printDocument1.Print();
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "printDialog");
				}
			}
		}

		public void printView()
		{
			this.printPreviewDialog1.Document = this.printDocument1;
			try
			{
				this.printPreviewDialog1.ShowDialog();
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message, "printPreviewDialog error!");
			}
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
			this.m_ZoomType = 0;
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
			int num4 = (int)((double)(num3 * this.m_xPanIndex * this.m_howmuchGrid * this.m_xLargeUnitInterval) * this.m_DataNumPerPixar);
			this.m_ZoomedInfoStruct.originData_ZoomedStart = (int)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar) + num4;
			this.m_ZoomedInfoStruct.originData_ZoomedCnt = (uint)((double)(num3 * this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width) * this.m_DataNumPerPixar);
			if (this.m_ZoomedInfoStruct.originData_ZoomedStart % 2 != 0)
			{
				this.m_ZoomedInfoStruct.originData_ZoomedStart = this.m_ZoomedInfoStruct.originData_ZoomedStart + 1;
			}
			if (this.m_ZoomedInfoStruct.originData_ZoomedCnt % 2u != 0u)
			{
				this.m_ZoomedInfoStruct.originData_ZoomedCnt = this.m_ZoomedInfoStruct.originData_ZoomedCnt + 1u;
			}
			base.Invalidate(new Region(this.GraphRect));
			float num5 = this.m_XaxisStep * this.m_howmuchGrid;
			this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + num5 * this.m_xPanIndex + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
			this.m_ZoomedInfoStruct.m_XaxisStep = this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Width * this.m_XaxisStep / this.GraphRect.Width;
			this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
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
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (int)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar) + num4;
				base.Invalidate(new Region(this.GraphRect));
				float num5 = this.m_XaxisStep * this.m_howmuchGrid;
				this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + num5 * this.m_xPanIndex + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
				this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
				return;
			}
			this.LeftRightMove(-1);
			this.aTimer.Enabled = true;
		}

		private void ReadCompactData()
		{
			if (this.m_channelMask == 1)
			{
				this.pGraphNativeMem = MyDLLimport.GetRawData4Read(0);
				return;
			}
			if (this.m_channelMask == 16)
			{
				this.pGraphNativeMem2 = MyDLLimport.GetRawData4Read(1);
				return;
			}
			if (this.m_channelMask == 17 || (this.m_channelMask & 128) == 128)
			{
				this.pGraphNativeMem = MyDLLimport.GetRawData4Read(0);
				this.pGraphNativeMem2 = MyDLLimport.GetRawData4Read(1);
				return;
			}
			this.pGraphNativeMem = (IntPtr)0;
			this.pGraphNativeMem2 = (IntPtr)0;
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
				this.m_ZoomedInfoStruct.originData_ZoomedStart = (int)((double)(num3 * (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left)) * this.m_DataNumPerPixar + (double)num4);
				base.Invalidate(new Region(this.GraphRect));
				float num5 = this.m_XaxisStep * this.m_howmuchGrid;
				this.m_ZoomedInfoStruct.m_XaxisStart = this.m_XaxisStart + num5 * this.m_xPanIndex + (this.m_ZoomedInfoStruct.ZoomSelectedInAllOriginRect.Left - this.GraphRect.Left) * 10f * this.m_XaxisStep / this.GraphRect.Width;
				this.SetAxisX(this.m_ZoomedInfoStruct.m_XaxisStart, this.m_ZoomedInfoStruct.m_XaxisStep, this.m_StrXaxis, 0);
				return;
			}
			this.LeftRightMove(1);
			this.aTimer.Enabled = true;
		}

		private int LeftRightMove(int index)
		{
			if (!this.m_enablePan)
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
			try
			{
				if (MyDLLimport.DataPreDisposal(0u, this.m_dataOffset, 2000u) == 0)
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
					return 0;
				}
				this.SetAxisX(this.m_XaxisStart + num * this.m_xPanIndex, this.m_XaxisStep, this.m_StrXaxis, 0);
				MyDLLimport.SetReadEnableOrNot(1u);
				this.ReadCompactData();
				base.Invalidate(new Region(this.GraphRect));
				this.UpdateEpitome((double)(this.m_dataOffset / 2));
			}
			catch (Exception)
			{
			}
			return 0;
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
			this.m_ZoomType = 1;
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

		private void XYMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.m_xyBase == UserControl1.XYGraphBase.X_Channel1)
			{
				this.m_xyBase = UserControl1.XYGraphBase.None;
			}
			else
			{
				this.m_xyBase = UserControl1.XYGraphBase.X_Channel1;
			}
			base.Invalidate(new Region(this.GraphRect));
		}

		public void fileSave_Click(int index, int divideNum)
		{
			global::SaveData.SaveData saveData = new global::SaveData.SaveData();
			saveData.ChannelMask = this.m_channelMask;
			saveData.DeviceName = this.m_DeviceName;
			saveData.CurrentState = this.m_CurrentState;
			saveData.PlayType = this.m_PlayType;
			saveData.SampleRate = this.m_sampleRate;
			IntPtr buffer4Read = MyDLLimport.GetBuffer4Read(-1);
			saveData.Chan0Offset = this.Chan0Offset;
			saveData.Chan0Rate = this.Chan0Rate;
			saveData.Chan1Offset = this.Chan1Offset;
			saveData.Chann1Rate = this.Chann1Rate;
			if (index == 0)
			{
				saveData.SaveAsText(buffer4Read, this.m_OriginTrigIndex, (int)(500.0 * this.m_DataNumPerPixar), divideNum);
				return;
			}
		}

		private void fileToolStripMenuItem_Click(object sender, EventArgs e)
		{
			global::SaveData.SaveData saveData = new global::SaveData.SaveData();
			saveData.ChannelMask = this.m_channelMask;
			saveData.DeviceName = this.m_DeviceName;
			saveData.CurrentState = this.m_CurrentState;
			saveData.PlayType = this.m_PlayType;
			saveData.SampleRate = this.m_sampleRate;
			IntPtr buffer4Read = MyDLLimport.GetBuffer4Read(-1);
			saveData.Chan0Offset = this.Chan0Offset;
			saveData.Chan0Rate = this.Chan0Rate;
			saveData.Chan1Offset = this.Chan1Offset;
			saveData.Chann1Rate = this.Chann1Rate;
			saveData.SaveAsText(buffer4Read, this.m_OriginTrigIndex, (int)(500.0 * this.m_DataNumPerPixar), 1);
		}

		private void snapToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.SaveScreenshot();
		}

		private void snapshot_Click(object sender, EventArgs e)
		{
			Screen primaryScreen = Screen.PrimaryScreen;
			Rectangle bounds = primaryScreen.Bounds;
			int width = bounds.Width;
			int height = bounds.Height;
			Image image = new Bitmap(width, height);
			Graphics graphics = Graphics.FromImage(image);
			graphics.CopyFromScreen(new Point(0, 0), new Point(0, 0), new Size(width, height));
			bool flag = true;
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Title = "Image Save";
			saveFileDialog.Filter = "Jpeg|*.jpg|bmp|*.bmp|gif|*.gif";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				string text = saveFileDialog.FileName.ToString();
				if (text != null)
				{
					string text2 = text.Substring(text.LastIndexOf(".") + 1).ToString();
					ImageFormat format = null;
					string a;
					if ((a = text2) != null)
					{
						if (a == "jpg")
						{
							format = ImageFormat.Jpeg;
							goto IL_10A;
						}
						if (a == "bmp")
						{
							format = ImageFormat.Bmp;
							goto IL_10A;
						}
						if (a == "gif")
						{
							format = ImageFormat.Gif;
							goto IL_10A;
						}
					}
					MessageBox.Show("只能存取为：jpg,bmp,gif");
					flag = false;
					IL_10A:
					if (text == null)
					{
						format = ImageFormat.Jpeg;
					}
					if (flag)
					{
						try
						{
							image.Save(text, format);
						}
						catch
						{
							MessageBox.Show("Save failed");
						}
					}
				}
			}
		}

		public void GetUserConrolProMem()
		{
			this.snapshot_Click(null, null);
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

		public void TimerMoveLRhandler(object source, ElapsedEventArgs e)
		{
			if (this.m_LR)
			{
				this.LeftRightMove(-5);
				return;
			}
			this.LeftRightMove(5);
		}

		private void rightMoveUp(object sender, MouseEventArgs e)
		{
			this.aTimer.Enabled = false;
		}

		private void leftMoveUp(object sender, MouseEventArgs e)
		{
			this.aTimer.Enabled = false;
		}

		private void printDocument1_PrintPage_1(object sender, PrintPageEventArgs e)
		{
			this.layoutCaculationInit_Pt(e.MarginBounds.X, e.MarginBounds.Y, e.MarginBounds.Width, e.MarginBounds.Height, 11);
			this.MyPaint(e.Graphics, true);
			Graphics graphics = e.Graphics;
			Brush brush = new SolidBrush(Color.Black);
			Font font = new Font("楷体", 30f);
			Font font2 = new Font("宋体", 16f);
			string text = "Wave Graph";
			string s = "Version 1.4";
			graphics.DrawString(text, font, brush, new PointF(((float)e.PageBounds.Width - graphics.MeasureString(text, font).Width) / 2f, 40f));
			graphics.DrawString(s, font2, brush, new PointF(600f, 1130f));
			graphics.DrawString(DateTime.Now.ToString(), font2, brush, new Point(520, 1100));
		}

		private void printDocument1_BeginPrint(object sender, PrintEventArgs e)
		{
			this.setBlackGround(0);
		}

		private void printDocument1_EndPrint(object sender, PrintEventArgs e)
		{
			this.setBlackGround(1);
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
			this.ZoomMenuItem = new ToolStripMenuItem();
			this.zomoutToolStripMenuItem = new ToolStripMenuItem();
			this.LeftMoveMenuItem = new ToolStripMenuItem();
			this.rightMoveMenuItem = new ToolStripMenuItem();
			this.XzoomMenuItem2 = new ToolStripMenuItem();
			this.ColorMenuItem1 = new ToolStripMenuItem();
			this.XYMenuItem1 = new ToolStripMenuItem();
			this.fileToolStripMenuItem = new ToolStripMenuItem();
			this.snapshot = new ToolStripMenuItem();
			this.toolStripMenuItem1 = new ToolStripMenuItem();
			this.printDocument1 = new PrintDocument();
			this.printPreviewDialog1 = new PrintPreviewDialog();
			this.printDialog1 = new PrintDialog();
			this.pageSetupDialog1 = new PageSetupDialog();
			this.menuStrip1.SuspendLayout();
			base.SuspendLayout();
			this.menuStrip1.BackColor = Color.White;
			this.menuStrip1.Dock = DockStyle.None;
			this.menuStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.ttttyToolStripMenuItem,
				this.uuuToolStripMenuItem,
				this.MenuItemNormWnd,
				this.ZoomMenuItem,
				this.zomoutToolStripMenuItem,
				this.LeftMoveMenuItem,
				this.rightMoveMenuItem,
				this.XzoomMenuItem2,
				this.ColorMenuItem1,
				this.XYMenuItem1,
				this.fileToolStripMenuItem,
				this.snapshot
			});
			this.menuStrip1.LayoutStyle = ToolStripLayoutStyle.VerticalStackWithOverflow;
			this.menuStrip1.Location = new Point(430, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Padding = new Padding(1, 2, 0, 2);
			this.menuStrip1.RightToLeft = RightToLeft.Yes;
			this.menuStrip1.ShowItemToolTips = true;
			this.menuStrip1.Size = new Size(36, 426);
			this.menuStrip1.TabIndex = 2;
			this.menuStrip1.Text = "menuStrip1";
			this.menuStrip1.MouseMove += new MouseEventHandler(this.menuStrip1_MouseMove);
			this.menuStrip1.MouseHover += new EventHandler(this.menuStrip1_MouseHover);
			this.ttttyToolStripMenuItem.AutoSize = false;
			this.ttttyToolStripMenuItem.AutoToolTip = true;
			this.ttttyToolStripMenuItem.CheckOnClick = true;
			this.ttttyToolStripMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.ttttyToolStripMenuItem.Font = new Font("SimSun", 18f, FontStyle.Regular, GraphicsUnit.Point, 134);
			this.ttttyToolStripMenuItem.Image = Resources.view_fullscreen;
			this.ttttyToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.ttttyToolStripMenuItem.Name = "ttttyToolStripMenuItem";
			this.ttttyToolStripMenuItem.Padding = new Padding(0);
			this.ttttyToolStripMenuItem.Size = new Size(35, 35);
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
			this.uuuToolStripMenuItem.Size = new Size(35, 35);
			this.uuuToolStripMenuItem.Click += new EventHandler(this.uuuToolStripMenuItem_Click);
			this.MenuItemNormWnd.AutoSize = false;
			this.MenuItemNormWnd.Image = Resources.open_in_browser;
			this.MenuItemNormWnd.ImageScaling = ToolStripItemImageScaling.None;
			this.MenuItemNormWnd.Name = "MenuItemNormWnd";
			this.MenuItemNormWnd.Padding = new Padding(0, 0, 4, 0);
			this.MenuItemNormWnd.Size = new Size(35, 35);
			this.MenuItemNormWnd.TextImageRelation = TextImageRelation.ImageAboveText;
			this.MenuItemNormWnd.Click += new EventHandler(this.MenuItemNormWnd_Click);
			this.ZoomMenuItem.AutoSize = false;
			this.ZoomMenuItem.BackgroundImageLayout = ImageLayout.None;
			this.ZoomMenuItem.Image = Resources.zoom;
			this.ZoomMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.ZoomMenuItem.Name = "ZoomMenuItem";
			this.ZoomMenuItem.Size = new Size(35, 35);
			this.ZoomMenuItem.Click += new EventHandler(this.ZoomMenuItem_Click);
			this.zomoutToolStripMenuItem.AutoSize = false;
			this.zomoutToolStripMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.zomoutToolStripMenuItem.Image = Resources.zoom_out32;
			this.zomoutToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.zomoutToolStripMenuItem.Name = "zomoutToolStripMenuItem";
			this.zomoutToolStripMenuItem.Size = new Size(35, 35);
			this.zomoutToolStripMenuItem.Text = "zomout";
			this.zomoutToolStripMenuItem.ToolTipText = "Zoom Out";
			this.zomoutToolStripMenuItem.Click += new EventHandler(this.zomoutToolStripMenuItem_Click);
			this.LeftMoveMenuItem.AutoSize = false;
			this.LeftMoveMenuItem.AutoToolTip = true;
			this.LeftMoveMenuItem.BackgroundImageLayout = ImageLayout.Stretch;
			this.LeftMoveMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.LeftMoveMenuItem.Image = Resources.leftMove2;
			this.LeftMoveMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.LeftMoveMenuItem.Name = "LeftMoveMenuItem";
			this.LeftMoveMenuItem.Size = new Size(35, 35);
			this.LeftMoveMenuItem.Text = "zoomoutX";
			this.LeftMoveMenuItem.MouseUp += new MouseEventHandler(this.leftMoveUp);
			this.LeftMoveMenuItem.MouseDown += new MouseEventHandler(this.leftMoveMenuItem_MouseDown);
			this.rightMoveMenuItem.AutoSize = false;
			this.rightMoveMenuItem.BackgroundImageLayout = ImageLayout.Center;
			this.rightMoveMenuItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.rightMoveMenuItem.Image = Resources.rightMove;
			this.rightMoveMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.rightMoveMenuItem.Name = "rightMoveMenuItem";
			this.rightMoveMenuItem.Size = new Size(35, 35);
			this.rightMoveMenuItem.MouseUp += new MouseEventHandler(this.rightMoveUp);
			this.rightMoveMenuItem.MouseDown += new MouseEventHandler(this.rightMoveMenuItem_MouseDown);
			this.XzoomMenuItem2.AutoSize = false;
			this.XzoomMenuItem2.Image = Resources.search;
			this.XzoomMenuItem2.ImageScaling = ToolStripItemImageScaling.None;
			this.XzoomMenuItem2.Name = "XzoomMenuItem2";
			this.XzoomMenuItem2.Size = new Size(35, 35);
			this.XzoomMenuItem2.Click += new EventHandler(this.XzoomMenuItem2_Click);
			this.ColorMenuItem1.AutoSize = false;
			this.ColorMenuItem1.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.ColorMenuItem1.Image = Resources.color_management;
			this.ColorMenuItem1.ImageScaling = ToolStripItemImageScaling.None;
			this.ColorMenuItem1.Name = "ColorMenuItem1";
			this.ColorMenuItem1.Size = new Size(35, 35);
			this.ColorMenuItem1.Text = " ";
			this.ColorMenuItem1.Click += new EventHandler(this.ColorMenuItem1_Click);
			this.XYMenuItem1.AutoSize = false;
			this.XYMenuItem1.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.XYMenuItem1.Image = Resources.XY;
			this.XYMenuItem1.ImageScaling = ToolStripItemImageScaling.None;
			this.XYMenuItem1.Name = "XYMenuItem1";
			this.XYMenuItem1.Size = new Size(35, 35);
			this.XYMenuItem1.Text = "toolStripMenuItem1";
			this.XYMenuItem1.Click += new EventHandler(this.XYMenuItem1_Click);
			this.fileToolStripMenuItem.AutoSize = false;
			this.fileToolStripMenuItem.Image = Resources.import;
			this.fileToolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
			this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
			this.fileToolStripMenuItem.Size = new Size(35, 35);
			this.fileToolStripMenuItem.Text = " ";
			this.fileToolStripMenuItem.TextImageRelation = TextImageRelation.Overlay;
			this.fileToolStripMenuItem.Click += new EventHandler(this.fileToolStripMenuItem_Click);
			this.snapshot.AutoSize = false;
			this.snapshot.Checked = true;
			this.snapshot.CheckState = CheckState.Checked;
			this.snapshot.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.snapshot.Image = Resources.camera;
			this.snapshot.ImageScaling = ToolStripItemImageScaling.None;
			this.snapshot.Name = "snapshot";
			this.snapshot.Size = new Size(35, 35);
			this.snapshot.Text = "snapshot";
			this.snapshot.Click += new EventHandler(this.snapshot_Click);
			this.toolStripMenuItem1.Name = "toolStripMenuItem1";
			this.toolStripMenuItem1.Size = new Size(32, 19);
			this.printDocument1.PrintPage += new PrintPageEventHandler(this.printDocument1_PrintPage_1);
			this.printDocument1.EndPrint += new PrintEventHandler(this.printDocument1_EndPrint);
			this.printDocument1.BeginPrint += new PrintEventHandler(this.printDocument1_BeginPrint);
			this.printPreviewDialog1.AutoScrollMargin = new Size(0, 0);
			this.printPreviewDialog1.AutoScrollMinSize = new Size(0, 0);
			this.printPreviewDialog1.ClientSize = new Size(400, 300);
			this.printPreviewDialog1.Document = this.printDocument1;
			this.printPreviewDialog1.Enabled = true;
			this.printPreviewDialog1.Icon = (Icon)componentResourceManager.GetObject("printPreviewDialog1.Icon");
			this.printPreviewDialog1.Name = "printPreviewDialog1";
			this.printPreviewDialog1.UseAntiAlias = true;
			this.printPreviewDialog1.Visible = false;
			this.printDialog1.Document = this.printDocument1;
			this.printDialog1.UseEXDialog = true;
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.Transparent;
			base.Controls.Add(this.menuStrip1);
			this.DoubleBuffered = true;
			base.Name = "UserControl1";
			base.Size = new Size(495, 424);
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
	}
}
