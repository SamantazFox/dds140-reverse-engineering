using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace storefileCtrol.Properties
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
					ResourceManager resourceManager = new ResourceManager("WindowsApplication1.Properties.Resources", typeof(MyFolderDialog).Assembly);
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

		internal static Bitmap Folder1
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("Folder1", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap globe_png_028
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("globe_png_028", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap globe_png_032
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("globe_png_032", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap luzhi
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("luzhi", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap luzhi2
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("luzhi2", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap Movies
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("Movies", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap MoviesDark
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("MoviesDark", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap pause4
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("pause4", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap play
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("play", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap settings
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("settings", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal static Bitmap settingsDark
		{
			get
			{
				object @object = Resources.ResourceManager.GetObject("settingsDark", Resources.resourceCulture);
				return (Bitmap)@object;
			}
		}

		internal Resources()
		{
		}
	}
}
