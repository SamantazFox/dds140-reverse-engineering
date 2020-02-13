private void KnoBVolCH2_MYSelectChangedevent(uint i)
{
	switch (i)
	{
		case 0u:
			g_CtrlByte1 &= 249;

			USBCtrlTrans(35, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 1u:
			g_CtrlByte1 &= 249;

			USBCtrlTrans(35, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 2u:
			g_CtrlByte1 &= 249;
			g_CtrlByte1 |= 2;

			USBCtrlTrans(35, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 3u:
			g_CtrlByte1 &= 249;

			USBCtrlTrans(35, 64, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 4u:
			g_CtrlByte1 &= 249;
			g_CtrlByte1 |= 2;

			USBCtrlTrans(35, 64, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 5u:
			g_CtrlByte1 &= 249;
			g_CtrlByte1 |= 4;

			USBCtrlTrans(35, 64, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 9u:

			g_CtrlByte1 &= 249;

			USBCtrlTrans(35, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;
	}
}
