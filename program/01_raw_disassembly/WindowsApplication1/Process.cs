using System;
using System.Diagnostics;

namespace WindowsApplication1
{
	public static class Process
	{
		public static void ShellExecute(string CommandLine)
		{
			System.Diagnostics.Process process = new System.Diagnostics.Process();
			int num = CommandLine.LastIndexOf('\\');
			if (num >= 0)
			{
				process.StartInfo.WorkingDirectory = CommandLine.Substring(0, num);
			}
			num++;
			int num2 = CommandLine.IndexOf(' ', num);
			if (num2 >= 0)
			{
				process.StartInfo.FileName = CommandLine.Substring(num, num2 - num);
				process.StartInfo.Arguments = CommandLine.Substring(num2 + 1);
			}
			else
			{
				process.StartInfo.FileName = CommandLine.Substring(num);
			}
			process.Start();
		}
	}
}
