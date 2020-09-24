using System;
using Xamarin.Forms;

namespace xamarin.forms_project
{
    public partial class ModalPage : ContentPage
    {
        public ModalPage()
        {
            InitializeComponent();
        }

        async void OnClicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}
