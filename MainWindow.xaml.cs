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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PredDiplomProject
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            LoginForm loginForm = new LoginForm();
            var result = MessageBox.Show("Вы действительно хотите выйти?", "Предупрежедние", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.Cancel);
            if (result == MessageBoxResult.OK)
            {
                this.Close();
                loginForm.Show();
            }

        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //Application.Current.Shutdown();
        }

        private void BtnShowReports_Click(object sender, RoutedEventArgs e)
        {
            Reports reports = new Reports();
            this.Close();
            reports.Show();
        }

        private void BtnSearchStaff_Click(object sender, RoutedEventArgs e)
        {
            SearchStaff searchStaff = new SearchStaff();
            this.Close();
            searchStaff.Show();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            EditWindow editWindow = new EditWindow();
            this.Close();
            editWindow.Show();
        }

        private void BtnChooseDepartment_Click(object sender, RoutedEventArgs e)
        {
            ChooseDepartment chooseDepartment = new ChooseDepartment();
            this.Close();
            chooseDepartment.Show();
        }
    }
}
