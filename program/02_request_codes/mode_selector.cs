private ToolStripComboBox FUNCtoolStripComboBox;

this.FUNCtoolStripComboBox = new ToolStripComboBox();
this.FUNCtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
this.FUNCtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.FUNCtoolStripComboBox_SelectedIndexChanged);


this.FUNCtoolStripComboBox.Items.Add("Oscilloscope");                     // DstingsRes.StringFuncOsilla
this.FUNCtoolStripComboBox.Items.Add("Oscilloscope + Signal Generator");  // DstingsRes.StringFuncSignal
this.FUNCtoolStripComboBox.Items.Add("logic analyzer");                   // DstingsRes.StringFuncLogic
this.FUNCtoolStripComboBox.SelectedIndex = 0;



private void FUNCtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
{
	switch (this.FUNCtoolStripComboBox.SelectedIndex)
	{
	case 0: /* Function: Oscilloscope */
		this.RecordReview.Enabled = true;
		this.m_indicate = 0;

		/* UI: Remove SigGen and Logic tabs, add Oscillo one */
		if (!this.tabMain.Controls.Contains(this.OsillagraphPg))
			this.tabMain.Controls.Add(this.OsillagraphPg);

		if (this.tabMain.Controls.Contains(this.SignalPg))
			this.tabMain.Controls.Remove(this.SignalPg);

		if (this.tabMain.Controls.Contains(this.LogicAlsPG))
			this.tabMain.Controls.Remove(this.LogicAlsPG);

		MyDLLimport.USBCtrlTrans(52, 0, 1u);

		return;

	case 1: /* Function: Signal generator */
		this.RecordReview.Enabled = true;

		/* UI: Add Oscillo and SigGen tabs, remove Logic one */
		if (!this.tabMain.Controls.Contains(this.OsillagraphPg))
			this.tabMain.Controls.Add(this.OsillagraphPg);

		if (this.tabMain.Controls.Contains(this.LogicAlsPG))
		{
			this.tabMain.Controls.Remove(this.LogicAlsPG);
			MyDLLimport.USBCtrlTrans(52, 0, 1u);
		}

		if (!this.tabMain.Controls.Contains(this.SignalPg))
			this.tabMain.Controls.Add(this.SignalPg);

		return;

	case 2: /* Function: Logic analyzer */
		this.RecordReview.Enabled = false;
		this.m_indicate = 2;

		if (this.tabMain.Controls.Contains(this.SignalPg))
			this.tabMain.Controls.Remove(this.SignalPg);

		if (!this.tabMain.Controls.Contains(this.LogicAlsPG))
			this.tabMain.Controls.Add(this.LogicAlsPG);

		if (this.tabMain.Controls.Contains(this.OsillagraphPg))
			this.tabMain.Controls.Remove(this.OsillagraphPg);

		lock (globleVariables.g_lockIO)
		{
			MyDLLimport.USBCtrlTrans(52, 1, 1u);
		}
		return;

	default:
		return;
	}
}
