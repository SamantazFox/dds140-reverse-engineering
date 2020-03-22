private void VoltageKnoB11_MYSelectChangedevent2(uint i)
{
	switch (i)
	{
		case 0u:   // 2V scale
			g_CtrlByte1 &= 247;
			g_CtrlByte1 |= 8;

			USBCtrlTrans(34, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 1u:   // 1V scale
			g_CtrlByte1 &= 247;
			g_CtrlByte1 |= 8;

			USBCtrlTrans(34, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 2u:   // 0.5V scale
			g_CtrlByte1 &= 247;
			g_CtrlByte1 |= 8;

			USBCtrlTrans(34, 2, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 3u:   // 200mV scale
			g_CtrlByte1 &= 247;

			USBCtrlTrans(34, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 4u:   // 100mV scale
			g_CtrlByte1 &= 247;

			USBCtrlTrans(34, 2, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 5u:   // 50mV scale
			g_CtrlByte1 &= 247;

			USBCtrlTrans(34, 4, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;

		case 9u:   // 5V scale
			g_CtrlByte1 &= 247;
			g_CtrlByte1 |= 8;

			USBCtrlTrans(34, 0, 1u);
			USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);

			break;
	}
}
