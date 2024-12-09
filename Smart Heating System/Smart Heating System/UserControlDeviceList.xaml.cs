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
using Smart_Heating_System.ViewModel;
using System.Collections.ObjectModel;

namespace Smart_Heating_System
{
    /// <summary>
    /// Логика взаимодействия для UserControlDeviceList.xaml
    /// </summary>
    public partial class UserControlDeviceList : UserControl
    {
        SmartHeatingSystemEntities shs = new SmartHeatingSystemEntities();
       
      

        public UserControlDeviceList()
        {
            InitializeComponent();
            dataload();            
            
        }
      
      
        public void dataload()
        {

            var query = from a in shs.Устройства
                        
                        join c in shs.Отопление on a.ВидОтопления equals c.ID
                       select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид};
         

            if (query != null)
            {
                           
                dbListBox.ItemsSource = query.ToList();    
            }
            else
            {

            }

        }

        private void HeatComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (HeatComboBox.SelectedIndex == 0)
            {                     
                dataload();
            }
            if (HeatComboBox.SelectedIndex == 1)
            {
                
                var query = from a in shs.Устройства
                            where a.ВидОтопления == 1
                            join c in shs.Отопление on a.ВидОтопления equals c.ID
                            select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид };
                
                dbListBox.ItemsSource = query.ToList();
            }
            if (HeatComboBox.SelectedIndex == 2)
            {
                var query = from a in shs.Устройства
                            where a.ВидОтопления == 2
                            join c in shs.Отопление on a.ВидОтопления equals c.ID
                            select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид };
               
                dbListBox.ItemsSource = query.ToList();
            }
            if (HeatComboBox.SelectedIndex == 3)
            {
                var query = from a in shs.Устройства
                            where a.ВидОтопления == 3
                            join c in shs.Отопление on a.ВидОтопления equals c.ID
                            select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид };

                dbListBox.ItemsSource = query.ToList();
            }
            if (HeatComboBox.SelectedIndex == 4)
            {
                var query = from a in shs.Устройства
                            where a.ВидОтопления == 4
                            join c in shs.Отопление on a.ВидОтопления equals c.ID
                            select new { a.Id_Устройства, a.НазваниеУстройства, a.ВидОтопления, c.Картинка, c.Вид };

                dbListBox.ItemsSource = query.ToList();
            }
        }
    }
}
