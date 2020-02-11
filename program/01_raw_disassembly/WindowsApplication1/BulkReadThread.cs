using System;
using System.Threading;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class BulkReadThread
	{
		private volatile bool _shouldStop;

		private volatile int EventTimeout;

		private Form1 c;

		public void RequestStop()
		{
			this._shouldStop = true;
		}

		public BulkReadThread(Control c)
		{
			this.c = (Form1)c;
			this.EventTimeout = 20000;
		}

		public void DoWork()
		{
			int num = 0;
			int num2 = 0;
			while (!this._shouldStop)
			{
				globleVariables.g_storageState = this.c.ljtStorage1.GetState();
				if (globleVariables.g_storageState != 2u)
				{
					if (globleVariables.g_FuncIndex == 2)
					{
						MyDLLimport.USBCtrlTrans(53, 0, 1u);
					}
					lock (globleVariables.g_lockIO)
					{
						MyDLLimport.USBCtrlTransSimple(51);
					}
					num = (int)globleVariables.g_GlobSetting_struc.g_ReadDataCount;
					if (globleVariables.g_knobSelect != 8u || globleVariables.g_comboTimeBaseSelectedIndex <= 6)
					{
						do
						{
							lock (globleVariables.g_lockIO)
							{
								num2 = MyDLLimport.USBCtrlTransSimple(80);
							}
						}
						while (33 != num2);
					}
					if ((long)globleVariables.g_CurrentEventID == (long)((ulong)(globleVariables.g_EventNum - 1u)) || globleVariables.g_CurrentEventID == 1365 || globleVariables.g_CurrentEventID == -1)
					{
						if (num <= 131072)
						{
							globleVariables.g_EventNum = 1u;
						}
						else if (num <= 1048576)
						{
							globleVariables.g_EventNum = (uint)(num / 1024 / 32);
						}
						else if (num <= 4194304)
						{
							globleVariables.g_EventNum = (uint)(num / 1024 / 64);
						}
						else if (num <= 5242880)
						{
							globleVariables.g_EventNum = (uint)(num / 1024 / 128);
						}
						else
						{
							globleVariables.g_EventNum = (uint)(num / 1024 / 256);
						}
						MyDLLimport.AiReadBulkData(num, globleVariables.g_EventNum, this.EventTimeout, globleVariables.g_pBuffer);
					}
					if (globleVariables.g_FuncIndex == 2)
					{
						MyDLLimport.USBCtrlTrans(53, 1, 1u);
					}
					Thread.Sleep(100);
					if (globleVariables.g_FuncIndex == 2)
					{
						Thread.Sleep(500);
					}
				}
			}
		}
	}
}
