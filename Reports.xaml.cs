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
    /// Логика взаимодействия для Reports.xaml
    /// </summary>
    public partial class Reports : Window
    {
        public Reports()
        {
            InitializeComponent();
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            this.Close();
            mainWindow.Show();
        }

        private void BtnFreeBets_Click(object sender, RoutedEventArgs e)
        {
            VakantnieStavki vakantnieStavki = new VakantnieStavki();
            this.Close();
            vakantnieStavki.Show();
        }

        private void BtnCandidates_Click(object sender, RoutedEventArgs e)
        {
            ListKandOnDolshnosti list = new ListKandOnDolshnosti();
            this.Close();
            list.Show();
        }

        private void BtnStaffs_Click(object sender, RoutedEventArgs e)
        {
            Sotrudniki sotrudniki = new Sotrudniki();
            this.Close();
            sotrudniki.Show();
        }

        private void BtnStaffingTable_Click(object sender, RoutedEventArgs e)
        {
            Raspisanie raspisanie = new Raspisanie();
            this.Close();
            raspisanie.Show();
        }
    }
}
