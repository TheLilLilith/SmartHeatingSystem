   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      )    #Smart_Heating_System.AdminAddDevice   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .local"clr-namespace:Smart_Heating_System  5      3System&clr-namespace:System;assembly=mscorlib  5      .��5      �   � RowDefinitions  5   
   �� 5      $	��200 �6   �� 5      $��50 �6   �� 5      $
��100* �6   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��0��6#   ���#234270$��Stretch=�6E   +  %MaterialDesignThemes.Wpf.ShadowAssist   Darken . $��Stretch=�5   #   $��Stretch=�6A   $��0,0,0,49q�6d   $��2��6v   .��5      �� $��Устройства��6   
�������$��Open Sans Bold)�6=   $��50(�6Y   $��70q�6g   $��Center=�6s   5      �� 5   
    &  "MaterialDesignFloatingActionButton#���   6   7  1MaterialDesignThemes.Wpf.Transitions.Transitioner   MoveNextCommand#��Z 5      $
��Left=�5      ���#3485fa���#1F79FF{�. $��Bottom=�5      $��0��5      $��2��6   $��	20,0,0,18q�6/   .��5       '  !MaterialDesignThemes.Wpf.PackIcon     Kind$	 Add=�6&   5!      �� 5&   
   -   5         ��Name$ 	dbListBox��5&       + 'MaterialDesignToolVerticalToggleListBox#��[ 6&   
������ $��Stretch=�6�   $��2��6�   $��0,1,0,0q�6�   ��5'      �� 5(       �� 
TargetType" ��6     MaterialDesignListBoxItem �� BasedOn# [ 61    �� Triggers 5)      P� 5*       P� Property �@��
IsSelected	 P� Value	 . . �5+      �� 
 �� Property
 � �� �� Value 5,   "   �� 5-   &    �� EndPoint$ 0.5,1&�6:    �� 
StartPoint$ 0.5,0&�6K   .��5.   *   �  � Color$ White��67    � Offset$ 1Q�6E   � 5/   *   $ White��67   $ 0Q�6E   50   '   52      53       �� 	Resources 55       �� Color��%X   (��       56   *   * SystemColors.HighlightBrushKey+)�� 6   $ Transparent��6\   57      58      ��5:      �� 5;      .R�5<      � $	��150��6   $
��Auto��6(   $��40q�65    � ShowGridLines .   � ColumnDefinitions 5=      �� 5>      $	��25* �6/   �� 5?      $	��25* �6/   �� 5@      $	��25* �6/   �� 5A      $	��25* �6/   .+�5C      �� $��0��6<   $��Center=�6L   $��Right=�6g   $��75��6�   $��10q�6�   ��6    �� *Картинка+ � ToolTip 5D      _� 5E   "   ��6*   �� *Вид+5G      �� 5H      $��1��6%   .+�5I      �� $��Модель:��6(   $��15(�67   $	��Top=�6E   $��1��6]   $��Right=�6m   $
��10,5q�6�   6�   �� 5J      $��Статус:��6(   $��15(�67   $��Center=�6E   $��1��6`   $��Right=�6p   $
��10,5q�6�   6�   �� 5K      $��Температура:��6(   $��15(�6<   $��Bottom=�6J   $��1��6e   $��Right=�6u   $
��10,5q�6�   6�   �� 5L      $��	Вода:��6(   $��15(�65   $��Bottom=�6C   $��1��6^   $��Right=�6n   $
��10,5q�6�   6�   �� 5M      $#��Электроэнергия:��6(   $��15(�6?   $��Bottom=�6M   $��1��6h   $��Right=�6x   $
��10,5q�6�   6�   5N      �� 5O      $��2��6%   .+�5P      �� $��15(�6M   $��Open Sans Bold)�6[   $	��Top=�6w   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6)   �� *&$НазваниеУстройства+6�   �� 5Q      $��Open Sans Bold)�6@   $��15(�6\   $��Center=�6j   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6(   �� *Статус+6�   �� 5R      $��Open Sans Bold)�6E   $��15(�6a   $��Bottom=�6o   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6(   �� *Температура+6�   �� 5S      $��Open Sans Bold)�6H   $��15(�6d   $��Bottom=�6r   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6(   �� *КоличествоВоды+6�   �� 5T      $��Open Sans Bold)�6M   $��15(�6i   $��Bottom=�6w   $��2��6�   $
��Left=�6�   $
��10,5q�6�   ��6(   �� *(&КоличествоЭлЭнергии+6�   5U      �� 5V      $ ��Редактировать��6!   $��3��69   $
��Left=�6I   $��Center=�6d   6�    J� Effect 5Y      3  -System.Windows.Media.Effects.DropShadowEffect  5Z         
BlurRadius$ 20Q�6/      Color$ 	#FFECECEC��6?      RenderingBias$ Quality=�6Q      ShadowDepth$ 1Q�6i   5\      5^      5`      5b      5d      