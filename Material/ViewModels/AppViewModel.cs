using MaterialDesignThemes.Wpf;
using SimpleWPF.Input;
using SimpleWPF.Navigation;
using SimpleWPF.Navigation.Arguments;
using SimpleWPF.ViewModels;
using System;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Material.ViewModels
{
    public class AppViewModel : NavigationViewModelBase, INavigationProvider
    {
        public ObservableCollection<MenuItem> MainMenu { get; set; }
        public ICommand ShowViewCommand { get; set; }

        private NavigationViewModelBase current;

        public NavigationViewModelBase Current
        {
            get { return current; }
            set { OnPropertyChanged(ref current, value); }
        }

        private INavigationWindow window;

        public INavigationWindow Window
        {
            get { return window; }
            set { OnPropertyChanged(ref window, value); }
        }

        public AppViewModel()
        {
            service.BeforeNavigation += OnBeforeNavigation;
            ShowViewCommand = new RelayCommand<NavigationViewModelBase>(ShowView);

            MainMenu = new ObservableCollection<MenuItem>
            {
                new MenuItem("Операции", "Receipt", ShowViewCommand, new OperationsViewModel()),
                new MenuItem("Категории", "ChartDonut", ShowViewCommand, new CategoriesViewModel())
            };
        }

        private void OnBeforeNavigation(object sender, NavigationEventArgs e)
        {
            Console.WriteLine("About to navigate!");
        }

        private void ShowView(NavigationViewModelBase view)
        {
            Navigate(view);
        }
    }
}
