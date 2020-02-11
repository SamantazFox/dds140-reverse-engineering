using System;
using System.Runtime.InteropServices;

namespace WindowsApplication1
{
	internal class MyDLLimport
	{
		[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode, Pack = 1)]
		public class DeviceBroadcastInterface
		{
			public int Size;

			public int DeviceType;

			public int Reserved;

			public Guid ClassGuid;

			[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 256)]
			public string Name;
		}

		[DllImport("user32.dll", CharSet = CharSet.Auto)]
		public static extern IntPtr RegisterDeviceNotification(IntPtr hRecipient, MyDLLimport.DeviceBroadcastInterface NotificationFilter, uint Flags);

		[DllImport("user32.dll", CharSet = CharSet.Auto)]
		public static extern uint UnregisterDeviceNotification(IntPtr hHandle);

		[DllImport("user32.dll", CharSet = CharSet.Auto)]
		public static extern IntPtr GetWindowDC(IntPtr hWnd);

		[DllImport("user32.dll")]
		public static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);

		[DllImport("user32")]
		public static extern int GetSystemMetrics(int nIndex);

		[DllImport("publicDLL.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
		public static extern void SetData(int index, double volt);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
		public static extern int DeviceOpen();

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
		public static extern int DeviceClose();

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
		public static extern int AiReadBulkData(int SampleCount, uint num, int ulTimeout, IntPtr PBuffer);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
		public static extern int EventCheck(int ulTimeout);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern byte USBCtrlTrans(byte Request, ushort usValue, uint outBufSize);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern int USBCtrlTransSimple(int Request);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern int DataPreDisposal(uint type, uint start, uint count);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern int TrigDataPrepare(byte level0, byte level1);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetBuffer4Read(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetBuffer4Wr(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetRawData4Read(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern bool ResetPipe();

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetInfo(double dataNumPerPixar, double currentSampleRate, byte ChannelMask, int m_ZrroUniInt, uint BufferOffset, uint HWbufferSize);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern double GetData(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetTrigInfo(byte TrigSourceChan, byte TrigMode, byte TrigEdgeFlag);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void BufferInit();

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetReadEnableOrNot(uint Readenable);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetStableEnableOrNot(uint Readenable);
	}
}
