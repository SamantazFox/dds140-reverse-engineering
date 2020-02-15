public void TimeKnob_MYSelectChangedevent2(uint i)
{
	MyDLLimport.ResetPipe();

	if (i != 9u)
	{
		globleVariables.g_CtrlByte1 &= 254;

		globleVariables.g_conbineChan = false;
		globleVariables.g_ChannelMask &= 127;
	}
	else if (i == 9u)
	{
		if ((globleVariables.g_ChannelMask & 16) != 0)
		{
			this.ONOFFtoolStripComboBox1.SelectedIndex = 1;
			int arg_AF_0 = globleVariables.m_MesureCh;
		}

		globleVariables.g_CtrlByte1 &= 254;
		globleVariables.g_CtrlByte1 |= 1;

		globleVariables.g_conbineChan = true;
		globleVariables.g_ChannelMask |= 128;
	}

	MyDLLimport.USBCtrlTrans(36, (ushort) globleVariables.g_CtrlByte1, 1u);
	Thread.Sleep(10);

	if (i >= 5u && i < 8u)
	{
		globleVariables.g_CtrlByte0 &= 240;
		globleVariables.g_CtrlByte0 |= 12;
		this.GraphView.SetInformationSampleRate("10M");
		globleVariables.m_CurrentFreq = 10000.0;
		MyDLLimport.SetStableEnableOrNot(1u);
	}
	else if (i == 8u)
	{
		if (globleVariables.g_comboTimeBaseSelectedIndex <= 1)
		{
			globleVariables.g_CtrlByte0 &= 240;
			globleVariables.g_CtrlByte0 |= 8;
			this.GraphView.SetInformationSampleRate("625K");
			globleVariables.m_CurrentFreq = 625.0;
			MyDLLimport.SetStableEnableOrNot(1u);
		}
		else if (globleVariables.g_comboTimeBaseSelectedIndex <= 6)
		{
			globleVariables.g_CtrlByte0 &= 240;
			globleVariables.g_CtrlByte0 |= 11;
			this.GraphView.SetInformationSampleRate("39K");
			globleVariables.m_CurrentFreq = 39.0;
			MyDLLimport.SetStableEnableOrNot(0u);
		}
		else if (globleVariables.g_comboTimeBaseSelectedIndex >= 7)
		{
			globleVariables.g_CtrlByte0 &= 240;
			globleVariables.g_CtrlByte0 |= 10;
			this.GraphView.SetInformationSampleRate("240K");
			globleVariables.m_CurrentFreq = 240.0;
			MyDLLimport.SetStableEnableOrNot(0u);
		}
	}
	else if (i == 9u)
	{
		globleVariables.g_CtrlByte0 &= 240;
		this.GraphView.SetInformationSampleRate("200M");
		globleVariables.m_CurrentFreq = 160000.0;
		MyDLLimport.SetStableEnableOrNot(1u);
	}
	else
	{
		globleVariables.g_CtrlByte0 &= 240;
		this.GraphView.SetInformationSampleRate("100M");
		globleVariables.m_CurrentFreq = 80000.0;
		MyDLLimport.SetStableEnableOrNot(1u);
	}

	MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);

	Thread.Sleep(10);

	globleVariables.g_knobSelect = i;
	this.m_MystreamHead.KnobSelectComboIdx = 0;

	double num = 0.0;

	switch (i)
	{
		case 0u: num =  0.4; break;  //  0.25 us
		case 1u: num =  0.8; break;  //  0.5  us
		case 2u: num =  1.6; break;  //  1.0  us
		case 3u: num =  4.0; break;  //  2.5  us
		case 4u: num = 16.0; break;  // 10.0  us
		case 5u: num =  5.0; break;  // 25.0  us
		case 6u: num = 20.0; break;  //  0.1  ms
		case 7u: num = 40.0; break;  //  0.2  ms
		case 8u:
			switch (globleVariables.g_comboTimeBaseSelectedIndex)
			{
				case 0: num =   12.5; break;  //   1 ms
				case 1: num =   25.0; break;  //   2 ms
				case 2: num =    4.0; break;  //   5 ms
				case 3: num =    8.0; break;  //  10 ms
				case 4: num =   16.0; break;  //  20 ms
				case 5: num =   39.0; break;  //  50 ms
				case 6: num =   80.0; break;  // 100 ms
				case 7: num =  960.0; break;  // 200 ms
				case 8: num = 2400.0; break;  // 500 ms
				case 9: num = 4800.0; break;  //   1 s
			}
			break;
		case 9u:
			switch (globleVariables.g_comboNSSelectedIndex)
			{
				case 0: num =  0.4; break;  // 125 ns
				case 1: num = 0.16; break;  //  50 ns
				case 2: num = 0.08; break;  //  25 ns
			}
			break;
		default:
			num = 1.0;
			break;
	}

	globleVariables.g_GlobSetting_struc.g_DisplayDataCount =
	  (uint)(globleVariables.g_GlobSetting_struc.g_PixarNum4ChartZone * num);

	if (num < 100.0) globleVariables.g_GlobSetting_struc.g_ReadDataCount = 131072u; AHAAAAA !!!!!!

	globleVariables.g_GlobSetting_struc.g_dataNumPerPixar = num;

	this.m_MystreamHead.dataNumPerPixar = num;
	this.m_MystreamHead.dataNumOneShot = globleVariables.g_GlobSetting_struc.g_ReadDataCount;
	this.m_MystreamHead.channelMask = globleVariables.g_ChannelMask;
	this.m_MystreamHead.KnobSelect = (byte)globleVariables.g_knobSelect;
	this.ljtStorage1.SetParameters(this.m_MystreamHead);


	DLL_SET_INFO_PLACEHOLDER();
}
