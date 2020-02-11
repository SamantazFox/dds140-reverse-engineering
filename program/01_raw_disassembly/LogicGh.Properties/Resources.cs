using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace LogicGh.Properties
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "2.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	internal class Resources
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static ResourceManager ResourceManager
		{
			get
			{
				if (object.ReferenceEquals(Resources.resourceMan, null))
				{
					ResourceManager resourceManager = new ResourceManager("WindowsApplication1.Properties.Resources", typeof(UserControl1).Assembly);
					Resources.resourceMan = resourceManager;
				}
				return Resources.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static CultureInfo Culture
		{
			get
			{
				return Resources.resourceCulture;
			}
			set
			{
				Resources.resourceCulture = value;
			}
		}

		internal static Bitmap blackWhite
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("blackWhite", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap leftMove
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("leftMove", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap leftMove3
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("leftMove3", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap open_in_browser
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("open_in_browser", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap rightMove
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("rightMove", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap ruler
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("ruler", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap search
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("search", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap viewfullscreen
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("viewfullscreen", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap zoom
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("zoom", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap zoom_out32
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("zoom_out32", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal Resources()
		{
		}
	}
}
