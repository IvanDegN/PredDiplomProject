﻿using System;
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
    /// Логика взаимодействия для Raspisanie.xaml
    /// </summary>
    public partial class Raspisanie : Window
    {
        public Raspisanie()
        {
            InitializeComponent();
        }

        private void MenuItemPrint_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItemSave_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItemGoBack_Click(object sender, RoutedEventArgs e)
        {
            Reports reports = new Reports();
            this.Close();
            reports.Show();
        }
    }
}
