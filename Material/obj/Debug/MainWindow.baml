   M S B A M L   `   `   `  ����D  @SimpleWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullN5clr-namespace:SimpleWPF.Navigation;assembly=SimpleWPFSimpleWPF.Navigation  5   	   C ?Material, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MaterialMaterial 5   	      Material.MainWindow   5   	   @simple5clr-namespace:SimpleWPF.Navigation;assembly=SimpleWPF  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Material     5   	   V RMaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��800��6)      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�6;    � WindowStartupLocation$ CenterScreen=�6Q    � WindowStyle$
 None=�6v    � 	Resources 5        OpenMenu �� TargetProperty �� Target	 �� ElementName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value  	CloseMenu " MaterialDesignMenuToggleButton ' #MaterialDesignHamburgerToggleButton �� BasedOn �� 
TargetType �� Triggers P� Property P� Value N� EnterActions N� ExitActions�� 5   
   %&  &	       &	 ]    &	 �    7  7  7  7  7  �� 5      .��5      U� $ Width�60    6R   �� $	 MenuGrid��.\�5        $
 0��6+   $ 50Q�67     5      $
 0:0:0.2��6+   $	 200Q�6=   5      U� 5      $ Height�60    6S   �� $	 MenuLogo��.\�5        $
 0��6+   $ 27Q�67     5      $
 0:0:0.2��6+   $	 100Q�6=   5      5      �� 5      .��5       U� $ Width�60    6R   �� $	 MenuGrid��.\�5!        $
 0��6+   $	 200Q�67     5"      $
 0:0:0.2��6+   $ 50Q�6=   5#      U� 5$      $ Height�60    6S   �� $	 MenuLogo��.\�5%        $
 0��6+   $	 100Q�67     5&      $
 0:0:0.2��6+   $ 27Q�6=   5'      5(      �� 5)      8   " d�6z    5*      P� 5+       �@d�	IsChecked$
 trueY�63    5,      �� 5-      8�� 6.    5/      �� 50      8�� 6.   52      P� 53       �@d�	IsChecked$ falseY�63    54      �� 55      8�� 6.    57      �� 58      8�� 6.   5:      5<      5=       � Triggers 5?      .��5B      �  � ColumnDefinitions 5C   
   �� 5D      $
��Auto �6   �� 5E       � RowDefinitions 5G   
   �� 5H      $
��Auto �6   �� 5I      .+�5L   
   � -   5         �Name$ MenuGrid��5L      $	��200��6!   $
��Left=�6-   $��0��6H   $��2��6X   .+�5M      ��   MaterialDesignBackground#��[ 6   .+�5N      ��   PrimaryHueLightBrush#��[ 6   .+�5O      �� -   5         ��Name$ MenuLogo��5O   6    � ToolTip$# Золотой кошелек��6   $	��100��6H   $��5,5,5,2q�6U   $��Resources/Wallet.png��6f   5P      �� 5Q      $��0,0,0,2q�6   �� 5R      -   5         ��Name$
 Menu��5R      ���	#FF313131$��Hidden=�6@    �� SelectionMode$ Single=�6t   ��6�   �� *
MainMenu+ 5S       	 MenuTemplate �� Orientation'  !MaterialDesignThemes.Wpf.PackIcon�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null]]   Kind �� Path 
 
Primary300 �� Color  LVBackground  
Primary500  
LVSelected  ListView �� Source��%�  &		       &	     &	 3    &	 R    �� 5T      .R�5U      �� $ 
Horizontal=�6)   $
��10 0q�6B   .+�5V   "     
�������$��5q�6g   $��Center=�6r   $��20��6�   $��20��6�    6:   �� $
 Icon�6�   �� 5W   "   $��10q�6J   
���������6,   �� $ Caption�6V   5X      5Y      �� 5Z      # � 
 6*   6O   �� 5[      # �  6*   6O   �� 5\      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ListView.xaml?�6>   5]      ��5^      �� 5_        �� Source#  [	 6"   ��5a      �� 5b      " ��6      MaterialDesignListBoxItem# [ 6:   .�5c      �� ! �� Property! � ��" �� Value$" 0q�68   �� 5d      ! � ��$" 18(�69   �� 5e      ! � ��$" 45��67   �� 5f      ! �@�ToolTip" 68   �� $ Caption�# �� 	Resources# 5h      ��%�   (��       5i   2   *SystemColors.ControlBrushKey+)(�� %     5j   2   * SystemColors.HighlightBrushKey+)�� 5i   "   $ Transparent��6b   �� 5j   "   $ Transparent��6d   5k       5l      P� 5m   "    �@J�IsMouseOver . . �5n   &   �� ! � ��#" [ 6C   5o   #   ]� 5p   "   $ ]� 
Conditions$ 5q   &   �� 5r   *   % �� Property% �@��
IsSelected& �� Value& . 6J   �� 5s   *   % �@��IsSelectionActive& .  6Z   ./�5u   &   �� ! � ��#" [ 6C   5v   #   ]� 5w   "   $ 5x   &   �� 5y   *   % �@��
IsSelected& . 6J   �� 5z   *   % �@��IsSelectionActive& . 6Z   ./�5|   &   �� ! � ��#" [ 6C   5}   #   5      5�      5�      5�      (  "MaterialDesignThemes.Wpf.ColorZone  5�   
   -   5        $��1��5�   #   $��5q�63   '   Mode$' 
PrimaryMid=�6?   .��5�      �  5�      �� 5�      $
��Auto �6'   �� 5�      �� 5�      $
��Auto �6'   .+�5�      d� -   5        ( d�Name$( ToggleMenuButton��5�      #��[ 69   $
��Left=�5�   #   $��24��6>   $��24��6I   
�������6U   �� 5�      $��10,0,0,0q�6   $
��Left=�6.   $��Center=�6I   $��1��6d   $#��Золотой кошелек��6t   �� 5�      -   5        ) ��Name$) CloseAppButton��5�      $��0q�61   $��0q�6=   $��2��6H   $��24��6X   $��24��6c    * &MaterialDesignFloatingActionDarkButton#��[ 6�   .��5�        $ Close=�6.   5�      5�      5�      �� 5�   
   $��1��6   $��1��6)   ��66   �� *	Current+�� 5�   
   -   5        $��1��5�      
������ 6E   5�      5�      