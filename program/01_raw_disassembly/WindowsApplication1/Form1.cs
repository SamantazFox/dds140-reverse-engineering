using FFTctrl;
using LinearGradientButtonLib;
using LogicGh;
using myknobctrl;
using PropertyGridDialog;
using storefileCtrol;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using System.Threading;
using System.Timers;
using System.Windows.Forms;
using WindowsApplication1.Properties;

namespace WindowsApplication1
{
	public class Form1 : Form
	{
		public struct SaveCFGInfo
		{
			public byte channelMask;

			public byte KnobSelect;

			public byte NSKnobSelectComboIdx;

			public byte MSKnobSelectComboIdx;

			public byte KnobVoltageSelect;

			public byte KnobVoltageSelect2;

			public byte TrigChan;

			public byte TrigeMode;

			public byte TrigEdge;

			public byte chan0ZeroLevel;

			public byte chan1ZeroLevel;

			public byte chan2ZeroLevel;

			public byte chan3ZeroLevel;

			public byte chan0Amp;

			public byte chan1Amp;

			public byte ShowTaskBar;

			public byte LockSettingCheck;

			public uint dataNumOneShot;

			public byte NotifyCheck;

			public uint frameNumber;

			public byte TrigLevel0;

			public byte TrigLevel1;

			public uint UserEnabled;
		}

		private const int WM_NCACTIVATE = 134;

		private const int WM_NCPAINT = 133;

		private const int WM_NCCALCSIZE = 131;

		private const int SM_CYCAPTION = 4;

		private const int SM_CXFRAME = 32;

		private const int SM_CYFRAME = 33;

		private const int DBT_DEVTYP_DEVICEINTERFACE = 5;

		private const int WM_DEVICECHANGE = 537;

		private const int DBT_DEVICEARRIVAL = 32768;

		private const int DBT_DEVICEREMOVECOMPLETE = 32772;

		private const int DBT_DEVICEREMOVEPENDING = 32771;

		private IContainer components;

		public LinearGradientButtonLib.UserControl1 GraphView;

		public PropertyGridSet propertySet;

		private Button startbut;

		private Button squ;

		private Button tri;

		private Button sin;

		private TextBox freqOutText;

		private Label label2;

		public ljtStorage ljtStorage1;

		private Label label7;

		private Label label5;

		public LJTKNOB1 Ch1VoltageKnob;

		private Label label23;

		private Label label9;

		private Label label1;

		private Label label8;

		private Panel panel6;

		private ComboBox comboTimeBase;

		private ComboBox comboBoxNS;

		private Label label19;

		private Label label20;

		private Label label10;

		private Label label12;

		private Label label18;

		private Label label14;

		private Label label17;

		private Label label15;

		public LJTKNOB1 TimeKnob;

		private NotifyIcon notifyIcon1;

		private Label label3;

		private Label label13;

		private Label label16;

		private Label label25;

		private Label label26;

		private Label label33;

		private Label label34;

		private Label label35;

		public LJTKNOB1 KnoBVolCH2;

		private TrackBar trackVolAplitu;

		private TrackBar trackBarOffset;

		private Label labelOffset;

		private Label labelAMplitue;

		private TabControl tabMain;

		private TabPage OsillagraphPg;

		private TabPage SignalPg;

		private RadioButton radioButSignalNorm;

		private RadioButton radioButPWM;

		private Panel panel8;

		private Button M;

		private Button num5;

		private Button K;

		private Button num1;

		private Button hundred;

		private Button num2;

		private Button numclr;

		private Button num3;

		private Button num0;

		private Button num6;

		private Button num9;

		private Button num7;

		private Button num8;

		private Button num4;

		private TrackBar trackBarPWMduty;

		private Label label6;

		private TextBox textBoxFreqPWM;

		private Panel panelPWM;

		private Panel panelMormSig;

		private Button numOn;

		private Panel panel11;

		private Label labelPWMduty;

		private Panel panelAdjust;

		private TextBox textX1CH1;

		private TextBox textX1CH0;

		private Button adjust;

		private TextBox textBox4;

		private TextBox textBoxCH2scale;

		private TextBox textBoxCH1scale;

		private TextBox textBoxCH2zero;

		private TextBox textBoxCH1zero;

		private Label label4;

		private Label label38;

		private TextBox textBox1;

		private TextBox textBox2;

		private Button button1;

		private TextBox textBox3;

		private TextBox textBox5;

		private TextBox textBox6;

		private TextBox textBox7;

		private TextBox textBox8;

		private Button butHiden;

		private RichTextBox richTDefine;

		private TextBox ch1_zero_500mv;

		private TextBox ch0_zero_500mv;

		private TextBox zero050mv;

		private TextBox zero150mv;

		private TextBox ch1_zero_100mv;

		private TextBox ch0_zero_100mv;

		private TextBox ch1Scale500mv;

		private TextBox ch0scale500mv;

		private TextBox ch1_100mv;

		private TextBox ch0_100mv;

		private TextBox ch1_50mv;

		private TextBox ch0_50mv;

		private Button butScale;

		private Button butZero;

		private TabPage LogicAlsPG;

		public LogicGh.UserControl1 LogicView;

		private MenuStrip menuStrip1;

		private ToolStripMenuItem fileToolStripMenuItem;

		private ToolStripMenuItem viewToolStripMenuItem;

		private ToolStrip toolStrip1;

		private ToolStripLabel toolStripLabel1;

		private ToolStripComboBox ACDCtoolStripComboBox0;

		private ToolStripComboBox ONOFFtoolStripComboBox0;

		private ToolStripSeparator toolStripSeparator1;

		private ToolStripLabel toolStripLabel2;

		private ToolStripComboBox ACDCtoolStripComboBox1;

		private ToolStripComboBox ONOFFtoolStripComboBox1;

		private ToolStripSeparator toolStripSeparator2;

		private ToolStripSeparator toolStripSeparator3;

		private ToolStripLabel toolStripLabel3;

		private ToolStripComboBox TRIGCHtoolStripComboBox;

		private ToolStripButton TrigUPButton;

		private ToolStripButton TrigDNButton;

		private ToolStripComboBox TrigMODEtoolStripComboBox;

		private ToolStripButton AUTOtoolStripButton;

		private ToolStripMenuItem fFTToolStripMenuItem;

		private ToolStripMenuItem ch1ch2ToolStripMenuItem;

		private ToolStripMenuItem ch1ch2ToolStripMenuItem1;

		private ToolStripMenuItem openToolStripMenuItem;

		private ToolStripMenuItem saveAsTxtToolStripMenuItem;

		private ToolStripMenuItem LoadSetupToolStripMenuItem;

		private Label label11;

		private ToolStripSeparator toolStripSeparator4;

		private ToolStripComboBox FUNCtoolStripComboBox;

		private ToolStripComboBox toolStripProbeCH1;

		private ToolStripComboBox toolStripProbeCH2;

		private ToolStripMenuItem helpToolStripMenuItem;

		private ToolStripMenuItem aboutToolStripMenuItem;

		private ListView listViewProperties;

		private ToolStripMenuItem CH1XCH2ToolStripMenuItem;

		private Panel panel1;

		private Button butStorageStop;

		private ToolStripButton toolStripButTstart;

		private ToolStrip mytoolbar;

		private ToolStripButton toolStripButtonSaveData;

		private ToolStripSeparator toolStripSeparator5;

		private ToolStripButton toolStripPrint;

		private ToolStripSeparator toolStripSeparator6;

		private ToolStripMenuItem printToolStripMenuItem;

		private ToolStripMenuItem printViewToolStripMenuItem;

		private ToolStripMenuItem exitToolStripMenuItem;

		private ToolStripMenuItem toolBarToolStripMenuItem;

		private ToolStripMenuItem displayToolStripMenuItem;

		private ToolStripMenuItem typeToolStripMenuItem;

		private ToolStripMenuItem vectorsToolStripMenuItem;

		private ToolStripMenuItem dotsToolStripMenuItem;

		private ToolStripMenuItem gridToolStripMenuItem;

		private ToolStripMenuItem intensityToolStripMenuItem;

		private ToolStripMenuItem controlWindowToolStripMenuItem;

		private ToolStripSeparator toolStripSeparator8;

		private ToolStripSeparator toolStripSeparator9;

		private ToolStripButton toolStripButton4;

		private PrintDialog printDialog1;

		private ToolStripSeparator toolStripSeparator10;

		private ToolStripMenuItem toolStripMenuItemSaveSetup;

		private ToolStripMenuItem contentToolStripMenuItem;

		private ToolStripButton toolStripButtonHelp;

		private ToolStripSeparator toolStripSeparator11;

		private ToolStripSeparator toolStripSeparator12;

		private ToolStripMenuItem toolStripMenuItem1;

		private ToolStripMenuItem defaultSetupToolStripMenuItem;

		private ToolStripMenuItem calibrateToolStripMenuItem;

		private ToolStripMenuItem zeroToolStripMenuItem;

		private ToolStripButton toolStripButton1;

		private ToolStripSeparator toolStripSeparator13;

		private ToolStripMenuItem toolStripMenuItem2;

		private ToolStripSeparator toolStripSeparator7;

		private ToolStripButton RecordReview;

		private ToolStripSeparator toolStripSeparator14;

		private ToolStripButton toolStripButtonZero;

		private ToolStripSeparator toolStripSeparator15;

		private ToolStripMenuItem horizontalToolStripMenuItem;

		private ToolStripMenuItem timeDIVToolStripMenuItem;

		private ToolStripMenuItem nsToolStripMenuItem;

		private ToolStripMenuItem nsToolStripMenuItem1;

		private ToolStripMenuItem nsToolStripMenuItem2;

		private ToolStripMenuItem usToolStripMenuItem;

		private ToolStripMenuItem usToolStripMenuItem1;

		private ToolStripMenuItem usToolStripMenuItem2;

		private ToolStripMenuItem usToolStripMenuItem3;

		private ToolStripMenuItem usToolStripMenuItem4;

		private ToolStripMenuItem usToolStripMenuItem5;

		private ToolStripMenuItem msToolStripMenuItem;

		private ToolStripMenuItem msToolStripMenuItem1;

		private ToolStripMenuItem msToolStripMenuItem2;

		private ToolStripMenuItem msToolStripMenuItem3;

		private ToolStripMenuItem msToolStripMenuItem4;

		private ToolStripMenuItem msToolStripMenuItem5;

		private ToolStripMenuItem msToolStripMenuItem6;

		private ToolStripMenuItem msToolStripMenuItem7;

		private ToolStripMenuItem msToolStripMenuItem8;

		private ToolStripMenuItem msToolStripMenuItem9;

		private ToolStripMenuItem msToolStripMenuItem10;

		private ToolStripMenuItem verticalToolStripMenuItem;

		private ToolStripMenuItem voltDIVToolStripMenuItem;

		private ToolStripMenuItem voltDIVToolStripMenuItem1;

		private ToolStripMenuItem mvToolStripMenuItem;

		private ToolStripMenuItem mvToolStripMenuItem1;

		private ToolStripMenuItem mvToolStripMenuItem2;

		private ToolStripMenuItem vToolStripMenuItem;

		private ToolStripMenuItem vToolStripMenuItem1;

		private ToolStripMenuItem vToolStripMenuItem2;

		private ToolStripMenuItem vToolStripMenuItem3;

		private ToolStripMenuItem mvToolStripMenuItem3;

		private ToolStripMenuItem mvToolStripMenuItem4;

		private ToolStripMenuItem mvToolStripMenuItem5;

		private ToolStripMenuItem vToolStripMenuItem4;

		private ToolStripMenuItem vToolStripMenuItem5;

		private ToolStripMenuItem vToolStripMenuItem6;

		private ToolStripMenuItem vToolStripMenuItem7;

		private ToolStripMenuItem formatToolStripMenuItem;

		private ToolStripMenuItem yTToolStripMenuItem;

		private ToolStripMenuItem xYToolStripMenuItem;

		private SplitContainer splitContainer2;

		public MYFFTctrl myffTctrl1;

		private StatusStrip statusStrip1;

		private Panel panel2;

		public PropertyGrid propertyGrid1;

		private ToolStripMenuItem printSetupToolStripMenuItem;

		private ToolStrip toolStrip2;

		private ToolStripButton toolStripButton2;

		private ToolStripSeparator toolStripSeparator17;

		private ToolStripButton toolStripButtonZoomIn;

		private ToolStripSeparator toolStripSeparator18;

		private ToolStripButton toolStripButtonZoomOut;

		private SplitContainer splitContainer3;

		private ToolStrip toolStrip3;

		private ToolStripButton toolStripButton3;

		private TrackBar trackBarExtTrigger;

		private ToolStripSeparator toolStripSeparator16;

		private ToolStripMenuItem extTriggerToolStripMenuItem;

		private Label label24;

		private Label label27;

		private Button button2;

		private Button StopScan;

		private TextBox LowFreq;

		private TextBox TimSpan;

		private Label label28;

		private Label label22;

		private Label label21;

		private TextBox HgihFreq;

		private Label label31;

		private Label label30;

		private Label label29;

		private Label label36;

		private Label label32;

		private TextBox FreqSpan;

		private Label label37;

		private ToolStripMenuItem measureWindowToolStripMenuItem;

		private SplitContainer splitContainer1;

		private TabControl tabMeasurement;

		private TabPage tabPage1;

		private ToolStripMenuItem warningToolStripMenuItem;

		private ToolStripMenuItem textAlarmToolStripMenuItem;

		private ToolStripMenuItem musicAlarmToolStripMenuItem;

		private ToolStripMenuItem mousePositionToolStripMenuItem;

		private ToolStripButton toolStripCursorSetSingle;

		private ToolStripSeparator toolStripSeparator19;

		private ToolStripButton toolStripCursorSetDouble;

		private EventCheckThread EventCheckObject;

		private Thread EventThread;

		private BulkReadThread BulkReadObject;

		private Thread ReadThread;

		private bool m_PN = true;

		private System.Timers.Timer tBlinkStoreIcon;

		private System.Timers.Timer autoTimer;

		private System.Timers.Timer activeTimer;

		private System.Timers.Timer ScanFreq;

		public DoubleBufferedListV m_MyDbufferedListView = new DoubleBufferedListV();

		private string m_StrCurrentState = "Stopped";

		private string m_Myfilepath = Environment.CurrentDirectory + "\\config.set";

		public bool m_bshowActiveCH = true;

		private int m_DutyPWM = 50;

		private int m_SignalOutFlg;

		private ulong m_FreOut = 50000uL;

		private ulong m_FreOutPWM = 500uL;

		private ulong m_LowFreq;

		private ulong m_HighFreq = 1000000uL;

		private ulong m_TimeSpan = 500uL;

		private ulong m_FreqSpan = 1000uL;

		private ushort[] m_freqDDS = new ushort[4];

		public int Flatrate;

		private byte m_ch1CoupleFlg = 2;

		private byte m_ch2CoupleFlg = 2;

		public int m_ch1ProbeX = 1;

		public int m_ch2ProbeX = 1;

		public int m_ColorValue = 185;

		public int m_TrackBar2Value = 128;

		private uint m_TimerIndex4Zero = 5u;

		public double m_AutoResFre;

		public double m_AutoResMax;

		public byte m_curAutoLev;

		private static uint m_fftPtNum = 16384u;

		private static double PI = 3.1415926;

		private double w = 2.0 * Form1.PI / Form1.m_fftPtNum;

		private double[] m_FFTamplitude = new double[Form1.m_fftPtNum];

		private globleVariables.tagCOMPLEX[] m_FFTX = new globleVariables.tagCOMPLEX[Form1.m_fftPtNum];

		private globleVariables.tagCOMPLEX[] m_FFTcomplex = new globleVariables.tagCOMPLEX[Form1.m_fftPtNum];

		private ToolStripMenuItem[] m_Chacked = new ToolStripMenuItem[20];

		private ToolStripMenuItem[] m_vchacked = new ToolStripMenuItem[10];

		private ToolStripMenuItem[] m_vchacked2 = new ToolStripMenuItem[10];

		public static string m_Vendor = "";

		public static string m_model = "";

		public static string m_language = "";

		private int m_indicate;

		private IntPtr mDeviceNotifyHandle = IntPtr.Zero;

		private IntPtr mRecipientHandle = IntPtr.Zero;

		private LinearGradientBrush PanelHlightLB;

		private LinearGradientBrush PanelHlightLB2;

		private LinearGradientBrush PanelHlightLB3;

		public StreamParaHead m_MystreamHead = default(StreamParaHead);

		public StreamParaHead m_StoreedHead = default(StreamParaHead);

		public Form1.SaveCFGInfo m_CfgInfo = default(Form1.SaveCFGInfo);

		private Form3 frm3;

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
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(Form1));
			this.splitContainer1 = new SplitContainer();
			this.splitContainer3 = new SplitContainer();
			this.tabMain = new TabControl();
			this.OsillagraphPg = new TabPage();
			this.panelAdjust = new Panel();
			this.butZero = new Button();
			this.butScale = new Button();
			this.richTDefine = new RichTextBox();
			this.ch1_50mv = new TextBox();
			this.ch0_50mv = new TextBox();
			this.ch1_100mv = new TextBox();
			this.ch0_100mv = new TextBox();
			this.ch1Scale500mv = new TextBox();
			this.ch0scale500mv = new TextBox();
			this.ch1_zero_100mv = new TextBox();
			this.ch0_zero_100mv = new TextBox();
			this.zero150mv = new TextBox();
			this.zero050mv = new TextBox();
			this.ch1_zero_500mv = new TextBox();
			this.ch0_zero_500mv = new TextBox();
			this.butHiden = new Button();
			this.textX1CH1 = new TextBox();
			this.textX1CH0 = new TextBox();
			this.adjust = new Button();
			this.textBox4 = new TextBox();
			this.textBoxCH2scale = new TextBox();
			this.textBoxCH1scale = new TextBox();
			this.textBoxCH2zero = new TextBox();
			this.textBoxCH1zero = new TextBox();
			this.SignalPg = new TabPage();
			this.panelPWM = new Panel();
			this.labelPWMduty = new Label();
			this.trackBarPWMduty = new TrackBar();
			this.textBoxFreqPWM = new TextBox();
			this.label6 = new Label();
			this.panelMormSig = new Panel();
			this.label37 = new Label();
			this.label36 = new Label();
			this.label32 = new Label();
			this.FreqSpan = new TextBox();
			this.label31 = new Label();
			this.label30 = new Label();
			this.label29 = new Label();
			this.label28 = new Label();
			this.label22 = new Label();
			this.label21 = new Label();
			this.TimSpan = new TextBox();
			this.HgihFreq = new TextBox();
			this.LowFreq = new TextBox();
			this.StopScan = new Button();
			this.button2 = new Button();
			this.tri = new Button();
			this.sin = new Button();
			this.squ = new Button();
			this.freqOutText = new TextBox();
			this.label2 = new Label();
			this.trackVolAplitu = new TrackBar();
			this.labelOffset = new Label();
			this.trackBarOffset = new TrackBar();
			this.labelAMplitue = new Label();
			this.panel11 = new Panel();
			this.numOn = new Button();
			this.panel8 = new Panel();
			this.M = new Button();
			this.num4 = new Button();
			this.num5 = new Button();
			this.num8 = new Button();
			this.K = new Button();
			this.num7 = new Button();
			this.num1 = new Button();
			this.num9 = new Button();
			this.hundred = new Button();
			this.num6 = new Button();
			this.num2 = new Button();
			this.num0 = new Button();
			this.numclr = new Button();
			this.num3 = new Button();
			this.radioButSignalNorm = new RadioButton();
			this.radioButPWM = new RadioButton();
			this.LogicAlsPG = new TabPage();
			this.label27 = new Label();
			this.label24 = new Label();
			this.toolStrip3 = new ToolStrip();
			this.toolStripButton3 = new ToolStripButton();
			this.trackBarExtTrigger = new TrackBar();
			this.splitContainer2 = new SplitContainer();
			this.panel2 = new Panel();
			this.myffTctrl1 = new MYFFTctrl();
			this.toolStrip2 = new ToolStrip();
			this.toolStripButton2 = new ToolStripButton();
			this.toolStripSeparator17 = new ToolStripSeparator();
			this.toolStripButtonZoomIn = new ToolStripButton();
			this.toolStripSeparator18 = new ToolStripSeparator();
			this.toolStripButtonZoomOut = new ToolStripButton();
			this.propertyGrid1 = new PropertyGrid();
			this.label7 = new Label();
			this.label5 = new Label();
			this.label23 = new Label();
			this.label9 = new Label();
			this.label1 = new Label();
			this.label8 = new Label();
			this.label13 = new Label();
			this.label16 = new Label();
			this.label25 = new Label();
			this.label26 = new Label();
			this.label33 = new Label();
			this.label34 = new Label();
			this.label35 = new Label();
			this.panel6 = new Panel();
			this.label11 = new Label();
			this.comboTimeBase = new ComboBox();
			this.comboBoxNS = new ComboBox();
			this.label19 = new Label();
			this.label20 = new Label();
			this.label10 = new Label();
			this.label12 = new Label();
			this.label18 = new Label();
			this.label14 = new Label();
			this.label17 = new Label();
			this.label15 = new Label();
			this.panel1 = new Panel();
			this.butStorageStop = new Button();
			this.listViewProperties = new ListView();
			this.notifyIcon1 = new NotifyIcon(this.components);
			this.label3 = new Label();
			this.label4 = new Label();
			this.label38 = new Label();
			this.textBox1 = new TextBox();
			this.textBox2 = new TextBox();
			this.button1 = new Button();
			this.textBox3 = new TextBox();
			this.textBox5 = new TextBox();
			this.textBox6 = new TextBox();
			this.textBox7 = new TextBox();
			this.textBox8 = new TextBox();
			this.menuStrip1 = new MenuStrip();
			this.fileToolStripMenuItem = new ToolStripMenuItem();
			this.openToolStripMenuItem = new ToolStripMenuItem();
			this.saveAsTxtToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripSeparator10 = new ToolStripSeparator();
			this.toolStripMenuItemSaveSetup = new ToolStripMenuItem();
			this.LoadSetupToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripSeparator6 = new ToolStripSeparator();
			this.printToolStripMenuItem = new ToolStripMenuItem();
			this.printSetupToolStripMenuItem = new ToolStripMenuItem();
			this.printViewToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripSeparator8 = new ToolStripSeparator();
			this.exitToolStripMenuItem = new ToolStripMenuItem();
			this.viewToolStripMenuItem = new ToolStripMenuItem();
			this.fFTToolStripMenuItem = new ToolStripMenuItem();
			this.ch1ch2ToolStripMenuItem = new ToolStripMenuItem();
			this.ch1ch2ToolStripMenuItem1 = new ToolStripMenuItem();
			this.CH1XCH2ToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripSeparator9 = new ToolStripSeparator();
			this.toolStripMenuItem2 = new ToolStripMenuItem();
			this.toolStripSeparator7 = new ToolStripSeparator();
			this.toolBarToolStripMenuItem = new ToolStripMenuItem();
			this.controlWindowToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripSeparator16 = new ToolStripSeparator();
			this.extTriggerToolStripMenuItem = new ToolStripMenuItem();
			this.measureWindowToolStripMenuItem = new ToolStripMenuItem();
			this.horizontalToolStripMenuItem = new ToolStripMenuItem();
			this.timeDIVToolStripMenuItem = new ToolStripMenuItem();
			this.nsToolStripMenuItem = new ToolStripMenuItem();
			this.nsToolStripMenuItem1 = new ToolStripMenuItem();
			this.nsToolStripMenuItem2 = new ToolStripMenuItem();
			this.usToolStripMenuItem = new ToolStripMenuItem();
			this.usToolStripMenuItem1 = new ToolStripMenuItem();
			this.usToolStripMenuItem2 = new ToolStripMenuItem();
			this.usToolStripMenuItem3 = new ToolStripMenuItem();
			this.usToolStripMenuItem4 = new ToolStripMenuItem();
			this.usToolStripMenuItem5 = new ToolStripMenuItem();
			this.msToolStripMenuItem = new ToolStripMenuItem();
			this.msToolStripMenuItem1 = new ToolStripMenuItem();
			this.msToolStripMenuItem2 = new ToolStripMenuItem();
			this.msToolStripMenuItem3 = new ToolStripMenuItem();
			this.msToolStripMenuItem4 = new ToolStripMenuItem();
			this.msToolStripMenuItem5 = new ToolStripMenuItem();
			this.msToolStripMenuItem6 = new ToolStripMenuItem();
			this.msToolStripMenuItem7 = new ToolStripMenuItem();
			this.msToolStripMenuItem8 = new ToolStripMenuItem();
			this.msToolStripMenuItem9 = new ToolStripMenuItem();
			this.msToolStripMenuItem10 = new ToolStripMenuItem();
			this.formatToolStripMenuItem = new ToolStripMenuItem();
			this.yTToolStripMenuItem = new ToolStripMenuItem();
			this.xYToolStripMenuItem = new ToolStripMenuItem();
			this.verticalToolStripMenuItem = new ToolStripMenuItem();
			this.voltDIVToolStripMenuItem = new ToolStripMenuItem();
			this.mvToolStripMenuItem = new ToolStripMenuItem();
			this.mvToolStripMenuItem1 = new ToolStripMenuItem();
			this.mvToolStripMenuItem2 = new ToolStripMenuItem();
			this.vToolStripMenuItem = new ToolStripMenuItem();
			this.vToolStripMenuItem1 = new ToolStripMenuItem();
			this.vToolStripMenuItem2 = new ToolStripMenuItem();
			this.vToolStripMenuItem3 = new ToolStripMenuItem();
			this.voltDIVToolStripMenuItem1 = new ToolStripMenuItem();
			this.mvToolStripMenuItem3 = new ToolStripMenuItem();
			this.mvToolStripMenuItem4 = new ToolStripMenuItem();
			this.mvToolStripMenuItem5 = new ToolStripMenuItem();
			this.vToolStripMenuItem4 = new ToolStripMenuItem();
			this.vToolStripMenuItem5 = new ToolStripMenuItem();
			this.vToolStripMenuItem6 = new ToolStripMenuItem();
			this.vToolStripMenuItem7 = new ToolStripMenuItem();
			this.displayToolStripMenuItem = new ToolStripMenuItem();
			this.typeToolStripMenuItem = new ToolStripMenuItem();
			this.vectorsToolStripMenuItem = new ToolStripMenuItem();
			this.dotsToolStripMenuItem = new ToolStripMenuItem();
			this.gridToolStripMenuItem = new ToolStripMenuItem();
			this.intensityToolStripMenuItem = new ToolStripMenuItem();
			this.mousePositionToolStripMenuItem = new ToolStripMenuItem();
			this.toolStripMenuItem1 = new ToolStripMenuItem();
			this.defaultSetupToolStripMenuItem = new ToolStripMenuItem();
			this.calibrateToolStripMenuItem = new ToolStripMenuItem();
			this.zeroToolStripMenuItem = new ToolStripMenuItem();
			this.warningToolStripMenuItem = new ToolStripMenuItem();
			this.textAlarmToolStripMenuItem = new ToolStripMenuItem();
			this.musicAlarmToolStripMenuItem = new ToolStripMenuItem();
			this.helpToolStripMenuItem = new ToolStripMenuItem();
			this.aboutToolStripMenuItem = new ToolStripMenuItem();
			this.contentToolStripMenuItem = new ToolStripMenuItem();
			this.toolStrip1 = new ToolStrip();
			this.toolStripLabel1 = new ToolStripLabel();
			this.ACDCtoolStripComboBox0 = new ToolStripComboBox();
			this.ONOFFtoolStripComboBox0 = new ToolStripComboBox();
			this.toolStripProbeCH1 = new ToolStripComboBox();
			this.toolStripSeparator1 = new ToolStripSeparator();
			this.toolStripLabel2 = new ToolStripLabel();
			this.ACDCtoolStripComboBox1 = new ToolStripComboBox();
			this.ONOFFtoolStripComboBox1 = new ToolStripComboBox();
			this.toolStripProbeCH2 = new ToolStripComboBox();
			this.toolStripSeparator2 = new ToolStripSeparator();
			this.toolStripSeparator3 = new ToolStripSeparator();
			this.toolStripLabel3 = new ToolStripLabel();
			this.TRIGCHtoolStripComboBox = new ToolStripComboBox();
			this.toolStripButTstart = new ToolStripButton();
			this.TrigUPButton = new ToolStripButton();
			this.TrigDNButton = new ToolStripButton();
			this.TrigMODEtoolStripComboBox = new ToolStripComboBox();
			this.AUTOtoolStripButton = new ToolStripButton();
			this.toolStripSeparator4 = new ToolStripSeparator();
			this.FUNCtoolStripComboBox = new ToolStripComboBox();
			this.startbut = new Button();
			this.mytoolbar = new ToolStrip();
			this.toolStripButtonSaveData = new ToolStripButton();
			this.toolStripSeparator5 = new ToolStripSeparator();
			this.toolStripPrint = new ToolStripButton();
			this.toolStripSeparator11 = new ToolStripSeparator();
			this.toolStripButton1 = new ToolStripButton();
			this.toolStripSeparator13 = new ToolStripSeparator();
			this.toolStripButtonZero = new ToolStripButton();
			this.toolStripSeparator15 = new ToolStripSeparator();
			this.RecordReview = new ToolStripButton();
			this.toolStripSeparator14 = new ToolStripSeparator();
			this.toolStripButton4 = new ToolStripButton();
			this.toolStripSeparator12 = new ToolStripSeparator();
			this.toolStripButtonHelp = new ToolStripButton();
			this.toolStripSeparator19 = new ToolStripSeparator();
			this.toolStripCursorSetSingle = new ToolStripButton();
			this.toolStripCursorSetDouble = new ToolStripButton();
			this.printDialog1 = new PrintDialog();
			this.statusStrip1 = new StatusStrip();
			this.tabMeasurement = new TabControl();
			this.tabPage1 = new TabPage();
			this.ljtStorage1 = new ljtStorage();
			this.KnoBVolCH2 = new LJTKNOB1();
			this.Ch1VoltageKnob = new LJTKNOB1();
			this.TimeKnob = new LJTKNOB1();
			this.GraphView = new LinearGradientButtonLib.UserControl1();
			this.LogicView = new LogicGh.UserControl1();
			this.splitContainer1.Panel1.SuspendLayout();
			this.splitContainer1.Panel2.SuspendLayout();
			this.splitContainer1.SuspendLayout();
			this.splitContainer3.Panel1.SuspendLayout();
			this.splitContainer3.Panel2.SuspendLayout();
			this.splitContainer3.SuspendLayout();
			this.tabMain.SuspendLayout();
			this.OsillagraphPg.SuspendLayout();
			this.panelAdjust.SuspendLayout();
			this.SignalPg.SuspendLayout();
			this.panelPWM.SuspendLayout();
			((ISupportInitialize)this.trackBarPWMduty).BeginInit();
			this.panelMormSig.SuspendLayout();
			((ISupportInitialize)this.trackVolAplitu).BeginInit();
			((ISupportInitialize)this.trackBarOffset).BeginInit();
			this.panel11.SuspendLayout();
			this.panel8.SuspendLayout();
			this.LogicAlsPG.SuspendLayout();
			this.toolStrip3.SuspendLayout();
			((ISupportInitialize)this.trackBarExtTrigger).BeginInit();
			this.splitContainer2.Panel1.SuspendLayout();
			this.splitContainer2.Panel2.SuspendLayout();
			this.splitContainer2.SuspendLayout();
			this.toolStrip2.SuspendLayout();
			this.panel6.SuspendLayout();
			this.panel1.SuspendLayout();
			this.menuStrip1.SuspendLayout();
			this.toolStrip1.SuspendLayout();
			this.mytoolbar.SuspendLayout();
			this.tabMeasurement.SuspendLayout();
			base.SuspendLayout();
			this.splitContainer1.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.splitContainer1.BorderStyle = BorderStyle.Fixed3D;
			this.splitContainer1.IsSplitterFixed = true;
			this.splitContainer1.Location = new Point(0, 83);
			this.splitContainer1.Name = "splitContainer1";
			this.splitContainer1.Orientation = Orientation.Horizontal;
			this.splitContainer1.Panel1.Controls.Add(this.splitContainer3);
			this.splitContainer1.Panel1.Font = new Font("Arial", 9f, FontStyle.Bold);
			this.splitContainer1.Panel1MinSize = 0;
			this.splitContainer1.Panel2.AutoScroll = true;
			this.splitContainer1.Panel2.BackColor = SystemColors.Control;
			this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
			this.splitContainer1.Panel2MinSize = 0;
			this.splitContainer1.Size = new Size(608, 522);
			this.splitContainer1.SplitterDistance = 345;
			this.splitContainer1.SplitterWidth = 2;
			this.splitContainer1.TabIndex = 103;
			this.splitContainer3.Dock = DockStyle.Fill;
			this.splitContainer3.IsSplitterFixed = true;
			this.splitContainer3.Location = new Point(0, 0);
			this.splitContainer3.Name = "splitContainer3";
			this.splitContainer3.Panel1.BackColor = SystemColors.Control;
			this.splitContainer3.Panel1.Controls.Add(this.tabMain);
			this.splitContainer3.Panel1MinSize = 0;
			this.splitContainer3.Panel2.BackColor = SystemColors.ControlDarkDark;
			this.splitContainer3.Panel2.Controls.Add(this.label27);
			this.splitContainer3.Panel2.Controls.Add(this.label24);
			this.splitContainer3.Panel2.Controls.Add(this.toolStrip3);
			this.splitContainer3.Panel2.Controls.Add(this.trackBarExtTrigger);
			this.splitContainer3.Panel2MinSize = 0;
			this.splitContainer3.Size = new Size(604, 341);
			this.splitContainer3.SplitterDistance = 497;
			this.splitContainer3.TabIndex = 93;
			this.tabMain.Controls.Add(this.OsillagraphPg);
			this.tabMain.Controls.Add(this.SignalPg);
			this.tabMain.Controls.Add(this.LogicAlsPG);
			this.tabMain.Dock = DockStyle.Fill;
			this.tabMain.Font = new Font("Calibri", 9f);
			this.tabMain.ImeMode = ImeMode.On;
			this.tabMain.Location = new Point(0, 0);
			this.tabMain.Margin = new Padding(0);
			this.tabMain.Name = "tabMain";
			this.tabMain.SelectedIndex = 0;
			this.tabMain.Size = new Size(497, 341);
			this.tabMain.TabIndex = 94;
			this.tabMain.SelectedIndexChanged += new EventHandler(this.tabMain_SelectedIndexChanged);
			this.OsillagraphPg.Controls.Add(this.panelAdjust);
			this.OsillagraphPg.Controls.Add(this.GraphView);
			this.OsillagraphPg.Font = new Font("SimSun", 10.5f);
			this.OsillagraphPg.ForeColor = Color.Maroon;
			this.OsillagraphPg.Location = new Point(4, 23);
			this.OsillagraphPg.Margin = new Padding(0);
			this.OsillagraphPg.Name = "OsillagraphPg";
			this.OsillagraphPg.Padding = new Padding(3);
			this.OsillagraphPg.Size = new Size(489, 314);
			this.OsillagraphPg.TabIndex = 0;
			this.OsillagraphPg.Text = "Osillagraph";
			this.OsillagraphPg.UseVisualStyleBackColor = true;
			this.panelAdjust.Controls.Add(this.butZero);
			this.panelAdjust.Controls.Add(this.butScale);
			this.panelAdjust.Controls.Add(this.richTDefine);
			this.panelAdjust.Controls.Add(this.ch1_50mv);
			this.panelAdjust.Controls.Add(this.ch0_50mv);
			this.panelAdjust.Controls.Add(this.ch1_100mv);
			this.panelAdjust.Controls.Add(this.ch0_100mv);
			this.panelAdjust.Controls.Add(this.ch1Scale500mv);
			this.panelAdjust.Controls.Add(this.ch0scale500mv);
			this.panelAdjust.Controls.Add(this.ch1_zero_100mv);
			this.panelAdjust.Controls.Add(this.ch0_zero_100mv);
			this.panelAdjust.Controls.Add(this.zero150mv);
			this.panelAdjust.Controls.Add(this.zero050mv);
			this.panelAdjust.Controls.Add(this.ch1_zero_500mv);
			this.panelAdjust.Controls.Add(this.ch0_zero_500mv);
			this.panelAdjust.Controls.Add(this.butHiden);
			this.panelAdjust.Controls.Add(this.textX1CH1);
			this.panelAdjust.Controls.Add(this.textX1CH0);
			this.panelAdjust.Controls.Add(this.adjust);
			this.panelAdjust.Controls.Add(this.textBox4);
			this.panelAdjust.Controls.Add(this.textBoxCH2scale);
			this.panelAdjust.Controls.Add(this.textBoxCH1scale);
			this.panelAdjust.Controls.Add(this.textBoxCH2zero);
			this.panelAdjust.Controls.Add(this.textBoxCH1zero);
			this.panelAdjust.Location = new Point(6, 171);
			this.panelAdjust.Name = "panelAdjust";
			this.panelAdjust.Size = new Size(384, 276);
			this.panelAdjust.TabIndex = 92;
			this.butZero.ImeMode = ImeMode.NoControl;
			this.butZero.Location = new Point(340, 45);
			this.butZero.Name = "butZero";
			this.butZero.Size = new Size(43, 37);
			this.butZero.TabIndex = 22;
			this.butZero.Text = "zero";
			this.butZero.UseVisualStyleBackColor = true;
			this.butZero.Click += new EventHandler(this.butZero_Click);
			this.butScale.ImeMode = ImeMode.NoControl;
			this.butScale.Location = new Point(340, 3);
			this.butScale.Name = "butScale";
			this.butScale.Size = new Size(43, 36);
			this.butScale.TabIndex = 21;
			this.butScale.Text = "scale";
			this.butScale.UseVisualStyleBackColor = true;
			this.butScale.Click += new EventHandler(this.butScale_Click);
			this.richTDefine.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.richTDefine.Font = new Font("Arial", 7.5f);
			this.richTDefine.Location = new Point(129, 3);
			this.richTDefine.Name = "richTDefine";
			this.richTDefine.ScrollBars = RichTextBoxScrollBars.Vertical;
			this.richTDefine.Size = new Size(205, 270);
			this.richTDefine.TabIndex = 5;
			this.richTDefine.Text = "t";
			this.ch1_50mv.Location = new Point(2, 250);
			this.ch1_50mv.Name = "ch1_50mv";
			this.ch1_50mv.Size = new Size(59, 23);
			this.ch1_50mv.TabIndex = 20;
			this.ch1_50mv.Text = "128";
			this.ch0_50mv.Location = new Point(2, 222);
			this.ch0_50mv.Name = "ch0_50mv";
			this.ch0_50mv.Size = new Size(59, 23);
			this.ch0_50mv.TabIndex = 19;
			this.ch0_50mv.Text = "128";
			this.ch1_100mv.Location = new Point(2, 194);
			this.ch1_100mv.Name = "ch1_100mv";
			this.ch1_100mv.Size = new Size(59, 23);
			this.ch1_100mv.TabIndex = 18;
			this.ch1_100mv.Text = "128";
			this.ch0_100mv.Location = new Point(2, 167);
			this.ch0_100mv.Name = "ch0_100mv";
			this.ch0_100mv.Size = new Size(59, 23);
			this.ch0_100mv.TabIndex = 17;
			this.ch0_100mv.Text = "128";
			this.ch1Scale500mv.Location = new Point(1, 86);
			this.ch1Scale500mv.Name = "ch1Scale500mv";
			this.ch1Scale500mv.Size = new Size(59, 23);
			this.ch1Scale500mv.TabIndex = 16;
			this.ch1Scale500mv.Text = "128";
			this.ch0scale500mv.Location = new Point(1, 59);
			this.ch0scale500mv.Name = "ch0scale500mv";
			this.ch0scale500mv.Size = new Size(59, 23);
			this.ch0scale500mv.TabIndex = 15;
			this.ch0scale500mv.Text = "128";
			this.ch1_zero_100mv.Location = new Point(65, 187);
			this.ch1_zero_100mv.Name = "ch1_zero_100mv";
			this.ch1_zero_100mv.Size = new Size(58, 23);
			this.ch1_zero_100mv.TabIndex = 14;
			this.ch1_zero_100mv.Text = "128";
			this.ch0_zero_100mv.Location = new Point(65, 161);
			this.ch0_zero_100mv.Name = "ch0_zero_100mv";
			this.ch0_zero_100mv.Size = new Size(58, 23);
			this.ch0_zero_100mv.TabIndex = 13;
			this.ch0_zero_100mv.Text = "128";
			this.zero150mv.Location = new Point(65, 135);
			this.zero150mv.Name = "zero150mv";
			this.zero150mv.Size = new Size(58, 23);
			this.zero150mv.TabIndex = 12;
			this.zero150mv.Text = "128";
			this.zero050mv.Location = new Point(65, 109);
			this.zero050mv.Name = "zero050mv";
			this.zero050mv.Size = new Size(58, 23);
			this.zero050mv.TabIndex = 11;
			this.zero050mv.Text = "128";
			this.ch1_zero_500mv.Location = new Point(65, 83);
			this.ch1_zero_500mv.Name = "ch1_zero_500mv";
			this.ch1_zero_500mv.Size = new Size(58, 23);
			this.ch1_zero_500mv.TabIndex = 10;
			this.ch1_zero_500mv.Text = "128";
			this.ch0_zero_500mv.Location = new Point(65, 57);
			this.ch0_zero_500mv.Name = "ch0_zero_500mv";
			this.ch0_zero_500mv.Size = new Size(58, 23);
			this.ch0_zero_500mv.TabIndex = 9;
			this.ch0_zero_500mv.Text = "128";
			this.butHiden.ImeMode = ImeMode.NoControl;
			this.butHiden.Location = new Point(340, 88);
			this.butHiden.Name = "butHiden";
			this.butHiden.Size = new Size(44, 39);
			this.butHiden.TabIndex = 8;
			this.butHiden.Text = "Hide";
			this.butHiden.UseVisualStyleBackColor = true;
			this.butHiden.Click += new EventHandler(this.butHiden_Click);
			this.textX1CH1.AcceptsTab = true;
			this.textX1CH1.Location = new Point(2, 140);
			this.textX1CH1.Name = "textX1CH1";
			this.textX1CH1.Size = new Size(59, 23);
			this.textX1CH1.TabIndex = 5;
			this.textX1CH1.Tag = "8";
			this.textX1CH1.Text = "128";
			this.textX1CH0.AcceptsTab = true;
			this.textX1CH0.Location = new Point(2, 113);
			this.textX1CH0.Name = "textX1CH0";
			this.textX1CH0.Size = new Size(59, 23);
			this.textX1CH0.TabIndex = 4;
			this.textX1CH0.Tag = "8";
			this.textX1CH0.Text = "128";
			this.adjust.ImeMode = ImeMode.NoControl;
			this.adjust.Location = new Point(340, 133);
			this.adjust.Name = "adjust";
			this.adjust.Size = new Size(44, 40);
			this.adjust.TabIndex = 3;
			this.adjust.Text = "adjust";
			this.adjust.UseVisualStyleBackColor = true;
			this.adjust.Click += new EventHandler(this.adjust_Click);
			this.textBox4.Location = new Point(65, 230);
			this.textBox4.Name = "textBox4";
			this.textBox4.Size = new Size(59, 23);
			this.textBox4.TabIndex = 0;
			this.textBox4.Tag = "8";
			this.textBox4.Text = "128";
			this.textBoxCH2scale.Location = new Point(1, 32);
			this.textBoxCH2scale.Name = "textBoxCH2scale";
			this.textBoxCH2scale.Size = new Size(59, 23);
			this.textBoxCH2scale.TabIndex = 1;
			this.textBoxCH2scale.Text = "128";
			this.textBoxCH1scale.Location = new Point(1, 5);
			this.textBoxCH1scale.Name = "textBoxCH1scale";
			this.textBoxCH1scale.Size = new Size(59, 23);
			this.textBoxCH1scale.TabIndex = 2;
			this.textBoxCH1scale.Text = "128";
			this.textBoxCH2zero.Location = new Point(65, 31);
			this.textBoxCH2zero.Name = "textBoxCH2zero";
			this.textBoxCH2zero.Size = new Size(58, 23);
			this.textBoxCH2zero.TabIndex = 1;
			this.textBoxCH2zero.Text = "128";
			this.textBoxCH1zero.Location = new Point(65, 5);
			this.textBoxCH1zero.Name = "textBoxCH1zero";
			this.textBoxCH1zero.Size = new Size(58, 23);
			this.textBoxCH1zero.TabIndex = 0;
			this.textBoxCH1zero.Text = "128";
			this.SignalPg.BackColor = Color.CadetBlue;
			this.SignalPg.Controls.Add(this.panelPWM);
			this.SignalPg.Controls.Add(this.panelMormSig);
			this.SignalPg.Controls.Add(this.panel11);
			this.SignalPg.Controls.Add(this.radioButSignalNorm);
			this.SignalPg.Controls.Add(this.radioButPWM);
			this.SignalPg.Font = new Font("SimSun", 10.5f);
			this.SignalPg.ForeColor = Color.Black;
			this.SignalPg.Location = new Point(4, 23);
			this.SignalPg.Name = "SignalPg";
			this.SignalPg.Padding = new Padding(3);
			this.SignalPg.Size = new Size(489, 314);
			this.SignalPg.TabIndex = 1;
			this.SignalPg.Text = "Signal";
			this.SignalPg.UseVisualStyleBackColor = true;
			this.panelPWM.BackColor = Color.CadetBlue;
			this.panelPWM.Controls.Add(this.labelPWMduty);
			this.panelPWM.Controls.Add(this.trackBarPWMduty);
			this.panelPWM.Controls.Add(this.textBoxFreqPWM);
			this.panelPWM.Controls.Add(this.label6);
			this.panelPWM.Location = new Point(16, 24);
			this.panelPWM.Name = "panelPWM";
			this.panelPWM.Size = new Size(475, 96);
			this.panelPWM.TabIndex = 76;
			this.labelPWMduty.AutoSize = true;
			this.labelPWMduty.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.labelPWMduty.ForeColor = Color.White;
			this.labelPWMduty.ImeMode = ImeMode.NoControl;
			this.labelPWMduty.Location = new Point(287, 62);
			this.labelPWMduty.Name = "labelPWMduty";
			this.labelPWMduty.Size = new Size(45, 19);
			this.labelPWMduty.TabIndex = 75;
			this.labelPWMduty.Text = "Duty";
			this.trackBarPWMduty.BackColor = Color.CadetBlue;
			this.trackBarPWMduty.ImeMode = ImeMode.NoControl;
			this.trackBarPWMduty.LargeChange = 1;
			this.trackBarPWMduty.Location = new Point(17, 59);
			this.trackBarPWMduty.Maximum = 8;
			this.trackBarPWMduty.Name = "trackBarPWMduty";
			this.trackBarPWMduty.Size = new Size(265, 45);
			this.trackBarPWMduty.TabIndex = 72;
			this.trackBarPWMduty.Value = 4;
			this.trackBarPWMduty.ValueChanged += new EventHandler(this.trackBar1_ValueChanged);
			this.textBoxFreqPWM.Font = new Font("Arial", 15f, FontStyle.Bold);
			this.textBoxFreqPWM.ForeColor = Color.Green;
			this.textBoxFreqPWM.Location = new Point(25, 10);
			this.textBoxFreqPWM.Name = "textBoxFreqPWM";
			this.textBoxFreqPWM.ReadOnly = true;
			this.textBoxFreqPWM.Size = new Size(143, 30);
			this.textBoxFreqPWM.TabIndex = 73;
			this.textBoxFreqPWM.TextAlign = HorizontalAlignment.Center;
			this.label6.AutoSize = true;
			this.label6.Font = new Font("Arial", 15.75f, FontStyle.Bold);
			this.label6.ForeColor = Color.White;
			this.label6.ImeMode = ImeMode.NoControl;
			this.label6.Location = new Point(176, 13);
			this.label6.Name = "label6";
			this.label6.Size = new Size(35, 24);
			this.label6.TabIndex = 74;
			this.label6.Text = "Hz";
			this.panelMormSig.BackColor = Color.Tan;
			this.panelMormSig.Controls.Add(this.label37);
			this.panelMormSig.Controls.Add(this.label36);
			this.panelMormSig.Controls.Add(this.label32);
			this.panelMormSig.Controls.Add(this.FreqSpan);
			this.panelMormSig.Controls.Add(this.label31);
			this.panelMormSig.Controls.Add(this.label30);
			this.panelMormSig.Controls.Add(this.label29);
			this.panelMormSig.Controls.Add(this.label28);
			this.panelMormSig.Controls.Add(this.label22);
			this.panelMormSig.Controls.Add(this.label21);
			this.panelMormSig.Controls.Add(this.TimSpan);
			this.panelMormSig.Controls.Add(this.HgihFreq);
			this.panelMormSig.Controls.Add(this.LowFreq);
			this.panelMormSig.Controls.Add(this.StopScan);
			this.panelMormSig.Controls.Add(this.button2);
			this.panelMormSig.Controls.Add(this.tri);
			this.panelMormSig.Controls.Add(this.sin);
			this.panelMormSig.Controls.Add(this.squ);
			this.panelMormSig.Controls.Add(this.freqOutText);
			this.panelMormSig.Controls.Add(this.label2);
			this.panelMormSig.Controls.Add(this.trackVolAplitu);
			this.panelMormSig.Controls.Add(this.labelOffset);
			this.panelMormSig.Controls.Add(this.trackBarOffset);
			this.panelMormSig.Controls.Add(this.labelAMplitue);
			this.panelMormSig.Location = new Point(17, 151);
			this.panelMormSig.Name = "panelMormSig";
			this.panelMormSig.Size = new Size(474, 216);
			this.panelMormSig.TabIndex = 77;
			this.label37.AutoSize = true;
			this.label37.Font = new Font("Calibri", 9f);
			this.label37.ImeMode = ImeMode.On;
			this.label37.Location = new Point(244, 3);
			this.label37.Name = "label37";
			this.label37.Size = new Size(101, 14);
			this.label37.TabIndex = 80;
			this.label37.Text = "Frequency Sweep";
			this.label36.AutoSize = true;
			this.label36.Font = new Font("Calibri", 9f);
			this.label36.ForeColor = Color.White;
			this.label36.ImeMode = ImeMode.On;
			this.label36.Location = new Point(241, 74);
			this.label36.Name = "label36";
			this.label36.Size = new Size(54, 14);
			this.label36.TabIndex = 79;
			this.label36.Text = "Fre Span";
			this.label32.AutoSize = true;
			this.label32.Font = new Font("Calibri", 9f);
			this.label32.ForeColor = Color.White;
			this.label32.ImeMode = ImeMode.NoControl;
			this.label32.Location = new Point(373, 74);
			this.label32.Name = "label32";
			this.label32.Size = new Size(20, 14);
			this.label32.TabIndex = 78;
			this.label32.Text = "Hz";
			this.FreqSpan.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.FreqSpan.ForeColor = Color.Lime;
			this.FreqSpan.Location = new Point(297, 66);
			this.FreqSpan.Name = "FreqSpan";
			this.FreqSpan.Size = new Size(75, 26);
			this.FreqSpan.TabIndex = 77;
			this.FreqSpan.TextChanged += new EventHandler(this.FreqSpan_TextChanged);
			this.label31.AutoSize = true;
			this.label31.Font = new Font("Calibri", 9f);
			this.label31.ForeColor = Color.White;
			this.label31.ImeMode = ImeMode.NoControl;
			this.label31.Location = new Point(373, 98);
			this.label31.Name = "label31";
			this.label31.Size = new Size(23, 14);
			this.label31.TabIndex = 76;
			this.label31.Text = "ms";
			this.label30.AutoSize = true;
			this.label30.Font = new Font("Calibri", 9f);
			this.label30.ForeColor = Color.White;
			this.label30.ImeMode = ImeMode.NoControl;
			this.label30.Location = new Point(373, 49);
			this.label30.Name = "label30";
			this.label30.Size = new Size(20, 14);
			this.label30.TabIndex = 75;
			this.label30.Text = "Hz";
			this.label29.AutoSize = true;
			this.label29.Font = new Font("Calibri", 9f);
			this.label29.ForeColor = Color.White;
			this.label29.ImeMode = ImeMode.NoControl;
			this.label29.Location = new Point(373, 23);
			this.label29.Name = "label29";
			this.label29.Size = new Size(20, 14);
			this.label29.TabIndex = 74;
			this.label29.Text = "Hz";
			this.label28.AutoSize = true;
			this.label28.Font = new Font("Calibri", 9f);
			this.label28.ForeColor = Color.White;
			this.label28.ImeMode = ImeMode.On;
			this.label28.Location = new Point(244, 97);
			this.label28.Name = "label28";
			this.label28.Size = new Size(51, 14);
			this.label28.TabIndex = 73;
			this.label28.Text = "timspan";
			this.label22.AutoSize = true;
			this.label22.Font = new Font("Calibri", 9f);
			this.label22.ForeColor = Color.White;
			this.label22.ImeMode = ImeMode.On;
			this.label22.Location = new Point(248, 48);
			this.label22.Name = "label22";
			this.label22.Size = new Size(47, 14);
			this.label22.TabIndex = 72;
			this.label22.Text = "End Fre";
			this.label21.AutoSize = true;
			this.label21.Font = new Font("Calibri", 9f);
			this.label21.ForeColor = Color.White;
			this.label21.ImeMode = ImeMode.On;
			this.label21.Location = new Point(243, 24);
			this.label21.Name = "label21";
			this.label21.Size = new Size(52, 14);
			this.label21.TabIndex = 71;
			this.label21.Text = "Start Fre";
			this.TimSpan.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.TimSpan.ForeColor = Color.Lime;
			this.TimSpan.Location = new Point(297, 92);
			this.TimSpan.Name = "TimSpan";
			this.TimSpan.Size = new Size(75, 26);
			this.TimSpan.TabIndex = 70;
			this.TimSpan.TextChanged += new EventHandler(this.TimSpan_TextChanged);
			this.HgihFreq.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.HgihFreq.ForeColor = Color.Lime;
			this.HgihFreq.Location = new Point(297, 42);
			this.HgihFreq.Name = "HgihFreq";
			this.HgihFreq.Size = new Size(75, 26);
			this.HgihFreq.TabIndex = 69;
			this.HgihFreq.TextChanged += new EventHandler(this.HgihFreq_TextChanged);
			this.LowFreq.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.LowFreq.ForeColor = Color.Lime;
			this.LowFreq.Location = new Point(297, 17);
			this.LowFreq.Name = "LowFreq";
			this.LowFreq.Size = new Size(75, 26);
			this.LowFreq.TabIndex = 68;
			this.LowFreq.TextChanged += new EventHandler(this.LowFreq_TextChanged);
			this.StopScan.Font = new Font("Calibri", 9f);
			this.StopScan.ImeMode = ImeMode.On;
			this.StopScan.Location = new Point(397, 75);
			this.StopScan.Name = "StopScan";
			this.StopScan.Size = new Size(75, 43);
			this.StopScan.TabIndex = 67;
			this.StopScan.Text = "StopScan";
			this.StopScan.UseVisualStyleBackColor = true;
			this.StopScan.Click += new EventHandler(this.button3_Click);
			this.button2.Font = new Font("Calibri", 9f);
			this.button2.Image = Resources.scanf;
			this.button2.ImeMode = ImeMode.On;
			this.button2.Location = new Point(397, 17);
			this.button2.Name = "button2";
			this.button2.Size = new Size(75, 54);
			this.button2.TabIndex = 66;
			this.button2.Text = "ScanFreq";
			this.button2.TextImageRelation = TextImageRelation.ImageAboveText;
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new EventHandler(this.button2_Click);
			this.tri.BackgroundImage = (Image)componentResourceManager.GetObject("tri.BackgroundImage");
			this.tri.BackgroundImageLayout = ImageLayout.Stretch;
			this.tri.ImeMode = ImeMode.NoControl;
			this.tri.Location = new Point(151, 17);
			this.tri.Name = "tri";
			this.tri.Size = new Size(60, 60);
			this.tri.TabIndex = 19;
			this.tri.UseVisualStyleBackColor = true;
			this.tri.Click += new EventHandler(this.tri_Click);
			this.sin.BackgroundImage = (Image)componentResourceManager.GetObject("sin.BackgroundImage");
			this.sin.BackgroundImageLayout = ImageLayout.Stretch;
			this.sin.ImeMode = ImeMode.NoControl;
			this.sin.Location = new Point(87, 17);
			this.sin.Name = "sin";
			this.sin.Size = new Size(60, 60);
			this.sin.TabIndex = 18;
			this.sin.UseVisualStyleBackColor = true;
			this.sin.Click += new EventHandler(this.sin_Click);
			this.squ.BackgroundImage = (Image)componentResourceManager.GetObject("squ.BackgroundImage");
			this.squ.BackgroundImageLayout = ImageLayout.Stretch;
			this.squ.ImeMode = ImeMode.NoControl;
			this.squ.Location = new Point(23, 17);
			this.squ.Name = "squ";
			this.squ.Size = new Size(60, 60);
			this.squ.TabIndex = 20;
			this.squ.UseVisualStyleBackColor = true;
			this.squ.Click += new EventHandler(this.squ_Click);
			this.freqOutText.Font = new Font("Arial", 15f, FontStyle.Bold);
			this.freqOutText.ForeColor = Color.Green;
			this.freqOutText.Location = new Point(24, 88);
			this.freqOutText.Name = "freqOutText";
			this.freqOutText.ReadOnly = true;
			this.freqOutText.Size = new Size(143, 30);
			this.freqOutText.TabIndex = 21;
			this.freqOutText.TextAlign = HorizontalAlignment.Center;
			this.label2.AutoSize = true;
			this.label2.Font = new Font("Arial", 15.75f, FontStyle.Bold);
			this.label2.ForeColor = Color.White;
			this.label2.ImeMode = ImeMode.NoControl;
			this.label2.Location = new Point(173, 91);
			this.label2.Name = "label2";
			this.label2.Size = new Size(35, 24);
			this.label2.TabIndex = 62;
			this.label2.Text = "Hz";
			this.trackVolAplitu.BackColor = Color.Tan;
			this.trackVolAplitu.ImeMode = ImeMode.NoControl;
			this.trackVolAplitu.LargeChange = 1;
			this.trackVolAplitu.Location = new Point(16, 131);
			this.trackVolAplitu.Maximum = 380;
			this.trackVolAplitu.Minimum = 200;
			this.trackVolAplitu.Name = "trackVolAplitu";
			this.trackVolAplitu.Size = new Size(259, 45);
			this.trackVolAplitu.TabIndex = 0;
			this.trackVolAplitu.Value = 365;
			this.labelOffset.AutoSize = true;
			this.labelOffset.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.labelOffset.ForeColor = Color.White;
			this.labelOffset.ImeMode = ImeMode.NoControl;
			this.labelOffset.Location = new Point(286, 179);
			this.labelOffset.Name = "labelOffset";
			this.labelOffset.Size = new Size(54, 19);
			this.labelOffset.TabIndex = 65;
			this.labelOffset.Text = "Offset";
			this.trackBarOffset.BackColor = Color.Tan;
			this.trackBarOffset.ImeMode = ImeMode.NoControl;
			this.trackBarOffset.LargeChange = 1;
			this.trackBarOffset.Location = new Point(16, 179);
			this.trackBarOffset.Maximum = 600;
			this.trackBarOffset.Minimum = 200;
			this.trackBarOffset.Name = "trackBarOffset";
			this.trackBarOffset.Size = new Size(259, 45);
			this.trackBarOffset.TabIndex = 1;
			this.trackBarOffset.Value = 200;
			this.labelAMplitue.AutoSize = true;
			this.labelAMplitue.Font = new Font("Arial", 12f, FontStyle.Bold);
			this.labelAMplitue.ForeColor = Color.White;
			this.labelAMplitue.ImeMode = ImeMode.NoControl;
			this.labelAMplitue.Location = new Point(286, 132);
			this.labelAMplitue.Name = "labelAMplitue";
			this.labelAMplitue.Size = new Size(86, 19);
			this.labelAMplitue.TabIndex = 64;
			this.labelAMplitue.Text = "Amplitude";
			this.panel11.BackColor = Color.DarkSlateGray;
			this.panel11.Controls.Add(this.numOn);
			this.panel11.Controls.Add(this.panel8);
			this.panel11.Location = new Point(16, 368);
			this.panel11.Name = "panel11";
			this.panel11.Size = new Size(475, 126);
			this.panel11.TabIndex = 79;
			this.numOn.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.numOn.AutoEllipsis = true;
			this.numOn.BackgroundImage = (Image)componentResourceManager.GetObject("numOn.BackgroundImage");
			this.numOn.BackgroundImageLayout = ImageLayout.None;
			this.numOn.ImageAlign = ContentAlignment.TopLeft;
			this.numOn.ImeMode = ImeMode.NoControl;
			this.numOn.Location = new Point(418, 8);
			this.numOn.Name = "numOn";
			this.numOn.Size = new Size(57, 101);
			this.numOn.TabIndex = 31;
			this.numOn.UseVisualStyleBackColor = true;
			this.numOn.Click += new EventHandler(this.numOn_Click);
			this.panel8.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.panel8.BackColor = Color.DarkGray;
			this.panel8.Controls.Add(this.M);
			this.panel8.Controls.Add(this.num4);
			this.panel8.Controls.Add(this.num5);
			this.panel8.Controls.Add(this.num8);
			this.panel8.Controls.Add(this.K);
			this.panel8.Controls.Add(this.num7);
			this.panel8.Controls.Add(this.num1);
			this.panel8.Controls.Add(this.num9);
			this.panel8.Controls.Add(this.hundred);
			this.panel8.Controls.Add(this.num6);
			this.panel8.Controls.Add(this.num2);
			this.panel8.Controls.Add(this.num0);
			this.panel8.Controls.Add(this.numclr);
			this.panel8.Controls.Add(this.num3);
			this.panel8.Location = new Point(10, 4);
			this.panel8.Name = "panel8";
			this.panel8.Size = new Size(378, 113);
			this.panel8.TabIndex = 71;
			this.M.AccessibleRole = AccessibleRole.None;
			this.M.AutoEllipsis = true;
			this.M.BackgroundImage = (Image)componentResourceManager.GetObject("M.BackgroundImage");
			this.M.FlatStyle = FlatStyle.Popup;
			this.M.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.M.ImeMode = ImeMode.NoControl;
			this.M.Location = new Point(325, 59);
			this.M.Name = "M";
			this.M.Size = new Size(48, 46);
			this.M.TabIndex = 51;
			this.M.UseVisualStyleBackColor = true;
			this.M.Click += new EventHandler(this.M_Click);
			this.num4.BackgroundImage = (Image)componentResourceManager.GetObject("num4.BackgroundImage");
			this.num4.FlatStyle = FlatStyle.Popup;
			this.num4.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num4.ImeMode = ImeMode.NoControl;
			this.num4.Location = new Point(163, 7);
			this.num4.Name = "num4";
			this.num4.Size = new Size(46, 46);
			this.num4.TabIndex = 44;
			this.num4.UseVisualStyleBackColor = true;
			this.num4.Click += new EventHandler(this.num4_Click);
			this.num5.BackgroundImage = (Image)componentResourceManager.GetObject("num5.BackgroundImage");
			this.num5.FlatStyle = FlatStyle.Popup;
			this.num5.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num5.ImeMode = ImeMode.NoControl;
			this.num5.Location = new Point(216, 7);
			this.num5.Name = "num5";
			this.num5.Size = new Size(46, 46);
			this.num5.TabIndex = 41;
			this.num5.UseVisualStyleBackColor = true;
			this.num5.Click += new EventHandler(this.num5_Click);
			this.num8.BackgroundImage = (Image)componentResourceManager.GetObject("num8.BackgroundImage");
			this.num8.FlatStyle = FlatStyle.Popup;
			this.num8.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num8.ImeMode = ImeMode.NoControl;
			this.num8.Location = new Point(112, 60);
			this.num8.Name = "num8";
			this.num8.Size = new Size(46, 46);
			this.num8.TabIndex = 45;
			this.num8.UseVisualStyleBackColor = true;
			this.num8.Click += new EventHandler(this.num8_Click);
			this.K.AllowDrop = true;
			this.K.BackgroundImage = (Image)componentResourceManager.GetObject("K.BackgroundImage");
			this.K.FlatStyle = FlatStyle.Popup;
			this.K.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.K.ImeMode = ImeMode.NoControl;
			this.K.Location = new Point(269, 7);
			this.K.Name = "K";
			this.K.Size = new Size(48, 46);
			this.K.TabIndex = 50;
			this.K.UseVisualStyleBackColor = true;
			this.K.Click += new EventHandler(this.K_Click);
			this.num7.BackgroundImage = (Image)componentResourceManager.GetObject("num7.BackgroundImage");
			this.num7.FlatStyle = FlatStyle.Popup;
			this.num7.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num7.ImeMode = ImeMode.NoControl;
			this.num7.Location = new Point(60, 60);
			this.num7.Name = "num7";
			this.num7.Size = new Size(46, 46);
			this.num7.TabIndex = 43;
			this.num7.UseVisualStyleBackColor = true;
			this.num7.Click += new EventHandler(this.num7_Click);
			this.num1.BackgroundImage = (Image)componentResourceManager.GetObject("num1.BackgroundImage");
			this.num1.FlatStyle = FlatStyle.Popup;
			this.num1.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num1.ImeMode = ImeMode.NoControl;
			this.num1.Location = new Point(7, 8);
			this.num1.Name = "num1";
			this.num1.Size = new Size(46, 46);
			this.num1.TabIndex = 38;
			this.num1.UseVisualStyleBackColor = true;
			this.num1.Click += new EventHandler(this.num1_Click);
			this.num9.BackgroundImage = (Image)componentResourceManager.GetObject("num9.BackgroundImage");
			this.num9.FlatStyle = FlatStyle.Popup;
			this.num9.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num9.ImeMode = ImeMode.NoControl;
			this.num9.Location = new Point(164, 60);
			this.num9.Name = "num9";
			this.num9.Size = new Size(46, 46);
			this.num9.TabIndex = 46;
			this.num9.UseVisualStyleBackColor = true;
			this.num9.Click += new EventHandler(this.num9_Click);
			this.hundred.AccessibleRole = AccessibleRole.None;
			this.hundred.BackgroundImage = (Image)componentResourceManager.GetObject("hundred.BackgroundImage");
			this.hundred.FlatStyle = FlatStyle.Popup;
			this.hundred.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.hundred.ImeMode = ImeMode.NoControl;
			this.hundred.Location = new Point(270, 60);
			this.hundred.Name = "hundred";
			this.hundred.Size = new Size(48, 46);
			this.hundred.TabIndex = 49;
			this.hundred.UseVisualStyleBackColor = true;
			this.hundred.Click += new EventHandler(this.hundred_Click);
			this.num6.AccessibleRole = AccessibleRole.None;
			this.num6.BackgroundImage = (Image)componentResourceManager.GetObject("num6.BackgroundImage");
			this.num6.FlatStyle = FlatStyle.Popup;
			this.num6.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num6.ImeMode = ImeMode.NoControl;
			this.num6.Location = new Point(8, 60);
			this.num6.Name = "num6";
			this.num6.Size = new Size(46, 46);
			this.num6.TabIndex = 42;
			this.num6.UseVisualStyleBackColor = true;
			this.num6.Click += new EventHandler(this.num6_Click);
			this.num2.BackgroundImage = (Image)componentResourceManager.GetObject("num2.BackgroundImage");
			this.num2.FlatStyle = FlatStyle.Popup;
			this.num2.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num2.ImeMode = ImeMode.NoControl;
			this.num2.Location = new Point(59, 7);
			this.num2.Name = "num2";
			this.num2.Size = new Size(46, 46);
			this.num2.TabIndex = 39;
			this.num2.UseVisualStyleBackColor = true;
			this.num2.Click += new EventHandler(this.num2_Click);
			this.num0.AccessibleRole = AccessibleRole.None;
			this.num0.BackgroundImage = (Image)componentResourceManager.GetObject("num0.BackgroundImage");
			this.num0.FlatStyle = FlatStyle.Popup;
			this.num0.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num0.ImeMode = ImeMode.NoControl;
			this.num0.Location = new Point(217, 60);
			this.num0.Name = "num0";
			this.num0.Size = new Size(46, 46);
			this.num0.TabIndex = 47;
			this.num0.UseVisualStyleBackColor = true;
			this.num0.Click += new EventHandler(this.num0_Click);
			this.numclr.AllowDrop = true;
			this.numclr.BackgroundImage = (Image)componentResourceManager.GetObject("numclr.BackgroundImage");
			this.numclr.FlatStyle = FlatStyle.Popup;
			this.numclr.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.numclr.ImeMode = ImeMode.NoControl;
			this.numclr.Location = new Point(324, 7);
			this.numclr.Name = "numclr";
			this.numclr.Size = new Size(48, 46);
			this.numclr.TabIndex = 48;
			this.numclr.UseVisualStyleBackColor = true;
			this.numclr.Click += new EventHandler(this.numclr_Click);
			this.num3.BackgroundImage = (Image)componentResourceManager.GetObject("num3.BackgroundImage");
			this.num3.FlatStyle = FlatStyle.Popup;
			this.num3.Font = new Font("Arial", 14.25f, FontStyle.Bold);
			this.num3.ImeMode = ImeMode.NoControl;
			this.num3.Location = new Point(111, 7);
			this.num3.Name = "num3";
			this.num3.Size = new Size(46, 46);
			this.num3.TabIndex = 40;
			this.num3.UseVisualStyleBackColor = true;
			this.num3.Click += new EventHandler(this.num3_Click);
			this.radioButSignalNorm.AutoSize = true;
			this.radioButSignalNorm.BackColor = Color.Transparent;
			this.radioButSignalNorm.Font = new Font("Calibri", 12f);
			this.radioButSignalNorm.ForeColor = Color.Black;
			this.radioButSignalNorm.ImeMode = ImeMode.NoControl;
			this.radioButSignalNorm.Location = new Point(16, 125);
			this.radioButSignalNorm.Name = "radioButSignalNorm";
			this.radioButSignalNorm.Size = new Size(155, 23);
			this.radioButSignalNorm.TabIndex = 68;
			this.radioButSignalNorm.Text = "常规信号波形输出";
			this.radioButSignalNorm.UseVisualStyleBackColor = false;
			this.radioButSignalNorm.CheckedChanged += new EventHandler(this.radioButton1_CheckedChanged);
			this.radioButPWM.AutoSize = true;
			this.radioButPWM.BackColor = Color.Transparent;
			this.radioButPWM.Font = new Font("Calibri", 12f);
			this.radioButPWM.ForeColor = Color.Black;
			this.radioButPWM.ImeMode = ImeMode.NoControl;
			this.radioButPWM.Location = new Point(14, 3);
			this.radioButPWM.Name = "radioButPWM";
			this.radioButPWM.Size = new Size(94, 23);
			this.radioButPWM.TabIndex = 69;
			this.radioButPWM.Text = "PWM";
			this.radioButPWM.UseVisualStyleBackColor = false;
			this.radioButPWM.CheckedChanged += new EventHandler(this.radioButPWM_CheckedChanged);
			this.LogicAlsPG.Controls.Add(this.LogicView);
			this.LogicAlsPG.Font = new Font("SimSun", 10.5f);
			this.LogicAlsPG.Location = new Point(4, 23);
			this.LogicAlsPG.Name = "LogicAlsPG";
			this.LogicAlsPG.Size = new Size(489, 314);
			this.LogicAlsPG.TabIndex = 2;
			this.LogicAlsPG.Text = "tabPage1";
			this.LogicAlsPG.UseVisualStyleBackColor = true;
			this.label27.AutoSize = true;
			this.label27.ForeColor = Color.White;
			this.label27.ImeMode = ImeMode.NoControl;
			this.label27.Location = new Point(-1, 28);
			this.label27.Name = "label27";
			this.label27.Size = new Size(49, 15);
			this.label27.TabIndex = 111;
			this.label27.Text = "Ext Trig";
			this.label24.AutoSize = true;
			this.label24.Font = new Font("Calibri", 9f);
			this.label24.ForeColor = Color.White;
			this.label24.ImeMode = ImeMode.NoControl;
			this.label24.Location = new Point(-1, 46);
			this.label24.Name = "label24";
			this.label24.Size = new Size(13, 14);
			this.label24.TabIndex = 2;
			this.label24.Text = "1";
			this.toolStrip3.Items.AddRange(new ToolStripItem[]
			{
				this.toolStripButton3
			});
			this.toolStrip3.Location = new Point(0, 0);
			this.toolStrip3.Name = "toolStrip3";
			this.toolStrip3.Size = new Size(103, 25);
			this.toolStrip3.TabIndex = 1;
			this.toolStrip3.Text = "toolStrip3";
			this.toolStripButton3.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButton3.Image = Resources.icon_close;
			this.toolStripButton3.ImageTransparentColor = Color.Magenta;
			this.toolStripButton3.Name = "toolStripButton3";
			this.toolStripButton3.Size = new Size(23, 22);
			this.toolStripButton3.Text = "toolStripButton3";
			this.toolStripButton3.Click += new EventHandler(this.toolStripButton3_Click);
			this.trackBarExtTrigger.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left);
			this.trackBarExtTrigger.ImeMode = ImeMode.NoControl;
			this.trackBarExtTrigger.LargeChange = 1;
			this.trackBarExtTrigger.Location = new Point(1, 63);
			this.trackBarExtTrigger.Maximum = 100;
			this.trackBarExtTrigger.Minimum = 1;
			this.trackBarExtTrigger.Name = "trackBarExtTrigger";
			this.trackBarExtTrigger.Orientation = Orientation.Vertical;
			this.trackBarExtTrigger.Size = new Size(45, 99);
			this.trackBarExtTrigger.TabIndex = 0;
			this.trackBarExtTrigger.TickStyle = TickStyle.Both;
			this.trackBarExtTrigger.Value = 1;
			this.trackBarExtTrigger.ValueChanged += new EventHandler(this.trackBarExtTrigger_ValueChanged);
			this.splitContainer2.BackColor = SystemColors.Control;
			this.splitContainer2.BorderStyle = BorderStyle.Fixed3D;
			this.splitContainer2.Dock = DockStyle.Fill;
			this.splitContainer2.FixedPanel = FixedPanel.Panel2;
			this.splitContainer2.Location = new Point(0, 0);
			this.splitContainer2.Name = "splitContainer2";
			this.splitContainer2.Panel1.AutoScroll = true;
			this.splitContainer2.Panel1.AutoScrollMargin = new Size(5, 5);
			this.splitContainer2.Panel1.AutoScrollMinSize = new Size(100, 0);
			this.splitContainer2.Panel1.BackColor = SystemColors.ButtonHighlight;
			this.splitContainer2.Panel1.Controls.Add(this.panel2);
			this.splitContainer2.Panel1.Controls.Add(this.myffTctrl1);
			this.splitContainer2.Panel1.Font = new Font("Calibri", 9f, FontStyle.Bold);
			this.splitContainer2.Panel1MinSize = 0;
			this.splitContainer2.Panel2.AutoScroll = true;
			this.splitContainer2.Panel2.AutoScrollMinSize = new Size(100, 0);
			this.splitContainer2.Panel2.BackColor = SystemColors.Control;
			this.splitContainer2.Panel2.Controls.Add(this.toolStrip2);
			this.splitContainer2.Panel2.Controls.Add(this.propertyGrid1);
			this.splitContainer2.Panel2MinSize = 0;
			this.splitContainer2.Size = new Size(608, 175);
			this.splitContainer2.SplitterDistance = 387;
			this.splitContainer2.TabIndex = 0;
			this.panel2.Dock = DockStyle.Fill;
			this.panel2.Location = new Point(1032, 0);
			this.panel2.Name = "panel2";
			this.panel2.Size = new Size(5, 154);
			this.panel2.TabIndex = 1;
			this.myffTctrl1.BackColor = Color.Transparent;
			this.myffTctrl1.Chan0Offset = 0.0;
			this.myffTctrl1.Chan0Rate = 1.0;
			this.myffTctrl1.Chan1Offset = 0.0;
			this.myffTctrl1.Chann1Rate = 1.0;
			this.myffTctrl1.Dock = DockStyle.Left;
			this.myffTctrl1.Font = new Font("Arial", 9f);
			this.myffTctrl1.Location = new Point(0, 0);
			this.myffTctrl1.Margin = new Padding(3, 4, 3, 4);
			this.myffTctrl1.Name = "myffTctrl1";
			this.myffTctrl1.panCount = 10u;
			this.myffTctrl1.Size = new Size(1032, 154);
			this.myffTctrl1.TabIndex = 0;
			this.toolStrip2.AutoSize = false;
			this.toolStrip2.BackColor = SystemColors.InactiveCaption;
			this.toolStrip2.Items.AddRange(new ToolStripItem[]
			{
				this.toolStripButton2,
				this.toolStripSeparator17,
				this.toolStripButtonZoomIn,
				this.toolStripSeparator18,
				this.toolStripButtonZoomOut
			});
			this.toolStrip2.Location = new Point(0, 0);
			this.toolStrip2.Name = "toolStrip2";
			this.toolStrip2.RightToLeft = RightToLeft.Yes;
			this.toolStrip2.Size = new Size(213, 25);
			this.toolStrip2.TabIndex = 1;
			this.toolStrip2.Text = "toolStrip2";
			this.toolStripButton2.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButton2.Image = Resources.icon_close2;
			this.toolStripButton2.ImageTransparentColor = Color.Magenta;
			this.toolStripButton2.Name = "toolStripButton2";
			this.toolStripButton2.Size = new Size(23, 22);
			this.toolStripButton2.Text = "toolStripButton2";
			this.toolStripButton2.Click += new EventHandler(this.toolStripButton2_Click_1);
			this.toolStripSeparator17.Name = "toolStripSeparator17";
			this.toolStripSeparator17.Size = new Size(6, 25);
			this.toolStripButtonZoomIn.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButtonZoomIn.Image = (Image)componentResourceManager.GetObject("toolStripButtonZoomIn.Image");
			this.toolStripButtonZoomIn.ImageTransparentColor = Color.Magenta;
			this.toolStripButtonZoomIn.Margin = new Padding(0, 1, 0, 1);
			this.toolStripButtonZoomIn.Name = "toolStripButtonZoomIn";
			this.toolStripButtonZoomIn.Size = new Size(23, 23);
			this.toolStripButtonZoomIn.Text = "toolStripButton3";
			this.toolStripButtonZoomIn.ToolTipText = "Zoom In";
			this.toolStripButtonZoomIn.Click += new EventHandler(this.toolStripButtonZoomIn_Click);
			this.toolStripSeparator18.Name = "toolStripSeparator18";
			this.toolStripSeparator18.Size = new Size(6, 25);
			this.toolStripButtonZoomOut.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButtonZoomOut.Image = (Image)componentResourceManager.GetObject("toolStripButtonZoomOut.Image");
			this.toolStripButtonZoomOut.ImageTransparentColor = Color.Magenta;
			this.toolStripButtonZoomOut.Name = "toolStripButtonZoomOut";
			this.toolStripButtonZoomOut.Size = new Size(23, 22);
			this.toolStripButtonZoomOut.Text = "toolStripButton5";
			this.toolStripButtonZoomOut.ToolTipText = "Zoom Out";
			this.toolStripButtonZoomOut.Click += new EventHandler(this.toolStripButtonZoomOut_Click);
			this.propertyGrid1.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.propertyGrid1.Font = new Font("Calibri", 9f);
			this.propertyGrid1.Location = new Point(1, 28);
			this.propertyGrid1.Name = "propertyGrid1";
			this.propertyGrid1.Size = new Size(210, 163);
			this.propertyGrid1.TabIndex = 0;
			this.propertyGrid1.PropertyValueChanged += new PropertyValueChangedEventHandler(this.Property_Value_Changed);
			this.label7.AutoSize = true;
			this.label7.Font = new Font("Calibri", 9f);
			this.label7.ForeColor = Color.Black;
			this.label7.ImeMode = ImeMode.NoControl;
			this.label7.Location = new Point(65, 230);
			this.label7.Name = "label7";
			this.label7.Size = new Size(42, 14);
			this.label7.TabIndex = 77;
			this.label7.Text = "200mV";
			this.label5.AutoSize = true;
			this.label5.Font = new Font("Calibri", 9f);
			this.label5.ForeColor = Color.Black;
			this.label5.ImeMode = ImeMode.NoControl;
			this.label5.Location = new Point(121, 231);
			this.label5.Name = "label5";
			this.label5.Size = new Size(29, 14);
			this.label5.TabIndex = 78;
			this.label5.Text = "0.5V";
			this.label23.AutoSize = true;
			this.label23.Font = new Font("Calibri", 9f);
			this.label23.ForeColor = Color.Black;
			this.label23.ImeMode = ImeMode.NoControl;
			this.label23.Location = new Point(166, 353);
			this.label23.Name = "label23";
			this.label23.Size = new Size(20, 14);
			this.label23.TabIndex = 71;
			this.label23.Text = "5V";
			this.label9.AutoSize = true;
			this.label9.Font = new Font("Calibri", 9f);
			this.label9.ForeColor = Color.Black;
			this.label9.ImeMode = ImeMode.NoControl;
			this.label9.Location = new Point(3, 303);
			this.label9.Name = "label9";
			this.label9.RightToLeft = RightToLeft.Yes;
			this.label9.Size = new Size(36, 14);
			this.label9.TabIndex = 75;
			this.label9.Text = "50mV";
			this.label1.AutoSize = true;
			this.label1.Font = new Font("Calibri", 9f);
			this.label1.ForeColor = Color.Black;
			this.label1.ImeMode = ImeMode.NoControl;
			this.label1.Location = new Point(166, 260);
			this.label1.Name = "label1";
			this.label1.Size = new Size(20, 14);
			this.label1.TabIndex = 79;
			this.label1.Text = "1V";
			this.label8.AutoSize = true;
			this.label8.Font = new Font("Calibri", 9f);
			this.label8.ForeColor = Color.Black;
			this.label8.ImeMode = ImeMode.NoControl;
			this.label8.Location = new Point(10, 256);
			this.label8.Name = "label8";
			this.label8.Size = new Size(42, 14);
			this.label8.TabIndex = 76;
			this.label8.Text = "100mV";
			this.label13.AutoSize = true;
			this.label13.Font = new Font("Calibri", 9f);
			this.label13.ForeColor = Color.Black;
			this.label13.ImeMode = ImeMode.NoControl;
			this.label13.Location = new Point(182, 480);
			this.label13.Name = "label13";
			this.label13.Size = new Size(20, 14);
			this.label13.TabIndex = 70;
			this.label13.Text = "2V";
			this.label16.AutoSize = true;
			this.label16.Font = new Font("Calibri", 9f);
			this.label16.ForeColor = Color.Black;
			this.label16.ImeMode = ImeMode.NoControl;
			this.label16.Location = new Point(70, 406);
			this.label16.Name = "label16";
			this.label16.Size = new Size(42, 14);
			this.label16.TabIndex = 77;
			this.label16.Text = "200mV";
			this.label25.AutoSize = true;
			this.label25.Font = new Font("Calibri", 9f);
			this.label25.ForeColor = Color.Black;
			this.label25.ImeMode = ImeMode.NoControl;
			this.label25.Location = new Point(126, 407);
			this.label25.Name = "label25";
			this.label25.Size = new Size(29, 14);
			this.label25.TabIndex = 78;
			this.label25.Text = "0.5V";
			this.label26.AutoSize = true;
			this.label26.Font = new Font("Calibri", 9f);
			this.label26.ForeColor = Color.Black;
			this.label26.ImeMode = ImeMode.NoControl;
			this.label26.Location = new Point(170, 527);
			this.label26.Name = "label26";
			this.label26.Size = new Size(20, 14);
			this.label26.TabIndex = 71;
			this.label26.Text = "5V";
			this.label33.AutoSize = true;
			this.label33.Font = new Font("Calibri", 9f);
			this.label33.ForeColor = Color.Black;
			this.label33.ImeMode = ImeMode.NoControl;
			this.label33.Location = new Point(3, 482);
			this.label33.Name = "label33";
			this.label33.RightToLeft = RightToLeft.Yes;
			this.label33.Size = new Size(36, 14);
			this.label33.TabIndex = 75;
			this.label33.Text = "50mV";
			this.label34.AutoSize = true;
			this.label34.Font = new Font("Calibri", 9f);
			this.label34.ForeColor = Color.Black;
			this.label34.ImeMode = ImeMode.NoControl;
			this.label34.Location = new Point(169, 435);
			this.label34.Name = "label34";
			this.label34.Size = new Size(20, 14);
			this.label34.TabIndex = 79;
			this.label34.Text = "1V";
			this.label35.AutoSize = true;
			this.label35.Font = new Font("Calibri", 9f);
			this.label35.ForeColor = Color.Black;
			this.label35.ImeMode = ImeMode.NoControl;
			this.label35.Location = new Point(11, 434);
			this.label35.Name = "label35";
			this.label35.Size = new Size(42, 14);
			this.label35.TabIndex = 76;
			this.label35.Text = "100mV";
			this.panel6.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right);
			this.panel6.BackColor = SystemColors.Control;
			this.panel6.BorderStyle = BorderStyle.Fixed3D;
			this.panel6.Controls.Add(this.label13);
			this.panel6.Controls.Add(this.label11);
			this.panel6.Controls.Add(this.comboTimeBase);
			this.panel6.Controls.Add(this.label16);
			this.panel6.Controls.Add(this.label7);
			this.panel6.Controls.Add(this.comboBoxNS);
			this.panel6.Controls.Add(this.label25);
			this.panel6.Controls.Add(this.label5);
			this.panel6.Controls.Add(this.label19);
			this.panel6.Controls.Add(this.label26);
			this.panel6.Controls.Add(this.label23);
			this.panel6.Controls.Add(this.label20);
			this.panel6.Controls.Add(this.label33);
			this.panel6.Controls.Add(this.label9);
			this.panel6.Controls.Add(this.label10);
			this.panel6.Controls.Add(this.label34);
			this.panel6.Controls.Add(this.label1);
			this.panel6.Controls.Add(this.label12);
			this.panel6.Controls.Add(this.label35);
			this.panel6.Controls.Add(this.label8);
			this.panel6.Controls.Add(this.label18);
			this.panel6.Controls.Add(this.KnoBVolCH2);
			this.panel6.Controls.Add(this.Ch1VoltageKnob);
			this.panel6.Controls.Add(this.label14);
			this.panel6.Controls.Add(this.label17);
			this.panel6.Controls.Add(this.label15);
			this.panel6.Controls.Add(this.TimeKnob);
			this.panel6.Location = new Point(605, 53);
			this.panel6.Name = "panel6";
			this.panel6.Size = new Size(225, 572);
			this.panel6.TabIndex = 89;
			this.label11.AutoSize = true;
			this.label11.Font = new Font("Calibri", 9f);
			this.label11.ForeColor = Color.Black;
			this.label11.ImeMode = ImeMode.NoControl;
			this.label11.Location = new Point(177, 305);
			this.label11.Name = "label11";
			this.label11.Size = new Size(20, 14);
			this.label11.TabIndex = 80;
			this.label11.Text = "2V";
			this.comboTimeBase.DropDownStyle = ComboBoxStyle.DropDownList;
			this.comboTimeBase.Font = new Font("Calibri", 9f);
			this.comboTimeBase.FormattingEnabled = true;
			this.comboTimeBase.Location = new Point(126, 177);
			this.comboTimeBase.Name = "comboTimeBase";
			this.comboTimeBase.Size = new Size(60, 22);
			this.comboTimeBase.TabIndex = 99;
			this.comboTimeBase.TabStop = false;
			this.comboTimeBase.SelectedIndexChanged += new EventHandler(this.comboTimeBase_SelectedIndexChanged_1);
			this.comboBoxNS.DropDownStyle = ComboBoxStyle.DropDownList;
			this.comboBoxNS.Font = new Font("Calibri", 9f);
			this.comboBoxNS.FormattingEnabled = true;
			this.comboBoxNS.Location = new Point(163, 152);
			this.comboBoxNS.Name = "comboBoxNS";
			this.comboBoxNS.Size = new Size(60, 22);
			this.comboBoxNS.TabIndex = 100;
			this.comboBoxNS.TabStop = false;
			this.comboBoxNS.SelectedIndexChanged += new EventHandler(this.comboBoxNS_SelectedIndexChanged);
			this.label19.AutoSize = true;
			this.label19.Font = new Font("Calibri", 9f);
			this.label19.ForeColor = Color.Black;
			this.label19.ImeMode = ImeMode.NoControl;
			this.label19.Location = new Point(180, 104);
			this.label19.Name = "label19";
			this.label19.Size = new Size(41, 14);
			this.label19.TabIndex = 92;
			this.label19.Text = "0.25us";
			this.label20.AutoSize = true;
			this.label20.Font = new Font("Calibri", 9f);
			this.label20.ForeColor = Color.Black;
			this.label20.ImeMode = ImeMode.NoControl;
			this.label20.Location = new Point(170, 58);
			this.label20.Name = "label20";
			this.label20.Size = new Size(31, 20);
			this.label20.TabIndex = 91;
			this.label20.Text = "0.5us";
			this.label20.UseCompatibleTextRendering = true;
			this.label10.AutoSize = true;
			this.label10.Font = new Font("Calibri", 9f);
			this.label10.ForeColor = Color.Black;
			this.label10.ImeMode = ImeMode.NoControl;
			this.label10.Location = new Point(127, 29);
			this.label10.Name = "label10";
			this.label10.Size = new Size(26, 14);
			this.label10.TabIndex = 98;
			this.label10.Text = "1us";
			this.label12.AutoSize = true;
			this.label12.Font = new Font("Calibri", 9f);
			this.label12.ForeColor = Color.Black;
			this.label12.ImeMode = ImeMode.NoControl;
			this.label12.Location = new Point(67, 28);
			this.label12.Name = "label12";
			this.label12.Size = new Size(35, 14);
			this.label12.TabIndex = 97;
			this.label12.Text = "2.5us";
			this.label18.AutoSize = true;
			this.label18.Font = new Font("Calibri", 9f);
			this.label18.ForeColor = Color.Black;
			this.label18.ImeMode = ImeMode.NoControl;
			this.label18.Location = new Point(55, 179);
			this.label18.Name = "label18";
			this.label18.Size = new Size(38, 14);
			this.label18.TabIndex = 93;
			this.label18.Text = "0.2ms";
			this.label14.AutoSize = true;
			this.label14.Font = new Font("Calibri", 9f);
			this.label14.ForeColor = Color.Black;
			this.label14.ImeMode = ImeMode.NoControl;
			this.label14.Location = new Point(21, 55);
			this.label14.Name = "label14";
			this.label14.Size = new Size(32, 14);
			this.label14.TabIndex = 96;
			this.label14.Text = "10us";
			this.label17.AutoSize = true;
			this.label17.Font = new Font("Calibri", 9f);
			this.label17.ForeColor = Color.Black;
			this.label17.ImeMode = ImeMode.NoControl;
			this.label17.Location = new Point(14, 153);
			this.label17.Name = "label17";
			this.label17.Size = new Size(38, 14);
			this.label17.TabIndex = 94;
			this.label17.Text = "0.1ms";
			this.label15.AutoSize = true;
			this.label15.Font = new Font("Calibri", 9f);
			this.label15.ForeColor = Color.Black;
			this.label15.ImeMode = ImeMode.NoControl;
			this.label15.Location = new Point(7, 102);
			this.label15.Name = "label15";
			this.label15.Size = new Size(32, 14);
			this.label15.TabIndex = 95;
			this.label15.Text = "25us";
			this.panel1.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.panel1.Controls.Add(this.butStorageStop);
			this.panel1.Controls.Add(this.ljtStorage1);
			this.panel1.Controls.Add(this.listViewProperties);
			this.panel1.Location = new Point(831, 83);
			this.panel1.MinimumSize = new Size(0, 100);
			this.panel1.Name = "panel1";
			this.panel1.Size = new Size(200, 226);
			this.panel1.TabIndex = 101;
			this.butStorageStop.Image = (Image)componentResourceManager.GetObject("butStorageStop.Image");
			this.butStorageStop.ImeMode = ImeMode.NoControl;
			this.butStorageStop.Location = new Point(149, 198);
			this.butStorageStop.Name = "butStorageStop";
			this.butStorageStop.Size = new Size(24, 24);
			this.butStorageStop.TabIndex = 100;
			this.butStorageStop.UseVisualStyleBackColor = true;
			this.butStorageStop.Click += new EventHandler(this.butStorageStop_Click);
			this.listViewProperties.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.listViewProperties.Font = new Font("Calibri", 9f);
			this.listViewProperties.GridLines = true;
			this.listViewProperties.Location = new Point(1, 13);
			this.listViewProperties.Name = "listViewProperties";
			this.listViewProperties.Size = new Size(188, 241);
			this.listViewProperties.TabIndex = 99;
			this.listViewProperties.UseCompatibleStateImageBehavior = false;
			this.notifyIcon1.BalloonTipText = "Osillagraph";
			this.notifyIcon1.Icon = (Icon)componentResourceManager.GetObject("notifyIcon1.Icon");
			this.notifyIcon1.Text = "Osillagraph";
			this.notifyIcon1.Visible = true;
			this.notifyIcon1.Click += new EventHandler(this.notifyIcon1_Click);
			this.label3.AutoSize = true;
			this.label3.Font = new Font("SimHei", 21.75f);
			this.label3.ForeColor = Color.White;
			this.label3.ImeMode = ImeMode.NoControl;
			this.label3.Location = new Point(39, 7);
			this.label3.Name = "label3";
			this.label3.Size = new Size(129, 29);
			this.label3.TabIndex = 0;
			this.label3.Text = "数学计算";
			this.label4.AutoSize = true;
			this.label4.ImeMode = ImeMode.NoControl;
			this.label4.Location = new Point(95, 176);
			this.label4.Name = "label4";
			this.label4.Size = new Size(53, 12);
			this.label4.TabIndex = 7;
			this.label4.Text = "X1/2_CH1";
			this.label38.AutoSize = true;
			this.label38.ImeMode = ImeMode.NoControl;
			this.label38.Location = new Point(95, 149);
			this.label38.Name = "label38";
			this.label38.Size = new Size(53, 12);
			this.label38.TabIndex = 6;
			this.label38.Text = "X1/2_CH0";
			this.textBox1.AcceptsTab = true;
			this.textBox1.Location = new Point(9, 173);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new Size(72, 21);
			this.textBox1.TabIndex = 5;
			this.textBox1.Tag = "8";
			this.textBox1.Text = "128";
			this.textBox2.AcceptsTab = true;
			this.textBox2.Location = new Point(9, 146);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new Size(72, 21);
			this.textBox2.TabIndex = 4;
			this.textBox2.Tag = "8";
			this.textBox2.Text = "128";
			this.button1.ImeMode = ImeMode.NoControl;
			this.button1.Location = new Point(95, 14);
			this.button1.Name = "button1";
			this.button1.Size = new Size(102, 125);
			this.button1.TabIndex = 3;
			this.button1.Text = "adjust";
			this.button1.UseVisualStyleBackColor = true;
			this.textBox3.Location = new Point(9, 119);
			this.textBox3.Name = "textBox3";
			this.textBox3.Size = new Size(72, 21);
			this.textBox3.TabIndex = 0;
			this.textBox3.Tag = "8";
			this.textBox3.Text = "128";
			this.textBox5.Location = new Point(9, 92);
			this.textBox5.Name = "textBox5";
			this.textBox5.Size = new Size(72, 21);
			this.textBox5.TabIndex = 1;
			this.textBox5.Text = "128";
			this.textBox6.Location = new Point(9, 65);
			this.textBox6.Name = "textBox6";
			this.textBox6.Size = new Size(74, 21);
			this.textBox6.TabIndex = 2;
			this.textBox6.Text = "128";
			this.textBox7.Location = new Point(9, 38);
			this.textBox7.Name = "textBox7";
			this.textBox7.Size = new Size(72, 21);
			this.textBox7.TabIndex = 1;
			this.textBox7.Text = "128";
			this.textBox8.Location = new Point(10, 9);
			this.textBox8.Name = "textBox8";
			this.textBox8.Size = new Size(72, 21);
			this.textBox8.TabIndex = 0;
			this.textBox8.Text = "128";
			this.menuStrip1.AutoSize = false;
			this.menuStrip1.Font = new Font("Arial", 10.5f);
			this.menuStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.fileToolStripMenuItem,
				this.viewToolStripMenuItem,
				this.horizontalToolStripMenuItem,
				this.verticalToolStripMenuItem,
				this.displayToolStripMenuItem,
				this.toolStripMenuItem1,
				this.warningToolStripMenuItem,
				this.helpToolStripMenuItem
			});
			this.menuStrip1.Location = new Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new Size(1020, 26);
			this.menuStrip1.TabIndex = 96;
			this.menuStrip1.Text = "menuStrip1";
			this.menuStrip1.ItemClicked += new ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
			this.fileToolStripMenuItem.AutoSize = false;
			this.fileToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.openToolStripMenuItem,
				this.saveAsTxtToolStripMenuItem,
				this.toolStripSeparator10,
				this.toolStripMenuItemSaveSetup,
				this.LoadSetupToolStripMenuItem,
				this.toolStripSeparator6,
				this.printToolStripMenuItem,
				this.printSetupToolStripMenuItem,
				this.printViewToolStripMenuItem,
				this.toolStripSeparator8,
				this.exitToolStripMenuItem
			});
			this.fileToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
			this.fileToolStripMenuItem.Size = new Size(44, 22);
			this.fileToolStripMenuItem.Text = "File";
			this.openToolStripMenuItem.Enabled = false;
			this.openToolStripMenuItem.Name = "openToolStripMenuItem";
			this.openToolStripMenuItem.Size = new Size(144, 22);
			this.openToolStripMenuItem.Text = "Open";
			this.openToolStripMenuItem.Click += new EventHandler(this.openToolStripMenuItem_Click);
			this.saveAsTxtToolStripMenuItem.Image = (Image)componentResourceManager.GetObject("saveAsTxtToolStripMenuItem.Image");
			this.saveAsTxtToolStripMenuItem.Name = "saveAsTxtToolStripMenuItem";
			this.saveAsTxtToolStripMenuItem.Size = new Size(144, 22);
			this.saveAsTxtToolStripMenuItem.Text = "Save Data";
			this.saveAsTxtToolStripMenuItem.Click += new EventHandler(this.saveAsTxtToolStripMenuItem_Click);
			this.toolStripSeparator10.Name = "toolStripSeparator10";
			this.toolStripSeparator10.Size = new Size(141, 6);
			this.toolStripMenuItemSaveSetup.Name = "toolStripMenuItemSaveSetup";
			this.toolStripMenuItemSaveSetup.Size = new Size(144, 22);
			this.toolStripMenuItemSaveSetup.Text = "Save Setup";
			this.toolStripMenuItemSaveSetup.Click += new EventHandler(this.toolStripMenuItemSaveSetup_Click);
			this.LoadSetupToolStripMenuItem.Name = "LoadSetupToolStripMenuItem";
			this.LoadSetupToolStripMenuItem.Size = new Size(144, 22);
			this.LoadSetupToolStripMenuItem.Text = "Load Setup";
			this.LoadSetupToolStripMenuItem.Click += new EventHandler(this.LoadSetupToolStripMenuItem_Click);
			this.toolStripSeparator6.Name = "toolStripSeparator6";
			this.toolStripSeparator6.Size = new Size(141, 6);
			this.printToolStripMenuItem.Image = (Image)componentResourceManager.GetObject("printToolStripMenuItem.Image");
			this.printToolStripMenuItem.Name = "printToolStripMenuItem";
			this.printToolStripMenuItem.Size = new Size(144, 22);
			this.printToolStripMenuItem.Text = "Print";
			this.printToolStripMenuItem.Click += new EventHandler(this.printToolStripMenuItem_Click);
			this.printSetupToolStripMenuItem.Name = "printSetupToolStripMenuItem";
			this.printSetupToolStripMenuItem.Size = new Size(144, 22);
			this.printSetupToolStripMenuItem.Text = "PrintSetup";
			this.printSetupToolStripMenuItem.Click += new EventHandler(this.printSetupToolStripMenuItem_Click);
			this.printViewToolStripMenuItem.Name = "printViewToolStripMenuItem";
			this.printViewToolStripMenuItem.Size = new Size(144, 22);
			this.printViewToolStripMenuItem.Text = "Print Preview";
			this.printViewToolStripMenuItem.Click += new EventHandler(this.printViewToolStripMenuItem_Click_1);
			this.toolStripSeparator8.Name = "toolStripSeparator8";
			this.toolStripSeparator8.Size = new Size(141, 6);
			this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
			this.exitToolStripMenuItem.Size = new Size(144, 22);
			this.exitToolStripMenuItem.Text = "Exit";
			this.exitToolStripMenuItem.Click += new EventHandler(this.exitToolStripMenuItem_Click);
			this.viewToolStripMenuItem.AutoSize = false;
			this.viewToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.fFTToolStripMenuItem,
				this.ch1ch2ToolStripMenuItem,
				this.ch1ch2ToolStripMenuItem1,
				this.CH1XCH2ToolStripMenuItem,
				this.toolStripSeparator9,
				this.toolStripMenuItem2,
				this.toolStripSeparator7,
				this.toolBarToolStripMenuItem,
				this.controlWindowToolStripMenuItem,
				this.toolStripSeparator16,
				this.extTriggerToolStripMenuItem,
				this.measureWindowToolStripMenuItem
			});
			this.viewToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.viewToolStripMenuItem.Name = "viewToolStripMenuItem";
			this.viewToolStripMenuItem.Size = new Size(44, 22);
			this.viewToolStripMenuItem.Text = "View";
			this.fFTToolStripMenuItem.Name = "fFTToolStripMenuItem";
			this.fFTToolStripMenuItem.Size = new Size(177, 22);
			this.fFTToolStripMenuItem.Text = "FFT";
			this.fFTToolStripMenuItem.Click += new EventHandler(this.fFTToolStripMenuItem_Click);
			this.ch1ch2ToolStripMenuItem.Name = "ch1ch2ToolStripMenuItem";
			this.ch1ch2ToolStripMenuItem.Size = new Size(177, 22);
			this.ch1ch2ToolStripMenuItem.Text = "CH1+CH2";
			this.ch1ch2ToolStripMenuItem.Click += new EventHandler(this.ch1ch2ToolStripMenuItem_Click);
			this.ch1ch2ToolStripMenuItem1.Name = "ch1ch2ToolStripMenuItem1";
			this.ch1ch2ToolStripMenuItem1.Size = new Size(177, 22);
			this.ch1ch2ToolStripMenuItem1.Text = "CH1-CH2";
			this.ch1ch2ToolStripMenuItem1.Click += new EventHandler(this.ch1ch2ToolStripMenuItem1_Click);
			this.CH1XCH2ToolStripMenuItem.Name = "CH1XCH2ToolStripMenuItem";
			this.CH1XCH2ToolStripMenuItem.Size = new Size(177, 22);
			this.CH1XCH2ToolStripMenuItem.Text = "CH1XCH2";
			this.CH1XCH2ToolStripMenuItem.Click += new EventHandler(this.CH1XCH2ToolStripMenuItem_Click);
			this.toolStripSeparator9.Name = "toolStripSeparator9";
			this.toolStripSeparator9.Size = new Size(174, 6);
			this.toolStripMenuItem2.Image = (Image)componentResourceManager.GetObject("toolStripMenuItem2.Image");
			this.toolStripMenuItem2.Name = "toolStripMenuItem2";
			this.toolStripMenuItem2.Size = new Size(177, 22);
			this.toolStripMenuItem2.Text = "Record and Review";
			this.toolStripMenuItem2.Click += new EventHandler(this.toolStripMenuItem2_Click_1);
			this.toolStripSeparator7.Name = "toolStripSeparator7";
			this.toolStripSeparator7.Size = new Size(174, 6);
			this.toolBarToolStripMenuItem.Name = "toolBarToolStripMenuItem";
			this.toolBarToolStripMenuItem.Size = new Size(177, 22);
			this.toolBarToolStripMenuItem.Text = "Tool Bar";
			this.toolBarToolStripMenuItem.Click += new EventHandler(this.toolBarToolStripMenuItem_Click);
			this.controlWindowToolStripMenuItem.Name = "controlWindowToolStripMenuItem";
			this.controlWindowToolStripMenuItem.Size = new Size(177, 22);
			this.controlWindowToolStripMenuItem.Text = "Control Window";
			this.controlWindowToolStripMenuItem.Click += new EventHandler(this.controlWindowToolStripMenuItem_Click);
			this.toolStripSeparator16.Name = "toolStripSeparator16";
			this.toolStripSeparator16.Size = new Size(174, 6);
			this.extTriggerToolStripMenuItem.Name = "extTriggerToolStripMenuItem";
			this.extTriggerToolStripMenuItem.Size = new Size(177, 22);
			this.extTriggerToolStripMenuItem.Text = "Ext Trigger";
			this.extTriggerToolStripMenuItem.Click += new EventHandler(this.extTriggerToolStripMenuItem_Click);
			this.measureWindowToolStripMenuItem.Name = "measureWindowToolStripMenuItem";
			this.measureWindowToolStripMenuItem.Size = new Size(177, 22);
			this.measureWindowToolStripMenuItem.Text = "Measure Window";
			this.measureWindowToolStripMenuItem.Click += new EventHandler(this.measureWindowToolStripMenuItem_Click);
			this.horizontalToolStripMenuItem.AutoSize = false;
			this.horizontalToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.timeDIVToolStripMenuItem,
				this.formatToolStripMenuItem
			});
			this.horizontalToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.horizontalToolStripMenuItem.Name = "horizontalToolStripMenuItem";
			this.horizontalToolStripMenuItem.Size = new Size(66, 22);
			this.horizontalToolStripMenuItem.Text = "Horizontal";
			this.timeDIVToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.nsToolStripMenuItem,
				this.nsToolStripMenuItem1,
				this.nsToolStripMenuItem2,
				this.usToolStripMenuItem,
				this.usToolStripMenuItem1,
				this.usToolStripMenuItem2,
				this.usToolStripMenuItem3,
				this.usToolStripMenuItem4,
				this.usToolStripMenuItem5,
				this.msToolStripMenuItem,
				this.msToolStripMenuItem1,
				this.msToolStripMenuItem2,
				this.msToolStripMenuItem3,
				this.msToolStripMenuItem4,
				this.msToolStripMenuItem5,
				this.msToolStripMenuItem6,
				this.msToolStripMenuItem7,
				this.msToolStripMenuItem8,
				this.msToolStripMenuItem9,
				this.msToolStripMenuItem10
			});
			this.timeDIVToolStripMenuItem.Name = "timeDIVToolStripMenuItem";
			this.timeDIVToolStripMenuItem.Size = new Size(125, 22);
			this.timeDIVToolStripMenuItem.Text = "Time/DIV";
			this.timeDIVToolStripMenuItem.Click += new EventHandler(this.timeDIVToolStripMenuItem_Click);
			this.nsToolStripMenuItem.Name = "nsToolStripMenuItem";
			this.nsToolStripMenuItem.Size = new Size(108, 22);
			this.nsToolStripMenuItem.Text = "25ns";
			this.nsToolStripMenuItem.Click += new EventHandler(this.nsToolStripMenuItem_Click);
			this.nsToolStripMenuItem1.Name = "nsToolStripMenuItem1";
			this.nsToolStripMenuItem1.Size = new Size(108, 22);
			this.nsToolStripMenuItem1.Text = "50ns";
			this.nsToolStripMenuItem1.Click += new EventHandler(this.nsToolStripMenuItem1_Click);
			this.nsToolStripMenuItem2.Name = "nsToolStripMenuItem2";
			this.nsToolStripMenuItem2.Size = new Size(108, 22);
			this.nsToolStripMenuItem2.Text = "125ns";
			this.nsToolStripMenuItem2.Click += new EventHandler(this.nsToolStripMenuItem2_Click);
			this.usToolStripMenuItem.Name = "usToolStripMenuItem";
			this.usToolStripMenuItem.Size = new Size(108, 22);
			this.usToolStripMenuItem.Text = "0.25us";
			this.usToolStripMenuItem.Click += new EventHandler(this.usToolStripMenuItem_Click);
			this.usToolStripMenuItem1.Name = "usToolStripMenuItem1";
			this.usToolStripMenuItem1.Size = new Size(108, 22);
			this.usToolStripMenuItem1.Text = "0.5us";
			this.usToolStripMenuItem1.Click += new EventHandler(this.usToolStripMenuItem1_Click);
			this.usToolStripMenuItem2.Name = "usToolStripMenuItem2";
			this.usToolStripMenuItem2.Size = new Size(108, 22);
			this.usToolStripMenuItem2.Text = "1us";
			this.usToolStripMenuItem2.Click += new EventHandler(this.usToolStripMenuItem2_Click);
			this.usToolStripMenuItem3.Name = "usToolStripMenuItem3";
			this.usToolStripMenuItem3.Size = new Size(108, 22);
			this.usToolStripMenuItem3.Text = "2.5us";
			this.usToolStripMenuItem3.Click += new EventHandler(this.usToolStripMenuItem3_Click);
			this.usToolStripMenuItem4.Name = "usToolStripMenuItem4";
			this.usToolStripMenuItem4.Size = new Size(108, 22);
			this.usToolStripMenuItem4.Text = "10us";
			this.usToolStripMenuItem4.Click += new EventHandler(this.usToolStripMenuItem4_Click);
			this.usToolStripMenuItem5.Name = "usToolStripMenuItem5";
			this.usToolStripMenuItem5.Size = new Size(108, 22);
			this.usToolStripMenuItem5.Text = "25us";
			this.usToolStripMenuItem5.Click += new EventHandler(this.usToolStripMenuItem5_Click);
			this.msToolStripMenuItem.Name = "msToolStripMenuItem";
			this.msToolStripMenuItem.Size = new Size(108, 22);
			this.msToolStripMenuItem.Text = "0.1ms";
			this.msToolStripMenuItem.Click += new EventHandler(this.msToolStripMenuItem_Click);
			this.msToolStripMenuItem1.Name = "msToolStripMenuItem1";
			this.msToolStripMenuItem1.Size = new Size(108, 22);
			this.msToolStripMenuItem1.Text = "0.2ms";
			this.msToolStripMenuItem1.Click += new EventHandler(this.msToolStripMenuItem1_Click);
			this.msToolStripMenuItem2.Name = "msToolStripMenuItem2";
			this.msToolStripMenuItem2.Size = new Size(108, 22);
			this.msToolStripMenuItem2.Text = "1ms";
			this.msToolStripMenuItem2.Click += new EventHandler(this.msToolStripMenuItem2_Click);
			this.msToolStripMenuItem3.Name = "msToolStripMenuItem3";
			this.msToolStripMenuItem3.Size = new Size(108, 22);
			this.msToolStripMenuItem3.Text = "2ms";
			this.msToolStripMenuItem3.Click += new EventHandler(this.msToolStripMenuItem3_Click);
			this.msToolStripMenuItem4.Name = "msToolStripMenuItem4";
			this.msToolStripMenuItem4.Size = new Size(108, 22);
			this.msToolStripMenuItem4.Text = "5ms";
			this.msToolStripMenuItem4.Click += new EventHandler(this.msToolStripMenuItem4_Click);
			this.msToolStripMenuItem5.Name = "msToolStripMenuItem5";
			this.msToolStripMenuItem5.Size = new Size(108, 22);
			this.msToolStripMenuItem5.Text = "10ms";
			this.msToolStripMenuItem5.Click += new EventHandler(this.msToolStripMenuItem5_Click);
			this.msToolStripMenuItem6.Name = "msToolStripMenuItem6";
			this.msToolStripMenuItem6.Size = new Size(108, 22);
			this.msToolStripMenuItem6.Text = "20ms";
			this.msToolStripMenuItem6.Click += new EventHandler(this.msToolStripMenuItem6_Click);
			this.msToolStripMenuItem7.Name = "msToolStripMenuItem7";
			this.msToolStripMenuItem7.Size = new Size(108, 22);
			this.msToolStripMenuItem7.Text = "50ms";
			this.msToolStripMenuItem7.Click += new EventHandler(this.msToolStripMenuItem7_Click);
			this.msToolStripMenuItem8.Name = "msToolStripMenuItem8";
			this.msToolStripMenuItem8.Size = new Size(108, 22);
			this.msToolStripMenuItem8.Text = "100ms";
			this.msToolStripMenuItem8.Click += new EventHandler(this.msToolStripMenuItem8_Click);
			this.msToolStripMenuItem9.Name = "msToolStripMenuItem9";
			this.msToolStripMenuItem9.Size = new Size(108, 22);
			this.msToolStripMenuItem9.Text = "200ms";
			this.msToolStripMenuItem9.Click += new EventHandler(this.msToolStripMenuItem9_Click);
			this.msToolStripMenuItem10.Name = "msToolStripMenuItem10";
			this.msToolStripMenuItem10.Size = new Size(108, 22);
			this.msToolStripMenuItem10.Text = "500ms";
			this.msToolStripMenuItem10.Click += new EventHandler(this.msToolStripMenuItem10_Click);
			this.formatToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.yTToolStripMenuItem,
				this.xYToolStripMenuItem
			});
			this.formatToolStripMenuItem.Name = "formatToolStripMenuItem";
			this.formatToolStripMenuItem.Size = new Size(125, 22);
			this.formatToolStripMenuItem.Text = "Format";
			this.yTToolStripMenuItem.Name = "yTToolStripMenuItem";
			this.yTToolStripMenuItem.Size = new Size(89, 22);
			this.yTToolStripMenuItem.Text = "Y-T";
			this.yTToolStripMenuItem.Click += new EventHandler(this.yTToolStripMenuItem_Click);
			this.xYToolStripMenuItem.Name = "xYToolStripMenuItem";
			this.xYToolStripMenuItem.Size = new Size(89, 22);
			this.xYToolStripMenuItem.Text = "X-Y";
			this.xYToolStripMenuItem.Click += new EventHandler(this.xYToolStripMenuItem_Click);
			this.verticalToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.voltDIVToolStripMenuItem,
				this.voltDIVToolStripMenuItem1
			});
			this.verticalToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.verticalToolStripMenuItem.Name = "verticalToolStripMenuItem";
			this.verticalToolStripMenuItem.Size = new Size(59, 22);
			this.verticalToolStripMenuItem.Text = "Vertical";
			this.voltDIVToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.mvToolStripMenuItem,
				this.mvToolStripMenuItem1,
				this.mvToolStripMenuItem2,
				this.vToolStripMenuItem,
				this.vToolStripMenuItem1,
				this.vToolStripMenuItem2,
				this.vToolStripMenuItem3
			});
			this.voltDIVToolStripMenuItem.Name = "voltDIVToolStripMenuItem";
			this.voltDIVToolStripMenuItem.Size = new Size(125, 22);
			this.voltDIVToolStripMenuItem.Text = "Volt1/DIV";
			this.mvToolStripMenuItem.Name = "mvToolStripMenuItem";
			this.mvToolStripMenuItem.Size = new Size(107, 22);
			this.mvToolStripMenuItem.Text = "50mv";
			this.mvToolStripMenuItem.Click += new EventHandler(this.mvToolStripMenuItem_Click);
			this.mvToolStripMenuItem1.Name = "mvToolStripMenuItem1";
			this.mvToolStripMenuItem1.Size = new Size(107, 22);
			this.mvToolStripMenuItem1.Text = "100mv";
			this.mvToolStripMenuItem1.Click += new EventHandler(this.mvToolStripMenuItem1_Click);
			this.mvToolStripMenuItem2.Name = "mvToolStripMenuItem2";
			this.mvToolStripMenuItem2.Size = new Size(107, 22);
			this.mvToolStripMenuItem2.Text = "200mv";
			this.mvToolStripMenuItem2.Click += new EventHandler(this.mvToolStripMenuItem2_Click);
			this.vToolStripMenuItem.Name = "vToolStripMenuItem";
			this.vToolStripMenuItem.Size = new Size(107, 22);
			this.vToolStripMenuItem.Text = "0.5v";
			this.vToolStripMenuItem.Click += new EventHandler(this.vToolStripMenuItem_Click);
			this.vToolStripMenuItem1.Name = "vToolStripMenuItem1";
			this.vToolStripMenuItem1.Size = new Size(107, 22);
			this.vToolStripMenuItem1.Text = "1v";
			this.vToolStripMenuItem1.Click += new EventHandler(this.vToolStripMenuItem1_Click);
			this.vToolStripMenuItem2.Name = "vToolStripMenuItem2";
			this.vToolStripMenuItem2.Size = new Size(107, 22);
			this.vToolStripMenuItem2.Text = "2v";
			this.vToolStripMenuItem2.Click += new EventHandler(this.vToolStripMenuItem2_Click);
			this.vToolStripMenuItem3.Name = "vToolStripMenuItem3";
			this.vToolStripMenuItem3.Size = new Size(107, 22);
			this.vToolStripMenuItem3.Text = "5v";
			this.vToolStripMenuItem3.Click += new EventHandler(this.vToolStripMenuItem3_Click);
			this.voltDIVToolStripMenuItem1.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.mvToolStripMenuItem3,
				this.mvToolStripMenuItem4,
				this.mvToolStripMenuItem5,
				this.vToolStripMenuItem4,
				this.vToolStripMenuItem5,
				this.vToolStripMenuItem6,
				this.vToolStripMenuItem7
			});
			this.voltDIVToolStripMenuItem1.Name = "voltDIVToolStripMenuItem1";
			this.voltDIVToolStripMenuItem1.Size = new Size(125, 22);
			this.voltDIVToolStripMenuItem1.Text = "Volt2/DIV";
			this.mvToolStripMenuItem3.Name = "mvToolStripMenuItem3";
			this.mvToolStripMenuItem3.Size = new Size(107, 22);
			this.mvToolStripMenuItem3.Text = "50mv";
			this.mvToolStripMenuItem3.Click += new EventHandler(this.mvToolStripMenuItem3_Click);
			this.mvToolStripMenuItem4.Name = "mvToolStripMenuItem4";
			this.mvToolStripMenuItem4.Size = new Size(107, 22);
			this.mvToolStripMenuItem4.Text = "100mv";
			this.mvToolStripMenuItem4.Click += new EventHandler(this.mvToolStripMenuItem4_Click);
			this.mvToolStripMenuItem5.Name = "mvToolStripMenuItem5";
			this.mvToolStripMenuItem5.Size = new Size(107, 22);
			this.mvToolStripMenuItem5.Text = "200mv";
			this.mvToolStripMenuItem5.Click += new EventHandler(this.mvToolStripMenuItem5_Click);
			this.vToolStripMenuItem4.Name = "vToolStripMenuItem4";
			this.vToolStripMenuItem4.Size = new Size(107, 22);
			this.vToolStripMenuItem4.Text = "0.5v";
			this.vToolStripMenuItem4.Click += new EventHandler(this.vToolStripMenuItem4_Click);
			this.vToolStripMenuItem5.Name = "vToolStripMenuItem5";
			this.vToolStripMenuItem5.Size = new Size(107, 22);
			this.vToolStripMenuItem5.Text = "1v";
			this.vToolStripMenuItem5.Click += new EventHandler(this.vToolStripMenuItem5_Click);
			this.vToolStripMenuItem6.Name = "vToolStripMenuItem6";
			this.vToolStripMenuItem6.Size = new Size(107, 22);
			this.vToolStripMenuItem6.Text = "2v";
			this.vToolStripMenuItem6.Click += new EventHandler(this.vToolStripMenuItem6_Click);
			this.vToolStripMenuItem7.Name = "vToolStripMenuItem7";
			this.vToolStripMenuItem7.Size = new Size(107, 22);
			this.vToolStripMenuItem7.Text = "5v";
			this.vToolStripMenuItem7.Click += new EventHandler(this.vToolStripMenuItem7_Click);
			this.displayToolStripMenuItem.AutoSize = false;
			this.displayToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.typeToolStripMenuItem,
				this.gridToolStripMenuItem,
				this.intensityToolStripMenuItem,
				this.mousePositionToolStripMenuItem
			});
			this.displayToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.displayToolStripMenuItem.Name = "displayToolStripMenuItem";
			this.displayToolStripMenuItem.Size = new Size(54, 22);
			this.displayToolStripMenuItem.Text = "Display";
			this.typeToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.vectorsToolStripMenuItem,
				this.dotsToolStripMenuItem
			});
			this.typeToolStripMenuItem.Name = "typeToolStripMenuItem";
			this.typeToolStripMenuItem.Size = new Size(158, 22);
			this.typeToolStripMenuItem.Text = "Line Type";
			this.vectorsToolStripMenuItem.Name = "vectorsToolStripMenuItem";
			this.vectorsToolStripMenuItem.Size = new Size(113, 22);
			this.vectorsToolStripMenuItem.Text = "Vectors";
			this.vectorsToolStripMenuItem.Click += new EventHandler(this.vectorsToolStripMenuItem_Click);
			this.dotsToolStripMenuItem.Name = "dotsToolStripMenuItem";
			this.dotsToolStripMenuItem.Size = new Size(113, 22);
			this.dotsToolStripMenuItem.Text = "Dots";
			this.dotsToolStripMenuItem.Click += new EventHandler(this.dotsToolStripMenuItem_Click);
			this.gridToolStripMenuItem.Name = "gridToolStripMenuItem";
			this.gridToolStripMenuItem.Size = new Size(158, 22);
			this.gridToolStripMenuItem.Text = "Grid";
			this.gridToolStripMenuItem.Click += new EventHandler(this.gridToolStripMenuItem_Click);
			this.intensityToolStripMenuItem.Image = Resources.color_gradient;
			this.intensityToolStripMenuItem.Name = "intensityToolStripMenuItem";
			this.intensityToolStripMenuItem.Size = new Size(158, 22);
			this.intensityToolStripMenuItem.Text = "Intensity";
			this.intensityToolStripMenuItem.Click += new EventHandler(this.intensityToolStripMenuItem_Click);
			this.mousePositionToolStripMenuItem.Name = "mousePositionToolStripMenuItem";
			this.mousePositionToolStripMenuItem.Size = new Size(158, 22);
			this.mousePositionToolStripMenuItem.Text = "Mouse Position";
			this.mousePositionToolStripMenuItem.Click += new EventHandler(this.mousePositionToolStripMenuItem_Click);
			this.toolStripMenuItem1.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.defaultSetupToolStripMenuItem,
				this.calibrateToolStripMenuItem
			});
			this.toolStripMenuItem1.Font = new Font("Calibri", 9f);
			this.toolStripMenuItem1.Name = "toolStripMenuItem1";
			this.toolStripMenuItem1.Size = new Size(51, 22);
			this.toolStripMenuItem1.Text = "Utility";
			this.defaultSetupToolStripMenuItem.Image = (Image)componentResourceManager.GetObject("defaultSetupToolStripMenuItem.Image");
			this.defaultSetupToolStripMenuItem.Name = "defaultSetupToolStripMenuItem";
			this.defaultSetupToolStripMenuItem.Size = new Size(149, 22);
			this.defaultSetupToolStripMenuItem.Text = "Default Setup";
			this.defaultSetupToolStripMenuItem.Click += new EventHandler(this.defaultSetupToolStripMenuItem_Click);
			this.calibrateToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.zeroToolStripMenuItem
			});
			this.calibrateToolStripMenuItem.Name = "calibrateToolStripMenuItem";
			this.calibrateToolStripMenuItem.Size = new Size(149, 22);
			this.calibrateToolStripMenuItem.Text = "Calibrate";
			this.zeroToolStripMenuItem.Name = "zeroToolStripMenuItem";
			this.zeroToolStripMenuItem.Size = new Size(98, 22);
			this.zeroToolStripMenuItem.Text = "Zero";
			this.zeroToolStripMenuItem.Click += new EventHandler(this.zeroToolStripMenuItem_Click);
			this.warningToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.textAlarmToolStripMenuItem,
				this.musicAlarmToolStripMenuItem
			});
			this.warningToolStripMenuItem.Font = new Font("Calibri", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.warningToolStripMenuItem.Name = "warningToolStripMenuItem";
			this.warningToolStripMenuItem.Size = new Size(72, 22);
			this.warningToolStripMenuItem.Text = "Warnning";
			this.textAlarmToolStripMenuItem.Name = "textAlarmToolStripMenuItem";
			this.textAlarmToolStripMenuItem.Size = new Size(159, 22);
			this.textAlarmToolStripMenuItem.Text = "textWarnning";
			this.textAlarmToolStripMenuItem.Click += new EventHandler(this.textAlarmToolStripMenuItem_Click);
			this.musicAlarmToolStripMenuItem.Name = "musicAlarmToolStripMenuItem";
			this.musicAlarmToolStripMenuItem.Size = new Size(159, 22);
			this.musicAlarmToolStripMenuItem.Text = "MusicWarnning";
			this.musicAlarmToolStripMenuItem.Click += new EventHandler(this.musicAlarmToolStripMenuItem_Click);
			this.helpToolStripMenuItem.AutoSize = false;
			this.helpToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
			{
				this.aboutToolStripMenuItem,
				this.contentToolStripMenuItem
			});
			this.helpToolStripMenuItem.Font = new Font("Calibri", 9f);
			this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
			this.helpToolStripMenuItem.Size = new Size(42, 22);
			this.helpToolStripMenuItem.Text = "Help";
			this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
			this.aboutToolStripMenuItem.Size = new Size(116, 22);
			this.aboutToolStripMenuItem.Text = "About";
			this.aboutToolStripMenuItem.Click += new EventHandler(this.aboutToolStripMenuItem_Click);
			this.contentToolStripMenuItem.Image = (Image)componentResourceManager.GetObject("contentToolStripMenuItem.Image");
			this.contentToolStripMenuItem.Name = "contentToolStripMenuItem";
			this.contentToolStripMenuItem.Size = new Size(116, 22);
			this.contentToolStripMenuItem.Text = "Content";
			this.contentToolStripMenuItem.Click += new EventHandler(this.contentToolStripMenuItem_Click);
			this.toolStrip1.AutoSize = false;
			this.toolStrip1.Font = new Font("Calibri", 9f);
			this.toolStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.toolStripLabel1,
				this.ACDCtoolStripComboBox0,
				this.ONOFFtoolStripComboBox0,
				this.toolStripProbeCH1,
				this.toolStripSeparator1,
				this.toolStripLabel2,
				this.ACDCtoolStripComboBox1,
				this.ONOFFtoolStripComboBox1,
				this.toolStripProbeCH2,
				this.toolStripSeparator2,
				this.toolStripSeparator3,
				this.toolStripLabel3,
				this.TRIGCHtoolStripComboBox,
				this.toolStripButTstart,
				this.TrigUPButton,
				this.TrigDNButton,
				this.TrigMODEtoolStripComboBox,
				this.AUTOtoolStripButton,
				this.toolStripSeparator4,
				this.FUNCtoolStripComboBox
			});
			this.toolStrip1.Location = new Point(0, 26);
			this.toolStrip1.Name = "toolStrip1";
			this.toolStrip1.Size = new Size(1020, 26);
			this.toolStrip1.TabIndex = 97;
			this.toolStrip1.Text = "toolStrip1";
			this.toolStripLabel1.Name = "toolStripLabel1";
			this.toolStripLabel1.Size = new Size(33, 23);
			this.toolStripLabel1.Text = "CH1: ";
			this.ACDCtoolStripComboBox0.AutoSize = false;
			this.ACDCtoolStripComboBox0.DropDownStyle = ComboBoxStyle.DropDownList;
			this.ACDCtoolStripComboBox0.DropDownWidth = 45;
			this.ACDCtoolStripComboBox0.FlatStyle = FlatStyle.Standard;
			this.ACDCtoolStripComboBox0.Font = new Font("Calibri", 9f);
			this.ACDCtoolStripComboBox0.Name = "ACDCtoolStripComboBox0";
			this.ACDCtoolStripComboBox0.Size = new Size(70, 22);
			this.ACDCtoolStripComboBox0.SelectedIndexChanged += new EventHandler(this.ACDCtoolStripComboBox0_SelectedIndexChanged);
			this.ACDCtoolStripComboBox0.Click += new EventHandler(this.ACDCtoolStripComboBox_Click);
			this.ONOFFtoolStripComboBox0.AutoSize = false;
			this.ONOFFtoolStripComboBox0.DropDownStyle = ComboBoxStyle.DropDownList;
			this.ONOFFtoolStripComboBox0.DropDownWidth = 45;
			this.ONOFFtoolStripComboBox0.FlatStyle = FlatStyle.Standard;
			this.ONOFFtoolStripComboBox0.Font = new Font("Calibri", 9f);
			this.ONOFFtoolStripComboBox0.Name = "ONOFFtoolStripComboBox0";
			this.ONOFFtoolStripComboBox0.Size = new Size(45, 22);
			this.ONOFFtoolStripComboBox0.SelectedIndexChanged += new EventHandler(this.ONOFFtoolStripComboBox0_SelectedIndexChanged);
			this.toolStripProbeCH1.AutoSize = false;
			this.toolStripProbeCH1.FlatStyle = FlatStyle.Standard;
			this.toolStripProbeCH1.Font = new Font("Calibri", 9f);
			this.toolStripProbeCH1.Items.AddRange(new object[]
			{
				"1X",
				"10X",
				"100X"
			});
			this.toolStripProbeCH1.Name = "toolStripProbeCH1";
			this.toolStripProbeCH1.Size = new Size(50, 22);
			this.toolStripProbeCH1.ToolTipText = "探头档位";
			this.toolStripProbeCH1.SelectedIndexChanged += new EventHandler(this.toolStripProbeCH1_SelectedIndexChanged);
			this.toolStripSeparator1.Name = "toolStripSeparator1";
			this.toolStripSeparator1.Size = new Size(6, 26);
			this.toolStripLabel2.BackColor = Color.Olive;
			this.toolStripLabel2.Name = "toolStripLabel2";
			this.toolStripLabel2.Size = new Size(33, 23);
			this.toolStripLabel2.Text = "CH2: ";
			this.ACDCtoolStripComboBox1.AutoSize = false;
			this.ACDCtoolStripComboBox1.DropDownStyle = ComboBoxStyle.DropDownList;
			this.ACDCtoolStripComboBox1.DropDownWidth = 45;
			this.ACDCtoolStripComboBox1.FlatStyle = FlatStyle.Standard;
			this.ACDCtoolStripComboBox1.Font = new Font("Calibri", 9f);
			this.ACDCtoolStripComboBox1.Name = "ACDCtoolStripComboBox1";
			this.ACDCtoolStripComboBox1.Size = new Size(70, 22);
			this.ACDCtoolStripComboBox1.SelectedIndexChanged += new EventHandler(this.ACDCtoolStripComboBox1_SelectedIndexChanged);
			this.ONOFFtoolStripComboBox1.AutoSize = false;
			this.ONOFFtoolStripComboBox1.DropDownStyle = ComboBoxStyle.DropDownList;
			this.ONOFFtoolStripComboBox1.DropDownWidth = 45;
			this.ONOFFtoolStripComboBox1.FlatStyle = FlatStyle.Standard;
			this.ONOFFtoolStripComboBox1.Font = new Font("Calibri", 9f);
			this.ONOFFtoolStripComboBox1.Name = "ONOFFtoolStripComboBox1";
			this.ONOFFtoolStripComboBox1.Size = new Size(45, 22);
			this.ONOFFtoolStripComboBox1.SelectedIndexChanged += new EventHandler(this.ONOFFtoolStripComboBox1_SelectedIndexChanged);
			this.toolStripProbeCH2.AutoCompleteCustomSource.AddRange(new string[]
			{
				"1X",
				"10X",
				"100X"
			});
			this.toolStripProbeCH2.AutoSize = false;
			this.toolStripProbeCH2.AutoToolTip = true;
			this.toolStripProbeCH2.FlatStyle = FlatStyle.Standard;
			this.toolStripProbeCH2.Font = new Font("Calibri", 9f);
			this.toolStripProbeCH2.Items.AddRange(new object[]
			{
				"1X",
				"10X",
				"100X"
			});
			this.toolStripProbeCH2.Name = "toolStripProbeCH2";
			this.toolStripProbeCH2.Size = new Size(50, 22);
			this.toolStripProbeCH2.ToolTipText = "探头档位";
			this.toolStripProbeCH2.SelectedIndexChanged += new EventHandler(this.toolStripProbeCH2_SelectedIndexChanged);
			this.toolStripSeparator2.Name = "toolStripSeparator2";
			this.toolStripSeparator2.Size = new Size(6, 26);
			this.toolStripSeparator3.Name = "toolStripSeparator3";
			this.toolStripSeparator3.Size = new Size(6, 26);
			this.toolStripLabel3.Name = "toolStripLabel3";
			this.toolStripLabel3.Size = new Size(46, 23);
			this.toolStripLabel3.Text = "Trigger:";
			this.TRIGCHtoolStripComboBox.AutoSize = false;
			this.TRIGCHtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
			this.TRIGCHtoolStripComboBox.DropDownWidth = 50;
			this.TRIGCHtoolStripComboBox.FlatStyle = FlatStyle.Standard;
			this.TRIGCHtoolStripComboBox.Font = new Font("Calibri", 9f);
			this.TRIGCHtoolStripComboBox.Items.AddRange(new object[]
			{
				"CH1",
				"CH2",
				"EXT"
			});
			this.TRIGCHtoolStripComboBox.Name = "TRIGCHtoolStripComboBox";
			this.TRIGCHtoolStripComboBox.Size = new Size(60, 22);
			this.TRIGCHtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.TRIGCHtoolStripComboBox_SelectedIndexChanged);
			this.toolStripButTstart.AutoSize = false;
			this.toolStripButTstart.BackColor = SystemColors.ActiveCaption;
			this.toolStripButTstart.DisplayStyle = ToolStripItemDisplayStyle.Text;
			this.toolStripButTstart.Font = new Font("Calibri", 9f);
			this.toolStripButTstart.ForeColor = Color.White;
			this.toolStripButTstart.ImageTransparentColor = Color.Magenta;
			this.toolStripButTstart.Name = "toolStripButTstart";
			this.toolStripButTstart.Size = new Size(65, 24);
			this.toolStripButTstart.Text = "Start";
			this.toolStripButTstart.TextImageRelation = TextImageRelation.TextAboveImage;
			this.toolStripButTstart.Click += new EventHandler(this.toolStripButTstart_Click);
			this.TrigUPButton.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.TrigUPButton.Image = (Image)componentResourceManager.GetObject("TrigUPButton.Image");
			this.TrigUPButton.ImageTransparentColor = Color.Magenta;
			this.TrigUPButton.Name = "TrigUPButton";
			this.TrigUPButton.Size = new Size(23, 23);
			this.TrigUPButton.Text = "toolStripButton1";
			this.TrigUPButton.ToolTipText = "上升沿触发";
			this.TrigUPButton.Click += new EventHandler(this.TrigUPButton_Click);
			this.TrigDNButton.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.TrigDNButton.Image = (Image)componentResourceManager.GetObject("TrigDNButton.Image");
			this.TrigDNButton.ImageTransparentColor = Color.Magenta;
			this.TrigDNButton.Name = "TrigDNButton";
			this.TrigDNButton.Size = new Size(23, 23);
			this.TrigDNButton.Text = "toolStripButton2";
			this.TrigDNButton.ToolTipText = "下降沿触发";
			this.TrigDNButton.Click += new EventHandler(this.TrigDNButton_Click);
			this.TrigMODEtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
			this.TrigMODEtoolStripComboBox.DropDownWidth = 70;
			this.TrigMODEtoolStripComboBox.FlatStyle = FlatStyle.Standard;
			this.TrigMODEtoolStripComboBox.Font = new Font("Calibri", 9f);
			this.TrigMODEtoolStripComboBox.Name = "TrigMODEtoolStripComboBox";
			this.TrigMODEtoolStripComboBox.Size = new Size(90, 26);
			this.TrigMODEtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.TrigMODEtoolStripComboBox_SelectedIndexChanged);
			this.AUTOtoolStripButton.AutoSize = false;
			this.AUTOtoolStripButton.BackColor = SystemColors.ActiveCaption;
			this.AUTOtoolStripButton.BackgroundImageLayout = ImageLayout.None;
			this.AUTOtoolStripButton.DisplayStyle = ToolStripItemDisplayStyle.Text;
			this.AUTOtoolStripButton.Font = new Font("Calibri", 9f);
			this.AUTOtoolStripButton.ImageScaling = ToolStripItemImageScaling.None;
			this.AUTOtoolStripButton.ImageTransparentColor = Color.Magenta;
			this.AUTOtoolStripButton.Name = "AUTOtoolStripButton";
			this.AUTOtoolStripButton.Size = new Size(60, 24);
			this.AUTOtoolStripButton.Text = "AUTO";
			this.AUTOtoolStripButton.Click += new EventHandler(this.toolStripButton1_Click_1);
			this.toolStripSeparator4.Name = "toolStripSeparator4";
			this.toolStripSeparator4.Size = new Size(6, 26);
			this.FUNCtoolStripComboBox.AutoSize = false;
			this.FUNCtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
			this.FUNCtoolStripComboBox.FlatStyle = FlatStyle.Standard;
			this.FUNCtoolStripComboBox.Font = new Font("Calibri", 9f);
			this.FUNCtoolStripComboBox.Name = "FUNCtoolStripComboBox";
			this.FUNCtoolStripComboBox.Size = new Size(140, 22);
			this.FUNCtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.FUNCtoolStripComboBox_SelectedIndexChanged);
			this.startbut.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.startbut.BackColor = Color.SteelBlue;
			this.startbut.BackgroundImageLayout = ImageLayout.Center;
			this.startbut.Font = new Font("Arial", 15.75f, FontStyle.Bold);
			this.startbut.ForeColor = Color.White;
			this.startbut.ImeMode = ImeMode.NoControl;
			this.startbut.Location = new Point(831, 543);
			this.startbut.Name = "startbut";
			this.startbut.Size = new Size(188, 64);
			this.startbut.TabIndex = 51;
			this.startbut.Text = "Start";
			this.startbut.UseVisualStyleBackColor = false;
			this.startbut.Click += new EventHandler(this.start_Click);
			this.mytoolbar.AutoSize = false;
			this.mytoolbar.Items.AddRange(new ToolStripItem[]
			{
				this.toolStripButtonSaveData,
				this.toolStripSeparator5,
				this.toolStripPrint,
				this.toolStripSeparator11,
				this.toolStripButton1,
				this.toolStripSeparator13,
				this.toolStripButtonZero,
				this.toolStripSeparator15,
				this.RecordReview,
				this.toolStripSeparator14,
				this.toolStripButton4,
				this.toolStripSeparator12,
				this.toolStripButtonHelp,
				this.toolStripSeparator19,
				this.toolStripCursorSetSingle,
				this.toolStripCursorSetDouble
			});
			this.mytoolbar.Location = new Point(0, 52);
			this.mytoolbar.Name = "mytoolbar";
			this.mytoolbar.Size = new Size(1020, 31);
			this.mytoolbar.TabIndex = 102;
			this.mytoolbar.Text = "Intensity";
			this.toolStripButtonSaveData.AutoSize = false;
			this.toolStripButtonSaveData.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButtonSaveData.Image = (Image)componentResourceManager.GetObject("toolStripButtonSaveData.Image");
			this.toolStripButtonSaveData.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripButtonSaveData.ImageTransparentColor = Color.Magenta;
			this.toolStripButtonSaveData.Name = "toolStripButtonSaveData";
			this.toolStripButtonSaveData.Size = new Size(35, 30);
			this.toolStripButtonSaveData.Text = "Save Data";
			this.toolStripButtonSaveData.Click += new EventHandler(this.toolStripButtonSaveData_Click);
			this.toolStripSeparator5.Name = "toolStripSeparator5";
			this.toolStripSeparator5.Size = new Size(6, 31);
			this.toolStripPrint.AutoSize = false;
			this.toolStripPrint.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripPrint.Image = (Image)componentResourceManager.GetObject("toolStripPrint.Image");
			this.toolStripPrint.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripPrint.ImageTransparentColor = Color.Magenta;
			this.toolStripPrint.Name = "toolStripPrint";
			this.toolStripPrint.Size = new Size(35, 30);
			this.toolStripPrint.Text = "print";
			this.toolStripPrint.Click += new EventHandler(this.toolStripButton4_Click);
			this.toolStripSeparator11.Name = "toolStripSeparator11";
			this.toolStripSeparator11.Size = new Size(6, 31);
			this.toolStripButton1.AutoSize = false;
			this.toolStripButton1.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButton1.Image = Resources.color_gradient;
			this.toolStripButton1.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripButton1.ImageTransparentColor = Color.Magenta;
			this.toolStripButton1.Name = "toolStripButton1";
			this.toolStripButton1.Size = new Size(35, 29);
			this.toolStripButton1.Text = "toolStripButton1";
			this.toolStripButton1.ToolTipText = "Intensity";
			this.toolStripButton1.Click += new EventHandler(this.toolStripButton1_Click_2);
			this.toolStripSeparator13.Name = "toolStripSeparator13";
			this.toolStripSeparator13.Size = new Size(6, 31);
			this.toolStripButtonZero.AutoSize = false;
			this.toolStripButtonZero.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButtonZero.Image = (Image)componentResourceManager.GetObject("toolStripButtonZero.Image");
			this.toolStripButtonZero.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripButtonZero.ImageTransparentColor = Color.Magenta;
			this.toolStripButtonZero.Name = "toolStripButtonZero";
			this.toolStripButtonZero.Size = new Size(35, 28);
			this.toolStripButtonZero.Text = "toolStripButton3";
			this.toolStripButtonZero.Click += new EventHandler(this.toolStripButtonZero_Click);
			this.toolStripSeparator15.Name = "toolStripSeparator15";
			this.toolStripSeparator15.Size = new Size(6, 31);
			this.RecordReview.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.RecordReview.Image = (Image)componentResourceManager.GetObject("RecordReview.Image");
			this.RecordReview.ImageScaling = ToolStripItemImageScaling.None;
			this.RecordReview.ImageTransparentColor = Color.Magenta;
			this.RecordReview.Name = "RecordReview";
			this.RecordReview.Size = new Size(29, 28);
			this.RecordReview.Text = "toolStripButton3";
			this.RecordReview.ToolTipText = "Record and Review";
			this.RecordReview.Click += new EventHandler(this.RecordReview_Click);
			this.toolStripSeparator14.Name = "toolStripSeparator14";
			this.toolStripSeparator14.Size = new Size(6, 31);
			this.toolStripButton4.AutoSize = false;
			this.toolStripButton4.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButton4.Image = (Image)componentResourceManager.GetObject("toolStripButton4.Image");
			this.toolStripButton4.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripButton4.ImageTransparentColor = Color.Magenta;
			this.toolStripButton4.Name = "toolStripButton4";
			this.toolStripButton4.Size = new Size(35, 30);
			this.toolStripButton4.Text = "FactorySetup";
			this.toolStripButton4.ToolTipText = "Factory Setup";
			this.toolStripButton4.Click += new EventHandler(this.FactorySetuptton4_Click_1);
			this.toolStripSeparator12.Name = "toolStripSeparator12";
			this.toolStripSeparator12.Size = new Size(6, 31);
			this.toolStripButtonHelp.AutoSize = false;
			this.toolStripButtonHelp.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripButtonHelp.Image = (Image)componentResourceManager.GetObject("toolStripButtonHelp.Image");
			this.toolStripButtonHelp.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripButtonHelp.ImageTransparentColor = Color.Magenta;
			this.toolStripButtonHelp.Name = "toolStripButtonHelp";
			this.toolStripButtonHelp.Size = new Size(35, 30);
			this.toolStripButtonHelp.Text = "Help Contents";
			this.toolStripButtonHelp.Click += new EventHandler(this.toolStripButtonHelp_Click);
			this.toolStripSeparator19.Name = "toolStripSeparator19";
			this.toolStripSeparator19.Size = new Size(6, 31);
			this.toolStripCursorSetSingle.AutoSize = false;
			this.toolStripCursorSetSingle.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripCursorSetSingle.Enabled = false;
			this.toolStripCursorSetSingle.Image = (Image)componentResourceManager.GetObject("toolStripCursorSetSingle.Image");
			this.toolStripCursorSetSingle.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripCursorSetSingle.ImageTransparentColor = Color.Magenta;
			this.toolStripCursorSetSingle.Name = "toolStripCursorSetSingle";
			this.toolStripCursorSetSingle.Size = new Size(35, 30);
			this.toolStripCursorSetSingle.Text = "toolStripButton5";
			this.toolStripCursorSetSingle.ToolTipText = "Cross cursor measurement";
			this.toolStripCursorSetSingle.Click += new EventHandler(this.toolStripCursorSetSingle_Click);
			this.toolStripCursorSetDouble.AutoSize = false;
			this.toolStripCursorSetDouble.DisplayStyle = ToolStripItemDisplayStyle.Image;
			this.toolStripCursorSetDouble.Image = (Image)componentResourceManager.GetObject("toolStripCursorSetDouble.Image");
			this.toolStripCursorSetDouble.ImageScaling = ToolStripItemImageScaling.None;
			this.toolStripCursorSetDouble.ImageTransparentColor = Color.Magenta;
			this.toolStripCursorSetDouble.Name = "toolStripCursorSetDouble";
			this.toolStripCursorSetDouble.Size = new Size(35, 30);
			this.toolStripCursorSetDouble.Text = "toolStripButton6";
			this.toolStripCursorSetDouble.ToolTipText = "Cursor span Measurement";
			this.toolStripCursorSetDouble.Click += new EventHandler(this.toolStripCursorSetDouble_Click);
			this.printDialog1.UseEXDialog = true;
			this.statusStrip1.Location = new Point(0, 608);
			this.statusStrip1.Name = "statusStrip1";
			this.statusStrip1.Size = new Size(1020, 22);
			this.statusStrip1.TabIndex = 104;
			this.statusStrip1.Text = "statusStrip1";
			this.tabMeasurement.Alignment = TabAlignment.Bottom;
			this.tabMeasurement.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right);
			this.tabMeasurement.Controls.Add(this.tabPage1);
			this.tabMeasurement.Font = new Font("Calibri", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.tabMeasurement.Location = new Point(832, 311);
			this.tabMeasurement.Name = "tabMeasurement";
			this.tabMeasurement.SelectedIndex = 0;
			this.tabMeasurement.Size = new Size(188, 238);
			this.tabMeasurement.TabIndex = 106;
			this.tabPage1.Location = new Point(4, 4);
			this.tabPage1.Name = "tabPage1";
			this.tabPage1.Padding = new Padding(3);
			this.tabPage1.Size = new Size(180, 211);
			this.tabPage1.TabIndex = 0;
			this.tabPage1.Text = "Auto Measurement";
			this.tabPage1.UseVisualStyleBackColor = true;
			this.ljtStorage1.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.ljtStorage1.BackColor = Color.Transparent;
			this.ljtStorage1.Font = new Font("Arial", 7.5f);
			this.ljtStorage1.Location = new Point(4, 4);
			this.ljtStorage1.Name = "ljtStorage1";
			this.ljtStorage1.Size = new Size(182, 220);
			this.ljtStorage1.TabIndex = 62;
			this.ljtStorage1.MYSelectChangedevent += new ljtStorage.MYSelectChangedDelegate(this.ljtStorage1_MYSelectChangedevent);
			this.ljtStorage1.Click += new EventHandler(this.myStoreCLK);
			this.ljtStorage1.MouseClick += new MouseEventHandler(this.muStorageClicked);
			this.KnoBVolCH2.BackColor = Color.Transparent;
			this.KnoBVolCH2.GetSetlabelString0 = Color.Empty;
			this.KnoBVolCH2.Location = new Point(33, 412);
			this.KnoBVolCH2.Name = "KnoBVolCH2";
			this.KnoBVolCH2.Size = new Size(150, 150);
			this.KnoBVolCH2.TabIndex = 69;
			this.KnoBVolCH2.MYSelectChangedevent += new LJTKNOB1.MYSelectChangedDelegate(this.KnoBVolCH2_MYSelectChangedevent);
			this.Ch1VoltageKnob.BackColor = Color.Transparent;
			this.Ch1VoltageKnob.GetSetlabelString0 = Color.Empty;
			this.Ch1VoltageKnob.Location = new Point(29, 236);
			this.Ch1VoltageKnob.Name = "Ch1VoltageKnob";
			this.Ch1VoltageKnob.Size = new Size(150, 150);
			this.Ch1VoltageKnob.TabIndex = 69;
			this.Ch1VoltageKnob.MYSelectChangedevent += new LJTKNOB1.MYSelectChangedDelegate(this.VoltageKnoB11_MYSelectChangedevent2);
			this.TimeKnob.BackColor = Color.Transparent;
			this.TimeKnob.GetSetlabelString0 = Color.Empty;
			this.TimeKnob.ImeMode = ImeMode.Off;
			this.TimeKnob.Location = new Point(33, 35);
			this.TimeKnob.Name = "TimeKnob";
			this.TimeKnob.Size = new Size(150, 150);
			this.TimeKnob.TabIndex = 90;
			this.TimeKnob.MYSelectChangedevent += new LJTKNOB1.MYSelectChangedDelegate(this.TimeKnob_MYSelectChangedevent2);
			this.GraphView.BackColor = Color.Transparent;
			this.GraphView.Chan0Offset = 0.0;
			this.GraphView.Chan0Rate = 1.0;
			this.GraphView.Chan1Offset = 0.0;
			this.GraphView.Chann1Rate = 1.0;
			this.GraphView.Dock = DockStyle.Fill;
			this.GraphView.Location = new Point(3, 3);
			this.GraphView.Name = "GraphView";
			this.GraphView.panCount = 5u;
			this.GraphView.Size = new Size(483, 308);
			this.GraphView.TabIndex = 91;
			this.LogicView.BackColor = Color.Transparent;
			this.LogicView.Dock = DockStyle.Fill;
			this.LogicView.Location = new Point(0, 0);
			this.LogicView.Name = "LogicView";
			this.LogicView.Size = new Size(489, 314);
			this.LogicView.TabIndex = 0;
			base.AutoScaleMode = AutoScaleMode.Inherit;
			this.BackColor = SystemColors.Control;
			this.BackgroundImageLayout = ImageLayout.None;
			base.ClientSize = new Size(1020, 630);
			base.Controls.Add(this.tabMeasurement);
			base.Controls.Add(this.statusStrip1);
			base.Controls.Add(this.mytoolbar);
			base.Controls.Add(this.toolStrip1);
			base.Controls.Add(this.startbut);
			base.Controls.Add(this.menuStrip1);
			base.Controls.Add(this.panel1);
			base.Controls.Add(this.panel6);
			base.Controls.Add(this.splitContainer1);
			this.Cursor = Cursors.Default;
			this.DoubleBuffered = true;
			this.Font = new Font("Arial", 10.5f, FontStyle.Bold);
			base.IsMdiContainer = true;
			base.MainMenuStrip = this.menuStrip1;
			base.Name = "Form1";
			base.ShowIcon = false;
			this.Text = "V1.4";
			base.Load += new EventHandler(this.Form1_Load);
			base.SizeChanged += new EventHandler(this.Form1_SizeChanged);
			base.FormClosed += new FormClosedEventHandler(this.Form1_FormClosed);
			base.KeyUp += new KeyEventHandler(this.Form1_KeyUp);
			base.Resize += new EventHandler(this.Form1_Resize);
			base.KeyDown += new KeyEventHandler(this.Form1_KeyDown);
			this.splitContainer1.Panel1.ResumeLayout(false);
			this.splitContainer1.Panel2.ResumeLayout(false);
			this.splitContainer1.ResumeLayout(false);
			this.splitContainer3.Panel1.ResumeLayout(false);
			this.splitContainer3.Panel2.ResumeLayout(false);
			this.splitContainer3.Panel2.PerformLayout();
			this.splitContainer3.ResumeLayout(false);
			this.tabMain.ResumeLayout(false);
			this.OsillagraphPg.ResumeLayout(false);
			this.panelAdjust.ResumeLayout(false);
			this.panelAdjust.PerformLayout();
			this.SignalPg.ResumeLayout(false);
			this.SignalPg.PerformLayout();
			this.panelPWM.ResumeLayout(false);
			this.panelPWM.PerformLayout();
			((ISupportInitialize)this.trackBarPWMduty).EndInit();
			this.panelMormSig.ResumeLayout(false);
			this.panelMormSig.PerformLayout();
			((ISupportInitialize)this.trackVolAplitu).EndInit();
			((ISupportInitialize)this.trackBarOffset).EndInit();
			this.panel11.ResumeLayout(false);
			this.panel8.ResumeLayout(false);
			this.LogicAlsPG.ResumeLayout(false);
			this.toolStrip3.ResumeLayout(false);
			this.toolStrip3.PerformLayout();
			((ISupportInitialize)this.trackBarExtTrigger).EndInit();
			this.splitContainer2.Panel1.ResumeLayout(false);
			this.splitContainer2.Panel2.ResumeLayout(false);
			this.splitContainer2.ResumeLayout(false);
			this.toolStrip2.ResumeLayout(false);
			this.toolStrip2.PerformLayout();
			this.panel6.ResumeLayout(false);
			this.panel6.PerformLayout();
			this.panel1.ResumeLayout(false);
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.toolStrip1.ResumeLayout(false);
			this.toolStrip1.PerformLayout();
			this.mytoolbar.ResumeLayout(false);
			this.mytoolbar.PerformLayout();
			this.tabMeasurement.ResumeLayout(false);
			base.ResumeLayout(false);
			base.PerformLayout();
		}

		public void autoHandler(object source, ElapsedEventArgs e)
		{
			this.m_AutoResFre = MyDLLimport.GetData(5);
			double num = globleVariables.g_scale * globleVariables.g_CurrentScale_ch0 / 255.0;
			this.m_AutoResMax = (double)((float)(MyDLLimport.GetData(6) - (double)globleVariables.g_VbiasZero0)) * num;
			this.toolStripButton1_Click_1(this, e);
		}

		public void ScanFreqStart(object source, ElapsedEventArgs e)
		{
			ulong num;
			if (this.m_PN)
			{
				num = this.m_LowFreq + (ulong)((long)this.Flatrate * (long)this.m_FreqSpan);
				if (num >= this.m_HighFreq)
				{
					this.Flatrate = 0;
					this.ScanFreq.Enabled = false;
				}
			}
			else
			{
				num = this.m_LowFreq - (ulong)((long)this.Flatrate * (long)this.m_FreqSpan);
				if (num <= this.m_HighFreq)
				{
					this.Flatrate = 0;
					this.ScanFreq.Enabled = false;
				}
			}
			this.freqOutText.Text = num.ToString();
			this.m_FreOut = num;
			this.Flatrate++;
			ulong num2 = (ulong)(num * 11.18055 / 2.0);
			this.m_freqDDS[0] = (ushort)(num2 & 16383uL);
			this.m_freqDDS[2] = this.m_freqDDS[0];
			this.m_freqDDS[1] = (ushort)((num2 & 268419072uL) >> 14);
			this.m_freqDDS[3] = this.m_freqDDS[1];
			this.m_freqDDS[0] = (this.m_freqDDS[0] | 16384);
			this.m_freqDDS[1] = (this.m_freqDDS[1] | 16384);
			this.m_freqDDS[2] = (this.m_freqDDS[2] | 32768);
			this.m_freqDDS[3] = (this.m_freqDDS[3] | 32768);
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(112, this.m_freqDDS[0], 1u);
				MyDLLimport.USBCtrlTrans(113, this.m_freqDDS[1], 1u);
				MyDLLimport.USBCtrlTrans(114, this.m_freqDDS[2], 1u);
				MyDLLimport.USBCtrlTrans(115, this.m_freqDDS[3], 1u);
			}
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTransSimple(116);
			}
		}

		public void activeTimerHandler(object source, ElapsedEventArgs e)
		{
			this.m_bshowActiveCH = !this.m_bshowActiveCH;
			if ((globleVariables.g_ChannelMask & 1) != 0)
			{
				this.GraphView.SetCH1Blink(this.m_bshowActiveCH);
			}
			else if ((globleVariables.g_ChannelMask & 128) != 0)
			{
				this.GraphView.SetCH1Blink(this.m_bshowActiveCH);
			}
			else
			{
				this.GraphView.SetCH1Blink(false);
			}
			if ((globleVariables.g_ChannelMask & 16) != 0)
			{
				this.GraphView.SetCH2Blink(this.m_bshowActiveCH);
			}
			else
			{
				this.GraphView.SetCH2Blink(false);
			}
			if (globleVariables.g_ChannelMask != 17)
			{
				return;
			}
			if (this.m_TimerIndex4Zero >= 5u)
			{
				return;
			}
			this.m_TimerIndex4Zero += 1u;
			globleVariables.g_AverageCH1 = (int)((byte)MyDLLimport.GetData(9));
			globleVariables.g_AverageCH2 = (int)((byte)MyDLLimport.GetData(4));
			switch (this.m_TimerIndex4Zero)
			{
			case 1u:
				globleVariables.g_VbiasZero01v = (byte)globleVariables.g_AverageCH1;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
				this.textBoxCH1zero.Text = globleVariables.g_VbiasZero0.ToString();
				globleVariables.g_VbiasZero11v = (byte)globleVariables.g_AverageCH2;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
				this.textBoxCH2zero.Text = globleVariables.g_VbiasZero1.ToString();
				break;
			case 2u:
				globleVariables.g_VbiasZero0500mv = (byte)globleVariables.g_AverageCH1;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0500mv;
				this.ch0_zero_500mv.Text = globleVariables.g_VbiasZero0.ToString();
				globleVariables.g_VbiasZero1500mv = (byte)globleVariables.g_AverageCH2;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1500mv;
				this.ch1_zero_500mv.Text = globleVariables.g_VbiasZero1.ToString();
				break;
			case 4u:
				globleVariables.g_VbiasZero0100mv = (byte)globleVariables.g_AverageCH1;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0100mv;
				this.ch0_zero_100mv.Text = globleVariables.g_VbiasZero0.ToString();
				globleVariables.g_VbiasZero1100mv = (byte)globleVariables.g_AverageCH2;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1100mv;
				this.ch1_zero_100mv.Text = globleVariables.g_VbiasZero1.ToString();
				break;
			case 5u:
				globleVariables.g_VbiasZero050mv = (byte)globleVariables.g_AverageCH1;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero050mv;
				this.zero050mv.Text = globleVariables.g_VbiasZero0.ToString();
				globleVariables.g_VbiasZero150mv = (byte)globleVariables.g_AverageCH2;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero150mv;
				this.zero150mv.Text = globleVariables.g_VbiasZero1.ToString();
				break;
			}
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
			if (this.m_TimerIndex4Zero == 5u)
			{
				this.KnoBVolCH2.setKnobSelect(1u);
				this.VoltageKnoB11_MYSelectChangedevent2(1u);
				this.Ch1VoltageKnob.setKnobSelect(1u);
				this.KnoBVolCH2_MYSelectChangedevent(1u);
				return;
			}
			this.KnoBVolCH2.setKnobSelect(this.m_TimerIndex4Zero + 1u);
			this.VoltageKnoB11_MYSelectChangedevent2(this.m_TimerIndex4Zero + 1u);
			this.Ch1VoltageKnob.setKnobSelect(this.m_TimerIndex4Zero + 1u);
			this.KnoBVolCH2_MYSelectChangedevent(this.m_TimerIndex4Zero + 1u);
		}

		public void BlinkStoreIconHandler(object source, ElapsedEventArgs e)
		{
			int num = 0;
			lock (globleVariables.g_lockThis)
			{
				try
				{
					num = this.ljtStorage1.GetData(MyDLLimport.GetBuffer4Wr(0), globleVariables.g_CurrentFileReadNum++);
				}
				catch (Exception ex)
				{
					num = -1;
					MessageBox.Show(ex.Message, "BlinkStoreIconHandler Error!");
				}
			}
			double num2 = globleVariables.g_scale * globleVariables.g_CurrentScale_ch0 / 255.0;
			double num3 = (double)((float)(MyDLLimport.GetData(6) - (double)globleVariables.g_VbiasZero0)) * num2;
			double num4 = (double)((float)(MyDLLimport.GetData(7) - (double)globleVariables.g_VbiasZero0)) * num2;
			double num5 = (MyDLLimport.GetData(9) - (double)globleVariables.g_VbiasZero0) * num2;
			double num6 = MyDLLimport.GetData(8) * num2;
			double num7 = MyDLLimport.GetData(5);
			if ((globleVariables.g_ChannelMask & 128) == 128)
			{
				num7 /= 2.0;
			}
			double num8 = MyDLLimport.GetData(16) * 1000.0;
			double num9 = MyDLLimport.GetData(17) * 1000.0;
			double num10 = MyDLLimport.GetData(18) * 1000.0;
			double data = MyDLLimport.GetData(19);
			double num11 = MyDLLimport.GetData(15) * 1000.0;
			if (globleVariables.g_knobSelect == 2u)
			{
				num7 *= 1.6;
				num8 /= 1.6;
				num9 /= 1.6;
				num10 /= 1.6;
				num11 /= 1.6;
			}
			MyDLLimport.SetData(0, num7);
			MyDLLimport.SetData(1, num3);
			MyDLLimport.SetData(2, num4);
			MyDLLimport.SetData(3, num6);
			MyDLLimport.SetData(4, num5);
			double num12 = globleVariables.g_scale2 * globleVariables.g_CurrentScale_ch1 / 255.0;
			double num13 = (double)((float)(MyDLLimport.GetData(1) - (double)globleVariables.g_VbiasZero1)) * num12;
			double num14 = (double)((float)(MyDLLimport.GetData(2) - (double)globleVariables.g_VbiasZero1)) * num12;
			double num15 = (MyDLLimport.GetData(4) - (double)globleVariables.g_VbiasZero1) * num12;
			double num16 = MyDLLimport.GetData(3) * num12;
			double num17 = MyDLLimport.GetData(0);
			double num18 = MyDLLimport.GetData(11) * 1000.0;
			double num19 = MyDLLimport.GetData(12) * 1000.0;
			double num20 = MyDLLimport.GetData(13) * 1000.0;
			double data2 = MyDLLimport.GetData(14);
			double num21 = MyDLLimport.GetData(10) * 1000.0;
			if (globleVariables.g_knobSelect == 2u)
			{
				num17 *= 1.6;
				num18 /= 1.6;
				num19 /= 1.6;
				num20 /= 1.6;
				num21 /= 1.6;
			}
			MyDLLimport.SetData(5, num17);
			MyDLLimport.SetData(6, num13);
			MyDLLimport.SetData(7, num14);
			MyDLLimport.SetData(8, num16);
			MyDLLimport.SetData(9, num15);
			globleVariables.m_refresh[0].Value = num3;
			globleVariables.m_refresh[1].Value = num4;
			globleVariables.m_refresh[2].Value = num6;
			globleVariables.m_refresh[3].Value = num7;
			globleVariables.m_refresh[4].Value = num5;
			globleVariables.m_refresh[5].Value = num8;
			globleVariables.m_refresh[6].Value = num9;
			globleVariables.m_refresh[7].Value = num10;
			globleVariables.m_refresh[8].Value = data;
			globleVariables.m_refresh[9].Value = num11;
			globleVariables.m_refresh[10].Value = num6 * 0.707 / 2.0;
			globleVariables.m_refresh[11].Value = num13;
			globleVariables.m_refresh[12].Value = num14;
			globleVariables.m_refresh[13].Value = num16;
			globleVariables.m_refresh[14].Value = num17;
			globleVariables.m_refresh[15].Value = num15;
			globleVariables.m_refresh[16].Value = num18;
			globleVariables.m_refresh[17].Value = num19;
			globleVariables.m_refresh[18].Value = num20;
			globleVariables.m_refresh[19].Value = data2;
			globleVariables.m_refresh[20].Value = num21;
			globleVariables.m_refresh[21].Value = num16 * 0.707 / 2.0;
			this.UpdateListValue();
			if (num == 1)
			{
				this.GraphView.GetTrigLevelByte0();
				this.GraphView.GetTrigLevelByte1();
				MyDLLimport.BufferInit();
				if (globleVariables.g_TrigMode == 2)
				{
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.ChartY(1);
					}
				}
				else if (globleVariables.g_FuncIndex == 0)
				{
					this.GraphView.ChartY(0);
				}
				if (globleVariables.m_bDrawFFTorNot && globleVariables.g_FuncIndex == 0)
				{
					globleVariables.g_fFreq = globleVariables.FreqCaculate(globleVariables.m_FFT4Dispaly_amplitude, globleVariables.m_FFT4Dispaly_angle, 0);
					globleVariables.g_fFreq2 = globleVariables.FreqCaculate(globleVariables.m_FFT4Dispaly_amplitude2, globleVariables.m_FFT4Dispaly_angle2, 1);
					this.myffTctrl1.m_dbAtitudePara = globleVariables.g_fftFreqAltitude;
					this.myffTctrl1.m_dbAtitudePara2 = globleVariables.g_fftFreqAltitude2;
					globleVariables.m_Ch2fftDCvalue *= num12;
					this.propertyGrid1.SelectedObject = this.propertySet;
					this.propertySet.Ch1Frequency = globleVariables.g_fFreq.ToString("0.000");
					this.propertySet.Ch1Amplitude = num5.ToString("0.000");
					this.propertySet.Ch2Frequency = globleVariables.g_fFreq2.ToString("0.000");
					this.propertySet.Ch2Amplitude = globleVariables.m_Ch2fftDCvalue.ToString("0.000");
					byte max = 255;
					this.myffTctrl1.ChartFFT(max, globleVariables.m_FFT4Dispaly_amplitude, globleVariables.m_FFT4Dispaly_angle, globleVariables.m_FFT4Dispaly_amplitude2, globleVariables.dbFFTfreqTransParameter, globleVariables.m_Ch1fftDCvalue, globleVariables.g_fftFreqAltitude, (double)globleVariables.g_fFreq, (int)globleVariables.g_ChannelMask, 1024);
				}
			}
			else if (num == -1 || globleVariables.g_CurrentFileReadNum >= globleVariables.g_TotleFileReadNum)
			{
				this.tBlinkStoreIcon.Enabled = false;
				this.activeTimer.Enabled = false;
				this.GraphView.SetCH1Blink(true);
				this.GraphView.SetCH2Blink(true);
				this.ljtStorage1.SetState(0u);
				this.SetButtonsEnable(true);
				this.GraphView.setBkGraphColor(Color.FromArgb(255, 13, 33, 51));
			}
			if (globleVariables.g_CurrentFileReadNum > globleVariables.g_TotleFileReadNum)
			{
				globleVariables.g_CurrentFileReadNum = 1u;
			}
		}

		private void UpdateListValue()
		{
			int num = 0;
			lock (globleVariables.g_lockMeasureList)
			{
				for (int i = 0; i < 22; i++)
				{
					if (num < this.m_MyDbufferedListView.Items.Count && this.m_MyDbufferedListView.Items[num].Text != "")
					{
						num++;
					}
					else if (globleVariables.m_refresh[i].Bechecked && num < this.m_MyDbufferedListView.Items.Count)
					{
						this.m_MyDbufferedListView.Items[num++].SubItems[3].Text = string.Format("{0:0.000}", globleVariables.m_refresh[i].Value);
					}
				}
			}
		}

		public Form1()
		{
			try
			{
				string path = Environment.CurrentDirectory + "\\initsettings.txt";
				if (!File.Exists(path))
				{
					Form1.m_Vendor = DstingsRes.StringTitle;
					Form1.m_model = "DDS140";
				}
				else
				{
					StreamReader streamReader = File.OpenText(path);
					string text = streamReader.ReadLine();
					if (text != null)
					{
						string[] array = File.ReadAllLines(path);
						Form1.m_Vendor = array[0];
						Form1.m_model = array[1];
						Form1.m_language = array[2];
					}
				}
			}
			catch
			{
				MessageBox.Show("System anomaly!");
			}
			if (Form1.m_language.Equals("English") || Form1.m_language.Equals("") || Form1.m_language.Equals("english"))
			{
				Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
			}
			this.InitializeComponent();
			this.GraphView.SetInformationDevice(Form1.m_model);
			this.GraphView.SetInformationState(this.m_StrCurrentState);
			this.GraphView.SetInformationType("Live");
			this.GraphView.SetInformationSampleRate("100M");
			this.tBlinkStoreIcon = new System.Timers.Timer(300.0);
			this.autoTimer = new System.Timers.Timer(300.0);
			this.activeTimer = new System.Timers.Timer(500.0);
			this.ScanFreq = new System.Timers.Timer(500.0);
			this.tBlinkStoreIcon.Elapsed += new ElapsedEventHandler(this.BlinkStoreIconHandler);
			this.autoTimer.Elapsed += new ElapsedEventHandler(this.autoHandler);
			this.activeTimer.Elapsed += new ElapsedEventHandler(this.activeTimerHandler);
			this.ScanFreq.Elapsed += new ElapsedEventHandler(this.ScanFreqStart);
			this.tBlinkStoreIcon.AutoReset = true;
			this.tBlinkStoreIcon.Enabled = false;
			this.autoTimer.AutoReset = false;
			this.autoTimer.Enabled = false;
			this.activeTimer.AutoReset = true;
			this.activeTimer.Enabled = false;
			this.ScanFreq.Enabled = false;
			globleVariables.g_pBuffer = MyDLLimport.GetBuffer4Wr(-1);
			for (int i = 0; i < globleVariables.FFTNv2; i++)
			{
				globleVariables.m_FFT4Dispalycomplex[i].Re = Math.Cos(globleVariables.wFFT4Dispaly * (double)i);
				globleVariables.m_FFT4Dispalycomplex[i].Im = -Math.Sin(globleVariables.wFFT4Dispaly * (double)i);
			}
			this.propertySet = new PropertyGridSet();
		}

		public void SetButtonsEnable(bool b)
		{
			this.Ch1VoltageKnob.Enabled = b;
			this.TimeKnob.Enabled = b;
			this.AUTOtoolStripButton.Enabled = b;
			this.startbut.Enabled = b;
			this.KnoBVolCH2.Enabled = b;
		}

		private void BuildEventsForDAQ()
		{
			this.EventCheckObject = new EventCheckThread(this);
			this.EventThread = new Thread(new ThreadStart(this.EventCheckObject.DoWork));
			this.EventThread.IsBackground = true;
			this.BulkReadObject = new BulkReadThread(this);
			this.ReadThread = new Thread(new ThreadStart(this.BulkReadObject.DoWork));
			this.ReadThread.IsBackground = true;
		}

		private void ReleaseEventsForDAQ()
		{
			if (this.EventCheckObject != null)
			{
				this.EventCheckObject.RequestStop();
			}
			if (this.BulkReadObject != null)
			{
				this.BulkReadObject.RequestStop();
			}
			Thread.Sleep(15);
			if (this.EventThread != null)
			{
				if ((this.EventThread.ThreadState & ThreadState.Suspended) == ThreadState.Suspended)
				{
					this.EventThread.Resume();
				}
				this.EventThread.Abort();
			}
			if (this.ReadThread != null)
			{
				if ((this.ReadThread.ThreadState & ThreadState.Suspended) == ThreadState.Suspended)
				{
					this.ReadThread.Resume();
				}
				this.ReadThread.Abort();
			}
		}

		protected override void WndProc(ref Message m)
		{
			base.WndProc(ref m);
			if (m.Msg == 537)
			{
				int num = m.WParam.ToInt32();
				if (num != 161)
				{
					switch (num)
					{
					case 32768:
					{
						int num2 = Marshal.ReadInt32(m.LParam, 4);
						if (num2 == 5)
						{
							this.BuildEventsForDAQ();
							if (globleVariables.g_storageState != 2u)
							{
								this.UIVariablesInit();
								this.start_pause_DAQ();
								return;
							}
						}
						break;
					}
					case 32769:
					case 32770:
						break;
					case 32771:
					case 32772:
					{
						int num2 = Marshal.ReadInt32(m.LParam, 4);
						if (num2 == 5 && globleVariables.g_storageState != 2u)
						{
							this.Totally_stop_DAQ();
							MyDLLimport.DeviceClose();
						}
						break;
					}
					default:
						return;
					}
				}
			}
		}

		private void RegisterForDeviceChangeLJT(bool register)
		{
			if (register)
			{
				MyDLLimport.DeviceBroadcastInterface deviceBroadcastInterface = new MyDLLimport.DeviceBroadcastInterface();
				deviceBroadcastInterface.DeviceType = 5;
				deviceBroadcastInterface.Reserved = 0;
				deviceBroadcastInterface.Size = Marshal.SizeOf(deviceBroadcastInterface);
				deviceBroadcastInterface.ClassGuid = new Guid("DC5D4E19-D8E4-4be9-9DCD-71A05D36FACD");
				this.mDeviceNotifyHandle = MyDLLimport.RegisterDeviceNotification(this.mRecipientHandle, deviceBroadcastInterface, 0u);
				return;
			}
			if (this.mDeviceNotifyHandle != IntPtr.Zero)
			{
				MyDLLimport.UnregisterDeviceNotification(this.mDeviceNotifyHandle);
			}
			this.mDeviceNotifyHandle = IntPtr.Zero;
		}

		private bool ReadConfig(string fileName)
		{
			FileStream fileStream = null;
			try
			{
				fileStream = new FileStream(fileName, FileMode.Open, FileAccess.Read);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message, "ReadConfig Error!");
				bool result = false;
				return result;
			}
			if (fileStream.Length != 0L)
			{
				BinaryReader binaryReader = new BinaryReader(fileStream);
				try
				{
					globleVariables.g_ChannelMask = binaryReader.ReadByte();
					globleVariables.g_knobSelect = (uint)binaryReader.ReadByte();
					globleVariables.g_comboNSSelectedIndex = (int)binaryReader.ReadByte();
					globleVariables.g_comboTimeBaseSelectedIndex = (int)binaryReader.ReadByte();
					globleVariables.g_knobVolatageSelect = (uint)binaryReader.ReadByte();
					globleVariables.g_knobVolatageSelect2 = (uint)binaryReader.ReadByte();
					globleVariables.g_TrigMode = binaryReader.ReadByte();
					globleVariables.g_TrigSourceChan = binaryReader.ReadByte();
					this.m_ch1CoupleFlg = binaryReader.ReadByte();
					this.m_ch2CoupleFlg = binaryReader.ReadByte();
					this.m_CfgInfo.chan0ZeroLevel = binaryReader.ReadByte();
					this.m_CfgInfo.chan1ZeroLevel = binaryReader.ReadByte();
					this.m_CfgInfo.chan2ZeroLevel = binaryReader.ReadByte();
					this.m_CfgInfo.chan3ZeroLevel = binaryReader.ReadByte();
					this.m_CfgInfo.dataNumOneShot = (uint)binaryReader.ReadInt32();
					this.m_CfgInfo.chan0Amp = binaryReader.ReadByte();
					this.m_CfgInfo.chan1Amp = binaryReader.ReadByte();
					binaryReader.ReadByte();
					binaryReader.ReadByte();
					binaryReader.ReadByte();
					this.m_CfgInfo.TrigEdge = binaryReader.ReadByte();
					this.m_CfgInfo.TrigLevel0 = binaryReader.ReadByte();
					this.m_CfgInfo.TrigLevel1 = binaryReader.ReadByte();
					this.m_CfgInfo.UserEnabled = (uint)binaryReader.ReadInt32();
				}
				catch (Exception ex2)
				{
					MessageBox.Show(ex2.Message, "UIVariablesInit!");
					bool result = false;
					return result;
				}
				fileStream.Close();
				if (binaryReader != null)
				{
					binaryReader.Close();
				}
				return true;
			}
			fileStream.Close();
			return false;
		}

		private void SaveConfig(string fileName)
		{
			FileStream fileStream = null;
			try
			{
				fileStream = new FileStream(fileName, FileMode.Create, FileAccess.ReadWrite);
				BinaryWriter binaryWriter = new BinaryWriter(fileStream);
				if (binaryWriter != null)
				{
					binaryWriter.Write(globleVariables.g_ChannelMask);
					binaryWriter.Write((byte)globleVariables.g_knobSelect);
					binaryWriter.Write((byte)globleVariables.g_comboNSSelectedIndex);
					binaryWriter.Write((byte)globleVariables.g_comboTimeBaseSelectedIndex);
					binaryWriter.Write((byte)globleVariables.g_knobVolatageSelect);
					binaryWriter.Write((byte)globleVariables.g_knobVolatageSelect2);
					binaryWriter.Write(globleVariables.g_TrigMode);
					binaryWriter.Write(globleVariables.g_TrigSourceChan);
					binaryWriter.Write(this.m_ch1CoupleFlg);
					binaryWriter.Write(this.m_ch2CoupleFlg);
					binaryWriter.Write(this.m_CfgInfo.TrigChan);
					binaryWriter.Write(this.m_CfgInfo.chan0ZeroLevel);
					binaryWriter.Write(this.m_CfgInfo.chan1ZeroLevel);
					binaryWriter.Write(this.m_CfgInfo.chan2ZeroLevel);
					binaryWriter.Write(this.m_CfgInfo.chan3ZeroLevel);
					binaryWriter.Write(this.m_CfgInfo.dataNumOneShot);
					binaryWriter.Write(this.m_CfgInfo.chan0Amp);
					binaryWriter.Write(this.m_CfgInfo.chan1Amp);
					binaryWriter.Write(this.m_CfgInfo.NotifyCheck);
					binaryWriter.Write(this.m_CfgInfo.ShowTaskBar);
					binaryWriter.Write(this.m_CfgInfo.LockSettingCheck);
					binaryWriter.Write(this.m_CfgInfo.TrigEdge);
					binaryWriter.Write(this.m_CfgInfo.TrigLevel0);
					binaryWriter.Write(this.m_CfgInfo.TrigLevel1);
					binaryWriter.Write(this.m_CfgInfo.UserEnabled);
					binaryWriter.Close();
				}
			}
			catch
			{
				MessageBox.Show("System anomaly!");
			}
			fileStream.Close();
		}

		private void Form1_FormClosed(object sender, FormClosedEventArgs e)
		{
			try
			{
				this.ReleaseEventsForDAQ();
				this.RegisterForDeviceChangeLJT(false);
				if (globleVariables.g_DeviceOpenResult == 0 || globleVariables.g_DeviceOpenResult2 == 0)
				{
					MyDLLimport.DeviceClose();
					globleVariables.g_DeviceOpenResult = -1;
					globleVariables.g_DeviceOpenResult2 = -1;
				}
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message, "FormClosed Error!");
			}
			this.SaveConfig(this.m_Myfilepath);
			this.notifyIcon1.Visible = false;
			this.notifyIcon1.Dispose();
			this.ljtStorage1.SetFileClose();
			Environment.Exit(0);
		}

		private void KnobMenuInit()
		{
			this.comboTimeBase.Items.Add("  1ms");
			this.comboTimeBase.Items.Add("  2ms");
			this.comboTimeBase.Items.Add("  5ms");
			this.comboTimeBase.Items.Add("  10ms");
			this.comboTimeBase.Items.Add("  20ms");
			this.comboTimeBase.Items.Add("  50ms");
			this.comboTimeBase.Items.Add("100ms");
			this.comboTimeBase.Items.Add("200ms");
			this.comboTimeBase.Items.Add("500ms");
			this.comboTimeBase.Items.Add("1s");
			this.comboBoxNS.Items.Add("125ns");
			this.comboBoxNS.Items.Add("50ns");
			this.comboBoxNS.Items.Add("25ns");
			this.comboBoxNS.SelectedIndex = 0;
			this.comboTimeBase.SelectedIndex = 0;
			this.m_Chacked[0] = this.usToolStripMenuItem;
			this.m_Chacked[1] = this.usToolStripMenuItem1;
			this.m_Chacked[2] = this.usToolStripMenuItem2;
			this.m_Chacked[3] = this.usToolStripMenuItem3;
			this.m_Chacked[4] = this.usToolStripMenuItem4;
			this.m_Chacked[5] = this.usToolStripMenuItem5;
			this.m_Chacked[6] = this.msToolStripMenuItem;
			this.m_Chacked[7] = this.msToolStripMenuItem1;
			this.m_Chacked[8] = this.msToolStripMenuItem2;
			this.m_Chacked[9] = this.msToolStripMenuItem3;
			this.m_Chacked[10] = this.msToolStripMenuItem4;
			this.m_Chacked[11] = this.msToolStripMenuItem5;
			this.m_Chacked[12] = this.msToolStripMenuItem6;
			this.m_Chacked[13] = this.msToolStripMenuItem7;
			this.m_Chacked[14] = this.msToolStripMenuItem8;
			this.m_Chacked[15] = this.msToolStripMenuItem9;
			this.m_Chacked[16] = this.msToolStripMenuItem10;
			this.m_Chacked[17] = this.nsToolStripMenuItem2;
			this.m_Chacked[18] = this.nsToolStripMenuItem1;
			this.m_Chacked[19] = this.nsToolStripMenuItem;
			this.m_vchacked[5] = this.mvToolStripMenuItem;
			this.m_vchacked[4] = this.mvToolStripMenuItem1;
			this.m_vchacked[3] = this.mvToolStripMenuItem2;
			this.m_vchacked[2] = this.vToolStripMenuItem;
			this.m_vchacked[1] = this.vToolStripMenuItem1;
			this.m_vchacked[0] = this.vToolStripMenuItem2;
			this.m_vchacked[9] = this.vToolStripMenuItem3;
			this.m_vchacked[6] = this.vToolStripMenuItem;
			this.m_vchacked[7] = this.vToolStripMenuItem;
			this.m_vchacked[8] = this.vToolStripMenuItem;
			this.m_vchacked2[5] = this.mvToolStripMenuItem3;
			this.m_vchacked2[4] = this.mvToolStripMenuItem4;
			this.m_vchacked2[3] = this.mvToolStripMenuItem5;
			this.m_vchacked2[2] = this.vToolStripMenuItem4;
			this.m_vchacked2[1] = this.vToolStripMenuItem5;
			this.m_vchacked2[0] = this.vToolStripMenuItem6;
			this.m_vchacked2[9] = this.vToolStripMenuItem7;
			this.m_vchacked2[6] = this.vToolStripMenuItem;
			this.m_vchacked2[7] = this.vToolStripMenuItem;
			this.m_vchacked2[8] = this.vToolStripMenuItem;
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			for (int j = 0; j < 10; j++)
			{
				this.m_vchacked[j].Checked = false;
			}
			for (int k = 0; k < 10; k++)
			{
				this.m_vchacked2[k].Checked = false;
			}
		}

		private void StringInit()
		{
			this.OsillagraphPg.Text = DstingsRes.StringTabpageOSILLA;
			this.SignalPg.Text = DstingsRes.StringTabpageSIGNAL;
			this.LogicAlsPG.Text = DstingsRes.String1TabLogic;
			this.fileToolStripMenuItem.Text = DstingsRes.StringFile;
			this.openToolStripMenuItem.Text = DstingsRes.StringOpen;
			this.saveAsTxtToolStripMenuItem.Text = DstingsRes.StringSaveData;
			this.toolStripMenuItemSaveSetup.Text = DstingsRes.StringSaveSetup;
			this.LoadSetupToolStripMenuItem.Text = DstingsRes.StringLoadSetup;
			this.printToolStripMenuItem.Text = DstingsRes.StringPrint;
			this.printSetupToolStripMenuItem.Text = DstingsRes.StringPrintSetup;
			this.printViewToolStripMenuItem.Text = DstingsRes.StringPrintPreview;
			this.exitToolStripMenuItem.Text = DstingsRes.StringExit;
			this.fFTToolStripMenuItem.Text = DstingsRes.StringFFT;
			this.toolBarToolStripMenuItem.Text = DstingsRes.StringToolBar;
			this.controlWindowToolStripMenuItem.Text = DstingsRes.StringControlWND;
			this.extTriggerToolStripMenuItem.Text = DstingsRes.StringExtTrigger;
			this.viewToolStripMenuItem.Text = DstingsRes.StringView;
			this.horizontalToolStripMenuItem.Text = DstingsRes.StringHorizontal;
			this.timeDIVToolStripMenuItem.Text = DstingsRes.StringTimePerDIV;
			this.formatToolStripMenuItem.Text = DstingsRes.StringFormat;
			this.verticalToolStripMenuItem.Text = DstingsRes.StringVertical;
			this.voltDIVToolStripMenuItem.Text = DstingsRes.StringVolt1;
			this.voltDIVToolStripMenuItem1.Text = DstingsRes.StringVolt2;
			this.displayToolStripMenuItem.Text = DstingsRes.StringDisplay;
			this.typeToolStripMenuItem.Text = DstingsRes.StringLinetype;
			this.vectorsToolStripMenuItem.Text = DstingsRes.StringVectors;
			this.dotsToolStripMenuItem.Text = DstingsRes.StringDots;
			this.intensityToolStripMenuItem.Text = DstingsRes.StringIntensity;
			this.gridToolStripMenuItem.Text = DstingsRes.StringGrid;
			this.toolStripMenuItem1.Text = DstingsRes.StringUtility;
			this.defaultSetupToolStripMenuItem.Text = DstingsRes.StringDefaultSetup;
			this.calibrateToolStripMenuItem.Text = DstingsRes.StringCalibrate;
			this.zeroToolStripMenuItem.Text = DstingsRes.StringZero;
			this.helpToolStripMenuItem.Text = DstingsRes.StringHelp;
			this.contentToolStripMenuItem.Text = DstingsRes.StringContent;
			this.warningToolStripMenuItem.Text = DstingsRes.StringWarnning;
			this.textAlarmToolStripMenuItem.Text = DstingsRes.StringText;
			this.musicAlarmToolStripMenuItem.Text = DstingsRes.StringMusic;
			this.measureWindowToolStripMenuItem.Text = DstingsRes.StringMeasure;
			this.mousePositionToolStripMenuItem.Text = DstingsRes.StringMousePos;
		}

		private void MeasureListViewInit()
		{
			this.tabPage1.Controls.Add(this.m_MyDbufferedListView);
			this.m_MyDbufferedListView.Left = this.tabPage1.Left - 5;
			this.m_MyDbufferedListView.Top = this.tabPage1.Top - 5;
			this.m_MyDbufferedListView.Height = this.tabPage1.Height;
			this.m_MyDbufferedListView.Width = this.tabPage1.Width + 5;
			this.m_MyDbufferedListView.Visible = true;
			this.m_MyDbufferedListView.View = View.Details;
			this.m_MyDbufferedListView.FullRowSelect = true;
			this.m_MyDbufferedListView.GridLines = true;
			this.m_MyDbufferedListView.Scrollable = true;
			this.m_MyDbufferedListView.Font = new Font("Calibri", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.m_MyDbufferedListView.Columns.Add("CH  ");
			this.m_MyDbufferedListView.Columns.Add("Name  ");
			this.m_MyDbufferedListView.Columns.Add("Uint");
			this.m_MyDbufferedListView.Columns.Add("Value");
			this.m_MyDbufferedListView.Columns[0].Width = -2;
			this.m_MyDbufferedListView.Columns[1].Width = -2;
			this.m_MyDbufferedListView.Columns[2].Width = -2;
		}

		private void Form1_Load(object sender, EventArgs e)
		{
			this.frm3 = new Form3(this);
			this.Ch1VoltageKnob.setKnobColor(this.PanelHlightLB2, "CH1(V)");
			this.KnoBVolCH2.setKnobColor(this.PanelHlightLB3, "CH2(V)");
			this.TimeKnob.setKnobColor(this.PanelHlightLB, "Time");
			this.ljtStorage1.SetModel("DDS140");
			this.sin.BackgroundImage = Resources.sin3;
			this.tri.BackgroundImage = Resources.tri;
			this.squ.BackgroundImage = Resources.squ11;
			base.KeyPreview = true;
			this.FUNCtoolStripComboBox.Items.Add(DstingsRes.StringFuncOsilla);
			this.FUNCtoolStripComboBox.Items.Add(DstingsRes.StringFuncSignal);
			this.FUNCtoolStripComboBox.Items.Add(DstingsRes.StringFuncLogic);
			this.FUNCtoolStripComboBox.SelectedIndex = 0;
			this.ONOFFtoolStripComboBox0.Items.Add(DstingsRes.StringOn);
			this.ONOFFtoolStripComboBox0.Items.Add(DstingsRes.StringOff);
			this.ONOFFtoolStripComboBox1.Items.Add(DstingsRes.StringOn);
			this.ONOFFtoolStripComboBox1.Items.Add(DstingsRes.StringOff);
			this.ACDCtoolStripComboBox0.Items.Add(DstingsRes.StringDC);
			this.ACDCtoolStripComboBox0.Items.Add(DstingsRes.StringAC);
			this.ACDCtoolStripComboBox1.Items.Add(DstingsRes.StringDC);
			this.ACDCtoolStripComboBox1.Items.Add(DstingsRes.StringAC);
			this.TrigMODEtoolStripComboBox.Items.Add(DstingsRes.StringTrigerType_no);
			this.TrigMODEtoolStripComboBox.Items.Add(DstingsRes.StringTrigerType_norm);
			this.TrigMODEtoolStripComboBox.Items.Add(DstingsRes.StringTrigerType_Single);
			base.FormBorderStyle = FormBorderStyle.Sizable;
			base.WindowState = FormWindowState.Maximized;
			this.panelAdjust.Visible = false;
			this.toolStripButtonZero.ToolTipText = DstingsRes.StringResetZero;
			this.toolStripButTstart.ToolTipText = DstingsRes.StringTrigStart;
			this.splitContainer1.SplitterDistance = this.statusStrip1.Top - this.splitContainer1.Top;
			this.splitContainer2.SplitterDistance = this.splitContainer2.Width - 250;
			this.splitContainer3.SplitterDistance = this.splitContainer3.Width;
			this.KnobMenuInit();
			this.UIVariablesInit();
			this.StringInit();
			this.MeasureListViewInit();
			this.GraphView.SetSelectMeasureY(2.0);
			this.GraphView.SetSelectMeasureY2(2.0);
			this.GraphView.UpdateEpitome(0.0);
			this.GraphView.MainFrameLoaded();
			this.LogicView.MainFrameLoaded();
			this.toolBarToolStripMenuItem.Checked = true;
			this.gridToolStripMenuItem.Checked = true;
			this.controlWindowToolStripMenuItem.Checked = true;
			this.yTToolStripMenuItem.Checked = true;
			this.textAlarmToolStripMenuItem.Checked = true;
			this.musicAlarmToolStripMenuItem.Checked = true;
			this.mousePositionToolStripMenuItem.Checked = true;
			this.propertySet.Name = "FFT Wave";
			this.propertyGrid1.SelectedObject = this.propertySet;
			this.propertySet.BackColor = Color.FromArgb(255, 13, 33, 51);
			this.propertySet.Ch1WaveColor = Color.FromArgb(6, 221, 238);
			this.propertySet.Ch2WaveColor = Color.FromArgb(225, 225, 0);
			this.extTriggerToolStripMenuItem.Checked = false;
		}

		protected override void OnHandleCreated(EventArgs e)
		{
			base.OnHandleCreated(e);
			this.mRecipientHandle = base.Handle;
			this.RegisterForDeviceChangeLJT(true);
			this.BuildEventsForDAQ();
			globleVariables.g_GlobSetting_struc.g_dataNumPerPixar = 1.0;
			Control.CheckForIllegalCrossThreadCalls = false;
			this.numOn.BackgroundImage = Resources.DDSstart112;
			globleVariables.g_DDSstate[0] = 0;
			globleVariables.g_DDSstate[1] = -1;
			this.PanelHlightLB = new LinearGradientBrush(new Rectangle(this.TimeKnob.Left, this.TimeKnob.Top - 20, this.TimeKnob.Width, this.TimeKnob.Height), Color.FromArgb(255, 10, 10, 10), Color.Red, LinearGradientMode.Vertical);
			this.PanelHlightLB2 = new LinearGradientBrush(new Rectangle(this.Ch1VoltageKnob.Left, this.Ch1VoltageKnob.Top - 40, this.Ch1VoltageKnob.Width, this.Ch1VoltageKnob.Height), Color.FromArgb(255, 10, 10, 10), Color.SteelBlue, LinearGradientMode.Vertical);
			this.PanelHlightLB3 = new LinearGradientBrush(new Rectangle(this.KnoBVolCH2.Left, this.KnoBVolCH2.Top + 10, this.KnoBVolCH2.Width, this.KnoBVolCH2.Height - 7), Color.FromArgb(255, 10, 10, 10), Color.Yellow, LinearGradientMode.Vertical);
			this.LogicView.GetStrings("lvjiangtao19810212");
			this.GraphView.GetStrings("lvjiangtao19810212");
		}

		public void Totally_stop_DAQ()
		{
			this.ReleaseEventsForDAQ();
			this.GraphView.SetInformationState("Stopped");
			this.m_StrCurrentState = "Stopped";
			this.startbut.Text = DstingsRes.StringStart;
			globleVariables.g_DAQstate = -1;
			globleVariables.g_DeviceOpenResult = -1;
			this.numOn.BackgroundImage = Resources.DDSstart112;
			globleVariables.g_DDSstate[0] = 0;
			globleVariables.g_DDSstate[1] = -1;
			this.numOn.BackgroundImage = Resources.DDSstart112;
			this.num0.Enabled = true;
			this.num1.Enabled = true;
			this.num2.Enabled = true;
			this.num3.Enabled = true;
			this.num4.Enabled = true;
			this.num5.Enabled = true;
			this.num6.Enabled = true;
			this.num7.Enabled = true;
			this.num8.Enabled = true;
			this.num9.Enabled = true;
			this.K.Enabled = true;
			this.numclr.Enabled = true;
			this.M.Enabled = true;
			this.hundred.Enabled = true;
			this.sin.Enabled = true;
			this.tri.Enabled = true;
			this.squ.Enabled = true;
			this.GraphView.LeftRightMVstate_started();
			globleVariables.g_GlobSetting_struc.g_dataNumPerPixar = 1.0;
			this.activeTimer.Enabled = false;
		}

		private void UpdateProperties()
		{
			this.listViewProperties.Clear();
			this.listViewProperties.View = View.Details;
			this.listViewProperties.FullRowSelect = true;
			this.listViewProperties.Columns.Add("Items");
			this.listViewProperties.Columns.Add("Properties");
			ListViewItem listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringModel;
			this.listViewProperties.Items.Add(listViewItem);
			ListViewItem.ListViewSubItem listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = Form1.m_model;
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringChannel;
			this.listViewProperties.Items.Add(listViewItem);
			listViewItem.BackColor = Color.FromArgb(225, 245, 245, 245);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringState;
			this.listViewProperties.Items.Add(listViewItem);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringSampleRate;
			listViewItem.BackColor = Color.FromArgb(225, 245, 245, 245);
			this.listViewProperties.Items.Add(listViewItem);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringTrigerType;
			this.listViewProperties.Items.Add(listViewItem);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringProbe;
			listViewItem.BackColor = Color.FromArgb(225, 245, 245, 245);
			this.listViewProperties.Items.Add(listViewItem);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			listViewItem = new ListViewItem();
			listViewItem.Text = DstingsRes.StringProbe;
			this.listViewProperties.Items.Add(listViewItem);
			listViewSubItem = new ListViewItem.ListViewSubItem();
			listViewSubItem.Text = " ";
			listViewItem.SubItems.Add(listViewSubItem);
			this.listViewProperties.Columns[0].Width = -2;
			this.listViewProperties.Columns[1].Width = -2;
			string text = "";
			if (globleVariables.g_ChannelMask == 1 || globleVariables.g_ChannelMask == 128)
			{
				text = "CH1";
			}
			else if (globleVariables.g_ChannelMask == 16)
			{
				text = "CH2";
			}
			else if (globleVariables.g_ChannelMask == 17)
			{
				text = "CH1 CH2";
			}
			this.listViewProperties.Items[1].SubItems[1].Text = text;
			this.listViewProperties.Items[2].SubItems[1].Text = this.m_StrCurrentState;
			int num = (int)globleVariables.m_CurrentFreq;
			if (num <= 10000)
			{
				if (num <= 39)
				{
					if (num != 9)
					{
						if (num == 39)
						{
							text = "39K Hz";
						}
					}
					else
					{
						text = "240K Hz";
					}
				}
				else if (num != 625)
				{
					if (num == 10000)
					{
						text = "10M Hz";
					}
				}
				else
				{
					text = "625K Hz";
				}
			}
			else if (num <= 100000)
			{
				if (num != 80000)
				{
					if (num == 100000)
					{
						text = "100M Hz";
					}
				}
				else
				{
					text = "100M Hz";
				}
			}
			else if (num != 160000)
			{
				if (num == 200000)
				{
					text = "200M Hz";
				}
			}
			else
			{
				text = "200M Hz";
			}
			this.listViewProperties.Items[3].SubItems[1].Text = text;
			if (globleVariables.g_TrigMode == 0)
			{
				this.listViewProperties.Items[4].SubItems[1].Text = DstingsRes.StringTrigerType_no;
			}
			else if (globleVariables.g_TrigMode == 1)
			{
				this.listViewProperties.Items[4].SubItems[1].Text = DstingsRes.StringTrigerType_norm;
			}
			else if (globleVariables.g_TrigMode == 2)
			{
				this.listViewProperties.Items[4].SubItems[1].Text = DstingsRes.StringTrigerType_Single;
			}
			if (this.toolStripProbeCH1.SelectedIndex == 0)
			{
				text = "1X (CH1)";
			}
			else if (this.toolStripProbeCH1.SelectedIndex == 1)
			{
				text = "10X (CH1)";
			}
			else if (this.toolStripProbeCH1.SelectedIndex == 2)
			{
				text = "100X (CH1)";
			}
			this.listViewProperties.Items[5].SubItems[1].Text = text;
			if (this.toolStripProbeCH2.SelectedIndex == 0)
			{
				text = "1X (CH2)";
			}
			else if (this.toolStripProbeCH2.SelectedIndex == 1)
			{
				text = "10X (CH2)";
			}
			else if (this.toolStripProbeCH2.SelectedIndex == 2)
			{
				text = "100X (CH2)";
			}
			this.listViewProperties.Items[6].SubItems[1].Text = text;
		}

		private void SetupDefaultCFG()
		{
			globleVariables.g_knobSelect = 2u;
			globleVariables.g_knobVolatageSelect = 0u;
			globleVariables.g_scale = 10.0;
			globleVariables.g_knobVolatageSelect2 = 0u;
			globleVariables.g_scale2 = 10.0;
			globleVariables.g_conbineChan = false;
			globleVariables.g_ChannelMask = 1;
			globleVariables.g_TrigMode = 0;
			globleVariables.g_comboNSSelectedIndex = 0;
			globleVariables.g_comboTimeBaseSelectedIndex = 0;
			this.m_ch1CoupleFlg = 2;
			this.m_ch2CoupleFlg = 2;
			this.GraphView.SetDrawTrigLevel1rNot(false);
			this.GraphView.SetDrawTrigLevelOrNot(false);
		}

		private void PerformCfgUI()
		{
			this.comboBoxNS.SelectedIndex = globleVariables.g_comboNSSelectedIndex;
			this.comboTimeBase.SelectedIndex = globleVariables.g_comboTimeBaseSelectedIndex;
			if (this.m_ch1CoupleFlg == 2)
			{
				this.ACDCtoolStripComboBox0.SelectedIndex = 0;
			}
			else if (this.m_ch1CoupleFlg == 1)
			{
				this.ACDCtoolStripComboBox0.SelectedIndex = 1;
			}
			if (this.m_ch2CoupleFlg == 2)
			{
				this.ACDCtoolStripComboBox1.SelectedIndex = 0;
			}
			else if (this.m_ch2CoupleFlg == 1)
			{
				this.ACDCtoolStripComboBox1.SelectedIndex = 1;
			}
			this.TRIGCHtoolStripComboBox.SelectedIndex = (int)globleVariables.g_TrigSourceChan;
			if (globleVariables.g_TrigMode == 0)
			{
				this.TrigMODEtoolStripComboBox.SelectedIndex = 0;
			}
			else if (globleVariables.g_TrigMode == 1)
			{
				this.TrigMODEtoolStripComboBox.SelectedIndex = 1;
				if (globleVariables.g_TrigSourceChan == 0)
				{
					this.GraphView.SetDrawTrigLevelOrNot(true);
				}
				else if (globleVariables.g_TrigSourceChan == 1)
				{
					this.GraphView.SetDrawTrigLevel1rNot(true);
				}
			}
			else if (globleVariables.g_TrigMode == 2)
			{
				this.TrigMODEtoolStripComboBox.SelectedIndex = 2;
				if (globleVariables.g_TrigSourceChan == 0)
				{
					this.GraphView.SetDrawTrigLevelOrNot(true);
				}
				else if (globleVariables.g_TrigSourceChan == 1)
				{
					this.GraphView.SetDrawTrigLevel1rNot(true);
				}
			}
			this.Ch1VoltageKnob.setKnobSelect(globleVariables.g_knobVolatageSelect);
			this.KnoBVolCH2.setKnobSelect(globleVariables.g_knobVolatageSelect2);
			this.TimeKnob.setKnobSelect(globleVariables.g_knobSelect);
			this.m_Chacked[(int)((UIntPtr)globleVariables.g_knobSelect)].Checked = true;
			this.m_vchacked[(int)((UIntPtr)globleVariables.g_knobVolatageSelect)].Checked = true;
			this.m_vchacked2[(int)((UIntPtr)globleVariables.g_knobVolatageSelect2)].Checked = true;
			if ((globleVariables.g_ChannelMask & 128) != 0)
			{
				globleVariables.g_conbineChan = true;
				this.ONOFFtoolStripComboBox0.SelectedIndex = 0;
				this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
			}
			else
			{
				if ((globleVariables.g_ChannelMask & 16) != 0)
				{
					this.ONOFFtoolStripComboBox1.SelectedIndex = 0;
				}
				else
				{
					this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
				}
				if ((globleVariables.g_ChannelMask & 1) != 0)
				{
					this.ONOFFtoolStripComboBox0.SelectedIndex = 0;
				}
				else
				{
					this.ONOFFtoolStripComboBox0.SelectedIndex = 1;
				}
			}
			this.trackBarExtTrigger.Value = 50;
		}

		private void PerformCfgIO()
		{
			this.TimeKnob_MYSelectChangedevent2(globleVariables.g_knobSelect);
			this.VoltageKnoB11_MYSelectChangedevent2(globleVariables.g_knobVolatageSelect);
			this.KnoBVolCH2_MYSelectChangedevent(globleVariables.g_knobVolatageSelect2);
			if (this.m_ch1CoupleFlg == 2)
			{
				globleVariables.g_CtrlByte0 &= 239;
				globleVariables.g_CtrlByte0 |= 16;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
					goto IL_AF;
				}
			}
			if (this.m_ch1CoupleFlg == 1)
			{
				globleVariables.g_CtrlByte0 &= 239;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
				}
			}
			IL_AF:
			if (this.m_ch2CoupleFlg == 2)
			{
				globleVariables.g_CtrlByte1 &= 239;
				globleVariables.g_CtrlByte1 |= 16;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
					goto IL_142;
				}
			}
			if (this.m_ch2CoupleFlg == 1)
			{
				globleVariables.g_CtrlByte1 &= 239;
				globleVariables.g_CtrlByte1 = globleVariables.g_CtrlByte1;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
			}
			IL_142:
			if (globleVariables.g_TrigSourceChan == 2)
			{
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(231, 1, 1u);
					return;
				}
			}
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(231, 0, 1u);
			}
		}

		private void UIVariablesInit()
		{
			globleVariables.g_storageState = 0u;
			this.ljtStorage1.Visible = false;
			this.butStorageStop.Visible = false;
			if (!this.ReadConfig(this.m_Myfilepath))
			{
				this.SetupDefaultCFG();
			}
			this.PerformCfgUI();
			this.toolStripProbeCH2.SelectedIndex = 0;
			this.toolStripProbeCH1.SelectedIndex = 0;
			this.radioButSignalNorm.Enabled = true;
			this.toolStripLabel3.Text = DstingsRes.StringTrigger;
			this.aboutToolStripMenuItem.Text = DstingsRes.StringAbout;
			globleVariables.g_pBufferIndex = 10u;
			globleVariables.g_DeviceOpenResult = -1;
			globleVariables.g_DeviceOpenResult2 = -1;
			globleVariables.g_DAQstate = -1;
			globleVariables.g_DDSstate[0] = 0;
			globleVariables.g_DDSstate[1] = -1;
			this.numOn.BackgroundImage = Resources.DDSstart112;
			this.num0.Enabled = true;
			this.num1.Enabled = true;
			this.num2.Enabled = true;
			this.num3.Enabled = true;
			this.num4.Enabled = true;
			this.num5.Enabled = true;
			this.num6.Enabled = true;
			this.num7.Enabled = true;
			this.num8.Enabled = true;
			this.num9.Enabled = true;
			this.K.Enabled = true;
			this.numclr.Enabled = true;
			this.M.Enabled = true;
			this.hundred.Enabled = true;
			this.sin.Enabled = true;
			this.tri.Enabled = true;
			this.squ.Enabled = true;
			this.panelMormSig.Enabled = false;
			this.panelPWM.Enabled = false;
			globleVariables.g_GlobSetting_struc.g_ReadDataCount = 2048u;
			globleVariables.g_GlobSetting_struc.g_PixarNum4ChartZone = 500u;
			globleVariables.g_GlobSetting_struc.g_DisplayDataCount = 500u;
			this.Text = Form1.m_Vendor + globleVariables.g_Version;
			this.labelAMplitue.Text = DstingsRes.StringAltitu;
			this.labelOffset.Text = DstingsRes.StringOffset;
			this.labelPWMduty.Text = DstingsRes.StringDuty;
			this.freqOutText.Text = this.m_FreOut.ToString();
			this.FreqSpan.Text = this.m_FreqSpan.ToString();
			this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
			this.sin.BackColor = Color.Orange;
			this.LowFreq.Text = this.m_LowFreq.ToString();
			this.HgihFreq.Text = this.m_HighFreq.ToString();
			this.TimSpan.Text = this.m_TimeSpan.ToString();
			this.radioButSignalNorm.Text = DstingsRes.StringNormalSig;
			globleVariables.g_TrigEdgeFlag = 1;
			this.TrigUPButton.BackColor = Color.Bisque;
			this.TrigDNButton.BackColor = Color.AliceBlue;
			this.startbut.Text = DstingsRes.StringStart;
			globleVariables.g_RangeY = 0.5;
			globleVariables.g_RangeY2 = 0.5;
			this.m_MystreamHead.channelMask = globleVariables.g_ChannelMask;
			this.m_MystreamHead.KnobSelect = (byte)globleVariables.g_knobSelect;
			this.m_MystreamHead.KnobVoltageSelect = (byte)globleVariables.g_knobVolatageSelect;
			this.m_MystreamHead.TrigChan = globleVariables.g_TrigSourceChan;
			this.m_MystreamHead.chan0ZeroLevel = 0;
			this.m_MystreamHead.chan1ZeroLevel = 0;
			this.m_MystreamHead.chan0Amp = 1;
			this.m_MystreamHead.chan1Amp = 1;
			this.m_MystreamHead.dataNumOneShot = globleVariables.g_GlobSetting_struc.g_ReadDataCount;
			this.m_MystreamHead.dataNumPerPixar = 1.0;
			this.m_MystreamHead.TrigeMode = globleVariables.g_TrigMode;
			this.m_MystreamHead.TrigEdge = globleVariables.g_TrigEdgeFlag;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			this.GraphView.SetAxisX(0f, 1f, "us", 1);
			this.ljtStorage1.SetIconBlink(0u);
			this.Ch1VoltageKnob.Enabled = true;
			this.KnoBVolCH2.Enabled = true;
			this.TimeKnob.Enabled = true;
			this.trackBarOffset.Value = 200;
			this.trackVolAplitu.Value = 200;
			this.toolStripMenuItem2.Text = DstingsRes.StringRecordReview;
			this.saveAsTxtToolStripMenuItem.Text = DstingsRes.StringSaveAsText;
			this.UpdateProperties();
			this.splitContainer1.Width = this.panel6.Left - this.splitContainer1.Left;
			this.splitContainer1.Height = this.statusStrip1.Top - this.splitContainer1.Top;
			this.myffTctrl1.Left = this.splitContainer2.Panel1.Left;
			this.myffTctrl1.Top = this.splitContainer2.Panel1.Top;
			this.myffTctrl1.Width = this.splitContainer2.Panel1.Width * 2;
			this.myffTctrl1.Height = this.splitContainer2.Height - 20;
		}

		private void FunctionVariablesInit()
		{
			ulong num = 12000000uL / (this.m_FreOutPWM + 1uL);
			if (num > 65500uL)
			{
				num = 65500uL;
			}
			int num2 = 65535 - (int)num / 4;
			int num3 = 65535 - (int)num / 4;
			ushort usValue = (ushort)((num2 & 65280) >> 8);
			ushort usValue2 = (ushort)(num2 & 255);
			ushort usValue3 = (ushort)((num3 & 65280) >> 8);
			ushort usValue4 = (ushort)(num3 & 255);
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(118, usValue3, 1u);
				MyDLLimport.USBCtrlTrans(119, usValue4, 1u);
				MyDLLimport.USBCtrlTrans(120, usValue, 1u);
				MyDLLimport.USBCtrlTrans(121, usValue2, 1u);
				MyDLLimport.USBCtrlTrans(99, 4, 1u);
				MyDLLimport.USBCtrlTransSimple(117);
			}
			globleVariables.g_FuncIndex = 0;
			if (!this.tabMain.Controls.Contains(this.OsillagraphPg))
			{
				this.tabMain.Controls.Add(this.OsillagraphPg);
			}
			if (this.tabMain.Controls.Contains(this.SignalPg))
			{
				if (globleVariables.g_DDSstate[1] == 0)
				{
					this.numOn_Click(this, null);
				}
				this.tabMain.Controls.Remove(this.SignalPg);
			}
			if (this.tabMain.Controls.Contains(this.LogicAlsPG))
			{
				this.tabMain.Controls.Remove(this.LogicAlsPG);
			}
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(52, 0, 1u);
			}
			this.FUNCtoolStripComboBox.SelectedIndex = 0;
			this.Offset_caculation(5.0, 10000uL);
			lock (globleVariables.g_lockIO)
			{
				globleVariables.g_VbiasZero01v = MyDLLimport.USBCtrlTrans(144, 1, 1u);
				globleVariables.g_VbiasZero11v = MyDLLimport.USBCtrlTrans(144, 2, 1u);
				globleVariables.m_ZrroUniInt = (int)(MyDLLimport.USBCtrlTrans(144, 5, 1u) - 128);
				globleVariables.g_VbiasScale_1V_ch0 = (double)((float)MyDLLimport.USBCtrlTrans(144, 3, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_200mV_ch0 = (double)((float)MyDLLimport.USBCtrlTrans(144, 6, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_1V_ch1 = (double)((float)MyDLLimport.USBCtrlTrans(144, 4, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_200mV_ch1 = (double)((float)MyDLLimport.USBCtrlTrans(144, 7, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_500mV_ch0 = (double)((float)MyDLLimport.USBCtrlTrans(144, 8, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_100mV_ch0 = (double)((float)MyDLLimport.USBCtrlTrans(144, 9, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_50mV_ch0 = (double)((float)MyDLLimport.USBCtrlTrans(144, 10, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_500mV_ch1 = (double)((float)MyDLLimport.USBCtrlTrans(144, 11, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_100mV_ch1 = (double)((float)MyDLLimport.USBCtrlTrans(144, 12, 1u) * 2f / 255f);
				globleVariables.g_VbiasScale_50mV_ch1 = (double)((float)MyDLLimport.USBCtrlTrans(144, 13, 1u) * 2f / 255f);
				globleVariables.g_VbiasZero0500mv = MyDLLimport.USBCtrlTrans(144, 14, 1u);
				globleVariables.g_VbiasZero1500mv = MyDLLimport.USBCtrlTrans(144, 15, 1u);
				globleVariables.g_VbiasZero050mv = MyDLLimport.USBCtrlTrans(144, 16, 1u);
				globleVariables.g_VbiasZero150mv = MyDLLimport.USBCtrlTrans(144, 17, 1u);
				globleVariables.g_VbiasZero0100mv = MyDLLimport.USBCtrlTrans(144, 18, 1u);
				globleVariables.g_VbiasZero1100mv = MyDLLimport.USBCtrlTrans(144, 19, 1u);
			}
			this.textBoxCH1zero.Text = Convert.ToString(globleVariables.g_VbiasZero01v, 10);
			this.textBoxCH2zero.Text = Convert.ToString(globleVariables.g_VbiasZero11v, 10);
			this.ch0_zero_500mv.Text = Convert.ToString(globleVariables.g_VbiasZero0500mv, 10);
			this.ch1_zero_500mv.Text = Convert.ToString(globleVariables.g_VbiasZero1500mv, 10);
			this.ch0_zero_100mv.Text = Convert.ToString(globleVariables.g_VbiasZero0100mv, 10);
			this.ch1_zero_100mv.Text = Convert.ToString(globleVariables.g_VbiasZero1100mv, 10);
			this.zero050mv.Text = Convert.ToString(globleVariables.g_VbiasZero050mv, 10);
			this.zero150mv.Text = Convert.ToString(globleVariables.g_VbiasZero150mv, 10);
			this.textBox4.Text = Convert.ToString(globleVariables.m_ZrroUniInt, 10);
			byte value = (byte)(globleVariables.g_VbiasScale_1V_ch0 * 255.0 / 2.0);
			byte value2 = (byte)(globleVariables.g_VbiasScale_1V_ch1 * 255.0 / 2.0);
			byte value3 = (byte)(globleVariables.g_VbiasScale_200mV_ch0 * 255.0 / 2.0);
			byte value4 = (byte)(globleVariables.g_VbiasScale_200mV_ch1 * 255.0 / 2.0);
			byte value5 = (byte)(globleVariables.g_VbiasScale_500mV_ch0 * 255.0 / 2.0);
			byte value6 = (byte)(globleVariables.g_VbiasScale_500mV_ch1 * 255.0 / 2.0);
			byte value7 = (byte)(globleVariables.g_VbiasScale_100mV_ch0 * 255.0 / 2.0);
			byte value8 = (byte)(globleVariables.g_VbiasScale_100mV_ch1 * 255.0 / 2.0);
			byte value9 = (byte)(globleVariables.g_VbiasScale_50mV_ch0 * 255.0 / 2.0);
			byte value10 = (byte)(globleVariables.g_VbiasScale_50mV_ch1 * 255.0 / 2.0);
			this.textBoxCH1scale.Text = Convert.ToString(value, 10);
			this.textBoxCH2scale.Text = Convert.ToString(value2, 10);
			this.textX1CH0.Text = Convert.ToString(value3, 10);
			this.textX1CH1.Text = Convert.ToString(value4, 10);
			this.ch0scale500mv.Text = Convert.ToString(value5, 10);
			this.ch1Scale500mv.Text = Convert.ToString(value6, 10);
			this.ch0_100mv.Text = Convert.ToString(value7, 10);
			this.ch1_100mv.Text = Convert.ToString(value8, 10);
			this.ch0_50mv.Text = Convert.ToString(value9, 10);
			this.ch1_50mv.Text = Convert.ToString(value10, 10);
			globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
			globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
			globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
			globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
			this.PerformCfgIO();
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
			this.m_MystreamHead.VbiasZero01v = globleVariables.g_VbiasZero01v;
			this.m_MystreamHead.VbiasZero11v = globleVariables.g_VbiasZero11v;
			this.m_MystreamHead.VbiasZero0500mv = globleVariables.g_VbiasZero0500mv;
			this.m_MystreamHead.VbiasZero1500mv = globleVariables.g_VbiasZero1500mv;
			this.m_MystreamHead.VbiasZero0100mv = globleVariables.g_VbiasZero0100mv;
			this.m_MystreamHead.VbiasZero1100mv = globleVariables.g_VbiasZero1100mv;
			this.m_MystreamHead.VbiasZero050mv = globleVariables.g_VbiasZero050mv;
			this.m_MystreamHead.VbiasZero150mv = globleVariables.g_VbiasZero150mv;
			this.m_MystreamHead.Vscale_1v_ch0 = globleVariables.g_VbiasScale_1V_ch0;
			this.m_MystreamHead.Vscale_1v_ch1 = globleVariables.g_VbiasScale_1V_ch1;
			this.m_MystreamHead.Vscale_500mv_ch0 = globleVariables.g_VbiasScale_500mV_ch0;
			this.m_MystreamHead.Vscale_500mv_ch1 = globleVariables.g_VbiasScale_500mV_ch1;
			this.m_MystreamHead.Vscale_200mv_ch0 = globleVariables.g_VbiasScale_200mV_ch0;
			this.m_MystreamHead.Vscale_200mv_ch1 = globleVariables.g_VbiasScale_200mV_ch1;
			this.m_MystreamHead.Vscale_100mv_ch0 = globleVariables.g_VbiasScale_100mV_ch0;
			this.m_MystreamHead.Vscale_100mv_ch1 = globleVariables.g_VbiasScale_100mV_ch1;
			this.m_MystreamHead.Vscale_50mv_ch0 = globleVariables.g_VbiasScale_50mV_ch0;
			this.m_MystreamHead.Vscale_50mv_ch1 = globleVariables.g_VbiasScale_50mV_ch1;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
		}

		public void start_pause_DAQ()
		{
			if (globleVariables.g_DAQstate == 0)
			{
				this.GraphView.LeftRightMVstate_started();
				this.activeTimer.Enabled = false;
				if (this.EventThread.IsAlive)
				{
					this.EventThread.Suspend();
				}
				if (this.ReadThread.IsAlive)
				{
					this.ReadThread.Suspend();
				}
				this.startbut.Text = DstingsRes.StringStart;
				globleVariables.g_DAQstate = -1;
				this.ljtStorage1.SetIconBlink(0u);
				this.AUTOtoolStripButton.Enabled = false;
				this.GraphView.SetInformationState("Paused");
				this.m_StrCurrentState = "Paused";
				MyDLLimport.SetStableEnableOrNot(0u);
				this.GraphView.SetCH1Blink(true);
				this.GraphView.SetCH2Blink(true);
				return;
			}
			this.GraphView.UpdateEpitome(0.0);
			if (globleVariables.g_DeviceOpenResult == -1)
			{
				if (globleVariables.g_DeviceOpenResult2 == -1)
				{
					int num = MyDLLimport.DeviceOpen();
					if (num != 0)
					{
						MessageBox.Show(DstingsRes.StringOpenFailedInfo, DstingsRes.StringOpenFailedTitle);
						return;
					}
					globleVariables.g_DeviceOpenResult = 0;
				}
				this.FunctionVariablesInit();
				this.ljtStorage1.SetParameters(this.m_MystreamHead);
			}
			this.activeTimer.Enabled = true;
			globleVariables.g_DAQstate = 0;
			globleVariables.m_LogicTrigCnt = 0;
			if (this.EventThread.IsAlive)
			{
				this.EventThread.Resume();
			}
			else
			{
				this.EventThread.Start();
			}
			if (this.ReadThread.IsAlive)
			{
				this.ReadThread.Resume();
			}
			else
			{
				this.ReadThread.Start();
			}
			this.startbut.Text = DstingsRes.StringStop;
			this.GraphView.LeftRightMVstate_stoped();
			this.ljtStorage1.SetIconBlink(1u);
			this.GraphView.SetInformationState("Playing");
			this.m_StrCurrentState = "Playing";
			this.GraphView.SetInformationType("Live");
		}

		private void start_Click(object sender, EventArgs e)
		{
			this.start_pause_DAQ();
			Thread.Sleep(10);
		}

		private void TimeKnob_MYSelectChangedevent2(uint i)
		{
			if (globleVariables.g_knobSelect != i)
			{
				this.GraphView.SetZoomDisabled();
			}
			MyDLLimport.ResetPipe();
			lock (globleVariables.g_lockThis)
			{
				if (i != 9u)
				{
					globleVariables.g_CtrlByte1 &= 254;
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
					}
					globleVariables.g_conbineChan = false;
					globleVariables.g_ChannelMask &= 127;
				}
				else if (i == 9u)
				{
					this.GraphView.SetInformationSampleRate("200M");
					if ((globleVariables.g_ChannelMask & 16) != 0)
					{
						this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
						int arg_AF_0 = globleVariables.m_MesureCh;
					}
					globleVariables.g_CtrlByte1 &= 254;
					globleVariables.g_CtrlByte1 |= 1;
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
					}
					globleVariables.g_conbineChan = true;
					globleVariables.g_ChannelMask |= 128;
				}
				Thread.Sleep(10);
				if (i >= 5u && i < 8u)
				{
					if (globleVariables.m_CurrentFreq != 10000.0)
					{
						globleVariables.g_CtrlByte0 &= 240;
						globleVariables.g_CtrlByte0 |= 12;
						globleVariables.m_CurrentFreq = 10000.0;
					}
					this.GraphView.SetInformationSampleRate("10M");
					MyDLLimport.SetStableEnableOrNot(1u);
				}
				else if (i == 8u)
				{
					if (globleVariables.g_comboTimeBaseSelectedIndex <= 1)
					{
						globleVariables.g_CtrlByte0 &= 240;
						globleVariables.g_CtrlByte0 |= 8;
						this.GraphView.SetInformationSampleRate("625K");
						globleVariables.m_CurrentFreq = 625.0;
						MyDLLimport.SetStableEnableOrNot(1u);
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex <= 6)
					{
						globleVariables.g_CtrlByte0 &= 240;
						globleVariables.g_CtrlByte0 |= 11;
						globleVariables.m_CurrentFreq = 39.0;
						this.GraphView.SetInformationSampleRate("39K");
						MyDLLimport.SetStableEnableOrNot(0u);
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex >= 7)
					{
						globleVariables.g_CtrlByte0 &= 240;
						globleVariables.g_CtrlByte0 |= 10;
						this.GraphView.SetInformationSampleRate("240K");
						globleVariables.m_CurrentFreq = 240.0;
						MyDLLimport.SetStableEnableOrNot(0u);
					}
				}
				else
				{
					globleVariables.g_CtrlByte0 &= 240;
					globleVariables.g_CtrlByte0 = globleVariables.g_CtrlByte0;
					MyDLLimport.SetStableEnableOrNot(1u);
					if (i == 9u)
					{
						this.GraphView.SetInformationSampleRate("200M");
						globleVariables.m_CurrentFreq = 160000.0;
					}
					else
					{
						this.GraphView.SetInformationSampleRate("100M");
						globleVariables.m_CurrentFreq = 80000.0;
					}
				}
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
				}
				Thread.Sleep(10);
				globleVariables.g_knobSelect = i;
				this.m_MystreamHead.KnobSelectComboIdx = 0;
				double num = 0.0;
				switch (i)
				{
				case 0u:
					for (int j = 0; j < 20; j++)
					{
						this.m_Chacked[j].Checked = false;
					}
					this.m_Chacked[0].Checked = true;
					num = 0.4;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(0.25);
						this.GraphView.SetAxisX(0f, 0.25f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(0.25);
						this.LogicView.SetAxisX(0f, 0.25f, "us", 1);
					}
					break;
				case 1u:
					for (int k = 0; k < 20; k++)
					{
						this.m_Chacked[k].Checked = false;
					}
					this.m_Chacked[1].Checked = true;
					num = 0.8;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(0.5);
						this.GraphView.SetAxisX(0f, 0.5f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(0.5);
						this.LogicView.SetAxisX(0f, 0.5f, "us", 1);
					}
					break;
				case 2u:
					for (int l = 0; l < 20; l++)
					{
						this.m_Chacked[l].Checked = false;
					}
					this.m_Chacked[2].Checked = true;
					num = 1.6;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(1.0);
						this.GraphView.SetAxisX(0f, 1f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(1.0);
						this.LogicView.SetAxisX(0f, 1f, "us", 1);
					}
					break;
				case 3u:
					for (int m = 0; m < 20; m++)
					{
						this.m_Chacked[m].Checked = false;
					}
					this.m_Chacked[3].Checked = true;
					num = 4.0;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(2.5);
						this.GraphView.SetAxisX(0f, 2.5f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(2.5);
						this.LogicView.SetAxisX(0f, 2.5f, "us", 1);
					}
					break;
				case 4u:
					for (int n = 0; n < 20; n++)
					{
						this.m_Chacked[n].Checked = false;
					}
					this.m_Chacked[4].Checked = true;
					num = 16.0;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(10.0);
						this.GraphView.SetAxisX(0f, 10f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(10.0);
						this.LogicView.SetAxisX(0f, 10f, "us", 1);
					}
					break;
				case 5u:
					for (int num2 = 0; num2 < 20; num2++)
					{
						this.m_Chacked[num2].Checked = false;
					}
					this.m_Chacked[5].Checked = true;
					num = 5.0;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(25.0);
						this.GraphView.SetAxisX(0f, 25f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(25.0);
						this.LogicView.SetAxisX(0f, 25f, "us", 1);
					}
					break;
				case 6u:
					for (int num3 = 0; num3 < 20; num3++)
					{
						this.m_Chacked[num3].Checked = false;
					}
					this.m_Chacked[6].Checked = true;
					num = 20.0;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(100.0);
						this.GraphView.SetAxisX(0f, 100f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(100.0);
						this.LogicView.SetAxisX(0f, 100f, "us", 1);
					}
					break;
				case 7u:
					for (int num4 = 0; num4 < 20; num4++)
					{
						this.m_Chacked[num4].Checked = false;
					}
					this.m_Chacked[7].Checked = true;
					num = 40.0;
					if (globleVariables.g_FuncIndex == 0)
					{
						this.GraphView.SetSelectMeasureX(200.0);
						this.GraphView.SetAxisX(0f, 200f, "us", 1);
					}
					else if (globleVariables.g_FuncIndex == 2)
					{
						this.LogicView.SetSelectMeasureX(200.0);
						this.LogicView.SetAxisX(0f, 200f, "us", 1);
					}
					break;
				case 8u:
					if (globleVariables.g_comboTimeBaseSelectedIndex == 0)
					{
						for (int num5 = 0; num5 < 20; num5++)
						{
							this.m_Chacked[num5].Checked = false;
						}
						this.m_Chacked[8].Checked = true;
						num = 12.5;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(1000.0);
							this.GraphView.SetAxisX(0f, 1f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(1000.0);
							this.LogicView.SetAxisX(0f, 1f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 0;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 1)
					{
						for (int num6 = 0; num6 < 20; num6++)
						{
							this.m_Chacked[num6].Checked = false;
						}
						this.m_Chacked[9].Checked = true;
						num = 25.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(2000.0);
							this.GraphView.SetAxisX(0f, 2f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(2000.0);
							this.LogicView.SetAxisX(0f, 2f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 1;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 2)
					{
						for (int num7 = 0; num7 < 20; num7++)
						{
							this.m_Chacked[num7].Checked = false;
						}
						this.m_Chacked[10].Checked = true;
						num = 4.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(5000.0);
							this.GraphView.SetAxisX(0f, 5f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(5000.0);
							this.LogicView.SetAxisX(0f, 5f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 2;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 3)
					{
						for (int num8 = 0; num8 < 20; num8++)
						{
							this.m_Chacked[num8].Checked = false;
						}
						this.m_Chacked[11].Checked = true;
						num = 8.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(10000.0);
							this.GraphView.SetAxisX(0f, 10f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(10000.0);
							this.LogicView.SetAxisX(0f, 10f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 3;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 4)
					{
						for (int num9 = 0; num9 < 20; num9++)
						{
							this.m_Chacked[num9].Checked = false;
						}
						this.m_Chacked[12].Checked = true;
						num = 16.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(20000.0);
							this.GraphView.SetAxisX(0f, 20f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(20000.0);
							this.LogicView.SetAxisX(0f, 20f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 4;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 5)
					{
						for (int num10 = 0; num10 < 20; num10++)
						{
							this.m_Chacked[num10].Checked = false;
						}
						this.m_Chacked[13].Checked = true;
						num = 39.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(50000.0);
							this.GraphView.SetAxisX(0f, 50f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(50000.0);
							this.LogicView.SetAxisX(0f, 50f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 5;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 6)
					{
						for (int num11 = 0; num11 < 20; num11++)
						{
							this.m_Chacked[num11].Checked = false;
						}
						this.m_Chacked[14].Checked = true;
						num = 80.0;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(100000.0);
							this.GraphView.SetAxisX(0f, 100f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(100000.0);
							this.LogicView.SetAxisX(0f, 100f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 6;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 7)
					{
						for (int num12 = 0; num12 < 20; num12++)
						{
							this.m_Chacked[num12].Checked = false;
						}
						this.m_Chacked[15].Checked = true;
						num = 960.0;
						globleVariables.g_GlobSetting_struc.g_ReadDataCount = 1048576u;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(200000.0);
							this.GraphView.SetAxisX(0f, 2f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(200000.0);
							this.LogicView.SetAxisX(0f, 2f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 7;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 8)
					{
						for (int num13 = 0; num13 < 20; num13++)
						{
							this.m_Chacked[num13].Checked = false;
						}
						this.m_Chacked[16].Checked = true;
						num = 2400.0;
						globleVariables.g_GlobSetting_struc.g_ReadDataCount = 2621440u;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(500000.0);
							this.GraphView.SetAxisX(0f, 2f, "ms", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(500000.0);
							this.LogicView.SetAxisX(0f, 2f, "ms", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 8;
					}
					else if (globleVariables.g_comboTimeBaseSelectedIndex == 9)
					{
						for (int num14 = 0; num14 < 20; num14++)
						{
							this.m_Chacked[num14].Checked = false;
						}
						this.m_Chacked[16].Checked = true;
						num = 4800.0;
						globleVariables.g_GlobSetting_struc.g_ReadDataCount = 5242880u;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(1.0);
							this.GraphView.SetAxisX(0f, 2f, "s", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(1.0);
							this.LogicView.SetAxisX(0f, 2f, "s", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 9;
					}
					break;
				case 9u:
					if (globleVariables.g_comboNSSelectedIndex == 0)
					{
						for (int num15 = 0; num15 < 20; num15++)
						{
							this.m_Chacked[num15].Checked = false;
						}
						this.m_Chacked[17].Checked = true;
						num = 0.4;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(0.125);
							this.GraphView.SetAxisX(0f, 0.125f, "us", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(0.125);
							this.LogicView.SetAxisX(0f, 0.125f, "us", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 0;
					}
					if (globleVariables.g_comboNSSelectedIndex == 1)
					{
						for (int num16 = 0; num16 < 20; num16++)
						{
							this.m_Chacked[num16].Checked = false;
						}
						this.m_Chacked[18].Checked = true;
						num = 0.16;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(0.05);
							this.GraphView.SetAxisX(0f, 0.05f, "us", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(0.05);
							this.LogicView.SetAxisX(0f, 0.05f, "us", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 1;
					}
					if (globleVariables.g_comboNSSelectedIndex == 2)
					{
						for (int num17 = 0; num17 < 20; num17++)
						{
							this.m_Chacked[num17].Checked = false;
						}
						this.m_Chacked[19].Checked = true;
						num = 0.08;
						if (globleVariables.g_FuncIndex == 0)
						{
							this.GraphView.SetSelectMeasureX(0.025);
							this.GraphView.SetAxisX(0f, 0.025f, "us", 1);
						}
						else if (globleVariables.g_FuncIndex == 2)
						{
							this.LogicView.SetSelectMeasureX(0.025);
							this.LogicView.SetAxisX(0f, 0.025f, "us", 1);
						}
						this.m_MystreamHead.KnobSelectComboIdx = 2;
					}
					break;
				default:
					num = 1.0;
					break;
				}
				globleVariables.g_GlobSetting_struc.g_DisplayDataCount = (uint)(globleVariables.g_GlobSetting_struc.g_PixarNum4ChartZone * num);
				if (num < 100.0)
				{
					globleVariables.g_GlobSetting_struc.g_ReadDataCount = 131072u;
				}
				globleVariables.g_GlobSetting_struc.g_dataNumPerPixar = num;
				this.m_MystreamHead.dataNumPerPixar = num;
				this.m_MystreamHead.dataNumOneShot = globleVariables.g_GlobSetting_struc.g_ReadDataCount;
				this.m_MystreamHead.channelMask = globleVariables.g_ChannelMask;
				this.m_MystreamHead.KnobSelect = (byte)globleVariables.g_knobSelect;
				this.ljtStorage1.SetParameters(this.m_MystreamHead);
				MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
				if (globleVariables.g_knobSelect == 7u)
				{
					MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount - 16384u);
				}
				else
				{
					MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
				}
			}
			this.UpdateProperties();
			this.GraphView.UpdateEpitome(0.0);
			this.LogicView.UpdateEpitome(0.0);
		}

		private void TrigChan1_Click(object sender, EventArgs e)
		{
		}

		private void TrigChan2_Click(object sender, EventArgs e)
		{
		}

		private void auto_Click(object sender, EventArgs e)
		{
		}

		private void scale_Click(object sender, EventArgs e)
		{
		}

		private void button5_Click(object sender, EventArgs e)
		{
		}

		private void sin_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_shape != 0)
			{
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTransSimple(96);
				}
				globleVariables.g_shape = 0;
				this.sin.BackgroundImage = Resources.sin3;
				this.tri.BackgroundImage = Resources.tri;
				this.squ.BackgroundImage = Resources.squ11;
			}
		}

		private void tri_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_shape != 1)
			{
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTransSimple(97);
				}
				globleVariables.g_shape = 1;
				this.sin.BackgroundImage = Resources.sin2;
				this.tri.BackgroundImage = Resources.tri21;
				this.squ.BackgroundImage = Resources.squ11;
			}
		}

		private void squ_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_shape != 2)
			{
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTransSimple(98);
				}
				globleVariables.g_shape = 2;
				this.sin.BackgroundImage = Resources.sin2;
				this.tri.BackgroundImage = Resources.tri;
				this.squ.BackgroundImage = Resources.squ2;
			}
		}

		private void numclr_Click(object sender, EventArgs e)
		{
			this.m_FreOut = 0uL;
			this.freqOutText.Text = this.m_FreOut.ToString();
			this.m_FreOutPWM = 0uL;
			this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
		}

		private void num1_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 1uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 1uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 1uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 1uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num2_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 2uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 2uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 2uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 2uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		public void Mbox(string s1, string s2)
		{
			MessageBox.Show(s1, s2);
		}

		private void num3_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 3uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 3uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 3uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 3uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num4_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 4uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 4uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 4uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 4uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num9_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 9uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 9uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 9uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 9uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num5_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 5uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 5uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 5uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 5uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num6_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 6uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 6uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 6uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 6uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num7_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 7uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 7uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 7uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 7uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num8_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 8uL;
				}
				else
				{
					this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 8uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 8uL;
				}
				else
				{
					this.m_FreOut = this.m_FreOut * 10uL + 8uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void num0_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 0uL;
				}
				else
				{
					this.m_FreOutPWM *= 10uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 0uL;
				}
				else
				{
					this.m_FreOut *= 10uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void hundred_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 100uL;
				}
				else
				{
					this.m_FreOutPWM *= 100uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 100uL;
				}
				else
				{
					this.m_FreOut *= 100uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void K_Click(object sender, EventArgs e)
		{
			if (this.m_SignalOutFlg == 1)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOutPWM = 1000uL;
				}
				else
				{
					this.m_FreOutPWM *= 1000uL;
				}
				if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
				{
					this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
				}
				this.textBoxFreqPWM.Text = this.m_FreOutPWM.ToString();
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
				{
					globleVariables.g_DDSstate[0] = -1;
					this.m_FreOut = 1000uL;
				}
				else
				{
					this.m_FreOut *= 1000uL;
				}
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void M_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
			{
				globleVariables.g_DDSstate[0] = -1;
				this.m_FreOut = 1000000uL;
			}
			else
			{
				this.m_FreOut *= 1000000uL;
			}
			if (this.m_SignalOutFlg == 1)
			{
				return;
			}
			if (this.m_SignalOutFlg == 2)
			{
				if (this.m_FreOut > globleVariables.g_FreUpperLimit)
				{
					this.m_FreOut = globleVariables.g_FreUpperLimit;
				}
				this.freqOutText.Text = this.m_FreOut.ToString();
			}
		}

		private void PWM_caculation(double DutyPWM, ulong FreOutPWM)
		{
			FreOutPWM += 1uL;
			ulong num = 12000000uL / FreOutPWM;
			if (num > 65500uL)
			{
				num = 65500uL;
			}
			int num2 = 65535 - (int)((double)((int)num) * DutyPWM / 100.0);
			int num3 = 65535 - (int)((double)((int)num) * (100.0 - DutyPWM) / 100.0);
			ushort usValue = (ushort)((num2 & 65280) >> 8);
			ushort usValue2 = (ushort)(num2 & 255);
			ushort usValue3 = (ushort)((num3 & 65280) >> 8);
			ushort usValue4 = (ushort)(num3 & 255);
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(118, usValue3, 1u);
				MyDLLimport.USBCtrlTrans(119, usValue4, 1u);
				MyDLLimport.USBCtrlTrans(120, usValue, 1u);
				MyDLLimport.USBCtrlTrans(121, usValue2, 1u);
			}
		}

		private void Offset_caculation(double DutyPWM, ulong FreOutPWM)
		{
			FreOutPWM += 1uL;
			ulong num = 12000000uL / FreOutPWM;
			if (num > 65500uL)
			{
				num = 65500uL;
			}
			int num2 = 65535 - (int)((double)((int)num) * DutyPWM / 100.0);
			int num3 = 65535 - (int)((double)((int)num) * (100.0 - DutyPWM) / 100.0);
			ushort usValue = (ushort)((num2 & 65280) >> 8);
			ushort usValue2 = (ushort)(num2 & 255);
			ushort usValue3 = (ushort)((num3 & 65280) >> 8);
			ushort usValue4 = (ushort)(num3 & 255);
			lock (globleVariables.g_lockIO)
			{
				MyDLLimport.USBCtrlTrans(122, usValue3, 1u);
				MyDLLimport.USBCtrlTrans(123, usValue4, 1u);
				MyDLLimport.USBCtrlTrans(124, usValue, 1u);
				MyDLLimport.USBCtrlTrans(125, usValue2, 1u);
			}
		}

		private void numOn_Click(object sender, EventArgs e)
		{
			this.ScanFreq.Enabled = false;
			if (this.m_FreOut == 831220uL)
			{
				this.panelAdjust.Visible = true;
				return;
			}
			if (globleVariables.g_DeviceOpenResult == -1 && globleVariables.g_DeviceOpenResult2 == -1)
			{
				int num = MyDLLimport.DeviceOpen();
				if (num != 0)
				{
					MessageBox.Show(DstingsRes.StringOpenFailedInfo, DstingsRes.StringOpenFailedTitle);
					return;
				}
				globleVariables.g_DeviceOpenResult2 = 0;
			}
			try
			{
				if (globleVariables.g_DDSstate[1] == -1)
				{
					if (this.m_SignalOutFlg != 0)
					{
						if (this.m_SignalOutFlg == 1)
						{
							this.PWM_caculation((double)this.m_DutyPWM, this.m_FreOutPWM);
							lock (globleVariables.g_lockIO)
							{
								MyDLLimport.USBCtrlTrans(99, 4, 1u);
								goto IL_286;
							}
						}
						if (this.m_SignalOutFlg == 2)
						{
							ulong num2 = (ulong)(this.m_FreOut * 11.18055 / 2.0);
							this.m_freqDDS[0] = (ushort)(num2 & 16383uL);
							this.m_freqDDS[2] = this.m_freqDDS[0];
							this.m_freqDDS[1] = (ushort)((num2 & 268419072uL) >> 14);
							this.m_freqDDS[3] = this.m_freqDDS[1];
							this.m_freqDDS[0] = (this.m_freqDDS[0] | 16384);
							this.m_freqDDS[1] = (this.m_freqDDS[1] | 16384);
							this.m_freqDDS[2] = (this.m_freqDDS[2] | 32768);
							this.m_freqDDS[3] = (this.m_freqDDS[3] | 32768);
							lock (globleVariables.g_lockIO)
							{
								MyDLLimport.USBCtrlTrans(112, this.m_freqDDS[0], 1u);
								MyDLLimport.USBCtrlTrans(113, this.m_freqDDS[1], 1u);
								MyDLLimport.USBCtrlTrans(114, this.m_freqDDS[2], 1u);
								MyDLLimport.USBCtrlTrans(115, this.m_freqDDS[3], 1u);
							}
							lock (globleVariables.g_lockIO)
							{
								MyDLLimport.USBCtrlTransSimple(116);
							}
							int value = this.trackVolAplitu.Value;
							this.PWM_caculation((double)value * 0.105, 10000uL);
							value = this.trackBarOffset.Value;
							if (value <= 250)
							{
								this.Offset_caculation(1.0, 10000uL);
							}
							else
							{
								this.Offset_caculation((double)value * 0.1, 10000uL);
							}
							Thread.Sleep(150);
							lock (globleVariables.g_lockIO)
							{
								MyDLLimport.USBCtrlTrans(99, 0, 1u);
							}
						}
					}
					IL_286:
					globleVariables.g_DDSstate[0] = globleVariables.g_DDSstate[1];
					globleVariables.g_DDSstate[1] = 0;
					this.numOn.BackgroundImage = Resources.DDSstop12;
					this.num0.Enabled = false;
					this.num1.Enabled = false;
					this.num2.Enabled = false;
					this.num3.Enabled = false;
					this.num4.Enabled = false;
					this.num5.Enabled = false;
					this.num6.Enabled = false;
					this.num7.Enabled = false;
					this.num8.Enabled = false;
					this.num9.Enabled = false;
					this.K.Enabled = false;
					this.numclr.Enabled = false;
					this.M.Enabled = false;
					this.hundred.Enabled = false;
					this.sin.Enabled = false;
					this.tri.Enabled = false;
					this.squ.Enabled = false;
					this.panelMormSig.Enabled = false;
					this.panelPWM.Enabled = false;
					this.radioButPWM.Enabled = false;
					this.radioButSignalNorm.Enabled = false;
				}
				else
				{
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTransSimple(117);
					}
					globleVariables.g_DDSstate[0] = globleVariables.g_DDSstate[1];
					globleVariables.g_DDSstate[1] = -1;
					this.numOn.BackgroundImage = Resources.DDSstart112;
					this.num0.Enabled = true;
					this.num1.Enabled = true;
					this.num2.Enabled = true;
					this.num3.Enabled = true;
					this.num4.Enabled = true;
					this.num5.Enabled = true;
					this.num6.Enabled = true;
					this.num7.Enabled = true;
					this.num8.Enabled = true;
					this.num9.Enabled = true;
					this.K.Enabled = true;
					this.numclr.Enabled = true;
					this.M.Enabled = true;
					this.hundred.Enabled = true;
					this.sin.Enabled = true;
					this.tri.Enabled = true;
					this.squ.Enabled = true;
					this.radioButPWM.Enabled = true;
					this.radioButSignalNorm.Enabled = true;
					if (this.radioButPWM.Checked)
					{
						this.panelPWM.Enabled = true;
					}
					if (this.radioButSignalNorm.Checked)
					{
						this.panelMormSig.Enabled = true;
					}
					ulong num3 = 12000000uL / (this.m_FreOutPWM + 1uL);
					if (num3 > 65500uL)
					{
						num3 = 65500uL;
					}
					int num4 = 65535 - (int)num3 / 4;
					int num5 = 65535 - (int)num3 / 4;
					ushort usValue = (ushort)((num4 & 65280) >> 8);
					ushort usValue2 = (ushort)(num4 & 255);
					ushort usValue3 = (ushort)((num5 & 65280) >> 8);
					ushort usValue4 = (ushort)(num5 & 255);
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(118, usValue3, 1u);
						MyDLLimport.USBCtrlTrans(119, usValue4, 1u);
						MyDLLimport.USBCtrlTrans(120, usValue, 1u);
						MyDLLimport.USBCtrlTrans(121, usValue2, 1u);
					}
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(99, 4, 1u);
					}
				}
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		private void muStorageClicked(object sender, MouseEventArgs e)
		{
		}

		private void myStoreCLK(object sender, EventArgs e)
		{
		}

		private void PerformTheStorageSettings()
		{
			globleVariables.g_TotleFileReadNum = this.m_StoreedHead.frameNumber;
			globleVariables.g_ChannelMask = this.m_StoreedHead.channelMask;
			if ((globleVariables.g_ChannelMask & 16) != 0)
			{
				this.ONOFFtoolStripComboBox1.SelectedIndex = 0;
			}
			else
			{
				this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
			}
			if ((globleVariables.g_ChannelMask & 1) != 0)
			{
				this.ONOFFtoolStripComboBox0.SelectedIndex = 0;
			}
			else
			{
				this.ONOFFtoolStripComboBox0.SelectedIndex = 1;
			}
			globleVariables.g_GlobSetting_struc.g_dataNumPerPixar = this.m_StoreedHead.dataNumPerPixar;
			uint knobSelect = (uint)this.m_StoreedHead.KnobSelect;
			byte knobSelectComboIdx = this.m_StoreedHead.KnobSelectComboIdx;
			if (knobSelect == 8u)
			{
				this.comboTimeBase.SelectedIndex = (int)knobSelectComboIdx;
			}
			if (knobSelect == 9u)
			{
				this.comboBoxNS.SelectedIndex = (int)knobSelectComboIdx;
			}
			this.TimeKnob.setKnobSelect(knobSelect);
			this.TimeKnob_MYSelectChangedevent2(knobSelect);
			this.m_ch1CoupleFlg = this.m_StoreedHead.ch1CoupleFlg;
			this.m_ch2CoupleFlg = this.m_StoreedHead.ch2CoupleFlg;
			globleVariables.g_VbiasZero01v = this.m_StoreedHead.VbiasZero01v;
			globleVariables.g_VbiasZero11v = this.m_StoreedHead.VbiasZero11v;
			globleVariables.g_VbiasZero0500mv = this.m_StoreedHead.VbiasZero0500mv;
			globleVariables.g_VbiasZero1500mv = this.m_StoreedHead.VbiasZero1500mv;
			globleVariables.g_VbiasZero0100mv = this.m_StoreedHead.VbiasZero0100mv;
			globleVariables.g_VbiasZero1100mv = this.m_StoreedHead.VbiasZero1100mv;
			globleVariables.g_VbiasZero050mv = this.m_StoreedHead.VbiasZero050mv;
			globleVariables.g_VbiasZero150mv = this.m_StoreedHead.VbiasZero150mv;
			globleVariables.g_VbiasScale_1V_ch0 = this.m_StoreedHead.Vscale_1v_ch0;
			globleVariables.g_VbiasScale_1V_ch1 = this.m_StoreedHead.Vscale_1v_ch1;
			globleVariables.g_VbiasScale_500mV_ch0 = this.m_StoreedHead.Vscale_500mv_ch0;
			globleVariables.g_VbiasScale_500mV_ch1 = this.m_StoreedHead.Vscale_500mv_ch1;
			globleVariables.g_VbiasScale_200mV_ch0 = this.m_StoreedHead.Vscale_200mv_ch0;
			globleVariables.g_VbiasScale_200mV_ch1 = this.m_StoreedHead.Vscale_200mv_ch1;
			globleVariables.g_VbiasScale_100mV_ch0 = this.m_StoreedHead.Vscale_100mv_ch0;
			globleVariables.g_VbiasScale_100mV_ch1 = this.m_StoreedHead.Vscale_100mv_ch1;
			globleVariables.g_VbiasScale_50mV_ch0 = this.m_StoreedHead.Vscale_50mv_ch0;
			globleVariables.g_VbiasScale_50mV_ch1 = this.m_StoreedHead.Vscale_50mv_ch1;
			this.Ch1VoltageKnob.setKnobSelect((uint)this.m_StoreedHead.KnobVoltageSelect);
			this.VoltageKnoB11_MYSelectChangedevent2((uint)this.m_StoreedHead.KnobVoltageSelect);
			this.KnoBVolCH2.setKnobSelect((uint)this.m_StoreedHead.KnobVoltageSelect2);
			this.KnoBVolCH2_MYSelectChangedevent((uint)this.m_StoreedHead.KnobVoltageSelect2);
			if (this.m_ch1CoupleFlg == 1)
			{
				this.ACDCtoolStripComboBox0.SelectedIndex = 1;
			}
			else if (this.m_ch1CoupleFlg == 2)
			{
				this.ACDCtoolStripComboBox0.SelectedIndex = 0;
			}
			if (this.m_ch2CoupleFlg == 1)
			{
				this.ACDCtoolStripComboBox1.SelectedIndex = 1;
				return;
			}
			if (this.m_ch2CoupleFlg == 2)
			{
				this.ACDCtoolStripComboBox1.SelectedIndex = 0;
			}
		}

		private void ljtStorage1_MYSelectChangedevent(uint i)
		{
			globleVariables.g_storageState = this.ljtStorage1.GetState();
			if (i == 0u)
			{
				this.butStorageStop.Enabled = false;
				globleVariables.g_StoreframeCnt = this.ljtStorage1.GetFrameCnt();
				this.SetButtonsEnable(false);
				this.GraphView.SetInformationType("recording");
				return;
			}
			if (i == 1u)
			{
				this.butStorageStop.Enabled = true;
				this.ljtStorage1.SetIconBlink(0u);
				this.GraphView.setBkGraphColor(Color.FromArgb(255, 72, 45, 30));
				this.m_MystreamHead = this.ljtStorage1.GetParameters();
				this.m_StoreedHead = this.m_MystreamHead;
				this.PerformTheStorageSettings();
				this.ljtStorage1.SetParameters(this.m_MystreamHead);
				this.SetButtonsEnable(false);
				this.GraphView.SetInformationType("Reviewing");
				this.activeTimer.Enabled = true;
				return;
			}
			if (i == 100u)
			{
				this.activeTimer.Enabled = false;
				this.tBlinkStoreIcon.Enabled = false;
				this.GraphView.SetInformationState("Paused");
				this.m_StrCurrentState = "Paused";
				this.GraphView.SetCH1Blink(true);
				this.GraphView.SetCH2Blink(true);
				return;
			}
			if (i == 200u)
			{
				this.PerformTheStorageSettings();
				this.startbut.Enabled = false;
				this.activeTimer.Enabled = true;
				this.tBlinkStoreIcon.Enabled = true;
				this.GraphView.SetInformationState("Playing");
				this.m_StrCurrentState = "Playing";
				this.GraphView.setBkGraphColor(Color.FromArgb(255, 72, 45, 30));
				return;
			}
			if (i > 500u)
			{
				globleVariables.g_CurrentFileReadNum = i - 500u;
				this.BlinkStoreIconHandler(null, null);
			}
		}

		private void AddEventKeyUp(Control control)
		{
			if (control != null)
			{
				control.KeyUp += new KeyEventHandler(this.control_KeyUp);
				foreach (Control control2 in control.Controls)
				{
					this.AddEventKeyUp(control2);
				}
			}
		}

		private void control_KeyUp(object sender, KeyEventArgs e)
		{
		}

		private void buttonFFT_Click(object sender, EventArgs e)
		{
		}

		private void Store_Click(object sender, EventArgs e)
		{
			if (!this.ljtStorage1.Visible)
			{
				this.ljtStorage1.Visible = true;
				this.butStorageStop.Visible = true;
				return;
			}
			this.ljtStorage1.Visible = false;
			this.butStorageStop.Visible = false;
		}

		private void KnoBVolCH2_MYSelectChangedevent(uint i)
		{
			this.GraphView.SetZoomDisabled();
			globleVariables.g_knobVolatageSelect2 = i;
			globleVariables.g_RangeY2 = 1.0;
			switch (i)
			{
			case 0u:
				globleVariables.g_fftFreqAltitude2 = 12.0;
				for (int j = 0; j < 10; j++)
				{
					this.m_vchacked2[j].Checked = false;
				}
				this.m_vchacked2[0].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				globleVariables.g_RangeY2 = 0.5;
				this.GraphView.SetSelectMeasureY2((double)(2 * this.m_ch2ProbeX));
				this.GraphView.SetAxisY1((float)(10 * this.m_ch2ProbeX), 2f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
				globleVariables.g_scale2 = 10.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
				break;
			case 1u:
				globleVariables.g_fftFreqAltitude2 = 12.0;
				for (int k = 0; k < 10; k++)
				{
					this.m_vchacked2[k].Checked = false;
				}
				this.m_vchacked2[1].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY2((double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1((float)(5 * this.m_ch2ProbeX), 1f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
				globleVariables.g_scale2 = 10.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
				break;
			case 2u:
				globleVariables.g_fftFreqAltitude2 = 4.4444444444444446;
				for (int l = 0; l < 10; l++)
				{
					this.m_vchacked2[l].Checked = false;
				}
				this.m_vchacked2[2].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				globleVariables.g_CtrlByte1 |= 2;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY2(0.5 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1(2.5f * (float)this.m_ch2ProbeX, 0.5f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_500mV_ch1;
				globleVariables.g_scale2 = 5.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1500mv;
				break;
			case 3u:
				globleVariables.g_fftFreqAltitude2 = 2.6;
				for (int m = 0; m < 10; m++)
				{
					this.m_vchacked2[m].Checked = false;
				}
				this.m_vchacked2[3].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 64, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY2(0.2 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1((float)this.m_ch2ProbeX, 0.2f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_200mV_ch1;
				globleVariables.g_scale2 = 2.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
				break;
			case 4u:
				globleVariables.g_fftFreqAltitude2 = 0.92;
				for (int n = 0; n < 10; n++)
				{
					this.m_vchacked2[n].Checked = false;
				}
				this.m_vchacked2[4].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				globleVariables.g_CtrlByte1 |= 2;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 64, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY2(0.1 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1(0.5f * (float)this.m_ch2ProbeX, 0.1f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_100mV_ch1;
				globleVariables.g_scale2 = 1.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1100mv;
				break;
			case 5u:
				globleVariables.g_fftFreqAltitude2 = 0.48;
				for (int num = 0; num < 10; num++)
				{
					this.m_vchacked2[num].Checked = false;
				}
				this.m_vchacked2[5].Checked = true;
				globleVariables.g_CtrlByte1 &= 249;
				globleVariables.g_CtrlByte1 |= 4;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 64, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetAxisY1(0.25f * (float)this.m_ch2ProbeX, 0.05f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				this.GraphView.SetSelectMeasureY2(0.05 * (double)this.m_ch2ProbeX);
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_50mV_ch1;
				globleVariables.g_scale2 = 0.5;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero150mv;
				break;
			case 9u:
				globleVariables.g_fftFreqAltitude2 = 12.0;
				for (int num2 = 0; num2 < 10; num2++)
				{
					this.m_vchacked2[num2].Checked = false;
				}
				this.m_vchacked2[9].Checked = true;
				globleVariables.g_RangeY2 = 0.2;
				this.GraphView.SetAxisY1((float)(25 * this.m_ch2ProbeX), 5f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				globleVariables.g_CtrlByte1 &= 249;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(35, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY2((double)(5 * this.m_ch2ProbeX));
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
				globleVariables.g_scale2 = 10.0;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
				break;
			}
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
			this.m_MystreamHead.KnobVoltageSelect2 = (byte)globleVariables.g_knobVolatageSelect2;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			double chann1Rate = globleVariables.g_scale2 * globleVariables.g_CurrentScale_ch1 / 255.0;
			this.GraphView.Chan1Offset = (double)globleVariables.g_VbiasZero1;
			this.GraphView.Chann1Rate = chann1Rate;
		}

		private void VoltageKnoB11_MYSelectChangedevent2(uint i)
		{
			this.GraphView.SetZoomDisabled();
			globleVariables.g_knobVolatageSelect = i;
			globleVariables.g_RangeY = 1.0;
			switch (i)
			{
			case 0u:
				globleVariables.g_fftFreqAltitude = 12.0;
				for (int j = 0; j < 10; j++)
				{
					this.m_vchacked[j].Checked = false;
				}
				this.m_vchacked[0].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				globleVariables.g_CtrlByte1 |= 8;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				globleVariables.g_RangeY = 0.5;
				this.GraphView.SetSelectMeasureY((double)(2 * this.m_ch1ProbeX));
				this.GraphView.SetAxisY0((float)(10 * this.m_ch1ProbeX), 2f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
				globleVariables.g_scale = 10.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
				break;
			case 1u:
				globleVariables.g_fftFreqAltitude = 12.0;
				for (int k = 0; k < 10; k++)
				{
					this.m_vchacked[k].Checked = false;
				}
				this.m_vchacked[1].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				globleVariables.g_CtrlByte1 |= 8;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY((double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0((float)(5 * this.m_ch1ProbeX), 1f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
				globleVariables.g_scale = 10.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
				break;
			case 2u:
				globleVariables.g_fftFreqAltitude = 4.4444444444444446;
				for (int l = 0; l < 10; l++)
				{
					this.m_vchacked[l].Checked = false;
				}
				this.m_vchacked[2].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				globleVariables.g_CtrlByte1 |= 8;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 2, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY(0.5 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(2.5f * (float)this.m_ch1ProbeX, 0.5f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_500mV_ch0;
				globleVariables.g_scale = 5.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0500mv;
				break;
			case 3u:
				globleVariables.g_fftFreqAltitude = 2.6;
				for (int m = 0; m < 10; m++)
				{
					this.m_vchacked[m].Checked = false;
				}
				this.m_vchacked[3].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY(0.2 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0((float)this.m_ch1ProbeX, 0.2f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_200mV_ch0;
				globleVariables.g_scale = 2.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
				break;
			case 4u:
				globleVariables.g_fftFreqAltitude = 0.92;
				for (int n = 0; n < 10; n++)
				{
					this.m_vchacked[n].Checked = false;
				}
				this.m_vchacked[4].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 2, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY(0.1 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(0.5f * (float)this.m_ch1ProbeX, 0.1f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_100mV_ch0;
				globleVariables.g_scale = 1.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0100mv;
				break;
			case 5u:
				globleVariables.g_fftFreqAltitude = 0.48;
				for (int num = 0; num < 10; num++)
				{
					this.m_vchacked[num].Checked = false;
				}
				this.m_vchacked[5].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 4, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				this.GraphView.SetSelectMeasureY(0.05 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(0.25f * (float)this.m_ch1ProbeX, 0.05f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_50mV_ch0;
				globleVariables.g_scale = 0.5;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero050mv;
				break;
			case 9u:
				globleVariables.g_fftFreqAltitude = 12.0;
				for (int num2 = 0; num2 < 10; num2++)
				{
					this.m_vchacked[num2].Checked = false;
				}
				this.m_vchacked[9].Checked = true;
				globleVariables.g_CtrlByte1 &= 247;
				globleVariables.g_CtrlByte1 |= 8;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(34, 0, 1u);
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
				globleVariables.g_RangeY = 0.2;
				this.GraphView.SetSelectMeasureY((double)(5 * this.m_ch1ProbeX));
				this.GraphView.SetAxisY0((float)(25 * this.m_ch1ProbeX), 5f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
				globleVariables.g_scale = 10.0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
				break;
			}
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
			this.m_MystreamHead.KnobVoltageSelect = (byte)globleVariables.g_knobVolatageSelect;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			double chan0Rate = globleVariables.g_scale * globleVariables.g_CurrentScale_ch0 / 255.0;
			this.GraphView.Chan0Offset = (double)globleVariables.g_VbiasZero0;
			this.GraphView.Chan0Rate = chan0Rate;
		}

		private void comboTimeBase_SelectedIndexChanged_1(object sender, EventArgs e)
		{
			if (this.comboTimeBase.SelectedIndex == 0)
			{
				globleVariables.g_comboTimeBaseSelectedIndex = 0;
				if (globleVariables.g_knobSelect == 8u)
				{
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(148, 1, 1u);
					}
					globleVariables.m_CurrentFreq = 625.0;
					this.TimeKnob_MYSelectChangedevent2(8u);
					return;
				}
			}
			else if (this.comboTimeBase.SelectedIndex < 5)
			{
				globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
				if (globleVariables.g_knobSelect == 8u)
				{
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(148, 13, 1u);
					}
					globleVariables.m_CurrentFreq = 46.0;
					this.TimeKnob_MYSelectChangedevent2(8u);
					return;
				}
			}
			else
			{
				globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
				if (globleVariables.g_knobSelect == 8u)
				{
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTrans(148, 13, 1u);
					}
					globleVariables.m_CurrentFreq = 46.0;
					this.TimeKnob_MYSelectChangedevent2(8u);
				}
			}
		}

		private void comboBoxNS_SelectedIndexChanged(object sender, EventArgs e)
		{
			globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
			if (globleVariables.g_knobSelect == 9u)
			{
				this.TimeKnob_MYSelectChangedevent2(9u);
			}
		}

		private void GraphView_GraphMenuSelectChangedevent(uint i, uint j)
		{
			globleVariables.bDrawZoomOrnot = true;
			globleVariables.g_ZoomedStart = i;
			globleVariables.g_ZoomedLength = j;
			string.Format("{0:0}", i);
		}

		private void adjust_Click(object sender, EventArgs e)
		{
			byte b = Convert.ToByte(this.textBoxCH1scale.Text);
			byte b2 = Convert.ToByte(this.textBoxCH2scale.Text);
			byte b3 = Convert.ToByte(this.textBox4.Text);
			byte b4 = Convert.ToByte(this.textX1CH0.Text);
			byte b5 = Convert.ToByte(this.textX1CH1.Text);
			globleVariables.m_ZrroUniInt = (int)(b3 - 128);
			globleVariables.g_VbiasScale_1V_ch0 = (double)((float)b * 2f / 255f);
			globleVariables.g_VbiasScale_1V_ch1 = (double)((float)b2 * 2f / 255f);
			globleVariables.g_VbiasScale_200mV_ch0 = (double)((float)b4 * 2f / 255f);
			globleVariables.g_VbiasScale_200mV_ch1 = (double)((float)b5 * 2f / 255f);
			byte b6 = Convert.ToByte(this.ch0scale500mv.Text);
			byte b7 = Convert.ToByte(this.ch1Scale500mv.Text);
			byte b8 = Convert.ToByte(this.ch0_100mv.Text);
			byte b9 = Convert.ToByte(this.ch1_100mv.Text);
			byte b10 = Convert.ToByte(this.ch0_50mv.Text);
			byte b11 = Convert.ToByte(this.ch1_50mv.Text);
			globleVariables.g_VbiasScale_500mV_ch0 = (double)((float)b6 * 2f / 255f);
			globleVariables.g_VbiasScale_100mV_ch0 = (double)((float)b8 * 2f / 255f);
			globleVariables.g_VbiasScale_50mV_ch0 = (double)((float)b10 * 2f / 255f);
			globleVariables.g_VbiasScale_500mV_ch1 = (double)((float)b7 * 2f / 255f);
			globleVariables.g_VbiasScale_100mV_ch1 = (double)((float)b9 * 2f / 255f);
			globleVariables.g_VbiasScale_50mV_ch1 = (double)((float)b11 * 2f / 255f);
			if (globleVariables.g_scale == 10.0)
			{
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
			}
			else if (globleVariables.g_scale == 5.0)
			{
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_500mV_ch0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0500mv;
			}
			else if (globleVariables.g_scale == 2.0)
			{
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_200mV_ch0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero01v;
			}
			else if (globleVariables.g_scale == 1.0)
			{
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_100mV_ch0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero0100mv;
			}
			else if (globleVariables.g_scale == 0.5)
			{
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_50mV_ch0;
				globleVariables.g_VbiasZero0 = globleVariables.g_VbiasZero050mv;
			}
			if (globleVariables.g_scale2 == 10.0)
			{
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
			}
			else if (globleVariables.g_scale2 == 5.0)
			{
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_500mV_ch1;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1500mv;
			}
			else if (globleVariables.g_scale2 == 2.0)
			{
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_200mV_ch1;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero11v;
			}
			else if (globleVariables.g_scale2 == 1.0)
			{
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_100mV_ch1;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero1100mv;
			}
			else if (globleVariables.g_scale2 == 0.5)
			{
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_50mV_ch1;
				globleVariables.g_VbiasZero1 = globleVariables.g_VbiasZero150mv;
			}
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
			this.richTDefine.Visible = true;
			this.richTDefine.Text = " #define  CHAN0_ZERO " + globleVariables.g_VbiasZero01v.ToString();
			RichTextBox expr_3AF = this.richTDefine;
			expr_3AF.Text = expr_3AF.Text + "\n #define CHAN1_ZERO " + globleVariables.g_VbiasZero11v.ToString();
			RichTextBox expr_3D4 = this.richTDefine;
			expr_3D4.Text = expr_3D4.Text + "\n #define CHAN0_ZERO500mv " + globleVariables.g_VbiasZero0500mv.ToString();
			RichTextBox expr_3F9 = this.richTDefine;
			expr_3F9.Text = expr_3F9.Text + "\n #define CHAN1_ZERO500mv " + globleVariables.g_VbiasZero1500mv.ToString();
			RichTextBox expr_41E = this.richTDefine;
			expr_41E.Text = expr_41E.Text + "\n #define CHAN0_ZERO50mv " + globleVariables.g_VbiasZero050mv.ToString();
			RichTextBox expr_443 = this.richTDefine;
			expr_443.Text = expr_443.Text + "\n #define CHAN1_ZERO50mv " + globleVariables.g_VbiasZero150mv.ToString();
			RichTextBox expr_468 = this.richTDefine;
			expr_468.Text = expr_468.Text + "\n #define CHAN0_ZERO100mv " + globleVariables.g_VbiasZero0100mv.ToString();
			RichTextBox expr_48D = this.richTDefine;
			expr_48D.Text = expr_48D.Text + "\n #define CHAN1_ZERO100mv " + globleVariables.g_VbiasZero1100mv.ToString();
			RichTextBox expr_4B2 = this.richTDefine;
			expr_4B2.Text = expr_4B2.Text + "\n #define CHAN0_1V " + b.ToString();
			RichTextBox expr_4D4 = this.richTDefine;
			expr_4D4.Text = expr_4D4.Text + "\n #define CHAN1_1V " + b2.ToString();
			RichTextBox expr_4F6 = this.richTDefine;
			expr_4F6.Text = expr_4F6.Text + "\n #define CHAN0_500MV " + b6.ToString();
			RichTextBox expr_518 = this.richTDefine;
			expr_518.Text = expr_518.Text + "\n #define CHAN1_500MV " + b7.ToString();
			RichTextBox expr_53A = this.richTDefine;
			expr_53A.Text = expr_53A.Text + "\n #define CHAN0_200MV " + b4.ToString();
			RichTextBox expr_55C = this.richTDefine;
			expr_55C.Text = expr_55C.Text + "\n #define CHAN1_200MV " + b5.ToString();
			RichTextBox expr_57E = this.richTDefine;
			expr_57E.Text = expr_57E.Text + "\n #define CHAN0_100MV " + b8.ToString();
			RichTextBox expr_5A0 = this.richTDefine;
			expr_5A0.Text = expr_5A0.Text + "\n #define CHAN1_100MV " + b9.ToString();
			RichTextBox expr_5C2 = this.richTDefine;
			expr_5C2.Text = expr_5C2.Text + "\n #define CHAN0_50MV " + b10.ToString();
			RichTextBox expr_5E4 = this.richTDefine;
			expr_5E4.Text = expr_5E4.Text + "\n #define CHAN1_50MV " + b11.ToString();
		}

		private void Form1_Resize(object sender, EventArgs e)
		{
			if (this.extTriggerToolStripMenuItem.Checked && this.splitContainer3.SplitterDistance > 150 && this.splitContainer3.SplitterDistance < this.splitContainer3.Width)
			{
				this.splitContainer3.SplitterDistance = this.splitContainer3.Width - 50;
			}
		}

		private void button1_Click(object sender, EventArgs e)
		{
			MyDLLimport.USBCtrlTrans(34, 0, 1u);
		}

		private void Form1_SizeChanged(object sender, EventArgs e)
		{
		}

		private void notifyIcon1_Click(object sender, EventArgs e)
		{
			base.Visible = true;
			base.WindowState = FormWindowState.Maximized;
		}

		private void butZero_Click(object sender, EventArgs e)
		{
			this.activeTimer.Enabled = false;
			Thread.Sleep(600);
			this.m_TimerIndex4Zero = 0u;
			this.activeTimer.Enabled = true;
			this.KnoBVolCH2.setKnobSelect(1u);
			this.VoltageKnoB11_MYSelectChangedevent2(1u);
			this.Ch1VoltageKnob.setKnobSelect(1u);
			this.KnoBVolCH2_MYSelectChangedevent(1u);
		}

		private void radioButton1_CheckedChanged(object sender, EventArgs e)
		{
			if (this.radioButSignalNorm.Checked)
			{
				this.panelMormSig.Enabled = true;
			}
			else
			{
				this.panelMormSig.Enabled = false;
			}
			this.m_SignalOutFlg = 2;
		}

		private void radioButPWM_CheckedChanged(object sender, EventArgs e)
		{
			if (this.radioButPWM.Checked)
			{
				this.panelPWM.Enabled = true;
			}
			else
			{
				this.panelPWM.Enabled = false;
			}
			this.m_SignalOutFlg = 1;
		}

		private void radioButtonGnd_CheckedChanged(object sender, EventArgs e)
		{
			this.m_SignalOutFlg = 0;
			this.m_FreOut = 0uL;
			this.textBoxFreqPWM.Text = this.m_FreOut.ToString();
			this.freqOutText.Text = this.m_FreOut.ToString();
		}

		private void trackBar1_ValueChanged(object sender, EventArgs e)
		{
			this.m_DutyPWM = (this.trackBarPWMduty.Value + 1) * 10;
			this.labelPWMduty.Text = " Duty: " + this.m_DutyPWM.ToString() + "%";
		}

		private void butHiden_Click(object sender, EventArgs e)
		{
			this.panelAdjust.Visible = false;
		}

		private void butScale_Click(object sender, EventArgs e)
		{
			double data = MyDLLimport.GetData(8);
			double data2 = MyDLLimport.GetData(3);
			if (globleVariables.g_scale == 10.0)
			{
				globleVariables.g_VbiasScale_1V_ch0 = 1020.0 / data / globleVariables.g_scale;
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_1V_ch0;
				byte b = (byte)(globleVariables.g_CurrentScale_ch0 * 255.0 / 2.0);
				this.textBoxCH1scale.Text = b.ToString();
			}
			else if (globleVariables.g_scale == 5.0)
			{
				globleVariables.g_VbiasScale_500mV_ch0 = 1020.0 / data / globleVariables.g_scale;
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_500mV_ch0;
				byte b = (byte)(globleVariables.g_CurrentScale_ch0 * 255.0 / 2.0);
				this.ch0scale500mv.Text = b.ToString();
			}
			else if (globleVariables.g_scale == 2.0)
			{
				globleVariables.g_VbiasScale_200mV_ch0 = 255.0 / data / globleVariables.g_scale;
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_200mV_ch0;
				byte b = (byte)(globleVariables.g_CurrentScale_ch0 * 255.0 / 2.0);
				this.textX1CH0.Text = b.ToString();
			}
			else if (globleVariables.g_scale == 1.0)
			{
				globleVariables.g_VbiasScale_100mV_ch0 = 102.0 / data / globleVariables.g_scale;
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_100mV_ch0;
				byte b = (byte)(globleVariables.g_CurrentScale_ch0 * 255.0 / 2.0);
				this.ch0_100mv.Text = b.ToString();
			}
			else if (globleVariables.g_scale == 0.5)
			{
				globleVariables.g_VbiasScale_50mV_ch0 = 102.0 / data / globleVariables.g_scale;
				globleVariables.g_CurrentScale_ch0 = globleVariables.g_VbiasScale_50mV_ch0;
				byte b = (byte)(globleVariables.g_CurrentScale_ch0 * 255.0 / 2.0);
				this.ch0_50mv.Text = b.ToString();
			}
			if (globleVariables.g_scale2 == 10.0)
			{
				globleVariables.g_VbiasScale_1V_ch1 = 1020.0 / data2 / globleVariables.g_scale2;
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_1V_ch1;
				byte b = (byte)(globleVariables.g_CurrentScale_ch1 * 255.0 / 2.0);
				this.textBoxCH2scale.Text = b.ToString();
			}
			else if (globleVariables.g_scale2 == 5.0)
			{
				globleVariables.g_VbiasScale_500mV_ch1 = 1020.0 / data2 / globleVariables.g_scale2;
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_500mV_ch1;
				byte b = (byte)(globleVariables.g_CurrentScale_ch1 * 255.0 / 2.0);
				this.ch1Scale500mv.Text = b.ToString();
			}
			else if (globleVariables.g_scale2 == 2.0)
			{
				globleVariables.g_VbiasScale_200mV_ch1 = 255.0 / data2 / globleVariables.g_scale2;
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_200mV_ch1;
				byte b = (byte)(globleVariables.g_CurrentScale_ch1 * 255.0 / 2.0);
				this.textX1CH1.Text = b.ToString();
			}
			else if (globleVariables.g_scale2 == 1.0)
			{
				globleVariables.g_VbiasScale_100mV_ch1 = 102.0 / data2 / globleVariables.g_scale2;
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_100mV_ch1;
				byte b = (byte)(globleVariables.g_CurrentScale_ch1 * 255.0 / 2.0);
				this.ch1_100mv.Text = b.ToString();
			}
			else if (globleVariables.g_scale2 == 0.5)
			{
				globleVariables.g_VbiasScale_50mV_ch1 = 102.0 / data2 / globleVariables.g_scale2;
				globleVariables.g_CurrentScale_ch1 = globleVariables.g_VbiasScale_50mV_ch1;
				byte b = (byte)(globleVariables.g_CurrentScale_ch1 * 255.0 / 2.0);
				this.ch1_50mv.Text = b.ToString();
			}
			this.GraphView.SetZero(globleVariables.g_VbiasZero0, globleVariables.g_VbiasZero1);
			this.GraphView.SetRangeY(globleVariables.g_RangeY * globleVariables.g_CurrentScale_ch0, globleVariables.g_RangeY2 * globleVariables.g_CurrentScale_ch1);
		}

		private void tabMain_SelectedIndexChanged(object sender, EventArgs e)
		{
			switch (this.tabMain.SelectedIndex)
			{
			case 0:
				globleVariables.g_FuncIndex = 0;
				if (this.tabMain.Controls.Contains(this.LogicAlsPG))
				{
					globleVariables.g_FuncIndex = 2;
					return;
				}
				break;
			case 1:
				if (this.tabMain.Controls.Contains(this.SignalPg))
				{
					globleVariables.g_FuncIndex = 1;
				}
				break;
			case 2:
				break;
			default:
				return;
			}
		}

		private void comboFunctionSel_SelectedIndexChanged(object sender, EventArgs e)
		{
		}

		private void toolStripButton1_Click(object sender, EventArgs e)
		{
		}

		private void ACDCtoolStripComboBox_Click(object sender, EventArgs e)
		{
		}

		private void ONOFFtoolStripComboBox0_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.propertyGrid1.SelectedObject = this.propertySet;
			if (this.ONOFFtoolStripComboBox0.SelectedIndex == 1)
			{
				this.propertySet.m_Ch1 = true;
				this.propertySet.Ch1 = false;
				globleVariables.g_ChannelMask &= 254;
				globleVariables.g_MathFlag = 0;
				this.GraphView.SetMath(globleVariables.g_MathFlag);
			}
			else
			{
				this.propertySet.m_Ch1 = false;
				this.propertySet.Ch1 = true;
				globleVariables.g_ChannelMask |= 1;
			}
			this.m_MystreamHead.channelMask = globleVariables.g_ChannelMask;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			if (globleVariables.g_knobSelect == 7u)
			{
				MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount - 16384u);
			}
			else
			{
				MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
			}
			this.UpdateProperties();
		}

		private void ONOFFtoolStripComboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.propertyGrid1.SelectedObject = this.propertySet;
			if (this.ONOFFtoolStripComboBox1.SelectedIndex == 1)
			{
				this.propertySet.m_Ch2 = true;
				this.propertySet.Ch2 = false;
				globleVariables.g_ChannelMask &= 239;
				globleVariables.g_MathFlag = 0;
				this.GraphView.SetMath(globleVariables.g_MathFlag);
			}
			else
			{
				this.propertySet.m_Ch2 = false;
				this.propertySet.Ch2 = true;
				if ((globleVariables.g_ChannelMask & 128) != 0)
				{
					this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
					return;
				}
				globleVariables.g_ChannelMask |= 16;
			}
			this.m_MystreamHead.channelMask = globleVariables.g_ChannelMask;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			if (globleVariables.g_knobSelect == 7u)
			{
				MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount - 16384u);
			}
			else
			{
				MyDLLimport.SetInfo(globleVariables.g_GlobSetting_struc.g_dataNumPerPixar, globleVariables.m_CurrentFreq, globleVariables.g_ChannelMask, globleVariables.m_ZrroUniInt, globleVariables.g_pBufferIndex, globleVariables.g_GlobSetting_struc.g_ReadDataCount);
			}
			this.UpdateProperties();
		}

		private void ACDCtoolStripComboBox0_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.ACDCtoolStripComboBox0.SelectedIndex == 0)
			{
				this.m_ch1CoupleFlg = 2;
				globleVariables.g_CtrlByte0 &= 239;
				globleVariables.g_CtrlByte0 |= 16;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
					goto IL_A5;
				}
			}
			if (this.ACDCtoolStripComboBox0.SelectedIndex == 1)
			{
				this.m_ch1CoupleFlg = 1;
				globleVariables.g_CtrlByte0 &= 239;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
				}
			}
			IL_A5:
			this.m_MystreamHead.ch1CoupleFlg = this.m_ch1CoupleFlg;
		}

		private void ACDCtoolStripComboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.ACDCtoolStripComboBox1.SelectedIndex == 0)
			{
				this.m_ch2CoupleFlg = 2;
				globleVariables.g_CtrlByte1 &= 239;
				globleVariables.g_CtrlByte1 |= 16;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
					goto IL_AA;
				}
			}
			if (this.ACDCtoolStripComboBox1.SelectedIndex == 1)
			{
				this.m_ch2CoupleFlg = 1;
				globleVariables.g_CtrlByte1 &= 239;
				globleVariables.g_CtrlByte1 = globleVariables.g_CtrlByte1;
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
				}
			}
			IL_AA:
			this.m_MystreamHead.ch2CoupleFlg = this.m_ch2CoupleFlg;
			this.UpdateProperties();
		}

		private void TrigUPButton_Click(object sender, EventArgs e)
		{
			this.TrigUPButton.BackColor = Color.Bisque;
			this.TrigDNButton.BackColor = Color.AliceBlue;
			globleVariables.g_TrigEdgeFlag = 1;
			this.m_MystreamHead.TrigEdge = globleVariables.g_TrigEdgeFlag;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
			this.Offset_caculation(5.0, 10000uL);
		}

		private void TrigDNButton_Click(object sender, EventArgs e)
		{
			this.TrigUPButton.BackColor = Color.AliceBlue;
			this.TrigDNButton.BackColor = Color.Bisque;
			globleVariables.g_TrigEdgeFlag = 2;
			this.m_MystreamHead.TrigEdge = globleVariables.g_TrigEdgeFlag;
			this.ljtStorage1.SetParameters(this.m_MystreamHead);
			MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
			this.Offset_caculation(95.0, 10000uL);
		}

		private void TRIGCHtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.TRIGCHtoolStripComboBox.SelectedIndex == 0)
			{
				globleVariables.g_TrigSourceChan = 0;
				if (globleVariables.g_TrigMode != 0)
				{
					this.GraphView.SetDrawTrigLevelOrNot(true);
					this.GraphView.SetDrawTrigLevel1rNot(false);
				}
				MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(231, 0, 1u);
				}
				this.toolStripButTstart.Visible = false;
				this.TrigMODEtoolStripComboBox.Visible = true;
				return;
			}
			if (this.TRIGCHtoolStripComboBox.SelectedIndex == 1)
			{
				globleVariables.g_TrigSourceChan = 1;
				if (globleVariables.g_TrigMode != 0)
				{
					this.GraphView.SetDrawTrigLevel1rNot(true);
					this.GraphView.SetDrawTrigLevelOrNot(false);
				}
				MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(231, 0, 1u);
				}
				this.toolStripButTstart.Visible = false;
				this.TrigMODEtoolStripComboBox.Visible = true;
				return;
			}
			if (this.TRIGCHtoolStripComboBox.SelectedIndex == 2)
			{
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(231, 1, 1u);
				}
				this.toolStripButTstart.Visible = true;
				globleVariables.g_TrigSourceChan = 2;
				this.TrigMODEtoolStripComboBox.SelectedIndex = 0;
				this.TrigMODEtoolStripComboBox.Visible = false;
				this.splitContainer3.SplitterDistance = this.splitContainer3.Width - 50;
				this.extTriggerToolStripMenuItem.Checked = true;
			}
		}

		private void TrigMODEtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.TrigMODEtoolStripComboBox.SelectedIndex == 0)
			{
				globleVariables.g_TrigMode = 0;
				this.GraphView.SetDrawTrigLevel1rNot(false);
				this.GraphView.SetDrawTrigLevelOrNot(false);
				this.m_MystreamHead.TrigeMode = globleVariables.g_TrigMode;
				this.ljtStorage1.SetParameters(this.m_MystreamHead);
				MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
			}
			else if (this.TrigMODEtoolStripComboBox.SelectedIndex == 1)
			{
				globleVariables.g_TrigMode = 1;
				if (globleVariables.g_TrigSourceChan == 0)
				{
					this.GraphView.SetDrawTrigLevelOrNot(true);
				}
				else if (globleVariables.g_TrigSourceChan == 1)
				{
					this.GraphView.SetDrawTrigLevel1rNot(true);
				}
				MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
			}
			else if (this.TrigMODEtoolStripComboBox.SelectedIndex == 2)
			{
				globleVariables.g_TrigMode = 2;
				if (globleVariables.g_TrigSourceChan == 0)
				{
					this.GraphView.SetDrawTrigLevelOrNot(true);
				}
				else if (globleVariables.g_TrigSourceChan == 1)
				{
					this.GraphView.SetDrawTrigLevel1rNot(true);
				}
				MyDLLimport.SetTrigInfo(globleVariables.g_TrigSourceChan, globleVariables.g_TrigMode, globleVariables.g_TrigEdgeFlag);
				MyDLLimport.SetReadEnableOrNot(1u);
			}
			this.UpdateProperties();
		}

		private void toolStripButton1_Click_1(object sender, EventArgs e)
		{
			if (globleVariables.g_DAQstate == -1)
			{
				return;
			}
			if (this.m_AutoResFre != 0.0)
			{
				if (this.m_AutoResFre > 150.0 && this.m_AutoResFre < 350.0)
				{
					this.TimeKnob.setKnobSelect(3u);
					this.TimeKnob_MYSelectChangedevent2(3u);
				}
				this.m_curAutoLev = 0;
				this.m_AutoResFre = 0.0;
				if (this.m_AutoResMax < 0.9)
				{
					this.Ch1VoltageKnob.setKnobSelect(3u);
					this.VoltageKnoB11_MYSelectChangedevent2(3u);
				}
				return;
			}
			this.Ch1VoltageKnob.setKnobSelect(1u);
			this.VoltageKnoB11_MYSelectChangedevent2(1u);
			if ((this.m_curAutoLev & 8) == 0)
			{
				this.TimeKnob.setKnobSelect(1u);
				this.TimeKnob_MYSelectChangedevent2(1u);
				this.m_curAutoLev |= 8;
				this.autoTimer.Enabled = true;
				return;
			}
			if ((this.m_curAutoLev & 2) == 0)
			{
				this.TimeKnob.setKnobSelect(4u);
				this.TimeKnob_MYSelectChangedevent2(4u);
				this.m_curAutoLev |= 2;
				this.autoTimer.Enabled = true;
				return;
			}
			if ((this.m_curAutoLev & 1) == 0)
			{
				this.TimeKnob.setKnobSelect(7u);
				this.TimeKnob_MYSelectChangedevent2(7u);
				this.m_curAutoLev |= 1;
				this.autoTimer.Enabled = true;
				return;
			}
			if ((this.m_curAutoLev & 4) == 0)
			{
				this.TimeKnob.setKnobSelect(8u);
				this.comboTimeBase.SelectedIndex = 1;
				this.TimeKnob_MYSelectChangedevent2(8u);
				this.m_curAutoLev |= 4;
				this.autoTimer.Enabled = true;
			}
		}

		private void fFTToolStripMenuItem_Click(object sender, EventArgs e)
		{
			globleVariables.m_bDrawFFTorNot = !globleVariables.m_bDrawFFTorNot;
			if (globleVariables.m_bDrawFFTorNot)
			{
				this.fFTToolStripMenuItem.Checked = true;
				this.splitContainer1.SplitterDistance = this.splitContainer1.Height / 2;
				return;
			}
			this.fFTToolStripMenuItem.Checked = false;
			this.splitContainer1.SplitterDistance = this.statusStrip1.Top - this.splitContainer1.Top;
		}

		private void ch1ch2ToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_MathFlag == 2)
			{
				globleVariables.g_MathFlag = 0;
				this.GraphView.SetMath(globleVariables.g_MathFlag);
				this.ch1ch2ToolStripMenuItem1.Checked = false;
				return;
			}
			if ((globleVariables.g_ChannelMask & 128) != 0 || (globleVariables.g_ChannelMask & 17) != 17)
			{
				return;
			}
			this.ch1ch2ToolStripMenuItem.Checked = false;
			this.CH1XCH2ToolStripMenuItem.Checked = false;
			globleVariables.g_MathFlag = 2;
			this.ch1ch2ToolStripMenuItem1.Checked = true;
			this.GraphView.SetMath(globleVariables.g_MathFlag);
		}

		private void ch1ch2ToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_MathFlag == 1)
			{
				globleVariables.g_MathFlag = 0;
				this.GraphView.SetMath(globleVariables.g_MathFlag);
				this.ch1ch2ToolStripMenuItem.Checked = false;
				return;
			}
			if ((globleVariables.g_ChannelMask & 128) != 0 || (globleVariables.g_ChannelMask & 17) != 17)
			{
				return;
			}
			this.ch1ch2ToolStripMenuItem1.Checked = false;
			this.CH1XCH2ToolStripMenuItem.Checked = false;
			globleVariables.g_MathFlag = 1;
			this.ch1ch2ToolStripMenuItem.Checked = true;
			this.GraphView.SetMath(globleVariables.g_MathFlag);
		}

		private void FUNCtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
		{
			switch (this.FUNCtoolStripComboBox.SelectedIndex)
			{
			case 0:
				this.RecordReview.Enabled = true;
				this.m_indicate = 0;
				if (!this.tabMain.Controls.Contains(this.OsillagraphPg))
				{
					this.tabMain.Controls.Add(this.OsillagraphPg);
				}
				if (this.tabMain.Controls.Contains(this.SignalPg))
				{
					if (globleVariables.g_DDSstate[1] == 0)
					{
						this.numOn_Click(this, null);
					}
					this.tabMain.Controls.Remove(this.SignalPg);
				}
				if (this.tabMain.Controls.Contains(this.LogicAlsPG))
				{
					this.tabMain.Controls.Remove(this.LogicAlsPG);
				}
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(52, 0, 1u);
					return;
				}
				break;
			case 1:
				break;
			case 2:
				this.RecordReview.Enabled = false;
				this.m_indicate = 2;
				if (this.tabMain.Controls.Contains(this.SignalPg))
				{
					if (globleVariables.g_DDSstate[1] == 0)
					{
						this.numOn_Click(this, null);
					}
					this.tabMain.Controls.Remove(this.SignalPg);
				}
				if (!this.tabMain.Controls.Contains(this.LogicAlsPG))
				{
					this.tabMain.Controls.Add(this.LogicAlsPG);
				}
				if (this.tabMain.Controls.Contains(this.OsillagraphPg))
				{
					this.tabMain.Controls.Remove(this.OsillagraphPg);
				}
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(52, 1, 1u);
				}
				return;
			default:
				return;
			}
			this.RecordReview.Enabled = true;
			if (!this.tabMain.Controls.Contains(this.OsillagraphPg))
			{
				this.tabMain.Controls.Add(this.OsillagraphPg);
			}
			if (this.tabMain.Controls.Contains(this.LogicAlsPG))
			{
				this.tabMain.Controls.Remove(this.LogicAlsPG);
				lock (globleVariables.g_lockIO)
				{
					MyDLLimport.USBCtrlTrans(52, 0, 1u);
				}
			}
			if (!this.tabMain.Controls.Contains(this.SignalPg))
			{
				this.tabMain.Controls.Add(this.SignalPg);
				return;
			}
		}

		private void toolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.panelAdjust.Visible = true;
		}

		private void RecordToolStripButton1_Click(object sender, EventArgs e)
		{
		}

		private void GraphView_ValidMouseMoveEvt(object sender, EventArgs e)
		{
		}

		private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
		{
		}

		private void openToolStripMenuItem_Click(object sender, EventArgs e)
		{
		}

		private void toolStripProbeCH1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.toolStripProbeCH1.SelectedIndex == 0)
			{
				this.m_ch1ProbeX = 1;
			}
			else if (this.toolStripProbeCH1.SelectedIndex == 1)
			{
				this.m_ch1ProbeX = 10;
			}
			else if (this.toolStripProbeCH1.SelectedIndex == 2)
			{
				this.m_ch1ProbeX = 100;
			}
			switch (globleVariables.g_knobVolatageSelect)
			{
			case 0u:
				this.GraphView.SetSelectMeasureY((double)(2 * this.m_ch1ProbeX));
				this.GraphView.SetAxisY0((float)(10 * this.m_ch1ProbeX), 2f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 1u:
				this.GraphView.SetSelectMeasureY((double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0((float)(5 * this.m_ch1ProbeX), 1f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 2u:
				this.GraphView.SetSelectMeasureY(0.5 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(2.5f * (float)this.m_ch1ProbeX, 0.5f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 3u:
				this.GraphView.SetSelectMeasureY(0.2 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0((float)this.m_ch1ProbeX, 0.2f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 4u:
				this.GraphView.SetSelectMeasureY(0.1 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(0.5f * (float)this.m_ch1ProbeX, 0.1f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 5u:
				this.GraphView.SetSelectMeasureY(0.05 * (double)this.m_ch1ProbeX);
				this.GraphView.SetAxisY0(0.25f * (float)this.m_ch1ProbeX, 0.05f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			case 9u:
				this.GraphView.SetSelectMeasureY((double)(5 * this.m_ch1ProbeX));
				this.GraphView.SetAxisY0((float)(25 * this.m_ch1ProbeX), 5f * (float)this.m_ch1ProbeX, "CH1:V", 1);
				break;
			}
			this.UpdateProperties();
		}

		private void toolStripProbeCH2_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.toolStripProbeCH2.SelectedIndex == 0)
			{
				this.m_ch2ProbeX = 1;
			}
			else if (this.toolStripProbeCH2.SelectedIndex == 1)
			{
				this.m_ch2ProbeX = 10;
			}
			else if (this.toolStripProbeCH2.SelectedIndex == 2)
			{
				this.m_ch2ProbeX = 100;
			}
			switch (globleVariables.g_knobVolatageSelect2)
			{
			case 0u:
				this.GraphView.SetSelectMeasureY2((double)(2 * this.m_ch2ProbeX));
				this.GraphView.SetAxisY1((float)(10 * this.m_ch2ProbeX), 2f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 1u:
				this.GraphView.SetSelectMeasureY2((double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1((float)(5 * this.m_ch2ProbeX), 1f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 2u:
				this.GraphView.SetSelectMeasureY2(0.5 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1(2.5f * (float)this.m_ch2ProbeX, 0.5f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 3u:
				this.GraphView.SetSelectMeasureY2(0.2 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1((float)this.m_ch2ProbeX, 0.2f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 4u:
				this.GraphView.SetSelectMeasureY2(0.1 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1(0.5f * (float)this.m_ch2ProbeX, 0.1f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 5u:
				this.GraphView.SetSelectMeasureY2(0.05 * (double)this.m_ch2ProbeX);
				this.GraphView.SetAxisY1(0.25f * (float)this.m_ch2ProbeX, 0.05f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			case 9u:
				this.GraphView.SetSelectMeasureY2((double)(5 * this.m_ch2ProbeX));
				this.GraphView.SetAxisY1((float)(25 * this.m_ch2ProbeX), 5f * (float)this.m_ch2ProbeX, "CH2:V", 1);
				break;
			}
			this.UpdateProperties();
		}

		private void recordReviewToolStripMenuItem_Click(object sender, EventArgs e)
		{
		}

		private void saveAsTxtToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.fileSave_Click(0, globleVariables.g_DividedNum);
		}

		private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
		{
			new Formloading
			{
				FormBorderStyle = FormBorderStyle.FixedDialog,
				Text = "Info",
				WindowState = FormWindowState.Normal,
				MinimizeBox = false,
				MaximizeBox = false
			}.Show();
		}

		private void saveAsExcelToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.fileSave_Click(1, globleVariables.g_DividedNum);
		}

		private void recordReviewToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.ljtStorage1.Visible)
			{
				this.ljtStorage1.Visible = false;
				this.butStorageStop.Visible = false;
				return;
			}
			this.ljtStorage1.Visible = true;
			this.butStorageStop.Visible = true;
		}

		private void CH1XCH2ToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (globleVariables.g_MathFlag == 3)
			{
				globleVariables.g_MathFlag = 0;
				this.GraphView.SetMath(globleVariables.g_MathFlag);
				this.CH1XCH2ToolStripMenuItem.Checked = false;
				return;
			}
			if ((globleVariables.g_ChannelMask & 128) != 0 || (globleVariables.g_ChannelMask & 17) != 17)
			{
				return;
			}
			this.ch1ch2ToolStripMenuItem.Checked = false;
			this.ch1ch2ToolStripMenuItem1.Checked = false;
			this.CH1XCH2ToolStripMenuItem.Checked = true;
			globleVariables.g_MathFlag = 3;
			this.GraphView.SetMath(globleVariables.g_MathFlag);
		}

		private void butStorageStop_Click(object sender, EventArgs e)
		{
			this.tBlinkStoreIcon.Enabled = false;
			this.activeTimer.Enabled = false;
			this.ljtStorage1.SetState(100u);
			this.SetButtonsEnable(true);
			globleVariables.g_CurrentFileReadNum = 0u;
			MessageBox.Show(this, DstingsRes.StringReviewRes2, DstingsRes.StringNotice2, MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			this.GraphView.setBkGraphColor(Color.FromArgb(255, 13, 33, 51));
		}

		protected override bool ProcessDialogKey(Keys keyData)
		{
			return keyData != Keys.Up && keyData != Keys.Down && keyData != Keys.Left && keyData != Keys.Right && base.ProcessDialogKey(keyData);
		}

		private void Form1_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Space)
			{
				this.start_pause_DAQ();
				Thread.Sleep(10);
				return;
			}
			if (e.KeyCode == Keys.Right)
			{
				switch (this.m_indicate)
				{
				case 0:
					this.GraphView.GetrightProMem();
					return;
				case 2:
					this.LogicView.GetrightProMem();
					return;
				}
				this.GraphView.GetrightProMem();
				return;
			}
			if (e.KeyCode == Keys.Left)
			{
				switch (this.m_indicate)
				{
				case 0:
					this.GraphView.GetleftProMem();
					return;
				case 2:
					this.LogicView.GetleftProMem();
					return;
				}
				this.GraphView.GetrightProMem();
				return;
			}
			if (e.KeyCode == Keys.A && e.Control)
			{
				this.FUNCtoolStripComboBox.SelectedIndex = 1;
				this.FUNCtoolStripComboBox_SelectedIndexChanged(null, null);
				this.panelAdjust.Visible = true;
				this.tabMain.SelectedIndex = 0;
				this.tabMain_SelectedIndexChanged(null, null);
				return;
			}
			if (e.KeyCode == Keys.P && e.Control)
			{
				this.GraphView.GetUserConrolProMem();
				return;
			}
			if (e.KeyCode == Keys.M && e.Control)
			{
				this.RecordToolStripButton1_Click(null, null);
			}
		}

		private void Form1_KeyUp(object sender, KeyEventArgs e)
		{
			switch (this.m_indicate)
			{
			case 0:
				this.GraphView.GetleftrightUpProMem();
				return;
			case 2:
				this.LogicView.GetleftrightUpProMem();
				return;
			}
			this.GraphView.GetleftrightUpProMem();
		}

		private void toolStripButton2_Click(object sender, EventArgs e)
		{
		}

		public void ReSettoolStripButTstart()
		{
			this.toolStripButTstart.Text = "Start";
		}

		private void toolStripButTstart_Click(object sender, EventArgs e)
		{
			if (this.toolStripButTstart.Text == "Start")
			{
				this.toolStripButTstart.Text = "Waitting...";
			}
			MyDLLimport.SetReadEnableOrNot(1u);
		}

		private void toolStripButton4_Click(object sender, EventArgs e)
		{
			this.GraphView.print();
		}

		private void printViewToolStripMenuItem_Click_1(object sender, EventArgs e)
		{
			this.GraphView.printView();
		}

		private void exitToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void toolBarToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.mytoolbar.Visible)
			{
				this.mytoolbar.Visible = false;
				this.tabMain.Height = this.statusStrip1.Top - this.toolStrip1.Bottom;
				this.tabMain.Top = this.toolStrip1.Bottom;
				this.panel6.Height = this.statusStrip1.Top - this.toolStrip1.Bottom;
				this.panel6.Top = this.toolStrip1.Bottom - 10;
				this.splitContainer1.Height = this.statusStrip1.Top - this.toolStrip1.Bottom;
				this.splitContainer1.Top = this.toolStrip1.Bottom;
				this.panel1.Height = this.panel1.Bottom - this.toolStrip1.Bottom;
				this.panel1.Top = this.toolStrip1.Bottom;
			}
			else
			{
				this.mytoolbar.Visible = true;
				this.tabMain.Height = this.statusStrip1.Top - this.mytoolbar.Bottom;
				this.tabMain.Top = this.mytoolbar.Bottom;
				this.panel6.Top = this.mytoolbar.Bottom - 10;
				this.panel6.Height = this.statusStrip1.Top - this.mytoolbar.Bottom;
				this.splitContainer1.Top = this.mytoolbar.Bottom;
				this.splitContainer1.Height = this.statusStrip1.Top - this.mytoolbar.Bottom;
				this.panel1.Top = this.mytoolbar.Bottom - 5;
				this.panel1.Height = this.panel1.Bottom - this.mytoolbar.Bottom;
			}
			if (this.toolBarToolStripMenuItem.Checked)
			{
				this.toolBarToolStripMenuItem.Checked = false;
				return;
			}
			this.toolBarToolStripMenuItem.Checked = true;
		}

		private void statueBarToolStripMenuItem_Click(object sender, EventArgs e)
		{
		}

		private void gridToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.GraphView.m_Grid)
			{
				this.GraphView.m_Grid = false;
				this.LogicView.m_Grid = false;
			}
			else
			{
				this.GraphView.m_Grid = true;
				this.LogicView.m_Grid = true;
			}
			if (this.gridToolStripMenuItem.Checked)
			{
				this.gridToolStripMenuItem.Checked = false;
			}
			else
			{
				this.gridToolStripMenuItem.Checked = true;
			}
			this.GraphView.Invalidate();
			this.LogicView.Invalidate();
		}

		private void vectorsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.m_VectorDot = true;
			this.LogicView.m_VectorDot = true;
			this.GraphView.Invalidate();
			this.LogicView.Invalidate();
		}

		private void dotsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.m_VectorDot = false;
			this.LogicView.m_VectorDot = false;
			this.GraphView.Invalidate();
			this.LogicView.Invalidate();
		}

		private void intensityToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Form2 form = new Form2(this);
			if (form.ShowDialog() == DialogResult.OK)
			{
				base.Show();
			}
		}

		private void measureWindowToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.measureWindowToolStripMenuItem.Checked)
			{
				this.Formrenew();
				if (this.frm3 != null)
				{
					this.frm3.Close();
					if (this.panel6.Visible)
					{
						this.splitContainer1.Width = this.panel6.Left;
						return;
					}
				}
			}
			else
			{
				this.measureWindowToolStripMenuItem.Checked = true;
				this.frm3 = new Form3(this);
				this.frm3.MdiParent = this;
				this.frm3.Height = this.statusStrip1.Top - this.splitContainer1.Top;
				this.splitContainer1.Left = this.frm3.Width;
				this.splitContainer1.Width = this.panel6.Left - this.frm3.Right;
				this.frm3.Show();
				if (!this.panel6.Visible)
				{
					this.splitContainer1.Width = this.panel1.Left - this.splitContainer1.Left;
				}
			}
		}

		private void controlWindowToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.controlWindowToolStripMenuItem.Checked)
			{
				this.controlWindowToolStripMenuItem.Checked = false;
			}
			else
			{
				this.controlWindowToolStripMenuItem.Checked = true;
			}
			if (this.panel6.Visible)
			{
				this.tabMain.Width = this.panel1.Left - this.tabMain.Left;
				this.splitContainer1.Width = this.panel1.Left - this.splitContainer1.Left;
				this.panel6.Visible = false;
				return;
			}
			this.tabMain.Width = this.panel6.Left - this.tabMain.Left + 2;
			this.splitContainer1.Width = this.panel6.Left - this.splitContainer1.Left;
			this.panel6.Visible = true;
		}

		private void ToolStripMenuItemStateChanged()
		{
			if (!this.measureWindowToolStripMenuItem.Checked)
			{
				this.measureWindowToolStripMenuItem.Checked = true;
				return;
			}
			this.measureWindowToolStripMenuItem.Checked = false;
		}

		private void printToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.print();
		}

		private void FactorySetuptton4_Click_1(object sender, EventArgs e)
		{
			this.SetupDefaultCFG();
			this.PerformCfgUI();
			this.PerformCfgIO();
		}

		private void toolStripButtonSaveData_Click(object sender, EventArgs e)
		{
			this.GraphView.fileSave_Click(0, globleVariables.g_DividedNum);
		}

		private void LoadSetupToolStripMenuItem_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.Filter = "set|*.set";
			openFileDialog.ValidateNames = true;
			openFileDialog.CheckPathExists = true;
			openFileDialog.CheckFileExists = true;
			openFileDialog.ShowDialog();
			if (openFileDialog == null)
			{
				MessageBox.Show("System anomaly!");
				return;
			}
			if (openFileDialog.FileName == "")
			{
				MessageBox.Show("System anomaly!");
				return;
			}
			if (!this.ReadConfig(openFileDialog.FileName))
			{
				MessageBox.Show("Failed to load setup!");
				return;
			}
			this.PerformCfgUI();
			this.PerformCfgIO();
		}

		private void toolStripMenuItemSaveSetup_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Filter = "Text Files(*.set)|*.set|All Files(*.*)|(*.*)";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				string text = saveFileDialog.FileName;
				if (!text.Contains(".set"))
				{
					text += ".set";
				}
				this.SaveConfig(text);
			}
		}

		private void contentToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Process.ShellExecute(Environment.CurrentDirectory + "\\help.chm");
		}

		private void toolStripButtonHelp_Click(object sender, EventArgs e)
		{
			Process.ShellExecute(Environment.CurrentDirectory + "\\help.chm");
		}

		private void defaultSetupToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.SetupDefaultCFG();
			this.PerformCfgUI();
			this.PerformCfgIO();
		}

		private void zeroToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.butZero_Click(sender, e);
		}

		private void toolStripButton1_Click_2(object sender, EventArgs e)
		{
			Form2 form = new Form2(this);
			if (form.ShowDialog() == DialogResult.OK)
			{
				base.Show();
			}
		}

		private void toolStripMenuItem2_Click_1(object sender, EventArgs e)
		{
			if (this.ljtStorage1.Visible)
			{
				this.ljtStorage1.Visible = false;
				this.butStorageStop.Visible = false;
				this.toolStripMenuItem2.Checked = false;
				return;
			}
			this.ljtStorage1.Visible = true;
			this.butStorageStop.Visible = true;
			this.toolStripMenuItem2.Checked = true;
		}

		private void RecordReview_Click(object sender, EventArgs e)
		{
			if (this.ljtStorage1.Visible)
			{
				this.ljtStorage1.Visible = false;
				this.butStorageStop.Visible = false;
				return;
			}
			this.ljtStorage1.Visible = true;
			this.butStorageStop.Visible = true;
		}

		private void toolStripButtonZero_Click(object sender, EventArgs e)
		{
			this.butZero_Click(sender, e);
		}

		private void usToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(0u);
			this.TimeKnob_MYSelectChangedevent2(0u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[0].Checked = true;
		}

		private void usToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(1u);
			this.TimeKnob_MYSelectChangedevent2(1u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[1].Checked = true;
		}

		private void usToolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(2u);
			this.TimeKnob_MYSelectChangedevent2(2u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[2].Checked = true;
		}

		private void usToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(3u);
			this.TimeKnob_MYSelectChangedevent2(3u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[3].Checked = true;
		}

		private void usToolStripMenuItem4_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(4u);
			this.TimeKnob_MYSelectChangedevent2(4u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[4].Checked = true;
		}

		private void usToolStripMenuItem5_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(5u);
			this.TimeKnob_MYSelectChangedevent2(5u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[5].Checked = true;
		}

		private void msToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(6u);
			this.TimeKnob_MYSelectChangedevent2(6u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[6].Checked = true;
		}

		private void msToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(7u);
			this.TimeKnob_MYSelectChangedevent2(7u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[7].Checked = true;
		}

		private void msToolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 0;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[8].Checked = true;
		}

		private void msToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 1;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[9].Checked = true;
		}

		private void msToolStripMenuItem4_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 2;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[10].Checked = true;
		}

		private void msToolStripMenuItem5_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 3;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[11].Checked = true;
		}

		private void msToolStripMenuItem6_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 4;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[12].Checked = true;
		}

		private void msToolStripMenuItem7_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 5;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[13].Checked = true;
		}

		private void msToolStripMenuItem8_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 6;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[14].Checked = true;
		}

		private void msToolStripMenuItem9_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 7;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[15].Checked = true;
		}

		private void msToolStripMenuItem10_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(8u);
			this.comboTimeBase.SelectedIndex = 8;
			globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(8u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[16].Checked = true;
		}

		private void nsToolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(9u);
			this.comboBoxNS.SelectedIndex = 0;
			globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(9u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[17].Checked = true;
		}

		private void nsToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(9u);
			this.comboBoxNS.SelectedIndex = 1;
			globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(9u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[18].Checked = true;
		}

		private void nsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.TimeKnob.setKnobSelect(9u);
			this.comboBoxNS.SelectedIndex = 2;
			globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
			this.TimeKnob_MYSelectChangedevent2(9u);
			for (int i = 0; i < 20; i++)
			{
				this.m_Chacked[i].Checked = false;
			}
			this.m_Chacked[19].Checked = true;
		}

		private void vToolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(0u);
			this.VoltageKnoB11_MYSelectChangedevent2(0u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[0].Checked = true;
		}

		private void vToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(1u);
			this.VoltageKnoB11_MYSelectChangedevent2(1u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[1].Checked = true;
		}

		private void vToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(2u);
			this.VoltageKnoB11_MYSelectChangedevent2(2u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[2].Checked = true;
		}

		private void mvToolStripMenuItem2_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(3u);
			this.VoltageKnoB11_MYSelectChangedevent2(3u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[3].Checked = true;
		}

		private void mvToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(4u);
			this.VoltageKnoB11_MYSelectChangedevent2(4u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[4].Checked = true;
		}

		private void mvToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(5u);
			this.VoltageKnoB11_MYSelectChangedevent2(5u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[5].Checked = true;
		}

		private void vToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			this.Ch1VoltageKnob.setKnobSelect(9u);
			this.VoltageKnoB11_MYSelectChangedevent2(9u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked[i].Checked = false;
			}
			this.m_vchacked[9].Checked = true;
		}

		private void vToolStripMenuItem6_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(0u);
			this.KnoBVolCH2_MYSelectChangedevent(0u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[0].Checked = true;
		}

		private void vToolStripMenuItem5_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(1u);
			this.KnoBVolCH2_MYSelectChangedevent(1u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[1].Checked = true;
		}

		private void vToolStripMenuItem4_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(2u);
			this.KnoBVolCH2_MYSelectChangedevent(2u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[2].Checked = true;
		}

		private void mvToolStripMenuItem5_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(3u);
			this.KnoBVolCH2_MYSelectChangedevent(3u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[3].Checked = true;
		}

		private void mvToolStripMenuItem4_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(4u);
			this.KnoBVolCH2_MYSelectChangedevent(4u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[4].Checked = true;
		}

		private void mvToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(5u);
			this.KnoBVolCH2_MYSelectChangedevent(5u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[5].Checked = true;
		}

		private void vToolStripMenuItem7_Click(object sender, EventArgs e)
		{
			this.KnoBVolCH2.setKnobSelect(9u);
			this.KnoBVolCH2_MYSelectChangedevent(9u);
			for (int i = 0; i < 10; i++)
			{
				this.m_vchacked2[i].Checked = false;
			}
			this.m_vchacked2[9].Checked = true;
		}

		private void yTToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.m_xyBase = LinearGradientButtonLib.UserControl1.XYGraphBase.None;
			this.yTToolStripMenuItem.Checked = true;
			this.xYToolStripMenuItem.Checked = false;
		}

		private void xYToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.m_xyBase = LinearGradientButtonLib.UserControl1.XYGraphBase.X_Channel1;
			this.yTToolStripMenuItem.Checked = false;
			this.xYToolStripMenuItem.Checked = true;
		}

		private void printSetupToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.GraphView.printSetup();
		}

		private void Property_Value_Changed(object s, PropertyValueChangedEventArgs e)
		{
			if (this.propertySet.Ch1 && !this.propertySet.Ch2)
			{
				globleVariables.g_ChannelMask = 1;
			}
			else if (!this.propertySet.Ch1 && this.propertySet.Ch2)
			{
				globleVariables.g_ChannelMask = 16;
			}
			else if (this.propertySet.Ch1 && this.propertySet.Ch2)
			{
				globleVariables.g_ChannelMask = 17;
			}
			else
			{
				globleVariables.g_ChannelMask = 0;
			}
			this.myffTctrl1.setBkGraphColor(this.propertySet.BackColor);
			this.myffTctrl1.GraphPen = new Pen(this.propertySet.Ch1WaveColor, 1f);
			this.myffTctrl1.GraphPen2 = new Pen(this.propertySet.Ch2WaveColor, 1f);
			string ch1WinFunValue = this.propertySet.Ch1WinFunValue;
			string ch2WinFunValue = this.propertySet.Ch2WinFunValue;
			string a;
			if ((a = ch1WinFunValue) != null)
			{
				if (a == "Rectangle")
				{
					globleVariables.m_WinFun = 5;
					goto IL_149;
				}
				if (a == "Hanning")
				{
					globleVariables.m_WinFun = 0;
					goto IL_149;
				}
				if (a == "Hamming")
				{
					globleVariables.m_WinFun = 1;
					goto IL_149;
				}
				if (a == "Blackman")
				{
					globleVariables.m_WinFun = 2;
					goto IL_149;
				}
			}
			globleVariables.m_WinFun = 5;
			IL_149:
			string a2;
			if ((a2 = ch2WinFunValue) != null)
			{
				if (a2 == "Rectangle")
				{
					globleVariables.m_WinFun1 = 5;
					return;
				}
				if (a2 == "Hanning")
				{
					globleVariables.m_WinFun1 = 0;
					return;
				}
				if (a2 == "Hamming")
				{
					globleVariables.m_WinFun1 = 1;
					return;
				}
				if (a2 == "Blackman")
				{
					globleVariables.m_WinFun1 = 2;
					return;
				}
			}
			globleVariables.m_WinFun1 = 5;
		}

		private void toolStripButton2_Click_1(object sender, EventArgs e)
		{
			globleVariables.m_bDrawFFTorNot = !globleVariables.m_bDrawFFTorNot;
			if (globleVariables.m_bDrawFFTorNot)
			{
				this.fFTToolStripMenuItem.Checked = true;
				this.splitContainer1.SplitterDistance = this.splitContainer1.Height * 2 / 3;
				return;
			}
			this.fFTToolStripMenuItem.Checked = false;
			this.splitContainer1.SplitterDistance = this.statusStrip1.Top - this.splitContainer1.Top;
		}

		private void toolStripButton3_Click(object sender, EventArgs e)
		{
			this.splitContainer3.SplitterDistance = this.splitContainer3.Width;
			this.extTriggerToolStripMenuItem.Checked = false;
		}

		private void toolStripButtonZoomIn_Click(object sender, EventArgs e)
		{
			if ((double)this.myffTctrl1.Width * 1.5 < (double)(this.splitContainer2.Panel1.Width * 20))
			{
				this.myffTctrl1.Width = (int)((double)this.myffTctrl1.Width * 1.5);
			}
		}

		private void toolStripButtonZoomOut_Click(object sender, EventArgs e)
		{
			if ((double)this.myffTctrl1.Width * 0.7 > (double)this.splitContainer2.Panel1.Width)
			{
				this.myffTctrl1.Width = (int)((double)this.myffTctrl1.Width * 0.7);
				return;
			}
			this.myffTctrl1.Width = this.splitContainer2.Panel1.Width;
		}

		private void trackBarExtTrigger_ValueChanged(object sender, EventArgs e)
		{
			int value = this.trackBarExtTrigger.Value;
			this.PWM_caculation((double)value, 10000uL);
			this.label24.Text = ((double)value * 3.25 * 2.0 / 100.0).ToString("0.00") + " V";
		}

		private void extTriggerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.extTriggerToolStripMenuItem.Checked)
			{
				this.extTriggerToolStripMenuItem.Checked = false;
				this.splitContainer3.SplitterDistance = this.splitContainer3.Width;
				return;
			}
			this.extTriggerToolStripMenuItem.Checked = true;
			this.splitContainer3.SplitterDistance = this.splitContainer3.Width - 50;
		}

		private void buttonExtStart_Click(object sender, EventArgs e)
		{
			if (this.toolStripButTstart.Text == "Start")
			{
				this.toolStripButTstart.Text = "Waitting...";
			}
			MyDLLimport.SetReadEnableOrNot(1u);
		}

		private void button2_Click(object sender, EventArgs e)
		{
			if (this.HgihFreq.Text == "" || this.LowFreq.Text == "" || this.TimSpan.Text == "" || this.FreqSpan.Text == "")
			{
				MessageBox.Show("Please fill in the blank cells");
				return;
			}
			this.m_LowFreq = (ulong)((long)Convert.ToInt32(this.LowFreq.Text));
			this.m_HighFreq = (ulong)((long)Convert.ToInt32(this.HgihFreq.Text));
			this.m_TimeSpan = (ulong)((long)Convert.ToInt32(this.TimSpan.Text));
			this.m_FreqSpan = (ulong)((long)Convert.ToInt32(this.FreqSpan.Text));
			if (this.m_LowFreq == this.m_HighFreq)
			{
				MessageBox.Show("Minimum rate can not exceed or equal the maximum level!");
				return;
			}
			if (this.m_TimeSpan == 0uL)
			{
				MessageBox.Show("Please enter the interval!");
				return;
			}
			if (this.m_LowFreq < this.m_HighFreq)
			{
				this.m_PN = true;
			}
			else if (this.m_LowFreq > this.m_HighFreq)
			{
				this.m_PN = false;
			}
			this.LowFreq.Enabled = false;
			this.HgihFreq.Enabled = false;
			this.FreqSpan.Enabled = false;
			this.TimSpan.Enabled = false;
			this.ScanFreq.Enabled = true;
			this.ScanFreq.Interval = this.m_TimeSpan;
			this.StopScan.Enabled = true;
			this.button2.Enabled = false;
			this.numOn.Enabled = false;
			this.ScanFreq.Start();
		}

		private void button3_Click(object sender, EventArgs e)
		{
			this.ScanFreq.Stop();
			this.ScanFreq.Enabled = false;
			this.Flatrate = 0;
			this.button2.Enabled = true;
			this.StopScan.Enabled = false;
			this.numOn.Enabled = true;
			this.LowFreq.Enabled = true;
			this.HgihFreq.Enabled = true;
			this.FreqSpan.Enabled = true;
			this.TimSpan.Enabled = true;
		}

		private void LowFreq_TextChanged(object sender, EventArgs e)
		{
			string text = this.LowFreq.Text;
			if (text == "")
			{
				return;
			}
			if (text != "-")
			{
				try
				{
					int.Parse(this.LowFreq.Text);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "Please enter a number!");
					this.LowFreq.Text = "";
					return;
				}
			}
			string a = text.Substring(0, 1);
			if (a == "-")
			{
				MessageBox.Show("Please enter a non-negative!");
				this.LowFreq.Text = "0";
				this.m_LowFreq = (ulong)((long)Convert.ToInt32(this.LowFreq.Text));
				return;
			}
			if (Convert.ToInt32(text) > 20000000)
			{
				MessageBox.Show("Can not exceed 20000000!");
				this.LowFreq.Text = "20000000";
				this.m_LowFreq = (ulong)((long)Convert.ToInt32(this.LowFreq.Text));
				return;
			}
			this.m_LowFreq = (ulong)((long)Convert.ToInt32(this.LowFreq.Text));
		}

		private void HgihFreq_TextChanged(object sender, EventArgs e)
		{
			string text = this.HgihFreq.Text;
			if (text == "")
			{
				return;
			}
			if (text != "-")
			{
				try
				{
					int.Parse(this.HgihFreq.Text);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "Please enter a number!");
					this.HgihFreq.Text = "";
					return;
				}
			}
			string a = text.Substring(0, 1);
			if (a == "-")
			{
				MessageBox.Show("Please enter a non-negative!");
				this.HgihFreq.Text = "0";
				this.m_HighFreq = (ulong)((long)Convert.ToInt32(this.HgihFreq.Text));
				return;
			}
			if (Convert.ToInt32(text) > 20000000)
			{
				MessageBox.Show("Can not exceed 20000000!");
				this.HgihFreq.Text = "20000000";
				this.m_HighFreq = (ulong)((long)Convert.ToInt32(this.HgihFreq.Text));
				return;
			}
			this.m_HighFreq = (ulong)((long)Convert.ToInt32(this.HgihFreq.Text));
		}

		private void FreqSpan_TextChanged(object sender, EventArgs e)
		{
			string text = this.FreqSpan.Text;
			if (text == "")
			{
				return;
			}
			if (text != "-")
			{
				try
				{
					int.Parse(this.FreqSpan.Text);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "Please enter a number!");
					this.FreqSpan.Text = "";
					return;
				}
			}
			string a = text.Substring(0, 1);
			if (a == "-")
			{
				MessageBox.Show("Stepping can not be negative!");
				this.FreqSpan.Text = "0";
				this.m_FreqSpan = (ulong)((long)Convert.ToInt32(this.FreqSpan.Text));
				return;
			}
			if (Convert.ToInt32(text) > 1000000)
			{
				MessageBox.Show("Stepping set to be reasonable!");
				this.FreqSpan.Text = "1000000";
				this.m_FreqSpan = (ulong)((long)Convert.ToInt32(this.FreqSpan.Text));
				return;
			}
			this.m_FreqSpan = (ulong)((long)Convert.ToInt32(this.FreqSpan.Text));
		}

		private void TimSpan_TextChanged(object sender, EventArgs e)
		{
			string text = this.TimSpan.Text;
			if (text == "")
			{
				return;
			}
			if (text != "-")
			{
				try
				{
					int.Parse(this.TimSpan.Text);
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message, "Please enter a number!");
					this.TimSpan.Text = "";
					return;
				}
			}
			string a = text.Substring(0, 1);
			if (a == "-")
			{
				MessageBox.Show("Stepping can not be negative!");
				this.TimSpan.Text = "0";
				this.m_TimeSpan = (ulong)((long)Convert.ToInt32(this.TimSpan.Text));
				return;
			}
			if (Convert.ToInt32(text) > 5000)
			{
				MessageBox.Show("The time interval is not too large!");
				this.TimSpan.Text = "5000";
				this.m_TimeSpan = (ulong)((long)Convert.ToInt32(this.TimSpan.Text));
				return;
			}
			this.m_TimeSpan = (ulong)((long)Convert.ToInt32(this.TimSpan.Text));
		}

		private void radioButton1_CheckedChanged_1(object sender, EventArgs e)
		{
		}

		public void Formrenew()
		{
			this.splitContainer1.Left = 0;
			this.splitContainer1.Width = this.panel6.Left;
			this.measureWindowToolStripMenuItem.Checked = false;
			this.splitContainer1.Width = this.panel1.Left;
			if (this.panel6.Visible)
			{
				this.splitContainer1.Width = this.panel6.Left;
			}
		}

		private void timeDIVToolStripMenuItem_Click(object sender, EventArgs e)
		{
		}

		private void textBoxCH2zero_TextChanged(object sender, EventArgs e)
		{
		}

		private void ljtStorage1_Load(object sender, EventArgs e)
		{
		}

		private void label20_Click(object sender, EventArgs e)
		{
		}

		private void GraphView_Load(object sender, EventArgs e)
		{
		}

		public void textAlarmToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.textAlarmToolStripMenuItem.Checked)
			{
				this.GraphView.isDisp = true;
				this.textAlarmToolStripMenuItem.Checked = false;
				return;
			}
			this.GraphView.isDisp = false;
			this.textAlarmToolStripMenuItem.Checked = true;
		}

		public void musicAlarmToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.musicAlarmToolStripMenuItem.Checked)
			{
				this.GraphView.isEcho = true;
				this.musicAlarmToolStripMenuItem.Checked = false;
				return;
			}
			this.GraphView.isEcho = false;
			this.musicAlarmToolStripMenuItem.Checked = true;
		}

		private void mousePositionToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.mousePositionToolStripMenuItem.Checked)
			{
				this.mousePositionToolStripMenuItem.Checked = false;
				return;
			}
			this.mousePositionToolStripMenuItem.Checked = true;
		}

		private void toolStripCursorSetSingle_Click(object sender, EventArgs e)
		{
			this.toolStripCursorSetSingle.Enabled = false;
			this.toolStripCursorSetDouble.Enabled = true;
			this.GraphView.isDrawMouseCur = true;
			this.GraphView.SetDrawMeasurCurOrNot(false);
		}

		private void toolStripCursorSetDouble_Click(object sender, EventArgs e)
		{
			this.toolStripCursorSetSingle.Enabled = true;
			this.toolStripCursorSetDouble.Enabled = false;
			this.GraphView.isDrawMouseCur = false;
			this.GraphView.SetDrawMeasurCurOrNot(true);
		}
	}
}
