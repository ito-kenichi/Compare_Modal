using Rg.Plugins.Popup.Services;
using Xamarin.Forms;

namespace xamarin.forms_project
{
    public partial class MainPage : ContentPage
    {
        [System.Obsolete]
        public MainPage()
        {
            InitializeComponent();
            this.RgPlugins.Clicked += (s, e) =>
            {
                PopupNavigation.PushAsync(new NomalPage());
            };
        }
    }
}
