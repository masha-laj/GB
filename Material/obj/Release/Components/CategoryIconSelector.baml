   M S B A M L   `   `   `  ����   Material.    (Material.Components.CategoryIconSelector   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     V RMaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � 	Resources  ��    KeyAllowedIcons1   �� Type+  %MaterialDesignThemes.Wpf.PackIconKind"  .s� 
Wallet=� 
CreditCard=� Account=� 
Basket=� 
Restaurant=� 	Filmstrip=� Car=� Medicine=� Gift=� Face=� Shopping=��� AllowedIcons  "  .s� 
Wallet=� 
CreditCard=� Account=� 
Basket=� 
Restaurant=� 	Filmstrip=� Car=� Medicine=� Gift=� Face=� Shopping=��� IconItem  .R���  ��Name$ 
IconBorder��$��1q�$��3q� �� CornerRadius$ 50�� �� Padding$ 2q�$��30��$��30������  �� 
TargetType" �����  �� Property � �� �� Value �	#FFD7D7D7._�'  !MaterialDesignThemes.Wpf.PackIcon    Name$
 Icon��$��15��$��15��$��Center=�$��Center=��  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null]]	   Kind	 �� 
 �� Triggers
 ��  �� Value$ False�� �� Binding ��  �� Path$ 
IsSelected� �� RelativeSource ��  �� AncestorType$ ListBoxItemL�.a���  �� 
TargetName$
 Icon�� � �� �	#FF2D2D2D�� $ 
IconBorder�� � �� �	#FFEDEDED�� $
 True�� �� $ 
IsSelected� �� $ ListBoxItemL�.a��� $
 Icon�� � ��
 ������� $ 
IconBorder��  PrimaryHueMidBrush# [  � ��.��� 
�������.+��� $��Stretch=�$��Stretch=�  AllowedIcons#��[   IconItem#��[ $��Stretch=�$��Stretch=� �� SelectedItem �� $
 Icon����� " �� ' #MaterialDesignToolToggleListBoxItem �� BasedOn# [ ���  � ��$ 0q����� .R�� $��Stretch=�$��Stretch=�