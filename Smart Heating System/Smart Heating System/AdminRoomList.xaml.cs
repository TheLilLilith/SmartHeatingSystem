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
    /// Логика взаимодействия для AdminRoomList.xaml
    /// </summary>
    public partial class AdminRoomList : UserControl
    {
        SmartHeatingSystemEntities shs = new SmartHeatingSystemEntities();
        public AdminRoomList()
        {
            InitializeComponent();
            dataload();

        }
        public void dataload()
        {
            var query = from a in shs.Помещение select a;
            dbListBox.ItemsSource = query.ToList();
        }

        private void dbListBox2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void dbListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            dataupdate();
        }
        public void dataupdate()
        {
            NullPanel.Visibility = Visibility.Hidden;
            if (dbListBox.SelectedItem != null)
            {

                int text = Convert.ToInt32(dbListBox.SelectedIndex);
                text = text + 1;
                var testQuery = from a in shs.УстройстваПомещения
                                where a.Id_Помещения == text
                                select a;
                if (testQuery.FirstOrDefault() == null)
                {

                    NullPanel.Visibility = Visibility.Visible;
                }
                if (testQuery.FirstOrDefault() != null)
                {
                    NullPanel.Visibility = Visibility.Hidden;
                }
                var query = from a in shs.УстройстваПомещения
                            join c in shs.Устройства on a.Устройство equals c.Id_Устройства
                            join d in shs.Помещение on a.Id_Помещения equals d.Id_Помещения
                            join b in shs.Пользователь on a.Id_Пользователя equals b.Id_Пользователя
                            join r in shs.Отопление on c.ВидОтопления equals r.ID
                            where a.Id_Помещения == text
                            select new { c.НазваниеУстройства, b.Имя, c.Статус, r.Картинка, r.Вид, d.НазваниеПомещения };
                dbListBox2.ItemsSource = query.ToList();
                NullPanel.Visibility = Visibility.Hidden;

            }
        }

        private void dbListBox_MouseEnter(object sender, MouseEventArgs e)
        {
            dataload();
        }

        private void dbListBox2_MouseEnter(object sender, MouseEventArgs e)
        {
            dataupdate();
        }
    }
}
