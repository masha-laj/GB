   M S B A M L   `   `   `  ����  Material.    (Material.Components.CategoryIconSelector   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5	      �� 5
   
      KeyAllowedIcons1   �� Type+  %MaterialDesignThemes.Wpf.PackIconKind"  6(   .s�5       
Wallet=�62    5      
CreditCard=�66    5      Account=�63    5      
Basket=�62    5      
Restaurant=�66    5      	Filmstrip=�65    5      Car=�6/    5      Medicine=�64    5      Gift=�60    5      Face=�60    5      Shopping=�64   5      �� 5   
   AllowedIcons  "  6'   .s�5       
Wallet=�62    5      
CreditCard=�66    5      Account=�63    5      
Basket=�62    5      
Restaurant=�66    5      	Filmstrip=�65    5      Car=�6/    5      Medicine=�64    5       Gift=�60    5!      Face=�60    5"      Shopping=�64   5#      �� 5$   
   IconItem  .R�5%      ��  ��Name$ 
IconBorder��6   $��1q�6)   $��3q�6=    �� CornerRadius$ 50��6H    �� Padding$ 2q�6Z   $��30��6f   $��30��6q   ��5&      �� 5'       �� 
TargetType" ��6   �5(      �� 5)       �� Property � �� �� Value �	#FFD7D7D76<   5+      ._�5-      '  !MaterialDesignThemes.Wpf.PackIcon    Name$
 Icon��6*   $��15��6I   $��15��6T   $��Center=�6`   $��Center=�6}   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null]]	   Kind	 68   �� 6}   5.      
 �� Triggers
 5/      �� 50       �� Value$ False��6|    �� Binding 6   ��  �� Path$ 
IsSelected� �� RelativeSource ��  �� AncestorType$ ListBoxItemL�.a�51      ��  �� 
TargetName$
 Icon��6    � �� �	#FF2D2D2D6]   �� 52      $ 
IconBorder��6    � �� �	#FFEDEDED6c   53      �� 54      $
 True��6|    6   �� $ 
IsSelected� �� $ ListBoxItemL�.a�55      �� $
 Icon��6    � ��
 �����6]   �� 56      $ 
IconBorder��6     PrimaryHueMidBrush# [ 6c    � ��57      59      .��5;      � 
�������.+�5<   
   �� $��Stretch=�6   $��Stretch=�60     AllowedIcons#��[ 6o     IconItem#��[ 6�   $��Stretch=�6�   $��Stretch=�6�    �� SelectedItem 6L   �� $
 Icon���5=      �� 5>      " ��6    ' #MaterialDesignToolToggleListBoxItem �� BasedOn# [ 61   �5?      �� 5@       � ��$ 0q�64   5B      ��5D      �� 5E      .R�5F      � $��Stretch=�6    $��Stretch=�6>   5G      5I      5J      5K      