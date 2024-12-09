using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private bool _allowDirectNavigation = false;
        private NavigatingCancelEventArgs _navArgs = null;
        private Duration _duration = new Duration(TimeSpan.FromSeconds(1));
        private double _oldHeight = 0;

        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new AuthorizationMenu());
            BackButton.Visibility = Visibility.Hidden;
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {    
                Close();
        }

        private void MainFrame_Navigating(object sender, NavigatingCancelEventArgs e)
        {
            var ta = new ThicknessAnimation();
            ta.Duration = TimeSpan.FromSeconds(0.3);
            ta.DecelerationRatio = 0.7;
            ta.To = new Thickness(0, 0, 0, 0);
            if (e.NavigationMode == NavigationMode.New)
            {
                ta.From = new Thickness(500, 0, 0, 0);
            }
            else if (e.NavigationMode == NavigationMode.Back)
            {
                ta.From = new Thickness(0, 0, 500, 0);
            }
            try
            {
                (e.Content as Page).BeginAnimation(MarginProperty, ta);
            }
            catch
            {

            }
        }
        private void SlideCompleted(object sender, EventArgs e)
        {
            _allowDirectNavigation = true;
            switch (_navArgs.NavigationMode)
            {
                case NavigationMode.New:
                    if (_navArgs.Uri == null)
                        MainFrame.Navigate(_navArgs.Content);
                    else
                        MainFrame.Navigate(_navArgs.Uri);
                    break;
                case NavigationMode.Back:
                    MainFrame.GoBack();
                    break;
                case NavigationMode.Forward:
                    MainFrame.GoForward();
                    break;
                case NavigationMode.Refresh:
                    MainFrame.Refresh();
                    break;
            }

            Dispatcher.BeginInvoke(DispatcherPriority.Loaded,
                (ThreadStart)delegate ()
                {
                    DoubleAnimation animation0 = new DoubleAnimation();
                    animation0.From = 0;
                    animation0.To = _oldHeight;
                    animation0.Duration = _duration;
                    MainFrame.BeginAnimation(HeightProperty, animation0);
                });
        }



        private void RegistrationButton_Click(object sender, RoutedEventArgs e)
        {
            BackButton.Visibility = Visibility.Visible;
            RegistrationButton.Visibility = Visibility.Hidden;
            RegistrationMenu hs = new RegistrationMenu();
            MainFrame.Navigate(hs);
            RegistrationButton.IsEnabled = false;
           
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            AuthorizationMenu am = new AuthorizationMenu();
            MainFrame.Navigate(am);
            BackButton.Visibility = Visibility.Hidden;
            RegistrationButton.IsEnabled = true;
            RegistrationButton.Visibility = Visibility.Visible;
        }
    }  
}

