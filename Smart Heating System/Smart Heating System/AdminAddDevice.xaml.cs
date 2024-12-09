using MaterialDesignThemes.Wpf;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Data.Entity;

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для AdminAddDevice.xaml
    /// </summary>
    public partial class AdminAddDevice : UserControl
    {
        private DispatcherTimer timer;
        int a = 0;
        SmartHeatingSystemEntities shs = new SmartHeatingSystemEntities();
        public AdminAddDevice()
        {
            InitializeComponent();
            dataload();
        }

        public void dataload()
        {

            var query = from a in shs.Устройства

                        join c in shs.Отопление on a.ВидОтопления equals c.ID
                        select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид, a.КоличествоВоды, a.КоличествоЭлЭнергии, a.Статус, a.Температура };


            if (query != null)
            {

                dbListBox.ItemsSource = query.ToList();
            }
            else
            {

            }

        }
    /*    private void GenerateButton_Click(object sender, RoutedEventArgs e)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var stringChars = new char[5];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            DeviceName.Text = "SHS-" + finalString;
            var rnd = new Random();
            int indexing = rnd.Next(0, 4);
            DeviceBox.SelectedIndex = indexing;
        }
        private void timerStart3()
        {
            a = 10;
            timer = new DispatcherTimer();
            timer.Tick += new EventHandler(timerTick2);
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Start();
        }
        private void timerTick2(object sender, EventArgs e)
        {
            a--;
            
            if (a == 9)
            {
                UpdateTextBlock.Text = "Сопряжение...";
            }
            if (a == 6)
            {
                UpdateTextBlock.Text = "Подключение...";
            }
            if (a == 4)
            {
                UpdateTextBlock.Text = "Добавление данных...";
            }
            if (a == 2)
            {
                UpdateTextBlock.Text = "Обновление данных...";
            }
            if (a == 0)
            {
                UpdateTextBlock.Text = "Устройство подключено";
                ProgressBarLogin.Visibility = Visibility.Collapsed;
                OKButton.IsEnabled = true;
            }
        }
        private void ConnectButton_Click(object sender, RoutedEventArgs e)
        {
            timerStart3();
            OKButton.IsEnabled = false;
        }

        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                
                Устройства devices = new Устройства()
                {
                    НазваниеУстройства = DeviceName.Text,
                    ВидОтопления = DeviceBox.SelectedIndex + 1,
                    Статус = "Подключено в систему",
                    Температура = 0,
                    КоличествоВоды = 0,
                    КоличествоЭлЭнергии = 0
                };
                shs.Устройства.Add(devices);
                shs.SaveChanges();
                dataload();
                DialogHost.CloseDialogCommand.Execute(null, null);
            }
            catch
            {
                DialogHost.CloseDialogCommand.Execute(null, null);
            }
        }*/

        private void dbListBox_MouseEnter(object sender, MouseEventArgs e)
        {

        }
    }
}
