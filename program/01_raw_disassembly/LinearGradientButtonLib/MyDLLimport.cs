using System;
using System.Runtime.InteropServices;

namespace LinearGradientButtonLib
{
	internal class MyDLLimport
	{
		[DllImport("Kernel32.dll", CharSet = CharSet.Ansi)]
		public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);

		[DllImport("Kernel32.dll", CharSet = CharSet.Ansi)]
		public static extern bool VirtualFree(IntPtr lpAddress, uint dwSize, uint dwFreeType);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern int DataPreDisposal(uint type, int start, uint count);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern int TrigDataPrepare(byte level0, byte level1);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetBuffer4Read(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetBuffer4Wr(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern IntPtr GetRawData4Read(int index);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern uint GetHWbufferSize();

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetInfo(double dataNumPerPixar, double CurrentFreq, byte ChannelMask, int m_ZrroUniInt, uint BufferOffset, uint HWbufferSize);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern byte GetInfoByte(int i);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern double GetInfodouble(int i);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void AutoMeasurement(int chSelect);

		[DllImport("USBInterFace.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
		public static extern void SetReadEnableOrNot(uint Readenable);
	}
}
