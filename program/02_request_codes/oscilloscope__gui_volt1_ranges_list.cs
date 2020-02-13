public void INIT_VOLT1_LIST_PLACEHOLDER()
{
	this.voltDIVToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[]
	{
		this.mvToolStripMenuItem,
		this.mvToolStripMenuItem1,
		this.mvToolStripMenuItem2,
		this.vToolStripMenuItem,
		this.vToolStripMenuItem1,
		this.vToolStripMenuItem2,
		this.vToolStripMenuItem3
	});

	this.voltDIVToolStripMenuItem.Name = "voltDIVToolStripMenuItem";
	this.voltDIVToolStripMenuItem.Text = "Volt1/DIV";

	this.mvToolStripMenuItem.Name = "mvToolStripMenuItem";
	this.mvToolStripMenuItem.Text = "50mv";
	this.mvToolStripMenuItem.Click += new EventHandler(this.mvToolStripMenuItem_Click);

	this.mvToolStripMenuItem1.Name = "mvToolStripMenuItem1";
	this.mvToolStripMenuItem1.Text = "100mv";
	this.mvToolStripMenuItem1.Click += new EventHandler(this.mvToolStripMenuItem1_Click);

	this.mvToolStripMenuItem2.Name = "mvToolStripMenuItem2";
	this.mvToolStripMenuItem2.Text = "200mv";
	this.mvToolStripMenuItem2.Click += new EventHandler(this.mvToolStripMenuItem2_Click);


	this.vToolStripMenuItem.Name = "vToolStripMenuItem";
	this.vToolStripMenuItem.Text = "0.5v";
	this.vToolStripMenuItem.Click += new EventHandler(this.vToolStripMenuItem_Click);

	this.vToolStripMenuItem1.Name = "vToolStripMenuItem1";
	this.vToolStripMenuItem1.Text = "1v";
	this.vToolStripMenuItem1.Click += new EventHandler(this.vToolStripMenuItem1_Click);

	this.vToolStripMenuItem2.Name = "vToolStripMenuItem2";
	this.vToolStripMenuItem2.Text = "2v";
	this.vToolStripMenuItem2.Click += new EventHandler(this.vToolStripMenuItem2_Click);

	this.vToolStripMenuItem3.Name = "vToolStripMenuItem3";
	this.vToolStripMenuItem3.Text = "5v";
	this.vToolStripMenuItem3.Click += new EventHandler(this.vToolStripMenuItem3_Click);
}


private void mvToolStripMenuItem_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(5u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(5u);
}

private void mvToolStripMenuItem1_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(4u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(4u);
}

private void mvToolStripMenuItem2_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(3u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(3u);
}


private void vToolStripMenuItem_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(2u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(2u);
}

private void vToolStripMenuItem1_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(1u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(1u);
}

private void vToolStripMenuItem2_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(0u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(0u);
}

private void vToolStripMenuItem3_Click(object sender, EventArgs e)
{
	// Update CH1 voltage knob's position
	this.Ch1VoltageKnob.setKnobSelect(9u);

	// Call the callback function for CH1 voltage
	this.VoltageKnoB11_MYSelectChangedevent2(9u);
}
