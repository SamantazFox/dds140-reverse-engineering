public void INIT_TIME_LIST_PLACEHOLDER()
{
	this.nsToolStripMenuItem.Name = "nsToolStripMenuItem";
	this.nsToolStripMenuItem.Text = "25ns";
	this.nsToolStripMenuItem.Click += new EventHandler(this.nsToolStripMenuItem_Click);

	this.nsToolStripMenuItem1.Name = "nsToolStripMenuItem1";
	this.nsToolStripMenuItem1.Text = "50ns";
	this.nsToolStripMenuItem1.Click += new EventHandler(this.nsToolStripMenuItem1_Click);

	this.nsToolStripMenuItem2.Name = "nsToolStripMenuItem2";
	this.nsToolStripMenuItem2.Text = "125ns";
	this.nsToolStripMenuItem2.Click += new EventHandler(this.nsToolStripMenuItem2_Click);


	this.usToolStripMenuItem.Name = "usToolStripMenuItem";
	this.usToolStripMenuItem.Text = "0.25us";
	this.usToolStripMenuItem.Click += new EventHandler(this.usToolStripMenuItem_Click);

	this.usToolStripMenuItem1.Name = "usToolStripMenuItem1";
	this.usToolStripMenuItem1.Text = "0.5us";
	this.usToolStripMenuItem1.Click += new EventHandler(this.usToolStripMenuItem1_Click);

	this.usToolStripMenuItem2.Name = "usToolStripMenuItem2";
	this.usToolStripMenuItem2.Text = "1us";
	this.usToolStripMenuItem2.Click += new EventHandler(this.usToolStripMenuItem2_Click);

	this.usToolStripMenuItem3.Name = "usToolStripMenuItem3";
	this.usToolStripMenuItem3.Text = "2.5us";
	this.usToolStripMenuItem3.Click += new EventHandler(this.usToolStripMenuItem3_Click);

	this.usToolStripMenuItem4.Name = "usToolStripMenuItem4";
	this.usToolStripMenuItem4.Text = "10us";
	this.usToolStripMenuItem4.Click += new EventHandler(this.usToolStripMenuItem4_Click);

	this.usToolStripMenuItem5.Name = "usToolStripMenuItem5";
	this.usToolStripMenuItem5.Text = "25us";
	this.usToolStripMenuItem5.Click += new EventHandler(this.usToolStripMenuItem5_Click);


	this.msToolStripMenuItem.Name = "msToolStripMenuItem";
	this.msToolStripMenuItem.Text = "0.1ms";
	this.msToolStripMenuItem.Click += new EventHandler(this.msToolStripMenuItem_Click);

	this.msToolStripMenuItem1.Name = "msToolStripMenuItem1";
	this.msToolStripMenuItem1.Text = "0.2ms";
	this.msToolStripMenuItem1.Click += new EventHandler(this.msToolStripMenuItem1_Click);

	this.msToolStripMenuItem2.Name = "msToolStripMenuItem2";
	this.msToolStripMenuItem2.Text = "1ms";
	this.msToolStripMenuItem2.Click += new EventHandler(this.msToolStripMenuItem2_Click);

	this.msToolStripMenuItem3.Name = "msToolStripMenuItem3";
	this.msToolStripMenuItem3.Text = "2ms";
	this.msToolStripMenuItem3.Click += new EventHandler(this.msToolStripMenuItem3_Click);

	this.msToolStripMenuItem4.Name = "msToolStripMenuItem4";
	this.msToolStripMenuItem4.Text = "5ms";
	this.msToolStripMenuItem4.Click += new EventHandler(this.msToolStripMenuItem4_Click);

	this.msToolStripMenuItem5.Name = "msToolStripMenuItem5";
	this.msToolStripMenuItem5.Text = "10ms";
	this.msToolStripMenuItem5.Click += new EventHandler(this.msToolStripMenuItem5_Click);

	this.msToolStripMenuItem6.Name = "msToolStripMenuItem6";
	this.msToolStripMenuItem6.Text = "20ms";
	this.msToolStripMenuItem6.Click += new EventHandler(this.msToolStripMenuItem6_Click);

	this.msToolStripMenuItem7.Name = "msToolStripMenuItem7";
	this.msToolStripMenuItem7.Text = "50ms";
	this.msToolStripMenuItem7.Click += new EventHandler(this.msToolStripMenuItem7_Click);

	this.msToolStripMenuItem8.Name = "msToolStripMenuItem8";
	this.msToolStripMenuItem8.Text = "100ms";
	this.msToolStripMenuItem8.Click += new EventHandler(this.msToolStripMenuItem8_Click);

	this.msToolStripMenuItem9.Name = "msToolStripMenuItem9";
	this.msToolStripMenuItem9.Text = "200ms";
	this.msToolStripMenuItem9.Click += new EventHandler(this.msToolStripMenuItem9_Click);

	this.msToolStripMenuItem10.Name = "msToolStripMenuItem10";
	this.msToolStripMenuItem10.Text = "500ms";
	this.msToolStripMenuItem10.Click += new EventHandler(this.msToolStripMenuItem10_Click);
}


private void usToolStripMenuItem_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(0u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(0u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[0].Checked = true;
}

private void usToolStripMenuItem1_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(1u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(1u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[1].Checked = true;
}

private void usToolStripMenuItem2_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(2u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(2u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[2].Checked = true;
}

private void usToolStripMenuItem3_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(3u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(3u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[3].Checked = true;
}

private void usToolStripMenuItem4_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(4u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(4u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[4].Checked = true;
}

private void usToolStripMenuItem5_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(5u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(5u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[5].Checked = true;
}




private void msToolStripMenuItem_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(6u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(6u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[6].Checked = true;
}

private void msToolStripMenuItem1_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(7u);
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(7u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[7].Checked = true;
}

private void msToolStripMenuItem2_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 0;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[8].Checked = true;
}

private void msToolStripMenuItem3_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 1;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[9].Checked = true;
}

private void msToolStripMenuItem4_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 2;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[10].Checked = true;
}

private void msToolStripMenuItem5_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 3;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[11].Checked = true;
}

private void msToolStripMenuItem6_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 4;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[12].Checked = true;
}

private void msToolStripMenuItem7_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 5;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[13].Checked = true;
}

private void msToolStripMenuItem8_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 6;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[14].Checked = true;
}

private void msToolStripMenuItem9_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 7;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[15].Checked = true;
}

private void msToolStripMenuItem10_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(8u);
	
	// Update the sub-index (ms range drop-down)
	this.comboTimeBase.SelectedIndex = 8;
	globleVariables.g_comboTimeBaseSelectedIndex = this.comboTimeBase.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(8u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[16].Checked = true;
}




private void nsToolStripMenuItem2_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(9u);
	
	// Update the subindex (ns range drop-down)
	this.comboBoxNS.SelectedIndex = 0;
	globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(9u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[17].Checked = true;
}

private void nsToolStripMenuItem1_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(9u);
	
	// Update the subindex (ns range drop-down)
	this.comboBoxNS.SelectedIndex = 1;
	globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(9u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[18].Checked = true;
}

private void nsToolStripMenuItem_Click(object sender, EventArgs e)
{
	// Change the knob's position
	this.TimeKnob.setKnobSelect(9u);
	
	// Update the subindex (ns range drop-down)
	this.comboBoxNS.SelectedIndex = 2;
	globleVariables.g_comboNSSelectedIndex = this.comboBoxNS.SelectedIndex;
	
	// Call the callback function that'll send the request to scope
	this.TimeKnob_MYSelectChangedevent2(9u);

	// Keep track of the checked range (?) (for UI updates)
	for (int i = 0; i < 20; i++) { this.m_Chacked[i].Checked = false; }
	this.m_Chacked[19].Checked = true;
}
