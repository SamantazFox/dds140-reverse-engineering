using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsApplication1
{
	public class Form3 : Form
	{
		private Form1 c;

		private bool check;

		private ListViewItem lvItem;

		private ListViewItem.ListViewSubItem lvSubItem;

		private IContainer components;

		private TreeView LeftTree;

		public Form3()
		{
		}

		public Form3(Control mainform)
		{
			this.c = (Form1)mainform;
			this.InitializeComponent();
		}

		private void Form3_FormClosed(object sender, FormClosedEventArgs e)
		{
			this.c.Formrenew();
		}

		private void Form3_Load(object sender, EventArgs e)
		{
			TreeNode treeNode = new TreeNode("Channel", 0, 1);
			TreeNode treeNode2 = treeNode.Nodes.Add("", "CH1", 0, 1);
			treeNode2.Nodes.Add("Max");
			treeNode2.Nodes.Add("Min");
			treeNode2.Nodes.Add("P-P");
			treeNode2.Nodes.Add("Freq");
			treeNode2.Nodes.Add("Average");
			treeNode2.Nodes.Add("Period");
			treeNode2.Nodes.Add("+Width");
			treeNode2.Nodes.Add("-Width");
			treeNode2.Nodes.Add("Duty Rate");
			treeNode2.Nodes.Add("RiseTime");
			treeNode2.Nodes.Add("Vrms");
			TreeNode treeNode3 = treeNode.Nodes.Add("", "CH2", 0, 1);
			treeNode3.Nodes.Add("Max");
			treeNode3.Nodes.Add("Min");
			treeNode3.Nodes.Add("P-P");
			treeNode3.Nodes.Add("Freq");
			treeNode3.Nodes.Add("Average");
			treeNode3.Nodes.Add("Period");
			treeNode3.Nodes.Add("+Width");
			treeNode3.Nodes.Add("-Width");
			treeNode3.Nodes.Add("Duty Rate");
			treeNode3.Nodes.Add("RiseTime");
			treeNode3.Nodes.Add("Vrms");
			this.LeftTree.Nodes.Add(treeNode);
			this.LeftTree.ExpandAll();
			this.LeftTree.CheckBoxes = true;
		}

		private void setchild(TreeNode node)
		{
			foreach (TreeNode treeNode in node.Nodes)
			{
				treeNode.Checked = node.Checked;
			}
			this.check = true;
		}

		private void setparent(TreeNode node)
		{
			if (node.Parent != null)
			{
				if (node.Checked)
				{
					foreach (TreeNode treeNode in node.Parent.Nodes)
					{
						if (!treeNode.Checked)
						{
							return;
						}
					}
				}
				node.Parent.Checked = node.Checked;
			}
		}

		private int CheckAllSlected()
		{
			int num = 0;
			int num2 = 0;
			for (int i = 0; i < 11; i++)
			{
				if (!globleVariables.m_refresh[i].Bechecked)
				{
					num++;
				}
			}
			for (int j = 11; j < 22; j++)
			{
				if (!globleVariables.m_refresh[j].Bechecked)
				{
					num2++;
				}
			}
			if (num == 11 && num2 == 11)
			{
				return 1;
			}
			if (num == 11 && num2 < 11)
			{
				return 2;
			}
			if (num2 == 11 && num < 11)
			{
				return 3;
			}
			return 0;
		}

		private void UpdateListDisply()
		{
			this.c.m_MyDbufferedListView.Items.Clear();
			if (globleVariables.m_refresh[0].Bechecked)
			{
				globleVariables.m_refresh[0].Name = DstingsRes.StringMaxValue;
				globleVariables.m_refresh[0].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[0].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[0].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[1].Bechecked)
			{
				globleVariables.m_refresh[1].Name = DstingsRes.StringMinValue;
				globleVariables.m_refresh[1].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[1].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[1].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[2].Bechecked)
			{
				globleVariables.m_refresh[2].Name = DstingsRes.StringPPValue;
				globleVariables.m_refresh[2].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[2].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[2].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[3].Bechecked)
			{
				globleVariables.m_refresh[3].Name = DstingsRes.StringFreqValue;
				globleVariables.m_refresh[3].Uint = "K Hz";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[3].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[3].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[4].Bechecked)
			{
				globleVariables.m_refresh[4].Name = DstingsRes.StringAverageValue;
				globleVariables.m_refresh[4].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[4].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[4].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[5].Bechecked)
			{
				globleVariables.m_refresh[5].Name = DstingsRes.StringPeriodValue;
				globleVariables.m_refresh[5].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[5].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[5].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[6].Bechecked)
			{
				globleVariables.m_refresh[6].Name = DstingsRes.StringPosWidthValue;
				globleVariables.m_refresh[6].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[6].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[6].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[7].Bechecked)
			{
				globleVariables.m_refresh[7].Name = DstingsRes.StringNegWidthValue;
				globleVariables.m_refresh[7].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[7].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[7].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[8].Bechecked)
			{
				globleVariables.m_refresh[8].Name = DstingsRes.StringDutyValue;
				globleVariables.m_refresh[8].Uint = "%";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[8].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[8].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[9].Bechecked)
			{
				globleVariables.m_refresh[9].Name = DstingsRes.StringRiseTimeValue;
				globleVariables.m_refresh[9].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[9].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[9].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[10].Bechecked)
			{
				globleVariables.m_refresh[10].Name = DstingsRes.StringVrmsValue;
				globleVariables.m_refresh[10].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch1";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[10].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[10].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[11].Bechecked)
			{
				globleVariables.m_refresh[11].Name = DstingsRes.StringMaxValue;
				globleVariables.m_refresh[11].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[11].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[11].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[12].Bechecked)
			{
				globleVariables.m_refresh[12].Name = DstingsRes.StringMinValue;
				globleVariables.m_refresh[12].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[12].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[12].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[13].Bechecked)
			{
				globleVariables.m_refresh[13].Name = DstingsRes.StringPPValue;
				globleVariables.m_refresh[13].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[13].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[13].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[14].Bechecked)
			{
				globleVariables.m_refresh[14].Name = DstingsRes.StringFreqValue;
				globleVariables.m_refresh[14].Uint = "K Hz";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[14].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[14].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[15].Bechecked)
			{
				globleVariables.m_refresh[15].Name = DstingsRes.StringAverageValue;
				globleVariables.m_refresh[15].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[15].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[15].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[16].Bechecked)
			{
				globleVariables.m_refresh[16].Name = DstingsRes.StringPeriodValue;
				globleVariables.m_refresh[16].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[16].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[16].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[17].Bechecked)
			{
				globleVariables.m_refresh[17].Name = DstingsRes.StringPosWidthValue;
				globleVariables.m_refresh[17].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[17].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[17].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[18].Bechecked)
			{
				globleVariables.m_refresh[18].Name = DstingsRes.StringNegWidthValue;
				globleVariables.m_refresh[18].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[18].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[18].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[19].Bechecked)
			{
				globleVariables.m_refresh[19].Name = DstingsRes.StringDutyValue;
				globleVariables.m_refresh[19].Uint = "%";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[19].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[19].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[20].Bechecked)
			{
				globleVariables.m_refresh[20].Name = DstingsRes.StringRiseTimeValue;
				globleVariables.m_refresh[20].Uint = "us";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[20].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[20].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
			if (globleVariables.m_refresh[21].Bechecked)
			{
				globleVariables.m_refresh[21].Name = DstingsRes.StringVrmsValue;
				globleVariables.m_refresh[21].Uint = "V";
				this.lvItem = new ListViewItem();
				this.lvItem.Text = "ch2";
				this.c.m_MyDbufferedListView.Items.Add(this.lvItem);
				this.lvItem.BackColor = Color.FromArgb(225, 245, 245, 245);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[21].Name;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = globleVariables.m_refresh[21].Uint;
				this.lvItem.SubItems.Add(this.lvSubItem);
				this.lvSubItem = new ListViewItem.ListViewSubItem();
				this.lvSubItem.Text = "0.00";
				this.lvItem.SubItems.Add(this.lvSubItem);
			}
		}

		private void LeftTree_AfterCheck_1(object sender, TreeViewEventArgs e)
		{
			lock (globleVariables.g_lockMeasureList)
			{
				if (e.Node.Parent != null && e.Node.Parent.Text == "CH1")
				{
					if (e.Node.Checked)
					{
						globleVariables.m_Ch1orCh2 = 1;
					}
					else
					{
						globleVariables.m_Ch1orCh2 = 2;
					}
					string text;
					switch (text = e.Node.Text)
					{
					case "Max":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[0].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[0].Bechecked = false;
						}
						break;
					case "Min":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[1].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[1].Bechecked = false;
						}
						break;
					case "P-P":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[2].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[2].Bechecked = false;
						}
						break;
					case "Freq":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[3].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[3].Bechecked = false;
						}
						break;
					case "Average":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[4].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[4].Bechecked = false;
						}
						break;
					case "Period":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[5].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[5].Bechecked = false;
						}
						break;
					case "+Width":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[6].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[6].Bechecked = false;
						}
						break;
					case "-Width":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[7].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[7].Bechecked = false;
						}
						break;
					case "Duty Rate":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[8].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[8].Bechecked = false;
						}
						break;
					case "RiseTime":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[9].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[9].Bechecked = false;
						}
						break;
					case "Vrms":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[10].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[10].Bechecked = false;
						}
						break;
					}
				}
				else if (e.Node.Parent != null && e.Node.Parent.Text == "CH2")
				{
					if (e.Node.Checked)
					{
						globleVariables.m_Ch1orCh2 = 3;
					}
					else
					{
						globleVariables.m_Ch1orCh2 = 4;
					}
					string text2;
					switch (text2 = e.Node.Text)
					{
					case "Max":
					{
						int arg_51D_0 = e.Node.Index;
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[11].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[11].Bechecked = false;
						}
						break;
					}
					case "Min":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[12].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[12].Bechecked = false;
						}
						break;
					case "P-P":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[13].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[13].Bechecked = false;
						}
						break;
					case "Freq":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[14].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[14].Bechecked = false;
						}
						break;
					case "Average":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[15].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[15].Bechecked = false;
						}
						break;
					case "Period":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[16].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[16].Bechecked = false;
						}
						break;
					case "+Width":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[17].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[17].Bechecked = false;
						}
						break;
					case "-Width":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[18].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[18].Bechecked = false;
						}
						break;
					case "Duty Rate":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[19].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[19].Bechecked = false;
						}
						break;
					case "RiseTime":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[20].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[20].Bechecked = false;
						}
						break;
					case "Vrms":
						if (e.Node.Checked)
						{
							globleVariables.m_refresh[21].Bechecked = true;
						}
						else
						{
							globleVariables.m_refresh[21].Bechecked = false;
						}
						break;
					}
				}
				if (!this.check)
				{
					this.setchild(e.Node);
				}
				this.setparent(e.Node);
				this.check = false;
				this.UpdateListDisply();
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && this.components != null)
			{
				this.components.Dispose();
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			this.LeftTree = new TreeView();
			base.SuspendLayout();
			this.LeftTree.Dock = DockStyle.Fill;
			this.LeftTree.Font = new Font("Calibri", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.LeftTree.Location = new Point(0, 0);
			this.LeftTree.Name = "LeftTree";
			this.LeftTree.Size = new Size(167, 549);
			this.LeftTree.TabIndex = 0;
			this.LeftTree.AfterCheck += new TreeViewEventHandler(this.LeftTree_AfterCheck_1);
			base.AutoScaleDimensions = new SizeF(6f, 12f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.AutoSize = true;
			base.ClientSize = new Size(167, 549);
			base.Controls.Add(this.LeftTree);
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "Form3";
			base.StartPosition = FormStartPosition.Manual;
			this.Text = "Measure";
			base.Load += new EventHandler(this.Form3_Load);
			base.FormClosed += new FormClosedEventHandler(this.Form3_FormClosed);
			base.ResumeLayout(false);
		}
	}
}
