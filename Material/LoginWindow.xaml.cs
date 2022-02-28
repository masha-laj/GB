using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Material
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void loginBtn_Click(object sender, RoutedEventArgs e)
        {
            var stateManager = new StateManager().Instance;
            var db = stateManager.DB;
            var users = db.Users;
            var exists = users.Any(o => o.Username == loginTB.Text && o.Password == passTB.Text);
            if (exists)
            {
                Hide();
                var mainWnd = new MainWindow();
                mainWnd.Show();
            } else
            {
                MessageBox.Show("Пользователь не найден");
            }
        }

        private void regBtn_Click(object sender, RoutedEventArgs e)
        {
            var regWindow = new RegistrationWindow();
            regWindow.Closed += RegWindow_Closed;
            Hide();
            regWindow.Show();
        }

        private void RegWindow_Closed(object sender, EventArgs e)
        {
            Show();
        }
    }
}
