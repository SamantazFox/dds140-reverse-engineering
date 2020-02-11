using System;
using System.IO;
using System.Windows.Forms;

namespace SaveData
{
	public class SaveData
	{
		private double m_rate0;

		private double m_offset0;

		private double m_rate1;

		private double m_offset1;

		private byte m_channelMask;

		private string m_device;

		private string m_rate;

		private string m_state;

		private string m_type;

		public byte ChannelMask
		{
			get
			{
				return this.m_channelMask;
			}
			set
			{
				if (this.m_channelMask != value)
				{
					this.m_channelMask = value;
				}
			}
		}

		public double Chan0Offset
		{
			get
			{
				return this.m_offset0;
			}
			set
			{
				if (this.m_offset0 != value)
				{
					this.m_offset0 = value;
				}
			}
		}

		public double Chan0Rate
		{
			get
			{
				return this.m_rate0;
			}
			set
			{
				if (this.m_rate0 != value)
				{
					this.m_rate0 = value;
				}
			}
		}

		public double Chan1Offset
		{
			get
			{
				return this.m_offset1;
			}
			set
			{
				if (this.m_offset1 != value)
				{
					this.m_offset1 = value;
				}
			}
		}

		public double Chann1Rate
		{
			get
			{
				return this.m_rate1;
			}
			set
			{
				if (this.m_rate1 != value)
				{
					this.m_rate1 = value;
				}
			}
		}

		public string DeviceName
		{
			get
			{
				return this.m_device;
			}
			set
			{
				if (this.m_device != value)
				{
					this.m_device = value;
				}
			}
		}

		public string PlayType
		{
			get
			{
				return this.m_type;
			}
			set
			{
				if (this.m_type != value)
				{
					this.m_type = value;
				}
			}
		}

		public string CurrentState
		{
			get
			{
				return this.m_state;
			}
			set
			{
				if (this.m_state != value)
				{
					this.m_state = value;
				}
			}
		}

		public string SampleRate
		{
			get
			{
				return this.m_rate;
			}
			set
			{
				if (this.m_rate != value)
				{
					this.m_rate = value;
				}
			}
		}

		public SaveData()
		{
			this.m_rate0 = 1.0;
			this.m_offset0 = 0.0;
			this.m_rate1 = 1.0;
			this.m_offset1 = 0.0;
		}

		public unsafe void SaveAsText(IntPtr pbuffer, uint offset, int dataSize, int divideNum)
		{
			if (dataSize < 1 || pbuffer == IntPtr.Zero || (ulong)offset > (ulong)((long)dataSize))
			{
				return;
			}
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Filter = "Text Files(*.txt)|*.txt|All Files(*.*)|(*.*)";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				string text = saveFileDialog.FileName;
				if (!text.Contains(".txt"))
				{
					text += ".txt";
				}
				using (StreamWriter streamWriter = new StreamWriter(text, false))
				{
					this.SaveInfo(streamWriter, divideNum);
					uint num = (uint)((int)pbuffer + (int)offset);
					byte* ptr = num;
					byte* ptr2 = ptr + 1;
					byte channelMask = this.m_channelMask;
					if (channelMask != 1)
					{
						switch (channelMask)
						{
						case 16:
							streamWriter.WriteLine("Ch2");
							for (int i = 0; i < dataSize / divideNum; i++)
							{
								streamWriter.WriteLine((((double)ptr2[(IntPtr)(2 * i) * (IntPtr)divideNum] - this.m_offset1) * this.m_rate1).ToString("0.###"));
							}
							break;
						case 17:
							streamWriter.WriteLine("Ch1   Ch2");
							for (int j = 0; j < dataSize / divideNum; j++)
							{
								string text2 = (((double)ptr[(IntPtr)(2 * j) * (IntPtr)divideNum] - this.m_offset0) * this.m_rate0).ToString("0.###") + '\t';
								text2 += (((double)ptr2[(IntPtr)(2 * j) * (IntPtr)divideNum] - this.m_offset1) * this.m_rate1).ToString("0.###");
								streamWriter.WriteLine(text2);
							}
							break;
						}
					}
					else
					{
						streamWriter.WriteLine("Ch1");
						for (int k = 0; k < dataSize / divideNum; k++)
						{
							streamWriter.WriteLine((((double)ptr[(IntPtr)(2 * k) * (IntPtr)divideNum] - this.m_offset0) * this.m_rate0).ToString("0.###"));
						}
					}
				}
			}
		}

		private void SaveInfo(StreamWriter writer, int DivideNUm)
		{
			if (writer == null)
			{
				return;
			}
			writer.WriteLine("Device: " + this.m_device);
			writer.WriteLine("State: " + this.m_state);
			writer.WriteLine("Type: " + this.m_type);
			writer.WriteLine("Sample rate:" + this.m_rate + "sps divided by " + DivideNUm.ToString());
			writer.WriteLine("");
		}
	}
}
