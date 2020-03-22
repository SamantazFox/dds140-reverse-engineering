private void PerformCfgIO()
{
	// Call handlers as if all the knobs have been updated
	this.TimeKnob_MYSelectChangedevent2(globleVariables.g_knobSelect);
	this.VoltageKnoB11_MYSelectChangedevent2(globleVariables.g_knobVolatageSelect);
	this.KnoBVolCH2_MYSelectChangedevent(globleVariables.g_knobVolatageSelect2);


	// Setup CH1 coupling
	//
	// The code below does the exact same thing as if we called this handler:
	//   ACDCtoolStripComboBox0_SelectedIndexChanged()
	//
	if (this.m_ch1CoupleFlg == 2)  // DC coupling
	{
		globleVariables.g_CtrlByte0 &= 239;
		globleVariables.g_CtrlByte0 |= 16;
	}
	elseif (this.m_ch1CoupleFlg == 1)  // AC coupling
	{
		globleVariables.g_CtrlByte0 &= 239;
	}

	MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);


	// Setup CH2 coupling
	//
	// The code below does the exact same thing as if we called this handler:
	//   ACDCtoolStripComboBox1_SelectedIndexChanged()
	//
	if (this.m_ch2CoupleFlg == 2)  // DC coupling
	{
		globleVariables.g_CtrlByte1 &= 239;
		globleVariables.g_CtrlByte1 |= 16;
	}
	elseif (this.m_ch2CoupleFlg == 1)  // AC coupling
	{
		globleVariables.g_CtrlByte1 &= 239;
	}

	MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);


	// Setup trigger
	if (globleVariables.g_TrigSourceChan == 2)
		MyDLLimport.USBCtrlTrans(231, 1, 1u);
	else
		MyDLLimport.USBCtrlTrans(231, 0, 1u);
}
