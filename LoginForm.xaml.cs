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

namespace PredDiplomProject
{
    /// <summary>
    /// Логика взаимодействия для LoginForm.xaml
    /// </summary>
    public partial class LoginForm : Window
    {

        

        public LoginForm()
        {
            InitializeComponent();
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            foreach (var user in DB.db.Users)
            {
                if (user.Login == TbLogin.Text && user.Password == PbPassword.Password)
                {
                    MessageBox.Show("Вход выполнен успешно!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information, MessageBoxResult.OK); break;
                }
                else
                {
                    MessageBox.Show("Логин или пароль неверны!", "Предупрежедние", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.Cancel);
                }
            }


            if (String.IsNullOrEmpty(TbLogin.Text) && String.IsNullOrWhiteSpace(TbLogin.Text))
            {
                MessageBox.Show(" Поле \"Логин\" должно быть заполнено!", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning, MessageBoxResult.OK);
            }

            if (String.IsNullOrEmpty(PbPassword.Password) && String.IsNullOrWhiteSpace(PbPassword.Password))
            {
                MessageBox.Show("Поле \"Пароль\" должно быть заполнено", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning, MessageBoxResult.OK);
            }

        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            var result = MessageBox.Show("Вы действительно хотите выйти?", "Предупрежедние", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.Cancel);
            if(result == MessageBoxResult.OK)
            {
                Application.Current.Shutdown();
            }
        }

        
    }
}
