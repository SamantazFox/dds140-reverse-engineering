using System;
using System.Threading;
using System.Windows.Forms;

namespace WindowsApplication1
{
	internal static class Program
	{
		[STAThread]
		private static void Main()
		{
			bool flag;
			using (Mutex mutex = new Mutex(true, "Global\\" + Application.ProductName, out flag))
			{
				if (flag)
				{
					mutex.ReleaseMutex();
					Application.EnableVisualStyles();
					Application.SetCompatibleTextRenderingDefault(false);
					Formloading formloading = new Formloading();
					formloading.WindowState = FormWindowState.Normal;
					formloading.Show();
					Thread.Sleep(2000);
					formloading.Close();
					Application.Run(new Form1());
				}
				else
				{
					MessageBox.Show(DstingsRes.StringOneInstance);
				}
			}
		}
	}
}
