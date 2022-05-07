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
    /// Логика взаимодействия для ChooseDepartment.xaml
    /// </summary>
    public partial class ChooseDepartment : Window
    {
        public ChooseDepartment()
        {
            InitializeComponent();
        }

        private void MenuItemSave_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItemPrint_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItemGoBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            this.Close();
            mainWindow.Show();
        }

        private void TbSearchDepartment_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void CbSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void CbFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
