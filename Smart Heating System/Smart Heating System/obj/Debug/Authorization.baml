   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5   	   %    Smart_Heating_System.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Smart_Heating_System     5   	   -   5          � AllowsTransparency  .  � WindowStyle$
 None=�5
   	   
������ $��2q�5   	   
������  � Title$ Авторизация��5   	   $	��450��6   $	��800��6*    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�6L   .��5      )  #MaterialDesignThemes.Wpf.DialogHost     DialogContent 5   
   � 5      $��30q�6    � RowDefinitions 5      �� 5      5      �� 5      5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��66   .+�5      �� $��
Выход��6    $��Open Sans Bold)�6-   $
��Left=�6I   $��10q�6d   $��20(�6p   6�   5      �� 5      $ 
Horizontal=�6   $��1��66   .+�5      �� $>��8Вы действительно хотите выйти?��6     J� Opacity$	 0.5Q�6F   $
��10,0q�6T   $��15(�6b   �� 5      -   5        $
��Да��5      ���#1F659E   MaterialDesignFlatButton#��[  6X   $��10,0 q�6�   $��Stretch=�6�   6�   �� 5       $��Нет��6   ���#1F659E	   CloseDialogCommand#��Z	 6@   $��Stretch=�6�   6�   5!      5"      .��5%      � 
 � ShowGridLines
 .   5&   
   �� 5'      �� 5(      $	��380 �6    � ColumnDefinitions 5+   
   �� 5,      �� 5-      $	��298 �6   .+�51   
   ��  �� RadiusY$ 11��6    �� RadiusX$ 11��6!   
�������$��2��6;    J� RenderTransformOrigin$ 
0.41,0.511&�6O   $��2��6r   53      �� 55   
   $��0��6   $��2��6$   ��56      �� 57       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��58      �  � Color$ #00C8C5��6#    � Offset$	 0.0Q�63   � 59      $ #1F659E��6#   $	 1.0Q�63   5:      5=      �� 5>   
   $��0��6   $��2��6    $��UniformToFill=�61   $	 0.2Q�6I   $��Resources\Charts.jpeg��6W   6x   �� 5?   
   $��0��6   $��0��6"   $ 
Horizontal=�62   .+�5@      �� $��Resources/HeatWhite.png��6   $��10,10q�65   6G   �� 5A      $��Smart Heating System��6   $��Open Sans Bold)�64   $��20(�6P   $��Center=�6^   $��Center=�6{   $��5q�6�   
�������6�   5B      �� 5C   
   -   5         ��Name$ 
BackButton��5C      $��0��6?   $��1��6L    & "MaterialDesignIconForegroundButton#��[ 6\   $
��Left=�6�   $��	10,10,0,3q�6�   $
��Auto��6�   .��5D      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowBack=�6&   ���#1F659E6N   5E      �� 5G   
   $ Vertical=�6   $��1��6,   $��2��6<   .+�5I           CloseOnClickAway . $	��Top=�6@   $��Right=�6X    5J      � 5K      $��25q�6   $��Bottom=�6,   $
��Left=�6G   5P      5R      �� 5T      -   5        $ 
ExitButton��5T   Z      OpenDialogCommand#��Z 6   ���#00C8C5$��Open Sans Bold)�6�   $��15(�6�   $��10q�6�   $��Right=�6�     MaterialDesignIconButton#��[ 6�   .��5U        $ Close=�6.   ���#1F659E6R   5V       � 5W      -   5          �Name$ 	MainFrame��5W        � NavigationUIVisibility$ Hidden=�6+   $��Center=�6m   $��Center=�6�   6�   �� 5X      -   5        $ RegistrationButton��5X      $/��)Или зарегистрируйтесь��6S   ���#1F659E$��Center=�6�   $��Bottom=�6�   #��[  6�   6�   5Y      5[      5\      5^      