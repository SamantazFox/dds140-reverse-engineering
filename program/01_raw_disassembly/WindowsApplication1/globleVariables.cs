using System;

namespace WindowsApplication1
{
	internal class globleVariables
	{
		public struct DAQ_GLOBLE_SETTING
		{
			public uint g_ReadDataCount;

			public uint g_DisplayDataCount;

			public uint g_PixarNum4ChartZone;

			public double g_dataNumPerPixar;
		}

		public struct RefreshList
		{
			public bool Bechecked;

			public string Name;

			public string Uint;

			public double Value;
		}

		public struct tagCOMPLEX
		{
			public double Re;

			public double Im;
		}

		public static globleVariables.RefreshList[] m_refresh = new globleVariables.RefreshList[22];

		public static object g_lockMeasureList = new object();

		public static int m_Ch1orCh2 = 0;

		public static uint g_CurrentFileReadNum = 1u;

		public static uint g_TotleFileReadNum = 0u;

		public static byte g_FuncIndex = 0;

		public static bool g_bUserEnabled = true;

		public static double FreqCH1 = 0.0;

		public static double PeriodCH1 = 0.0;

		public static int Maxch1 = 0;

		public static int Minch1 = 255;

		public static int VbaseCH1 = 255;

		public static int VtopCH1 = 0;

		public static string g_Version = "  Version 1.4";

		public static int g_DividedNum = 1;

		public static int g_AverageCH1 = 0;

		public static double PosWidth1 = 0.0;

		public static double NegWidth1 = 0.0;

		public static double DutyRate1 = 0.0;

		public static double RiseTime1 = 0.0;

		public static uint g_EventNum = 1u;

		public static int g_CurrentEventID = 0;

		public static double PeriodCH2 = 0.0;

		public static int Maxch2 = 0;

		public static int Minch2 = 255;

		public static int VbaseCH2 = 255;

		public static int VtopCH2 = 0;

		public static int Vp2pCH2 = 0;

		public static int g_AverageCH2 = 0;

		public static double PosWidth2 = 0.0;

		public static double NegWidth2 = 0.0;

		public static double DutyRate2 = 0.0;

		public static double RiseTime2 = 0.0;

		public static byte g_CtrlByte0 = 0;

		public static byte g_CtrlByte1 = 0;

		public static int m_ZrroUniInt = 0;

		public static ulong g_FreUpperLimit = 20000000uL;

		public static ulong g_FreUpperLimitPWM = 20000uL;

		public static uint g_infoPace = 0u;

		public static uint g_knobSelect = 1u;

		public static uint g_knobVolatageSelect = 0u;

		public static uint g_knobVolatageSelect2 = 0u;

		public static byte g_TrigSourceChan = 0;

		public static byte Max = 0;

		public static float realMax = 0f;

		public static float realMin = 0f;

		public static byte Min = 255;

		public static byte g_average = 0;

		public static byte g_shape = 0;

		public static bool g_conbineChan = false;

		public static IntPtr g_pBuffer = (IntPtr)0;

		public static IntPtr g_pSinglBuffer = (IntPtr)0;

		public static uint g_pBufferIndex = 0u;

		public static double g_CurrentScale_ch0 = 1.25;

		public static double g_VbiasScale_1V_ch0 = 1.25;

		public static double g_VbiasScale_200mV_ch0 = 1.25;

		public static double g_VbiasScale_500mV_ch0 = 1.25;

		public static double g_VbiasScale_100mV_ch0 = 1.25;

		public static double g_VbiasScale_50mV_ch0 = 1.25;

		public static double g_CurrentScale_ch1 = 1.25;

		public static double g_VbiasScale_1V_ch1 = 1.25;

		public static double g_VbiasScale_200mV_ch1 = 1.25;

		public static double g_VbiasScale_500mV_ch1 = 1.25;

		public static double g_VbiasScale_100mV_ch1 = 1.25;

		public static double g_VbiasScale_50mV_ch1 = 1.25;

		public static byte g_VbiasZero0 = 128;

		public static byte g_VbiasZero1 = 128;

		public static byte g_VbiasZero01v = 128;

		public static byte g_VbiasZero11v = 128;

		public static byte g_VbiasZero0500mv = 128;

		public static byte g_VbiasZero1500mv = 128;

		public static byte g_VbiasZero0100mv = 128;

		public static byte g_VbiasZero1100mv = 128;

		public static byte g_VbiasZero050mv = 128;

		public static byte g_VbiasZero150mv = 128;

		public static double dbFFTfreqTransParameter = 1.0;

		public static double g_DCch1 = 0.0;

		public static double g_DCch2 = 0.0;

		public static int g_comboTimeBaseSelectedIndex = 0;

		public static int g_comboNSSelectedIndex = 0;

		public static bool bDrawZoomOrnot = false;

		public static uint g_ZoomedStart = 0u;

		public static uint g_ZoomedLength = 0u;

		public static double m_CurrentFreq = 100000.0;

		public static float g_fFreq = 0f;

		public static float g_fFreq2 = 0f;

		public static byte g_ChannelMask = 1;

		public static byte g_TrigMode = 0;

		public static byte g_TrigEdgeFlag = 1;

		public static byte g_MathFlag = 0;

		public static double g_scale = 10.0;

		public static double g_scale2 = 10.0;

		public static byte[] g_SingleTriData = new byte[4096];

		public static byte[] g_SingleTriData2 = new byte[4096];

		public static int g_DeviceOpenResult = -1;

		public static int g_DeviceOpenResult2 = -1;

		public static int g_DAQstate = -1;

		public static int[] g_DDSstate = new int[2];

		public static object g_lockThis = new object();

		public static object g_lockIO = new object();

		public static globleVariables.DAQ_GLOBLE_SETTING g_GlobSetting_struc = default(globleVariables.DAQ_GLOBLE_SETTING);

		public static uint g_storageState = 0u;

		public static uint g_StoreframeCnt = 0u;

		public static bool m_bDrawFFTorNot = false;

		public static int m_LogicTrigCnt = 0;

		public static double g_RangeY = 0.5;

		public static double g_RangeY2 = 0.5;

		public static double m_Ch1fftDCvalue = 0.0;

		public static double m_Ch2fftDCvalue = 0.0;

		public static double g_fftFreqAltitude = 0.0;

		public static double g_fftFreqAltitude2 = 0.0;

		public static int g_fftFreqIndex = 1;

		public static uint m_numFFT4Dispaly = 1024u;

		public static double wFFT4Dispaly = 6.2831852 / globleVariables.m_numFFT4Dispaly;

		public static int FFTNv2 = (int)(globleVariables.m_numFFT4Dispaly / 2u);

		public static double[] m_FFT4Dispaly_amplitude = new double[globleVariables.m_numFFT4Dispaly * 2u];

		public static double[] m_FFT4Dispaly_amplitude2 = new double[globleVariables.m_numFFT4Dispaly * 2u];

		public static double[] m_FFT4Dispaly_angle = new double[globleVariables.m_numFFT4Dispaly * 2u];

		public static double[] m_FFT4Dispaly_angle2 = new double[globleVariables.m_numFFT4Dispaly * 2u];

		public static globleVariables.tagCOMPLEX[] m_FFT4DispalyX = new globleVariables.tagCOMPLEX[globleVariables.m_numFFT4Dispaly * 2u];

		public static globleVariables.tagCOMPLEX[] m_FFT4Dispalycomplex = new globleVariables.tagCOMPLEX[globleVariables.m_numFFT4Dispaly * 2u];

		public static int m_WinFun = 5;

		public static int m_WinFun1 = 5;

		public static int m_MesureCh = 1;

		public static int g_TrigIndex = 0;

		public static uint g_Origin_TrigIndex = 0u;

		public static double channal = 0.0;

		public static double FFTcore(int L, uint numFFT4Dispaly, double[] FFT4Dispaly_amplitude, double[] FFT4Dispaly_angle, double zero)
		{
			int num = 0;
			int num2 = 0;
			while ((long)num2 < (long)((ulong)(numFFT4Dispaly - 1u)))
			{
				if (num2 < num)
				{
					globleVariables.tagCOMPLEX tagCOMPLEX = globleVariables.m_FFT4DispalyX[num2];
					globleVariables.m_FFT4DispalyX[num2] = globleVariables.m_FFT4DispalyX[num];
					globleVariables.m_FFT4DispalyX[num] = tagCOMPLEX;
				}
				int i;
				for (i = globleVariables.FFTNv2; i <= num; i /= 2)
				{
					num -= i;
				}
				num += i;
				num2++;
			}
			num = 0;
			for (int j = 1; j <= L; j++)
			{
				int num3 = (int)Math.Pow(2.0, (double)j);
				int num4 = num3 / 2;
				int num5 = (int)Math.Pow(2.0, (double)(L - j));
				num2 = 0;
				while ((long)num2 < (long)((ulong)(numFFT4Dispaly / 2u)) && (long)num < (long)((ulong)(numFFT4Dispaly / 2u)))
				{
					int num6 = num2;
					while ((long)num6 < (long)((ulong)numFFT4Dispaly))
					{
						globleVariables.tagCOMPLEX tagCOMPLEX2 = globleVariables.m_FFT4DispalyX[num6];
						globleVariables.tagCOMPLEX tagCOMPLEX3;
						tagCOMPLEX3.Re = globleVariables.m_FFT4DispalyX[num6 + num4].Re * globleVariables.m_FFT4Dispalycomplex[num].Re - globleVariables.m_FFT4DispalyX[num6 + num4].Im * globleVariables.m_FFT4Dispalycomplex[num].Im;
						tagCOMPLEX3.Im = globleVariables.m_FFT4DispalyX[num6 + num4].Re * globleVariables.m_FFT4Dispalycomplex[num].Im + globleVariables.m_FFT4DispalyX[num6 + num4].Im * globleVariables.m_FFT4Dispalycomplex[num].Re;
						globleVariables.m_FFT4DispalyX[num6].Re = tagCOMPLEX2.Re + tagCOMPLEX3.Re;
						globleVariables.m_FFT4DispalyX[num6].Im = tagCOMPLEX2.Im + tagCOMPLEX3.Im;
						globleVariables.m_FFT4DispalyX[num6 + num4].Re = tagCOMPLEX2.Re - tagCOMPLEX3.Re;
						globleVariables.m_FFT4DispalyX[num6 + num4].Im = tagCOMPLEX2.Im - tagCOMPLEX3.Im;
						num6 += num3;
					}
					if ((long)num < (long)((ulong)(numFFT4Dispaly / 2u)))
					{
						num += num5;
					}
					num2++;
				}
				num = 0;
			}
			FFT4Dispaly_amplitude[0] = Math.Sqrt(globleVariables.m_FFT4DispalyX[0].Re * globleVariables.m_FFT4DispalyX[0].Re + globleVariables.m_FFT4DispalyX[0].Im * globleVariables.m_FFT4DispalyX[0].Im) / numFFT4Dispaly - zero;
			if (globleVariables.channal == 0.0)
			{
				globleVariables.m_Ch1fftDCvalue = FFT4Dispaly_amplitude[0];
			}
			else
			{
				globleVariables.m_Ch2fftDCvalue = FFT4Dispaly_amplitude[0];
			}
			double num7 = 0.0;
			double result = 0.0;
			num2 = 1;
			while ((long)num2 < (long)((ulong)(numFFT4Dispaly / 2u)))
			{
				FFT4Dispaly_amplitude[num2] = Math.Sqrt(globleVariables.m_FFT4DispalyX[num2].Re * globleVariables.m_FFT4DispalyX[num2].Re + globleVariables.m_FFT4DispalyX[num2].Im * globleVariables.m_FFT4DispalyX[num2].Im) * 2.0 / numFFT4Dispaly;
				FFT4Dispaly_angle[num2 - 1] = Math.Atan2(globleVariables.m_FFT4DispalyX[num2 - 1].Im, globleVariables.m_FFT4DispalyX[num2 - 1].Re) * 180.0 / 3.1415926 * 0.2 + 30.0;
				if (num7 < FFT4Dispaly_amplitude[num2])
				{
					num7 = FFT4Dispaly_amplitude[num2];
					result = (double)num2;
				}
				num2++;
			}
			return result;
		}

		public unsafe static float FreqCaculate(double[] FFT4Dispaly_amplitude, double[] FFT4Dispaly_angle, byte ch)
		{
			if (globleVariables.g_FuncIndex == 2)
			{
				return 0f;
			}
			float num = 1f;
			int num2 = 1;
			if (globleVariables.g_GlobSetting_struc.g_dataNumPerPixar >= 4.0)
			{
				num2 = 4;
			}
			else if (globleVariables.g_GlobSetting_struc.g_dataNumPerPixar >= 2.0)
			{
				num2 = (int)globleVariables.g_GlobSetting_struc.g_dataNumPerPixar;
			}
			globleVariables.Max = 0;
			globleVariables.Min = 255;
			IntPtr rawData4Read = MyDLLimport.GetRawData4Read(0);
			IntPtr rawData4Read2 = MyDLLimport.GetRawData4Read(1);
			byte* ptr = (byte*)((void*)rawData4Read);
			byte* ptr2 = (byte*)((void*)rawData4Read2);
			double zero;
			if (ch == 0)
			{
				globleVariables.channal = 0.0;
				int num3 = 0;
				while ((long)num3 < (long)((ulong)globleVariables.m_numFFT4Dispaly))
				{
					globleVariables.m_FFT4DispalyX[num3].Re = (double)ptr[(IntPtr)num3 * (IntPtr)num2];
					globleVariables.m_FFT4DispalyX[num3].Im = 0.0;
					num3++;
				}
				zero = (double)globleVariables.g_VbiasZero0;
				int num4 = 0;
				while ((long)num4 < (long)((ulong)globleVariables.m_numFFT4Dispaly))
				{
					globleVariables.m_FFT4DispalyX[num4].Re = globleVariables.m_FFT4DispalyX[num4].Re * globleVariables.WinFun(globleVariables.m_WinFun, num4, (int)globleVariables.m_numFFT4Dispaly);
					num4++;
				}
			}
			else
			{
				if (ch != 1)
				{
					return 0f;
				}
				globleVariables.channal = 1.0;
				int num5 = 0;
				while ((long)num5 < (long)((ulong)globleVariables.m_numFFT4Dispaly))
				{
					globleVariables.m_FFT4DispalyX[num5].Re = (double)ptr2[(IntPtr)num5 * (IntPtr)num2];
					globleVariables.m_FFT4DispalyX[num5].Im = 0.0;
					num5++;
				}
				zero = (double)globleVariables.g_VbiasZero1;
				int num6 = 0;
				while ((long)num6 < (long)((ulong)globleVariables.m_numFFT4Dispaly))
				{
					globleVariables.m_FFT4DispalyX[num6].Re = globleVariables.m_FFT4DispalyX[num6].Re * globleVariables.WinFun(globleVariables.m_WinFun1, num6, (int)globleVariables.m_numFFT4Dispaly);
					num6++;
				}
			}
			double num7 = globleVariables.FFTcore(10, globleVariables.m_numFFT4Dispaly, FFT4Dispaly_amplitude, FFT4Dispaly_angle, zero);
			if (globleVariables.g_GlobSetting_struc.g_dataNumPerPixar < 2.0)
			{
				num2 = 1;
			}
			else
			{
				num2 = (int)globleVariables.g_GlobSetting_struc.g_dataNumPerPixar;
			}
			if (globleVariables.g_knobSelect == 9u)
			{
				globleVariables.dbFFTfreqTransParameter = 80000.0 / globleVariables.m_numFFT4Dispaly / (double)num2;
			}
			else if (globleVariables.g_knobSelect == 8u)
			{
				if (globleVariables.g_comboTimeBaseSelectedIndex <= 1)
				{
					globleVariables.dbFFTfreqTransParameter = 625.0 / globleVariables.m_numFFT4Dispaly / (double)num2;
				}
				else if (globleVariables.g_comboTimeBaseSelectedIndex <= 5)
				{
					globleVariables.dbFFTfreqTransParameter = 39.0625 / globleVariables.m_numFFT4Dispaly / (double)num2;
				}
				else
				{
					globleVariables.dbFFTfreqTransParameter = 9.765625 / globleVariables.m_numFFT4Dispaly / (double)num2;
				}
			}
			else if (globleVariables.g_knobSelect >= 5u)
			{
				globleVariables.dbFFTfreqTransParameter = 10000.0 / globleVariables.m_numFFT4Dispaly / (double)num2;
			}
			else
			{
				globleVariables.dbFFTfreqTransParameter = 80000.0 / globleVariables.m_numFFT4Dispaly / (double)num2;
			}
			num7 *= globleVariables.dbFFTfreqTransParameter;
			if (num7 > 50000.0)
			{
				num7 = 0.0;
			}
			if (num == 0f)
			{
				return num;
			}
			return (float)num7;
		}

		public static double WinFun(int num, int i, int N)
		{
			double result;
			switch (num)
			{
			case 0:
				result = globleVariables.Hanning(i, N);
				break;
			case 1:
				result = globleVariables.Hamming(i, N);
				break;
			case 2:
				result = globleVariables.Blackman(i, N);
				break;
			default:
				result = 1.0;
				break;
			}
			return result;
		}

		public static double Hanning(int i, int N)
		{
			double num = 3.1415926;
			double[] array = new double[N];
			array[i] = 0.5 - 0.5 * Math.Cos(2.0 * num * (double)i / (double)(N - 1));
			return array[i];
		}

		public static double Hamming(int i, int N)
		{
			double num = 3.1415926;
			double[] array = new double[N];
			array[i] = 0.53836 - 0.46164 * Math.Cos(2.0 * num * (double)i / (double)(N - 1));
			return array[i];
		}

		public static double rectangular(int i, int N)
		{
			double[] array = new double[N];
			array[i] = 1.0;
			return array[i];
		}

		public static double Blackman(int i, int N)
		{
			double num = 3.1415926;
			double[] array = new double[N];
			array[i] = 0.42 - 0.5 * Math.Cos(2.0 * num * (double)i / (double)(N - 1)) + 0.08 * Math.Cos(4.0 * num * (double)i / (double)(N - 1));
			return array[i];
		}
	}
}
