using System;

namespace storefileCtrol
{
	public struct StreamParaHead
	{
		public byte channelMask;

		public byte KnobSelect;

		public byte KnobSelectComboIdx;

		public byte KnobVoltageSelect;

		public byte KnobVoltageSelect2;

		public byte VbiasZero01v;

		public byte VbiasZero11v;

		public byte VbiasZero0500mv;

		public byte VbiasZero1500mv;

		public byte VbiasZero0100mv;

		public byte VbiasZero1100mv;

		public byte VbiasZero050mv;

		public byte VbiasZero150mv;

		public double Vscale_1v_ch0;

		public double Vscale_1v_ch1;

		public double Vscale_500mv_ch0;

		public double Vscale_500mv_ch1;

		public double Vscale_200mv_ch0;

		public double Vscale_200mv_ch1;

		public double Vscale_100mv_ch0;

		public double Vscale_100mv_ch1;

		public double Vscale_50mv_ch0;

		public double Vscale_50mv_ch1;

		public byte TrigChan;

		public byte TrigeMode;

		public byte TrigEdge;

		public byte chan0ZeroLevel;

		public byte chan1ZeroLevel;

		public byte chan2ZeroLevel;

		public byte chan3ZeroLevel;

		public byte chan0Amp;

		public byte chan1Amp;

		public byte ch1CoupleFlg;

		public byte ch2CoupleFlg;

		public uint dataNumOneShot;

		public double dataNumPerPixar;

		public uint frameNumber;

		public byte TrigLevel0;

		public byte TrigLevel1;
	}
}
