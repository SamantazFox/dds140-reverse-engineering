using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class Formloading : Form
	{
		private IContainer components;

		private TextBox textBox1;

		public Formloading()
		{
			this.InitializeComponent();
			this.BackgroundImage = Image.FromFile("log.jpg");
			this.textBox1.Text = globleVariables.g_Version;
			this.textBox1.SelectionStart = 0;
			this.textBox1.SelectionLength = 0;
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
			this.textBox1 = new TextBox();
			base.SuspendLayout();
			this.textBox1.BackColor = SystemColors.AppWorkspace;
			this.textBox1.BorderStyle = BorderStyle.None;
			this.textBox1.Font = new Font("Arial", 10.5f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.textBox1.ForeColor = Color.White;
			this.textBox1.Location = new Point(1, 411);
			this.textBox1.Name = "textBox1";
			this.textBox1.ReadOnly = true;
			this.textBox1.Size = new Size(655, 17);
			this.textBox1.TabIndex = 0;
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.LemonChiffon;
			this.BackgroundImageLayout = ImageLayout.None;
			base.ClientSize = new Size(650, 427);
			base.Controls.Add(this.textBox1);
			base.FormBorderStyle = FormBorderStyle.None;
			base.Name = "Formloading";
			base.StartPosition = FormStartPosition.CenterScreen;
			this.Text = "Formloading";
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
