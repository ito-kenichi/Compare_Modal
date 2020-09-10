using System;
using Xamarin.Forms;
using System.Linq;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;

namespace xamarin.forms_project
{
    public partial class NomalPage : PopupPage
	{
        public NomalPage()
        {
            InitializeComponent();
        }

        // 画面の「戻る」ボタン対応
        [Obsolete]
        private void Back(object o, EventArgs e)
		{
			PopupNavigation.PopAsync();
		}
	}
}
