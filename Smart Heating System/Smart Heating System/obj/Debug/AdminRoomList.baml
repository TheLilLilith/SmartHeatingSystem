   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5      (    "Smart_Heating_System.AdminRoomList   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:Smart_Heating_System     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $
��187* �6   �� 5      $
��174* �6   .+�5   
   �� -   5         ��Name$ 	NullPanel��5      $y�Visible=�6(   $��1��6=   $��20q�6J   .+�5      �� $��Resources/error.png��6   $	��100��61   $��10q�6>   6M   �� 5      $U��OВ данном помещении отсутствуют устройства.��6   $��15(�6J   $��Open Sans Bold)�6X   $��Center=�6t   6�   5      �� 5   
   -   5         ��Name$ 	dbListBox��5       '  #MaterialDesignToolToggleFlatListBox#��[  6U   
������ $��0��6�   $��0��6�   $��Stretch=�6�   ��5      �� 5       �� 
TargetType" ��6     MaterialDesignListBoxItem �� BasedOn# [ 61    �� Triggers 5      P� 5       P� Property �@��
IsSelected P� Value . . �5      ��  �� Property � ��	 �� Value	 �#2552956;   �� 5       � ��
	 �����6;   �� 5       � ��$	 Open Sans Bold)�6;   5      
 �� 	Resources
 5       �� Color��%X   (��       5   *   * SystemColors.HighlightBrushKey+)�� 6   $ Transparent��6\   5       5!      ��5$      �� 5&      .R�5'      � $	��200��6   $	��200��6(   $��20q�64    � ShowGridLines .   � ColumnDefinitions 5(      �� 5)      $	��25* �6/     5,      �� 5-      $	��20* �6,   �� 5.      $	��40* �6,   �� 5/      $	��20* �6,   .+�53      �� $��1��6    $��1��60   $	��100��6=   $	��100��6J   $��Resources/home.png��6V   $��Center=�6r   $��Center=�6�   6�   �� 54       ��Name$ 	NameBlock��6$   $��2��67   $��15(�6h   $	��Top=�6v   $��0��6�   $��Center=�6�   $��10q�6�   ��6D   �� *$"НазваниеПомещения+6�   56       �� Triggers 57      5:      5=      �� 5?   
   -   5        $ 
dbListBox2��5?       + 'MaterialDesignToolVerticalToggleListBox#��[ 6W   
������ $��1��6�   $��Stretch=�6�   ��5A      �� 5B      .R�5C      � $	��100��6   $
��Auto��6(   $��40q�65    .   5D      �� 5E      $	��25* �6/   �� 5F      $	��25* �6/   �� 5G      $	��25* �6/   �� 5H      $	��25* �6/   .+�5J      �� $��0��6<   $��Center=�6L   $��Right=�6g   $��75��6�   $��10q�6�   ��6    �� *Картинка+ � ToolTip 5K      _� 5L   "   ��6*   �� *Вид+5N      �� 5O      $��1��6%   .+�5P      �� $��Помещение:��6(   $��15(�6:   $��Bottom=�6H   $��1��6c   $��Right=�6s   $
��10,5q�6�   6�   �� 5Q      $��Имя:��6(   $��15(�64   $	��Top=�6B   $��1��6Z   $��Right=�6j   $
��10,5q�6�   6�   �� 5R      $��Устройство:��6(   $��15(�6;   $��Center=�6I   $��1��6d   $��Right=�6t   $
��10,5q�6�   6�   5S      �� 5T      $��2��6%   .+�5U      �� $��Open Sans Bold)�6G   $��15(�6c   $��Bottom=�6q   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6$   �� *$"НазваниеПомещения+6�   �� 5V      $��15(�6>   $��Open Sans Bold)�6L   $	��Top=�6h   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6)   �� *Имя+6�   �� 5W      $��Open Sans Bold)�6L   $��15(�6h   $��Center=�6v   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6(   �� *&$НазваниеУстройства+6�   5X      �� 5Y      $ ��Редактировать��6!   $��3��69   $
��Left=�6I   $��Center=�6d   6�   5Z      5\      5_      5a      5b      