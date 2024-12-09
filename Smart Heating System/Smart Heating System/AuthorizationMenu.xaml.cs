using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
using System.Windows.Threading;

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationMenu.xaml
    /// </summary>
    public partial class AuthorizationMenu : Page
    {
        bool isLogged = false;
        private DispatcherTimer timer;
        private int x;
        int error = 2;
        int a = 0;
        int userID;
       
        public AuthorizationMenu()
        {
            InitializeComponent();
            LogInTextBlock.Visibility = Visibility.Hidden;

           
        }
        private void timerStart()
        {
            isLogged = true;
            timer = new DispatcherTimer();
            timer.Tick += new EventHandler(timerTick);
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Start();
        }
        private void timerStart2()
        {
            isLogged = false;
            timer = new DispatcherTimer();
            timer.Tick += new EventHandler(timerTick);
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Start();
        }
        private void timerTick(object sender, EventArgs e)
        {
            x++;
            if (x == 3)
            {
                
                timer.Stop();
                ProgressBarLogin.Visibility = Visibility.Hidden;
                OKButton.IsEnabled = true;
                LogInTextBlock.Visibility = Visibility.Visible;
                
            }
        }
        private void timerStart3()
        {
            a = 15;
            timer = new DispatcherTimer();
            timer.Tick += new EventHandler(timerTick2);
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Start();
        }
        private void timerTick2(object sender, EventArgs e)
        {
            a--;
            EnterButton.Content = "Осталось: " + a + " сек.";
            if (a == 0)
            {
                timer.Stop();
                LoginTextBox.IsEnabled = true;
                PasswordTextBox.IsEnabled = true;
                EnterButton.IsEnabled = true;
                EnterButton.Content = "Войти";
                error = 2;
            }
        }
        private void EnterButton_Click(object sender, RoutedEventArgs e)
        {
            
                if (error == 0)
                {
                    LoginTextBox.IsEnabled = false;
                    PasswordTextBox.IsEnabled = false;
                    EnterButton.IsEnabled = false;

                    LogInTextBlock.Text = "Много неудачных попыток входа систему," + Environment.NewLine + "   повторите попытку через 15 секунд." + Environment.NewLine;
                    ProgressBarLogin.Visibility = Visibility.Hidden;
                    OKButton.IsEnabled = true;
                    LogInTextBlock.Visibility = Visibility.Visible;
                    timerStart3();
                }
                else
                {
                    OKButton.IsEnabled = false;
                    try
                    {
                    using (var context = new SmartHeatingSystemEntities())
                    {
                        context.Пользователь.Load();
                        var result = (from a in context.Пользователь
                                      where a.Логин == LoginTextBox.Text
                                 && a.Пароль == PasswordTextBox.Password
                                      select a).FirstOrDefault();

                        if (result != null)
                        {
                            timerStart();
                            if (isLogged == true)
                            {
                                LogInTextBlock.Text = "Здравствуйте, " + result.Имя + "!" + Environment.NewLine;
                                OKButton.Content = "Продолжить";
                                userID = result.Id_Пользователя;
                              
                            }
                            else
                            {
                                isLogged = false;
                            }
                        }
                        else
                        {
                            isLogged = false;
                            timerStart2();
                            LogInTextBlock.Text = "Неверный логин или пароль!" + Environment.NewLine + "     Количество попыток " + error + "." + Environment.NewLine;
                            error--;
                        }
                    }
                    }
                    catch
                    {
                        timerStart();
                        LogInTextBlock.Text = "Ошибка подключения к базе данных.";
                    }
                }
           
        }

        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            if (isLogged == true)
            {
                DialogHost.CloseDialogCommand.Execute(null, null);
                this.Visibility = Visibility.Hidden;
                
                SHSMainWindow shs = new SHSMainWindow(userID);
                
                shs.Show();
            }
            if (isLogged == false)
            {

                OKButton.IsEnabled = true;
                ProgressBarLogin.Visibility = Visibility.Visible;             
                LogInTextBlock.Visibility = Visibility.Hidden;
                DialogHost.CloseDialogCommand.Execute(null, null);
                x = 0;
               
            }
        }

    }
}
