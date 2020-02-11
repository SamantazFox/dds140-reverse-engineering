using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace storefileCtrol
{
	public class CfgForm : Form
	{
		private IContainer components;

		private TrackBar trackBar1;

		private Label FramNum;

		private Button OKbutton;

		public GroupBox groupBox2;

		public CfgForm()
		{
			this.InitializeComponent();
			this.trackBar1.Maximum = 450;
			this.trackBar1.Minimum = 10;
			this.trackBar1.TickFrequency = 20;
			this.trackBar1.LargeChange = 20;
			this.trackBar1.Value = (int)ljtStorage.m_StorageCnt;
		}

		private void OKbutton_Click(object sender, EventArgs e)
		{
			base.Close();
		}

		private void buttonCancel_Click(object sender, EventArgs e)
		{
			base.Close();
		}

		private void browseButton_Click(object sender, EventArgs e)
		{
		}

		private void trackBar1_LocationChanged(object sender, EventArgs e)
		{
		}

		private void trackBar1_ValueChanged(object sender, EventArgs e)
		{
			ljtStorage.m_StorageCnt = (uint)this.trackBar1.Value;
			this.FramNum.Text = this.trackBar1.Value.ToString();
		}

		private void groupBox2_Enter(object sender, EventArgs e)
		{
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
			this.FramNum = new Label();
			this.groupBox2 = new GroupBox();
			this.OKbutton = new Button();
			((ISupportInitialize)this.trackBar1).BeginInit();
			this.groupBox2.SuspendLayout();
			base.SuspendLayout();
			this.trackBar1.BackColor = SystemColors.Control;
			this.trackBar1.Location = new Point(6, 33);
			this.trackBar1.Maximum = 100;
			this.trackBar1.Minimum = 5;
			this.trackBar1.Name = "trackBar1";
			this.trackBar1.Size = new Size(287, 45);
			this.trackBar1.TabIndex = 2;
			this.trackBar1.Value = 10;
			this.trackBar1.LocationChanged += new EventHandler(this.trackBar1_LocationChanged);
			this.trackBar1.ValueChanged += new EventHandler(this.trackBar1_ValueChanged);
			this.FramNum.AutoSize = true;
			this.FramNum.Font = new Font("Verdana", 15.75f, FontStyle.Bold, GraphicsUnit.Point, 0);
			this.FramNum.ForeColor = Color.Teal;
			this.FramNum.Location = new Point(295, 34);
			this.FramNum.Name = "FramNum";
			this.FramNum.Size = new Size(42, 25);
			this.FramNum.TabIndex = 3;
			this.FramNum.Text = "10";
			this.groupBox2.Controls.Add(this.trackBar1);
			this.groupBox2.Controls.Add(this.FramNum);
			this.groupBox2.ForeColor = Color.Black;
			this.groupBox2.Location = new Point(12, 17);
			this.groupBox2.Name = "groupBox2";
			this.groupBox2.Size = new Size(350, 79);
			this.groupBox2.TabIndex = 7;
			this.groupBox2.TabStop = false;
			this.groupBox2.Text = "设定波形存储的帧数";
			this.groupBox2.Enter += new EventHandler(this.groupBox2_Enter);
			this.OKbutton.Font = new Font("Verdana", 15f, FontStyle.Bold, GraphicsUnit.Point, 0);
			this.OKbutton.Location = new Point(374, 23);
			this.OKbutton.Name = "OKbutton";
			this.OKbutton.Size = new Size(72, 73);
			this.OKbutton.TabIndex = 8;
			this.OKbutton.Text = "OK";
			this.OKbutton.UseVisualStyleBackColor = true;
			this.OKbutton.Click += new EventHandler(this.OKbutton_Click);
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(458, 121);
			base.Controls.Add(this.OKbutton);
			base.Controls.Add(this.groupBox2);
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CfgForm";
			this.Text = "configurations";
			((ISupportInitialize)this.trackBar1).EndInit();
			this.groupBox2.ResumeLayout(false);
			this.groupBox2.PerformLayout();
			base.ResumeLayout(false);
		}
	}
}
