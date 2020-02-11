using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class DoubleBufferedListV : ListView
	{
		private IContainer components;

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
		}

		public DoubleBufferedListV()
		{
			this.DoubleBuffered = true;
		}
	}
}
