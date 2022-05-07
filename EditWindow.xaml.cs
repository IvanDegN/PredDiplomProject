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
    /// Логика взаимодействия для EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window
    {
        public EditWindow()
        {
            InitializeComponent();
        }

        private void BtnGoBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            this.Close();
            mainWindow.Show();
        }

        private void BtnEditStaffs_Click(object sender, RoutedEventArgs e)
        {
            EditStaffs editStaffs = new EditStaffs();
            this.Close();
            editStaffs.Show();
        }

        private void BtnEditPositions_Click(object sender, RoutedEventArgs e)
        {
            EditPositions positions = new EditPositions();
            this.Close();
            positions.Show();
        }

        private void BtnEditDepartments_Click(object sender, RoutedEventArgs e)
        {
            EditDepartments departments = new EditDepartments();
            this.Close();
            departments.Show();
        }
    }
}
