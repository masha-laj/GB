   M S B A M L   `   `   `  ����C  ?Material, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MaterialMaterial  5      '    !Material.Components.OperationItem   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'mainclr-namespace:Material     5      V RMaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null@material1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5        Material.SummaryConverter   SummaryConverter  
ErrorColor  RedPrimary500 �� Color��%C   &	        &	      7    5   
   6    �� 5   
   8   6-   5      .��5      � 
������ .+�5   
   � $��5q�6    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      �� 5      $
��Auto �6#   .+�5      �� $��0��6   $��0,0,5,0q�6%   ���	#FF9B9B9B$��50��6�   $��50��6�   $��1q�6�    �� CornerRadius$ 50��6  ��6N   ��  �� Path$ Category.IconColor� �� FallbackValue$
 Gray�� � ToolTip 6�   �� $ Category.Name�$ Без категории��._�5      '  !MaterialDesignThemes.Wpf.PackIcon  
�������$��Center=�6p   $��Center=�6�   $��30��6�   $��30��6�   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null]]   Kind 6$   �� $ Category.Icon�$ Shape��6�   5      � 5      $��1��6    � RowDefinitions 5      �� 5      �� 5       .+�5"      �� 	 �� Orientation$	 
Horizontal=�6   $��Center=�66   .+�5#        $��Stretch=�6(   $��0,0,5,0q�6D   
�������$
��Left=�6g   ��5$      �� 5%      
 �� 
TargetType"
  6$    �� Triggers 5&   "   �� 5'   &      Material.OperationInvoice   Card �� Value# Z 6�    �� Binding 62   �� $ Invoice�# Z .a�5(   *   ��  �� Property �@ Kind �� Value$ 
CreditCard=�6A   5)   '   �� 5*   &      Cash# Z 6�    62   �� $ Invoice�# Z .a�5+   *   ��  �@ Kind$
 Cash=�6A   5,   '   5.      50      �� 51      $��16��6    
�������$
��Left=�6>   ��52      �� 53      "
 ��6$   .�54   "   ��  � �� 69   �� $ Description�$ Описание�� 55   "   ^� 56   &    ^� 
Conditions 57   *   �� 58   .    �� Binding 68   �� $ Description� �� Value  6]   �� 59   .      Material.CategoryType   Income# Z 6_    68   �� $ Category.Type�6_   0�5;   *   �� 5<   .    � ��$ 
Доход��6E   5>   '   ^� 5?   &    5@   *   �� 5A   .    68   �� $ Description�  6]   �� 5B   .      
Consumable# Z 6_    68   �� $ Category.Type�6_   0�5D   *   �� 5E   .    � ��$ Расход��6E   5G   '   ^� 5H   &    5I   *   �� 5J   .    68   �� $ Description�  6]   �� 5K   .    68   �� $ Category� 6Z   Z� 0�5M   *   �� 5N   .    � ��$ Расход��6E   5P   '   5R      5T      5U      �� 5V      $��1��6   ��5W      `� 5X       `� 	Converter# [  6'   .1�5Y      �� $ Summary�6&   $ 
Сумма��65   �� 5Z      $ Category�6&   5[      ��5]      �� 5^      "
 ��6     5_      �� 5`   "   # Z 6�    6.   �� $ Category.Type�# Z .a�5a   &   ��  � ��
 �  ��6C   5b   #   �� 5c   "   # Z 6�    6.   �� $ Category.Type�# Z .a�5d   &   ��  � ��
 � � �6C   5e   #   5g      5i      5j      �� 5k      $��2��6   $��Center=�6)   .+�5l      �� $��20��6   $��20��6$   ��60   ��  �� ElementName$ operationsContainer��$( "DataContext.DeleteOperationCommand���6�   �� ��5m      �� 5n       & "MaterialDesignFloatingActionButton �� BasedOn# [ 6    "
 ��6^   .�5o      ��  � ��# [ 6;   �� 5p       � ��
 ���� 6<   5q      .��5s        $ Delete=�6(   $��10��66   $��10��6A   
�������6M   5t      5u      5v      5w      5x      