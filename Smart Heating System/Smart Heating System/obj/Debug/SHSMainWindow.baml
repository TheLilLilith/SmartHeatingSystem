   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5   	   (    "Smart_Heating_System.SHSMainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Smart_Heating_System     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � AllowsTransparency  .  � WindowStyle$
 None=�5
   	   
������ $��2q�5   	    � Title$ SHSMainWindow��5   	   $	��600��6   $
��1200��6,   .��5      )  #MaterialDesignThemes.Wpf.DialogHost     DialogContent 5   
   � 5      $��30q�6    � RowDefinitions 5      �� 5      5      �� 5      5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��66   .+�5      �� $��
Выход��6    $��Open Sans Bold)�6-   $
��Left=�6I   $��10q�6d   $��20(�6p   6�   5      �� 5      $ 
Horizontal=�6   $��1��66   .+�5      �� $>��8Вы действительно хотите выйти?��6     J� Opacity$	 0.5Q�6F   $
��10,0q�6T   $��15(�6b   �� 5       -   5         ��Name$ 	YesButton��5    *   $
��Да��6   ���#1F659E   MaterialDesignFlatButton#��[  6j   $��10,0 q�6�   $��Stretch=�6�   6�   �� 5!      $��Нет��6   ���#255295   CloseDialogCommand#��Z 6@   $��Stretch=�6�   6�   5"      5#      .��5&   
   � 	 � ColumnDefinitions	 5'      �� 5(      �� 5)      $	��940 �6#    5+      �� 5,      $	��23* �6    �� 5-      $
��335* �6    .+�50      �� 
�������
 J� RenderTransformOrigin$
 
0.41,0.511&�6&   $��2��6I   $��2��6V   �� 51       �� RadiusY$ 11��6    �� RadiusX$ 11��6%   ���#3485fa$
 
0.41,0.511&�6A   $��2��6d   $��1��6u   � 53       � ShowGridLines .  ���#3485fa$��0��6>   $��0��6K   $��10,0,0,0q�6[   55      �� 57      $��0��6   $��1��6&   ���#25529559      �� 5:      $��0��6   ���#255295$ 
Horizontal=�6;   $��Right=�6T   $��1��6p   $	��144��6�   .+�5;      �� -   5        $ 	MinButton��5;   Q   $��Right=�6   $��Center=�65   
�������$��Open Sans Bold)�6�   $��15(�6�   $
��0, 5q�6�    " MaterialDesignFlatAccentButton#��[ 6�   .��5<      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6.   
�������6D   5=      �� 5>      -   5        $ 	MaxButton��5>   Q   $��Right=�6   $��Center=�65   
�������$��Open Sans Bold)�6�   $��15(�6�   $
��0, 5q�6�   #��[ 6�   .��5?        $ WindowMaximize=�6.   
�������6D   5@      �� 5A      -   5        $ CloseButton��5A   �   $��Right=�6   $��Center=�65      OpenDialogCommand#��Z 6P   
�������$��Open Sans Bold)�6�   $��15(�6�   $
��0, 5q�6�   #��[ 6�   .��5B        $ WindowClose=�6.   
�������6A   5C      5E      � 5G       .  $��1��6*    5H      �� 5I      $��70 �6$   �� 5J      $
��326* �6$   .+�5L      � $��0��6   $��0��6$   ���#3485fa .  .+�5M      �� $��Resources/HeatWhite.png��6   $��10,-31,177,58q�6=   5N      �� 5O      $��Stretch=�6   $��Stretch=�6=   $
��Auto=�6Y   $
��Auto=�6~   ���#3485fa$��2��6�     MaterialDesignScrollViewer#��[ 6�   $��0,22,0,0q�6�   .��5R      �� -   5         ��Name$
 Menu��5R   !   $��10q�6/   5S      5T      �� 5U      $��1��6   $��1��6(   $
��Auto=�68   $
��Auto=�6^   #��[ 6�   .��5V      �� -   5        $ StackPanelMain��5V      $��1��65   $��1��6B   $��Visible=�6R   ��. .+�5W       � -   5          �Name$ 	MainFrame��5W      61   5Z      5[      5\      5]      5^      