private ToolStripButton TrigUPButton = new ToolStripButton();
private ToolStripButton TrigDNButton = new ToolStripButton();

private ToolStripComboBox TRIGCHtoolStripComboBox   = new ToolStripComboBox();
private ToolStripComboBox TrigMODEtoolStripComboBox = new ToolStripComboBox();


this.TrigUPButton.Text = "toolStripButton1";
this.TrigUPButton.Click += new EventHandler(this.TrigUPButton_Click);

this.TrigDNButton.Text = "toolStripButton2";
this.TrigDNButton.Click += new EventHandler(this.TrigDNButton_Click);

this.TrigMODEtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
this.TrigMODEtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.TrigMODEtoolStripComboBox_SelectedIndexChanged);
this.TrigMODEtoolStripComboBox.Items.Add("no trigger");      // DstingsRes.StringTrigerType_no
this.TrigMODEtoolStripComboBox.Items.Add("regular trigger"); // DstingsRes.StringTrigerType_norm
this.TrigMODEtoolStripComboBox.Items.Add("single trigger");  // DstingsRes.StringTrigerType_Single

this.TRIGCHtoolStripComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
this.TRIGCHtoolStripComboBox.Items.AddRange(new object[] { "CH1", "CH2", "EXT" });
this.TRIGCHtoolStripComboBox.SelectedIndexChanged += new EventHandler(this.TRIGCHtoolStripComboBox_SelectedIndexChanged);



// Button for "rising edge" type trigger
private void TrigUPButton_Click(object sender, EventArgs e)
{
	globleVariables.g_TrigEdgeFlag = 1;  // Rising edge

	SetTrigInfo(
		globleVariables.g_TrigSourceChan,
		globleVariables.g_TrigMode,
		globleVariables.g_TrigEdgeFlag
	);

	this.Offset_caculation(5.0, 10000uL);
}

// Button for "falling edge" type trigger
private void TrigDNButton_Click(object sender, EventArgs e)
{
	globleVariables.g_TrigEdgeFlag = 2;  // Falling edge

	SetTrigInfo(
		globleVariables.g_TrigSourceChan,
		globleVariables.g_TrigMode,
		globleVariables.g_TrigEdgeFlag
	);

	this.Offset_caculation(95.0, 10000uL);
}


private void TRIGCHtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
{
	if (this.TRIGCHtoolStripComboBox.SelectedIndex == 0)  // CH1
	{
		globleVariables.g_TrigSourceChan = 0;

		SetTrigInfo(
			globleVariables.g_TrigSourceChan,
			globleVariables.g_TrigMode,
			globleVariables.g_TrigEdgeFlag
		);

		// Send the command #231 (see Commands_summary.rst for details)
		USBCtrlTrans(231, 0, 1u);
	}

	else if (this.TRIGCHtoolStripComboBox.SelectedIndex == 1)  // CH2
	{
		globleVariables.g_TrigSourceChan = 1;

		SetTrigInfo(
			globleVariables.g_TrigSourceChan,
			globleVariables.g_TrigMode,
			globleVariables.g_TrigEdgeFlag
		);

		// Send the command #231 (see Commands_summary.rst for details)
		USBCtrlTrans(231, 0, 1u);
	}

	else if (this.TRIGCHtoolStripComboBox.SelectedIndex == 2)  // EXT
	{
		// Send the command #231 (see Commands_summary.rst for details)
		USBCtrlTrans(231, 1, 1u);

		globleVariables.g_TrigSourceChan = 2;

		// Set internal triggering mode to "no trigger"
		this.TrigMODEtoolStripComboBox.SelectedIndex = 0;


		// We don't refresh the trigger infos in the DLL here ????
	}
}


// Trigger mode selection
//
//  Refresh the trigger infos when the "trigger mode"

private void TrigMODEtoolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
{
	if (this.TrigMODEtoolStripComboBox.SelectedIndex == 0)  // "no trigger"
	{
		globleVariables.g_TrigMode = 0;

		MyDLLimport.SetTrigInfo(
			globleVariables.g_TrigSourceChan,
			globleVariables.g_TrigMode,
			globleVariables.g_TrigEdgeFlag
		);
	}
	else if (this.TrigMODEtoolStripComboBox.SelectedIndex == 1)  // "regular trigger"
	{
		globleVariables.g_TrigMode = 1;

		MyDLLimport.SetTrigInfo(
			globleVariables.g_TrigSourceChan,
			globleVariables.g_TrigMode,
			globleVariables.g_TrigEdgeFlag
		);
	}
	else if (this.TrigMODEtoolStripComboBox.SelectedIndex == 2)  // "single trigger"
	{
		globleVariables.g_TrigMode = 2;

		MyDLLimport.SetTrigInfo(
			globleVariables.g_TrigSourceChan,
			globleVariables.g_TrigMode,
			globleVariables.g_TrigEdgeFlag
		);

		MyDLLimport.SetReadEnableOrNot(1u);
	}

	this.UpdateProperties();
}
