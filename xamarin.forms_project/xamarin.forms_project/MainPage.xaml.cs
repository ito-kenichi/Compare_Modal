using System;
using Xamarin.Forms;

namespace xamarin.forms_project
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        async void OnSelected(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ModalPage());
        }
    }
}
