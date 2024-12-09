using MaterialDesignThemes.Wpf;
using Smart_Heating_System.ViewModel;
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

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для SHSMainWindow.xaml
    /// </summary>
    public partial class SHSMainWindow : Window
    {
        SmartHeatingSystemEntities shs = new SmartHeatingSystemEntities();

        int UserID;
        

        public SHSMainWindow(int userID)
        {
            InitializeComponent();
            UserID = userID;
            loadgroup();
           
        }
        public void loadgroup()
        {
            var query = (from a in shs.Пользователь where a.Id_Пользователя == UserID select a).ToList();
            var query2 = (from b in query where b.Роль == "Администратор" select b).ToList();
            if (query2.FirstOrDefault() != null)
            {
                
                var menuAdmin = new List<SubItem>();
                menuAdmin.Add(new SubItem("Список пользователей", new AdminUserList()));
                menuAdmin.Add(new SubItem("Список всех устройств", new AdminDeviceAddList()));
                menuAdmin.Add(new SubItem("Список всех помещений", new AdminRoomList()));
                var item0 = new ItemMenu("Админ", menuAdmin, PackIconKind.FaceAgent);
                Menu.Children.Add(new UserControlMenuItem(item0, this));
            }
            var menuRegister = new List<SubItem>();
            menuRegister.Add(new SubItem("Список устройств", new UserControlDeviceList()));
            menuRegister.Add(new SubItem("Добавить устройство"));
            var item6 = new ItemMenu("Устройства", menuRegister, PackIconKind.Devices);

            var menuSchedule = new List<SubItem>();
            menuSchedule.Add(new SubItem("Список помещений"));
            menuSchedule.Add(new SubItem("Добавить помещение"));
            var item1 = new ItemMenu("Помещения", menuSchedule, PackIconKind.HouseFloor0);

            var menuReports = new List<SubItem>();
            menuReports.Add(new SubItem("По устройствам"));
            var item2 = new ItemMenu("Статистика", menuReports, PackIconKind.Graph);

         

            Menu.Children.Add(new UserControlMenuItem(item6, this));
            Menu.Children.Add(new UserControlMenuItem(item1, this));
            Menu.Children.Add(new UserControlMenuItem(item2, this));
        }
        internal void SwitchScreen(object sender)
        {
            var screen = ((UserControl)sender);

            if (screen != null)
            {
                StackPanelMain.Children.Clear();
                StackPanelMain.Children.Add(screen);
            }
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void MinButton_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void MaxButton_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == System.Windows.WindowState.Normal)
            {
                this.WindowState = System.Windows.WindowState.Maximized;
            }
            else
            {
                this.WindowState = System.Windows.WindowState.Normal;
            }
        }

        private void YesButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
