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
    /// Логика взаимодействия для RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        public RegistrationWindow()
        {
            InitializeComponent();
        }

        private void loginBtn_Click(object sender, RoutedEventArgs e)
        {
            var stateManager = new StateManager().Instance;
            var db = stateManager.DB;
            var users = db.Users;
            var exists = users.Any(o => o.Username == loginTB.Text);

            if (loginTB.Text.Length < 3)
            {
                MessageBox.Show("Минимальная длина логина 3 символа");
                return;
            }
            if (passTB.Text.Length < 6)
            {
                MessageBox.Show("Минимальная длина пароля 6 символа");
                return;
            }
            if (passTB.Text != passRepeatTB.Text)
            {
                MessageBox.Show("Пароли не совпадают");
                return;
            }
            if (exists)
            {
                MessageBox.Show("Пользователь существует");
                return;
            }

            db.Users.Add(new User { Username = loginTB.Text, Password = passTB.Text });
            db.SaveChanges();
            Close();
        }

        private void regBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
