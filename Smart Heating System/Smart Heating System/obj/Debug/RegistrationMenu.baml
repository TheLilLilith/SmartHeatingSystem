   M S B A M L   `   `   `  ����O  KSmart Heating System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Smart_Heating_SystemSmart_Heating_System  5      +    %Smart_Heating_System.RegistrationMenu   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .local"clr-namespace:Smart_Heating_System  5        N� Title$  RegistrationMenu��5
      .��5      )  #MaterialDesignThemes.Wpf.DialogHost  -   5          Name$ 
RootDialog��5   @      OverlayBackground
 ����    DialogContent 5   
   � 5      $��50q�6    � RowDefinitions 5      �� 5      6&   �� 5      6&   .+�5      �� -   5         ��Name$ DialogTextBlock��5      $��Open Sans Bold)�65   $��0��6Q   $��Center=�6^   $��0,10,0,0q�6{   6�   �� 5      -   5         ��Name$ OkButton��5      ���#1F659E$	��200��6A      MaterialDesignRaisedButton#��[  6d   $
��ОК��6�   $��1��6�   $��Center=�6�   $��0,10,0,0q�6�   6�   5      .��5   
   � .+�5   
   �� $��0��6   $��2��6"   .+�5      �� $��Регистрация��6   $��Center=�6/   
���   �$��Open Sans Bold)�6`   $��25(�6|   6�   �� 5      $6��0Введите данные в поля ниже��6   
���   �$��	Open Sans)�6Q   $��15(�6h   $��Center=�6v   6�   �� 5      -   5         ��Name$ NameTextBox��5      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#1F659E)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Ваше имя��6d   
   
Foreground
 �#1F659E % !MaterialDesignFloatingHintTextBox#��[ 6�   �� 5      -   5        $ NameValidation��5      
���  �� # MaterialDesignOverlineTextBlock#��[ 6E   6�   �� 5       -   5        $ RLoginTextBox��5        �#1F659E$	 
Логин��6j   
 �#1F659E#��[ 6�   6�   �� 5!      -   5        $ LoginValidation��5!      
���  ��#��[ 6F   6�   �� 5"      -   5        $ PasswordTextBox��5"       �#1F659E$	 Пароль��6l   
 �#1F659E#��[ 6�   6  �� 5#      -	   5        $ PasswordValidation��5#      
���  ��#��[ 6I   6�   �� 5$      -
   5        $ PasswordTextBox2��5$       �#1F659E$)	 #Подтвердите пароль��6m   
 �#1F659E#��[ 6�   6  �� 5%      -   5        $ PasswordValidation2��5%      
���  ��#��[ 6J   6�   �� 5&      -   5        $ EnterButton��5&         OpenDialogCommand#��Z 6.   $��Подтвердить��6�   $
��0,20q�6�   ���#1F659E6�   5'      5(      5)      5*      