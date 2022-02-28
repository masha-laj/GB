using MaterialDesignColors;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Resources;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace Material
{


    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {

        public MainWindow()
        {
            InitializeComponent();
        }

        private void CloseAppButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ColorZone_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Menu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            MenuItem item = Menu.SelectedItem as MenuItem;
            item.Command.Execute(item.CommandParameter);
        }
    }
}
