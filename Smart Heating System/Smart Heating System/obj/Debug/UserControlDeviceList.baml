   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5      0    *Smart_Heating_System.UserControlDeviceList   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:Smart_Heating_System     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      
������ .��5      �   � ShowGridLines  .   � RowDefinitions 5   
   �� 5       � ColumnDefinitions 5   
   �� 5      $	��64* �6   �� 5      $
��171* �6   .+�5   
   �� ���#255295 �� Orientation$ Vertical=�6*   $��0��6A   $��0��6N   $��2��6^   $
��Auto��6o   $��Stretch=�6}   .+�5      �� $��1.2 1.2 1.2 1.2q�6    �� CornerRadius$	 3.2��67   ���#255295 �� Padding$ 1q�6`   ._�5      �� $%��Список устройств��6    "  MaterialDesignCaptionTextBlock#��[  65   ��.  
�������$��20(�6�   $��Center=�6�   $	��Top=�6�   $��35��6�   $��10q�6�   6  5      �� 5      -   5         ��Name$ HeatComboBox��5      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 �����$��10q�6e    & "MaterialDesignFloatingHintComboBox#��[ 6�   
�������$��15(�6�   .@�5      �� -   5         ��Name$	 cb0��5      
���   �.��6?   Все6D   �� 5      -   5        $	 cb1��5      
���   �.��6?   #!Водяное отопление6R   �� 5      -   5        $	 cb2��5      
���   �.��6?   /-Электрическое отопление6X   �� 5       -   5        $	 cb3��5       
���   �.��6?   '%Воздушное отопление6T   �� 5!      -   5        $	 cb4��5!      
���   �.��6?   !Печное отопление6Q   5"      5%      �� 5&   
   $ Vertical=�6   $��1��6,   $��1��6<   .+�5(      �� -   5        	 ��Name$	 	dbListBox��5(       + 'MaterialDesignToolVerticalToggleListBox#��[ 6)   
������ $��1��6�   $��1��6�   $��Stretch=�6�   ��5)      �� 5*      
 �� 
TargetType"
 ��6     MaterialDesignListBoxItem �� BasedOn# [ 65    �� Triggers 5+      P� 5,       P� Property �@��
IsSelected P� Value . . �5-   "   ��  �� Property � �� �� Value 5.   &   �� 5/   *    �� EndPoint$ 0.5,1&�6>    �� 
StartPoint$ 0.5,0&�6O    �� Opacity$ 0.505Q�6b   .��50   .   �  � Color$ 	#FF255295��6;    � Offset$ 0Q�6M   � 51   .   $ 	#FF255295��6;   $ 1Q�6M   � 52   .   $ 	#FFE1E1E1��6;   $ 0.264Q�6M   � 53   .   $ 	#FFCBD0D8��6;   $ 0.808Q�6M   54   +   56   #   57       �� 	Resources 59       �� Color��%X   (��       5:   .   * SystemColors.HighlightBrushKey+)�� 6   $ Transparent��6`   5;      5<      ��5>      �� 5?      .R�5A      � $	��100��6   $��40q�6,     .   5B      �� 5C   "   $	��25* �63   �� 5D   "   $	��78* �63    5F      �� 5G   "   $	��70* �60   �� 5H   "   $
��131* �60   .+�5J      ��  ��Name$ deviceImage��6$   $��0��69   $��1��6e   $��Stretch=�6r   $��Stretch=�6�   ��6I   �� *Картинка+ � ToolTip 5K   "   _� 5L   &   ��6.   �� *Вид+5N      �� 5O       ��Name$ IdDevice��6(   
���   �$��0��6M   $��0��6Z   $��Center=�6�   $��Center=�6�   $��20(�6�   ��6j   �� *Id_Устройства+6�   �� 5P      $ 
NameDevice��6(   
���   �$��0��6O   $��1��6\   #��[  6�   $��Center=�6�   $��Center=�6�   $��20(�6   ��6l   �� *&$НазваниеУстройства+6   J� Effect 5Q      3  -System.Windows.Media.Effects.DropShadowEffect  5R   "      
BlurRadius$ 20Q�63      Color$ 	#FFECECEC��6C      RenderingBias$ Quality=�6U      ShadowDepth$ 1Q�6m   5T      5V      5Y      5[      5]      5_      