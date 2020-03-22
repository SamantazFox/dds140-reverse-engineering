private ToolStripComboBox ACDCtoolStripComboBox0;
private ToolStripComboBox ACDCtoolStripComboBox1;


// Combox box for CH1 coupling selection
this.ACDCtoolStripComboBox0 = new ToolStripComboBox();
this.ACDCtoolStripComboBox0.DropDownStyle = ComboBoxStyle.DropDownList;
this.ACDCtoolStripComboBox0.SelectedIndexChanged += new EventHandler(this.ACDCtoolStripComboBox0_SelectedIndexChanged);
this.ACDCtoolStripComboBox0.Items.Add("DC coupling");
this.ACDCtoolStripComboBox0.Items.Add("AC coupling");


// Combox box for CH2 coupling selection
this.ACDCtoolStripComboBox1 = new ToolStripComboBox();
this.ACDCtoolStripComboBox1.DropDownStyle = ComboBoxStyle.DropDownList;
this.ACDCtoolStripComboBox1.SelectedIndexChanged += new EventHandler(this.ACDCtoolStripComboBox1_SelectedIndexChanged);
this.ACDCtoolStripComboBox1.Items.Add("DC coupling");
this.ACDCtoolStripComboBox1.Items.Add("AC coupling");



private void ACDCtoolStripComboBox0_SelectedIndexChanged(object sender, EventArgs e)
{
	if (this.ACDCtoolStripComboBox0.SelectedIndex == 0)  // DC coupling
	{
		this.m_ch1CoupleFlg = 2;
		globleVariables.g_CtrlByte0 &= 239;
		globleVariables.g_CtrlByte0 |= 16;
	}
	elseif (this.ACDCtoolStripComboBox0.SelectedIndex == 1)  // AC coupling
	{
		this.m_ch1CoupleFlg = 1;
		globleVariables.g_CtrlByte0 &= 239;
	}

	MyDLLimport.USBCtrlTrans(148, (ushort)globleVariables.g_CtrlByte0, 1u);
}


private void ACDCtoolStripComboBox1_SelectedIndexChanged(object sender, EventArgs e)
{
	if (this.ACDCtoolStripComboBox1.SelectedIndex == 0)  // DC coupling
	{
		this.m_ch2CoupleFlg = 2;

		globleVariables.g_CtrlByte1 &= 239;
		globleVariables.g_CtrlByte1 |= 16;
	}
	elseif (this.ACDCtoolStripComboBox1.SelectedIndex == 1)  // AC coupling
	{
		this.m_ch2CoupleFlg = 1;
		globleVariables.g_CtrlByte1 &= 239;
	}

	MyDLLimport.USBCtrlTrans(36, (ushort)globleVariables.g_CtrlByte1, 1u);
}
