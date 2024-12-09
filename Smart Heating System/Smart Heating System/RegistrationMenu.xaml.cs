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
using System.Data.Entity;
using MaterialDesignThemes.Wpf;

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для RegistrationMenu.xaml
    /// </summary>
    public partial class RegistrationMenu : Page
    {
        bool CheckComplete = true;
        public RegistrationMenu()
        {
            InitializeComponent();
        }
        private void checking()
        {
            if (String.IsNullOrEmpty(NameTextBox.Text))
            {
                NameValidation.Text = "Введите имя";
                CheckComplete = false;
            }
            if (String.IsNullOrEmpty(RLoginTextBox.Text))
            {
                LoginValidation.Text = "Укажите логин";
                CheckComplete = false;
            }
            if (String.IsNullOrEmpty(PasswordTextBox.Text))
            {
                PasswordValidation.Text = "Введите пароль";
                CheckComplete = false;
            }
            if (String.IsNullOrEmpty(PasswordTextBox2.Text))
            {
                PasswordValidation2.Text = "Повторите пароль";
                CheckComplete = false;
            }
            if (PasswordTextBox.Text != PasswordTextBox2.Text)
            {
                PasswordValidation.Text = "Пароли не совпадают";
                PasswordValidation2.Text = "Пароли не совпадают";
                CheckComplete = false;
            }
            if (RLoginTextBox.Text.Length < 4)
            {
                LoginValidation.Text = "Минимальное количество символов: 4";
                CheckComplete = false;
            }
            if (PasswordTextBox.Text.Length < 4)
            {
                PasswordValidation.Text = "Минимальное количество символов: 4";
                CheckComplete = false;
            }
        }
        private void EnterButton_Click(object sender, RoutedEventArgs e)
        {
            CheckComplete = true;
            checking();
            if (CheckComplete == true)
            {
                NameValidation.Text = "";
                LoginValidation.Text = "";
                PasswordValidation.Text = "";
                PasswordValidation2.Text = "";
                DialogTextBlock.Text = NameTextBox.Text + ",  вы успешно зарегистрировались!";

            }
            else
            {
                DialogTextBlock.Text = "Введены неккоректные данные." + Environment.NewLine;
            }

        }

        private void OkButton_Click(object sender, RoutedEventArgs e)
        {
            if (CheckComplete == true)
            {
                using (var context = new SmartHeatingSystemEntities())
                {
                    Пользователь user = new Пользователь { Имя = NameTextBox.Text, Логин = RLoginTextBox.Text, Пароль = PasswordTextBox.Text, Роль = "Пользователь" };
                    context.Пользователь.Add(user);
                    context.SaveChanges();
                    context.Пользователь.Load();
                   // SHSMainWindow shs = new SHSMainWindow();
                    this.Visibility = Visibility.Hidden;
                   // shs.Show();
                    
                }
            }
            if (CheckComplete == false)
            {
                DialogHost.CloseDialogCommand.Execute(null, null);
            }
        }
    }
}
