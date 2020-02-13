public void INIT_VOLT2_LIST_PLACEHOLDER()
{
	this.voltDIVToolStripMenuItem1.DropDownItems.AddRange(new ToolStripItem[]
	{
		this.mvToolStripMenuItem3,
		this.mvToolStripMenuItem4,
		this.mvToolStripMenuItem5,
		this.vToolStripMenuItem4,
		this.vToolStripMenuItem5,
		this.vToolStripMenuItem6,
		this.vToolStripMenuItem7
	});

	this.voltDIVToolStripMenuItem1.Name = "voltDIVToolStripMenuItem1";
	this.voltDIVToolStripMenuItem1.Text = "Volt2/DIV";

	this.mvToolStripMenuItem3.Name = "mvToolStripMenuItem3";
	this.mvToolStripMenuItem3.Text = "50mv";
	this.mvToolStripMenuItem3.Click += new EventHandler(this.mvToolStripMenuItem3_Click);

	this.mvToolStripMenuItem4.Name = "mvToolStripMenuItem4";
	this.mvToolStripMenuItem4.Text = "100mv";
	this.mvToolStripMenuItem4.Click += new EventHandler(this.mvToolStripMenuItem4_Click);

	this.mvToolStripMenuItem5.Name = "mvToolStripMenuItem5";
	this.mvToolStripMenuItem5.Text = "200mv";
	this.mvToolStripMenuItem5.Click += new EventHandler(this.mvToolStripMenuItem5_Click);


	this.vToolStripMenuItem4.Name = "vToolStripMenuItem4";
	this.vToolStripMenuItem4.Text = "0.5v";
	this.vToolStripMenuItem4.Click += new EventHandler(this.vToolStripMenuItem4_Click);

	this.vToolStripMenuItem5.Name = "vToolStripMenuItem5";
	this.vToolStripMenuItem5.Text = "1v";
	this.vToolStripMenuItem5.Click += new EventHandler(this.vToolStripMenuItem5_Click);

	this.vToolStripMenuItem6.Name = "vToolStripMenuItem6";
	this.vToolStripMenuItem6.Text = "2v";
	this.vToolStripMenuItem6.Click += new EventHandler(this.vToolStripMenuItem6_Click);

	this.vToolStripMenuItem7.Name = "vToolStripMenuItem7";
	this.vToolStripMenuItem7.Text = "5v";
	this.vToolStripMenuItem7.Click += new EventHandler(this.vToolStripMenuItem7_Click);
}


private void mvToolStripMenuItem3_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(5u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(5u);
}

private void mvToolStripMenuItem4_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(4u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(4u);
}

private void mvToolStripMenuItem5_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(3u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(3u);
}


private void vToolStripMenuItem4_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(2u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(2u);
}

private void vToolStripMenuItem5_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(1u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(1u);
}

private void vToolStripMenuItem6_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(0u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(0u);
}

private void vToolStripMenuItem7_Click(object sender, EventArgs e)
{
	// Update CH2 voltage knob's position
	this.KnoBVolCH2.setKnobSelect(9u);

	// Call the callback function for CH2 voltage
	this.KnoBVolCH2_MYSelectChangedevent(9u);
}
