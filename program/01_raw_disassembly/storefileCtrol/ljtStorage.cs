using storefileCtrol.Properties;
using System;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace storefileCtrol
{
	public class ljtStorage : UserControl
	{
		public delegate void MYSelectChangedDelegate(uint i);

		public string Myfilepath = "";

		public string MyfileFullName = "";

		public string g_sFileFilter = "bm002|*.bm002";

		public string g_sFileType = "bm002";

		public StreamParaHead g_ParaHead;

		public StreamParaHead g_ReadHeadGet;

		private FileStream m_file;

		private BinaryReader m_br;

		private BinaryWriter m_bw;

		private uint m_buttonsState;

		private uint m_RecordAllowed;

		public static uint m_StorageCnt = 50u;

		private uint m_ReviewFrameCnt;

		private uint m_ReviewFrameCurrentNum;

		public static byte[] g_rawData = new byte[2000];

		public static byte[] g_rawData2 = new byte[2000];

		private uint m_startStopFlg = 100u;

		private uint m_FileHeaderSize;

		private IContainer components;

		private PictureBox review;

		private PictureBox record;

		private PictureBox config;

		private NumericUpDown numericUpDown1;

		private Label labelCurPos;

		private PictureBox startStop;

		private TextBox textBoxPath;

		private StatusStrip statusStrip1;

		private ToolStripProgressBar toolStripProgressBar1;

		public event ljtStorage.MYSelectChangedDelegate MYSelectChangedevent
		{
			[MethodImpl(MethodImplOptions.Synchronized)]
			add
			{
				this.MYSelectChangedevent = (ljtStorage.MYSelectChangedDelegate)Delegate.Combine(this.MYSelectChangedevent, value);
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			remove
			{
				this.MYSelectChangedevent = (ljtStorage.MYSelectChangedDelegate)Delegate.Remove(this.MYSelectChangedevent, value);
			}
		}

		protected virtual void MYSelectChangedEventHandler(uint i)
		{
			if (this.MYSelectChangedevent != null)
			{
				this.MYSelectChangedevent(i);
			}
		}

		public ljtStorage()
		{
			this.InitializeComponent();
			this.Myfilepath = Environment.CurrentDirectory + "\\";
			this.g_ParaHead.chan0ZeroLevel = 128;
			this.g_ParaHead.chan1ZeroLevel = 128;
			this.g_ParaHead.chan2ZeroLevel = 128;
			this.g_ParaHead.chan3ZeroLevel = 128;
			this.g_ParaHead.chan0Amp = 128;
			this.g_ParaHead.chan1Amp = 128;
			this.g_ParaHead.dataNumOneShot = 1024u;
			this.g_ParaHead.frameNumber = 0u;
			this.m_FileHeaderSize = 120u;
		}

		public void SetFileClose()
		{
			if (this.m_br != null)
			{
				this.m_br.Close();
				this.m_br = null;
			}
			if (this.m_bw != null)
			{
				this.m_bw.Close();
				this.m_bw = null;
			}
			this.m_buttonsState = 0u;
		}

		public uint GetState()
		{
			return this.m_buttonsState;
		}

		public void SetState(uint i)
		{
			this.m_buttonsState = i;
			if (this.m_buttonsState == 0u)
			{
				this.SetIconBlink(1u);
				this.m_startStopFlg = 100u;
				this.startStop.BackgroundImage = Resources.play;
				return;
			}
			if (this.m_buttonsState == 100u)
			{
				this.m_buttonsState = 0u;
				this.SetIconBlink(1u);
				this.m_startStopFlg = 100u;
				this.startStop.BackgroundImage = Resources.play;
				this.m_ReviewFrameCurrentNum = 0u;
				this.numericUpDown1.Value = 0m;
				return;
			}
			this.SetIconBlink(0u);
		}

		public string GetFileFullName()
		{
			return this.MyfileFullName;
		}

		public uint GetFrameCnt()
		{
			return ljtStorage.m_StorageCnt;
		}

		public void SetIconBlink(uint index)
		{
			this.m_RecordAllowed = index;
			if (index == 0u)
			{
				this.record.BackgroundImage = Resources.luzhi;
				return;
			}
			this.record.BackgroundImage = Resources.luzhi2;
		}

		private void pictureBox2_Click(object sender, EventArgs e)
		{
		}

		public int SetModel(string modelName)
		{
			if (modelName == "BM100")
			{
				this.g_sFileFilter = "bm100|*.bm100";
				this.g_sFileType = "bm100";
				return 0;
			}
			if (modelName == "BM101")
			{
				this.g_sFileFilter = "bm101|*.bm101";
				this.g_sFileType = "bm101";
				return 0;
			}
			if (modelName == "BM102")
			{
				this.g_sFileFilter = "bm102|*.bm102";
				this.g_sFileType = "bm102";
				return 0;
			}
			if (modelName == "BMOO2")
			{
				this.g_sFileFilter = "bm002|*.bm002";
				this.g_sFileType = "bm002";
				return 0;
			}
			if (modelName == "BM103")
			{
				this.g_sFileFilter = "bm103|*.bm103";
				this.g_sFileType = "bm103";
				return 0;
			}
			if (modelName == "BM104")
			{
				this.g_sFileFilter = "bm104|*.bm104";
				this.g_sFileType = "bm104";
				return 0;
			}
			if (modelName == "DDS140")
			{
				this.g_sFileFilter = "DDS140|*.DDS140";
				this.g_sFileType = "DDS140";
				return 0;
			}
			if (modelName == "DDS120")
			{
				this.g_sFileFilter = "DDS120|*.DDS120";
				this.g_sFileType = "DDS120";
				return 0;
			}
			this.g_sFileFilter = "bm100|*.bm100";
			this.g_sFileType = "bm100";
			return 0;
		}

		public void SetParameters(StreamParaHead para)
		{
			this.g_ParaHead = para;
		}

		public void SetProgress(int max, int value)
		{
			this.toolStripProgressBar1.Maximum = max;
			this.toolStripProgressBar1.Value = value;
		}

		public unsafe void SetData(IntPtr pbuffer, int index)
		{
			if (index < 0)
			{
				return;
			}
			if (this.g_ParaHead.dataNumOneShot == 0u || this.m_buttonsState != 1u)
			{
				return;
			}
			byte* ptr = (byte*)((void*)pbuffer) + index;
			int num = 0;
			while ((long)num < (long)((ulong)this.g_ParaHead.dataNumOneShot))
			{
				byte value = ptr[num];
				this.m_bw.Write(value);
				num++;
			}
		}

		public unsafe int GetData(IntPtr pbuffer, uint index)
		{
			if (this.m_buttonsState != 2u)
			{
				return 0;
			}
			if (this.g_ReadHeadGet.frameNumber <= index)
			{
				this.m_startStopFlg = 200u;
				EventArgs e = new EventArgs();
				this.startStop_Click(this, e);
				return -1;
			}
			try
			{
				this.m_br.BaseStream.Position = (long)((ulong)(this.m_FileHeaderSize - 1u + (index - 1u) * this.g_ParaHead.dataNumOneShot + 1u));
				byte* ptr = (byte*)((void*)pbuffer);
				int num = 0;
				while ((long)num < (long)((ulong)this.g_ParaHead.dataNumOneShot))
				{
					ptr[num] = this.m_br.ReadByte();
					num++;
				}
			}
			catch (Exception)
			{
			}
			this.m_ReviewFrameCurrentNum = index;
			this.numericUpDown1.Value = this.m_ReviewFrameCurrentNum;
			this.toolStripProgressBar1.Value = (int)index;
			return 1;
		}

		public StreamParaHead GetParameters()
		{
			return this.g_ReadHeadGet;
		}

		private void pictureBox2_MouseMove(object sender, MouseEventArgs e)
		{
			this.review.BackColor = Color.Azure;
		}

		private void review_MouseHover(object sender, EventArgs e)
		{
		}

		private void review_MouseLeave(object sender, EventArgs e)
		{
			this.review.BackColor = Color.Transparent;
		}

		private void record_MouseLeave(object sender, EventArgs e)
		{
			this.record.BackColor = Color.Transparent;
		}

		private void record_MouseMove(object sender, MouseEventArgs e)
		{
			this.record.BackColor = Color.Azure;
		}

		private void config_MouseLeave(object sender, EventArgs e)
		{
			this.config.BackColor = Color.Transparent;
		}

		private void config_MouseMove(object sender, MouseEventArgs e)
		{
			this.config.BackColor = Color.Azure;
		}

		private void config_Click(object sender, EventArgs e)
		{
			CfgForm cfgForm = new CfgForm();
			cfgForm.StartPosition = FormStartPosition.Manual;
			Point location = new Point(Cursor.Position.X - 400, Cursor.Position.Y + 200);
			cfgForm.Location = location;
			cfgForm.Text = Resource1.StringSettingTitle;
			cfgForm.groupBox2.Text = Resource1.StringSettingInfo;
			cfgForm.ShowDialog(this);
		}

		private void record_Click(object sender, EventArgs e)
		{
			if (this.m_buttonsState != 0u)
			{
				return;
			}
			if (this.m_RecordAllowed == 0u)
			{
				return;
			}
			this.m_buttonsState = 1u;
			string str = DateTime.Now.ToString("yyyyMMddHHmmss") + "." + this.g_sFileType;
			this.MyfileFullName = this.Myfilepath + str;
			if (this.m_file != null)
			{
				this.m_file.Close();
				this.m_file.Dispose();
				this.m_file = null;
			}
			this.m_file = new FileStream(this.MyfileFullName, FileMode.OpenOrCreate, FileAccess.ReadWrite);
			if (this.m_bw != null)
			{
				this.m_bw.Close();
			}
			this.m_bw = new BinaryWriter(this.m_file);
			this.m_bw.Write(this.g_ParaHead.KnobSelect);
			this.m_bw.Write(this.g_ParaHead.KnobSelectComboIdx);
			this.m_bw.Write(this.g_ParaHead.KnobVoltageSelect);
			this.m_bw.Write(this.g_ParaHead.KnobVoltageSelect2);
			this.m_bw.Write(this.g_ParaHead.ch1CoupleFlg);
			this.m_bw.Write(this.g_ParaHead.ch2CoupleFlg);
			this.m_bw.Write(this.g_ParaHead.TrigChan);
			this.m_bw.Write(this.g_ParaHead.chan0ZeroLevel);
			this.m_bw.Write(this.g_ParaHead.chan1ZeroLevel);
			this.m_bw.Write(this.g_ParaHead.chan2ZeroLevel);
			this.m_bw.Write(this.g_ParaHead.chan3ZeroLevel);
			this.m_bw.Write(this.g_ParaHead.chan0Amp);
			this.m_bw.Write(this.g_ParaHead.chan1Amp);
			this.m_bw.Write(this.g_ParaHead.VbiasZero01v);
			this.m_bw.Write(this.g_ParaHead.VbiasZero11v);
			this.m_bw.Write(this.g_ParaHead.VbiasZero0500mv);
			this.m_bw.Write(this.g_ParaHead.VbiasZero1500mv);
			this.m_bw.Write(this.g_ParaHead.VbiasZero0100mv);
			this.m_bw.Write(this.g_ParaHead.VbiasZero1100mv);
			this.m_bw.Write(this.g_ParaHead.VbiasZero050mv);
			this.m_bw.Write(this.g_ParaHead.VbiasZero150mv);
			this.m_bw.Write(this.g_ParaHead.TrigeMode);
			this.m_bw.Write(this.g_ParaHead.TrigEdge);
			this.m_bw.Write(this.g_ParaHead.TrigLevel0);
			this.m_bw.Write(this.g_ParaHead.TrigLevel1);
			this.m_bw.Write(this.g_ParaHead.dataNumOneShot);
			this.m_bw.Write(ljtStorage.m_StorageCnt);
			this.m_bw.Write(this.g_ParaHead.Vscale_1v_ch0);
			this.m_bw.Write(this.g_ParaHead.Vscale_1v_ch1);
			this.m_bw.Write(this.g_ParaHead.Vscale_500mv_ch0);
			this.m_bw.Write(this.g_ParaHead.Vscale_500mv_ch1);
			this.m_bw.Write(this.g_ParaHead.Vscale_200mv_ch0);
			this.m_bw.Write(this.g_ParaHead.Vscale_200mv_ch1);
			this.m_bw.Write(this.g_ParaHead.Vscale_100mv_ch0);
			this.m_bw.Write(this.g_ParaHead.Vscale_100mv_ch1);
			this.m_bw.Write(this.g_ParaHead.Vscale_50mv_ch0);
			this.m_bw.Write(this.g_ParaHead.Vscale_50mv_ch1);
			this.m_bw.Write(this.g_ParaHead.dataNumPerPixar);
			this.m_bw.Write(this.g_ParaHead.channelMask);
			this.MYSelectChangedEventHandler(0u);
		}

		private bool GetFileName4Review(int flag)
		{
			try
			{
				if (this.m_buttonsState != 0u && this.m_buttonsState != 100u)
				{
					bool result = false;
					return result;
				}
				if (flag == 1)
				{
					OpenFileDialog openFileDialog = new OpenFileDialog();
					openFileDialog.Filter = this.g_sFileFilter;
					openFileDialog.ValidateNames = true;
					openFileDialog.CheckPathExists = true;
					openFileDialog.CheckFileExists = true;
					openFileDialog.ShowDialog();
					if (openFileDialog == null)
					{
						bool result = false;
						return result;
					}
					if (openFileDialog.FileName == "")
					{
						bool result = false;
						return result;
					}
					if (this.m_file != null)
					{
						this.m_file.Close();
						this.m_file.Dispose();
					}
					this.m_file = new FileStream(openFileDialog.FileName, FileMode.OpenOrCreate, FileAccess.Read);
					this.textBoxPath.Text = openFileDialog.FileName;
				}
				else if (flag == 0)
				{
					if (this.m_file == null)
					{
						bool result = false;
						return result;
					}
					this.m_file.Seek(0L, SeekOrigin.Begin);
				}
			}
			catch (Exception)
			{
			}
			return true;
		}

		private bool GetFileHeaderFromFile(int flag)
		{
			try
			{
				if (this.m_buttonsState == 1u)
				{
					return false;
				}
				if (flag == 1)
				{
					this.m_br = new BinaryReader(this.m_file);
					this.g_ReadHeadGet.KnobSelect = this.m_br.ReadByte();
					this.g_ReadHeadGet.KnobSelectComboIdx = this.m_br.ReadByte();
					this.g_ReadHeadGet.KnobVoltageSelect = this.m_br.ReadByte();
					this.g_ReadHeadGet.KnobVoltageSelect2 = this.m_br.ReadByte();
					this.g_ReadHeadGet.ch1CoupleFlg = this.m_br.ReadByte();
					this.g_ReadHeadGet.ch2CoupleFlg = this.m_br.ReadByte();
					this.g_ReadHeadGet.TrigChan = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan0ZeroLevel = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan1ZeroLevel = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan2ZeroLevel = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan3ZeroLevel = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan0Amp = this.m_br.ReadByte();
					this.g_ReadHeadGet.chan1Amp = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero01v = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero11v = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero0500mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero1500mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero0100mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero1100mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero050mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.VbiasZero150mv = this.m_br.ReadByte();
					this.g_ReadHeadGet.TrigeMode = this.m_br.ReadByte();
					this.g_ReadHeadGet.TrigEdge = this.m_br.ReadByte();
					this.g_ReadHeadGet.TrigLevel0 = this.m_br.ReadByte();
					this.g_ReadHeadGet.TrigLevel1 = this.m_br.ReadByte();
					this.g_ReadHeadGet.dataNumOneShot = (uint)this.m_br.ReadInt32();
					this.g_ReadHeadGet.frameNumber = (uint)this.m_br.ReadInt32();
					this.g_ReadHeadGet.Vscale_1v_ch0 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_1v_ch1 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_500mv_ch0 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_500mv_ch1 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_200mv_ch0 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_200mv_ch1 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_100mv_ch0 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_100mv_ch1 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_50mv_ch0 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.Vscale_50mv_ch1 = this.m_br.ReadDouble();
					this.g_ReadHeadGet.dataNumPerPixar = this.m_br.ReadDouble();
					this.g_ReadHeadGet.channelMask = this.m_br.ReadByte();
					this.toolStripProgressBar1.Maximum = (int)this.g_ReadHeadGet.frameNumber;
				}
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message, "GetFileHeaderFromFile Error!");
			}
			return true;
		}

		private void Review_Click(object sender, EventArgs e)
		{
			if (!this.GetFileName4Review(1))
			{
				return;
			}
			if (!this.GetFileHeaderFromFile(1))
			{
				return;
			}
			this.m_ReviewFrameCnt = this.g_ReadHeadGet.frameNumber;
			this.labelCurPos.Text = this.m_ReviewFrameCnt.ToString();
			this.m_ReviewFrameCurrentNum = 0u;
			this.numericUpDown1.Value = 0m;
			this.numericUpDown1.Maximum = this.m_ReviewFrameCnt;
			this.m_buttonsState = 2u;
			this.MYSelectChangedEventHandler(1u);
			EventArgs e2 = new EventArgs();
			this.startStop_Click(this, e2);
		}

		private void ljtStorage_Load(object sender, EventArgs e)
		{
			ToolTip toolTip = new ToolTip();
			toolTip.AutoPopDelay = 5000;
			toolTip.InitialDelay = 1000;
			toolTip.ReshowDelay = 500;
			toolTip.ShowAlways = true;
			toolTip.SetToolTip(this.record, Resource1.TipRecord);
			toolTip.SetToolTip(this.config, Resource1.TipSetting);
			toolTip.SetToolTip(this.review, Resource1.TipReview);
			this.numericUpDown1.Minimum = 0m;
		}

		private void config_MouseHover(object sender, EventArgs e)
		{
		}

		private void startStop_Click(object sender, EventArgs e)
		{
			if (this.m_startStopFlg == 100u && this.textBoxPath.Text != "")
			{
				this.m_startStopFlg = 200u;
				this.startStop.BackgroundImage = Resources.pause4;
				this.SetState(2u);
				this.MYSelectChangedEventHandler(this.m_startStopFlg);
				return;
			}
			if (this.m_startStopFlg == 200u)
			{
				this.m_startStopFlg = 100u;
				this.startStop.BackgroundImage = Resources.play;
				this.MYSelectChangedEventHandler(this.m_startStopFlg);
			}
		}

		private void numericUpDown1_ValueChanged(object sender, EventArgs e)
		{
			if (this.m_buttonsState != 2u && this.m_startStopFlg != 100u)
			{
				return;
			}
			uint i = 500u + (uint)this.numericUpDown1.Value;
			this.MYSelectChangedEventHandler(i);
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
			this.numericUpDown1 = new NumericUpDown();
			this.labelCurPos = new Label();
			this.startStop = new PictureBox();
			this.config = new PictureBox();
			this.record = new PictureBox();
			this.review = new PictureBox();
			this.textBoxPath = new TextBox();
			this.statusStrip1 = new StatusStrip();
			this.toolStripProgressBar1 = new ToolStripProgressBar();
			((ISupportInitialize)this.numericUpDown1).BeginInit();
			((ISupportInitialize)this.startStop).BeginInit();
			((ISupportInitialize)this.config).BeginInit();
			((ISupportInitialize)this.record).BeginInit();
			((ISupportInitialize)this.review).BeginInit();
			this.statusStrip1.SuspendLayout();
			base.SuspendLayout();
			this.numericUpDown1.CausesValidation = false;
			this.numericUpDown1.Font = new Font("Arial", 21.75f, FontStyle.Bold, GraphicsUnit.Point, 0);
			this.numericUpDown1.ForeColor = Color.LightSeaGreen;
			this.numericUpDown1.Location = new Point(55, 128);
			this.numericUpDown1.Name = "numericUpDown1";
			this.numericUpDown1.Size = new Size(82, 41);
			this.numericUpDown1.TabIndex = 7;
			this.numericUpDown1.TextAlign = HorizontalAlignment.Center;
			this.numericUpDown1.ValueChanged += new EventHandler(this.numericUpDown1_ValueChanged);
			this.labelCurPos.AutoSize = true;
			this.labelCurPos.Font = new Font("Arial", 18f, FontStyle.Bold, GraphicsUnit.Point, 0);
			this.labelCurPos.Location = new Point(4, 133);
			this.labelCurPos.Name = "labelCurPos";
			this.labelCurPos.Size = new Size(26, 29);
			this.labelCurPos.TabIndex = 8;
			this.labelCurPos.Text = "0";
			this.startStop.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.startStop.BackgroundImage = Resources.play;
			this.startStop.BackgroundImageLayout = ImageLayout.Center;
			this.startStop.Location = new Point(135, 125);
			this.startStop.Name = "startStop";
			this.startStop.Size = new Size(44, 41);
			this.startStop.TabIndex = 9;
			this.startStop.TabStop = false;
			this.startStop.Click += new EventHandler(this.startStop_Click);
			this.config.Anchor = (AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right);
			this.config.BackgroundImage = Resources.settings;
			this.config.BackgroundImageLayout = ImageLayout.Center;
			this.config.Location = new Point(60, 0);
			this.config.Name = "config";
			this.config.Size = new Size(58, 63);
			this.config.TabIndex = 4;
			this.config.TabStop = false;
			this.config.MouseLeave += new EventHandler(this.config_MouseLeave);
			this.config.MouseMove += new MouseEventHandler(this.config_MouseMove);
			this.config.Click += new EventHandler(this.config_Click);
			this.config.MouseHover += new EventHandler(this.config_MouseHover);
			this.record.BackgroundImage = Resources.luzhi2;
			this.record.BackgroundImageLayout = ImageLayout.Center;
			this.record.Location = new Point(0, 0);
			this.record.Name = "record";
			this.record.Size = new Size(58, 63);
			this.record.TabIndex = 3;
			this.record.TabStop = false;
			this.record.MouseLeave += new EventHandler(this.record_MouseLeave);
			this.record.MouseMove += new MouseEventHandler(this.record_MouseMove);
			this.record.Click += new EventHandler(this.record_Click);
			this.review.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.review.BackgroundImage = Resources.Folder1;
			this.review.BackgroundImageLayout = ImageLayout.Stretch;
			this.review.Location = new Point(120, 0);
			this.review.Name = "review";
			this.review.Size = new Size(60, 63);
			this.review.TabIndex = 2;
			this.review.TabStop = false;
			this.review.MouseLeave += new EventHandler(this.review_MouseLeave);
			this.review.MouseMove += new MouseEventHandler(this.pictureBox2_MouseMove);
			this.review.Click += new EventHandler(this.Review_Click);
			this.review.MouseHover += new EventHandler(this.review_MouseHover);
			this.textBoxPath.Anchor = (AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right);
			this.textBoxPath.Location = new Point(4, 64);
			this.textBoxPath.Multiline = true;
			this.textBoxPath.Name = "textBoxPath";
			this.textBoxPath.Size = new Size(170, 61);
			this.textBoxPath.TabIndex = 10;
			this.statusStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.toolStripProgressBar1
			});
			this.statusStrip1.Location = new Point(0, 169);
			this.statusStrip1.Name = "statusStrip1";
			this.statusStrip1.Size = new Size(179, 26);
			this.statusStrip1.TabIndex = 11;
			this.statusStrip1.Text = "statusStrip1";
			this.toolStripProgressBar1.BackColor = Color.Bisque;
			this.toolStripProgressBar1.ForeColor = Color.DarkSlateGray;
			this.toolStripProgressBar1.Name = "toolStripProgressBar1";
			this.toolStripProgressBar1.Size = new Size(100, 20);
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.Controls.Add(this.statusStrip1);
			base.Controls.Add(this.textBoxPath);
			base.Controls.Add(this.startStop);
			base.Controls.Add(this.labelCurPos);
			base.Controls.Add(this.numericUpDown1);
			base.Controls.Add(this.config);
			base.Controls.Add(this.record);
			base.Controls.Add(this.review);
			base.Name = "ljtStorage";
			base.Size = new Size(179, 195);
			base.Load += new EventHandler(this.ljtStorage_Load);
			((ISupportInitialize)this.numericUpDown1).EndInit();
			((ISupportInitialize)this.startStop).EndInit();
			((ISupportInitialize)this.config).EndInit();
			((ISupportInitialize)this.record).EndInit();
			((ISupportInitialize)this.review).EndInit();
			this.statusStrip1.ResumeLayout(false);
			this.statusStrip1.PerformLayout();
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
