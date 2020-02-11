using System;
using System.Threading;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class EventCheckThread
	{
		private delegate void EventCheckThreadDelegate();

		private volatile int EventTimeout;

		private volatile bool _shouldStop;

		private Form1 c;

		public int Listcount;

		private EventCheckThread.EventCheckThreadDelegate EventDelegate;

		public void RequestStop()
		{
			this._shouldStop = true;
		}

		private void beginInvokeMethod()
		{
			double num = globleVariables.g_scale * globleVariables.g_CurrentScale_ch0 * (double)this.c.m_ch1ProbeX / 255.0;
			double num2 = (double)((float)(MyDLLimport.GetData(6) - (double)globleVariables.g_VbiasZero0)) * num;
			double num3 = (double)((float)(MyDLLimport.GetData(7) - (double)globleVariables.g_VbiasZero0)) * num;
			double num4 = (MyDLLimport.GetData(9) - (double)globleVariables.g_VbiasZero0) * num;
			double num5 = MyDLLimport.GetData(8) * num;
			double num6 = MyDLLimport.GetData(5);
			if ((globleVariables.g_ChannelMask & 128) == 128)
			{
				num6 /= 2.0;
			}
			double num7 = MyDLLimport.GetData(16) * 1000.0;
			double num8 = MyDLLimport.GetData(17) * 1000.0;
			double num9 = MyDLLimport.GetData(18) * 1000.0;
			double data = MyDLLimport.GetData(19);
			double num10 = MyDLLimport.GetData(15) * 1000.0;
			if (globleVariables.g_knobSelect == 2u)
			{
				num6 *= 1.6;
				num7 /= 1.6;
				num8 /= 1.6;
				num9 /= 1.6;
				num10 /= 1.6;
			}
			MyDLLimport.SetData(0, num6);
			MyDLLimport.SetData(1, num2);
			MyDLLimport.SetData(2, num3);
			MyDLLimport.SetData(3, num5);
			MyDLLimport.SetData(4, num4);
			double num11 = globleVariables.g_scale2 * globleVariables.g_CurrentScale_ch1 * (double)this.c.m_ch2ProbeX / 255.0;
			double num12 = (double)((float)(MyDLLimport.GetData(1) - (double)globleVariables.g_VbiasZero1)) * num11;
			double num13 = (double)((float)(MyDLLimport.GetData(2) - (double)globleVariables.g_VbiasZero1)) * num11;
			double num14 = (MyDLLimport.GetData(4) - (double)globleVariables.g_VbiasZero1) * num11;
			double num15 = MyDLLimport.GetData(3) * num11;
			double num16 = MyDLLimport.GetData(0);
			double num17 = MyDLLimport.GetData(11) * 1000.0;
			double num18 = MyDLLimport.GetData(12) * 1000.0;
			double num19 = MyDLLimport.GetData(13) * 1000.0;
			double data2 = MyDLLimport.GetData(14);
			double num20 = MyDLLimport.GetData(10) * 1000.0;
			if (globleVariables.g_knobSelect == 2u)
			{
				num16 *= 1.6;
				num17 /= 1.6;
				num18 /= 1.6;
				num19 /= 1.6;
				num20 /= 1.6;
			}
			MyDLLimport.SetData(5, num16);
			MyDLLimport.SetData(6, num12);
			MyDLLimport.SetData(7, num13);
			MyDLLimport.SetData(8, num15);
			MyDLLimport.SetData(9, num14);
			globleVariables.m_refresh[0].Value = num2;
			globleVariables.m_refresh[1].Value = num3;
			globleVariables.m_refresh[2].Value = num5;
			globleVariables.m_refresh[3].Value = num6;
			globleVariables.m_refresh[4].Value = num4;
			globleVariables.m_refresh[5].Value = num7;
			globleVariables.m_refresh[6].Value = num8;
			globleVariables.m_refresh[7].Value = num9;
			globleVariables.m_refresh[8].Value = data;
			globleVariables.m_refresh[9].Value = num10;
			globleVariables.m_refresh[10].Value = num5 * 0.707 / 2.0;
			globleVariables.m_refresh[11].Value = num12;
			globleVariables.m_refresh[12].Value = num13;
			globleVariables.m_refresh[13].Value = num15;
			globleVariables.m_refresh[14].Value = num16;
			globleVariables.m_refresh[15].Value = num14;
			globleVariables.m_refresh[16].Value = num17;
			globleVariables.m_refresh[17].Value = num18;
			globleVariables.m_refresh[18].Value = num19;
			globleVariables.m_refresh[19].Value = data2;
			globleVariables.m_refresh[20].Value = num20;
			globleVariables.m_refresh[21].Value = num15 * 0.707 / 2.0;
			this.UpdateListValue();
			if (globleVariables.g_TrigMode == 2)
			{
				this.c.GraphView.ChartY(1);
			}
			else if (globleVariables.g_TrigMode == 0 && globleVariables.g_TrigSourceChan == 2)
			{
				this.c.GraphView.ChartY(1);
				this.c.ReSettoolStripButTstart();
			}
			else if (globleVariables.g_FuncIndex == 0)
			{
				this.c.GraphView.ChartY(0);
			}
			else if (globleVariables.g_FuncIndex == 2)
			{
				this.c.LogicView.ChartY(0);
			}
			if (globleVariables.m_bDrawFFTorNot && globleVariables.g_FuncIndex == 0)
			{
				globleVariables.g_fFreq = globleVariables.FreqCaculate(globleVariables.m_FFT4Dispaly_amplitude, globleVariables.m_FFT4Dispaly_angle, 0);
				globleVariables.g_fFreq2 = globleVariables.FreqCaculate(globleVariables.m_FFT4Dispaly_amplitude2, globleVariables.m_FFT4Dispaly_angle2, 1);
				this.c.myffTctrl1.m_dbAtitudePara = globleVariables.g_fftFreqAltitude;
				this.c.myffTctrl1.m_dbAtitudePara2 = globleVariables.g_fftFreqAltitude2;
				globleVariables.m_Ch2fftDCvalue *= num11;
				this.c.propertyGrid1.SelectedObject = this.c.propertySet;
				this.c.propertySet.Ch1Frequency = globleVariables.g_fFreq.ToString("0.000");
				this.c.propertySet.Ch1Amplitude = num4.ToString("0.000");
				this.c.propertySet.Ch2Frequency = globleVariables.g_fFreq2.ToString("0.000");
				this.c.propertySet.Ch2Amplitude = globleVariables.m_Ch2fftDCvalue.ToString("0.000");
				byte max = 255;
				this.c.myffTctrl1.ChartFFT(max, globleVariables.m_FFT4Dispaly_amplitude, globleVariables.m_FFT4Dispaly_angle, globleVariables.m_FFT4Dispaly_amplitude2, globleVariables.dbFFTfreqTransParameter, globleVariables.m_Ch1fftDCvalue, globleVariables.g_fftFreqAltitude, (double)globleVariables.g_fFreq, (int)globleVariables.g_ChannelMask, 1024);
			}
			if (globleVariables.g_StoreframeCnt != 0u)
			{
				globleVariables.g_StoreframeCnt -= 1u;
				this.c.ljtStorage1.SetIconBlink(globleVariables.g_StoreframeCnt % 2u);
				uint num21 = (uint)((int)MyDLLimport.GetBuffer4Wr(0) + (int)globleVariables.g_pBufferIndex);
				this.c.ljtStorage1.SetData((IntPtr)((long)((ulong)num21)), (int)globleVariables.g_Origin_TrigIndex);
				this.c.ljtStorage1.SetProgress((int)this.c.ljtStorage1.GetFrameCnt(), (int)(this.c.ljtStorage1.GetFrameCnt() - globleVariables.g_StoreframeCnt));
				return;
			}
			if (globleVariables.g_storageState == 1u)
			{
				this.c.ljtStorage1.SetFileClose();
				this.c.ljtStorage1.SetIconBlink(1u);
				globleVariables.g_storageState = 0u;
				string fileFullName = this.c.ljtStorage1.GetFileFullName();
				this.c.Mbox(fileFullName, "Notice");
				this.c.SetButtonsEnable(true);
				this.c.ljtStorage1.SetProgress(100, 100);
			}
		}

		private void UpdateListValue()
		{
			int num = 0;
			lock (globleVariables.g_lockMeasureList)
			{
				for (int i = 0; i < 22; i++)
				{
					if (globleVariables.m_refresh[i].Bechecked)
					{
						this.c.m_MyDbufferedListView.Items[num++].SubItems[3].Text = string.Format("{0:0.000}", globleVariables.m_refresh[i].Value);
					}
				}
			}
		}

		public EventCheckThread(Control c)
		{
			this.c = (Form1)c;
			this.EventTimeout = 2000;
			this._shouldStop = false;
			this.EventDelegate = new EventCheckThread.EventCheckThreadDelegate(this.beginInvokeMethod);
		}

		public void DoWork()
		{
			while (!this._shouldStop)
			{
				globleVariables.g_CurrentEventID = MyDLLimport.EventCheck(this.EventTimeout);
				if (globleVariables.g_CurrentEventID != 1365 && globleVariables.g_CurrentEventID != -1)
				{
					this.c.Invoke(this.EventDelegate);
				}
				Thread.Sleep(100);
			}
		}
	}
}
