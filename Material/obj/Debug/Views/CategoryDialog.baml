   M S B A M L   `   `   `  ����C  ?Material, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MaterialMaterial  5      /clr-namespace:Material.ViewsMaterial.Views  5      E ADragablz, Version=0.0.3.203, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5	      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
      9!clr-namespace:Material.ComponentsMaterial.Components  5      #    Material.Views.CategoryDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'mainclr-namespace:Material     5      .localclr-namespace:Material.Views     5      V RMaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7dragablz(clr-namespace:Dragablz;assembly=Dragablz  5	      3system&clr-namespace:System;assembly=mscorlib  5
      2
components!clr-namespace:Material.Components  5      $��Stretch=�5   7   $��Stretch=�6U   $��Stretch=�6q   $��Stretch=�6�   $	��500��6�   $	��500��6�     � 	Resources  5         
ErrorColor  RedPrimary500 �� Color��%&   &	        7  �� 5   
   8   6-   5      .��5      � $��0q�6   
�������$��Stretch=�6)   $��Stretch=�6G    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   ]� $��Stretch=�6   
�������$��0,0,0,10q�6J   $��60��6\   .+�5      �� $��10,0,0,0q�6   $
��Left=�6*   $��Center=�6@   $
��Left=�6[   ��5      �� 5       �� 
TargetType" ��6      MaterialDesignTitleTextBlock �� BasedOn# [ 63    �� Triggers 5      �� 5       �� Binding 6*   �� *Mode+ �� Value Add6C   .a�5   "   ��  �� Property � ��	 �� Value$-	 'Добавление категории��69   5      �� 5       6*   �� *Mode+
 Change6C   .a�5    "   ��  � ��$+	 %Изменение категории��69   5!      5#      5%      �� 5&      )  #MaterialDesignThemes.Wpf.DialogHost
   CloseDialogCommand#��Z
 6   $��Right=�6W   $��Center=�6n   $��Right=�6�   $��Center=�6�   $��Center=�6�   $��0,0,10,0q�6�   $��30��6�   $��30��6  $��0q�6  ��5'      �� 5(      " ��6     MaterialDesignFlatButton# [ 60   .�5)      ��  �@��CornerRadius$	 50��6@   �� 5*       � ��
	 �iii�67   5+      .��5-      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.1366, Culture=neutral, PublicKeyToken=null]]   Kind$ Close=�6*   $��Center=�67   $��Center=�6T   $��Center=�6o   $��Center=�6�   5.      5/      �� 51   
   $��1��6   $��15,15,15,15q�6"    � DataContext 67   �� *
Category+.+�52      �� $��Имя��6   �� 53      ��6   �� *Name+�� 54      $��Тип��6   �� 55       �� SelectedValuePath$	 Key��57       �� DisplayMemberPath$ Value��58      $��0,0,0,10q�59   5   ��56      ��  �� Path$
 Type� �� 	Converter (   "Material.EnumToCollectionConverter   �� Mode$ OneTime=� �� SelectedValue 59      �� $
 Type�65     Dragablz.TabablzControl  5;      $	��235��6&      InterTabController 5<      !  Dragablz.InterTabController  5=      $	��235��62   .@�5?      �� $��Иконка��6   $	��235��6*   $	��235��67   .��5@      .   (Material.Components.CategoryIconSelector   66   �� 5A      �� 5B      $��Цвет��6   $	��235��6(   $	��235��65   .��5C      /   )Material.Components.CategoryColorSelector   67   �� 5D      5E      5F      ]� 5H   
   $��3��6   $��2��6(   $��Stretch=�65   
�������$��0,10,0,0q�6k   $��60��6}   .+�5I      �� $��0,0,10,0q�6   $��Right=�6'   $��1q�6>     PrimaryHueMidBrush#���  6R   #��Z
 6�   $��Right=�6�   $	��100��6�   ��5J      ��5K      True��6+   ��5M      �� 5N      " ��6   # [ 60    5O      �� 5P       6*   �� *Mode+ Add6C   .a�5Q   "   ��  � ��$	 Добавить��6<   5R      �� 5S       6*   �� *Mode+
 Change6C   .a�5T   "   ��  � ��$	 Изменить��6<   5U      5W      5Y      �� 5Z      $��0,0,10,0q�6   $��Отмена��6(   #���  69   $��Right=�6l   $��1q�6�   #���  6�   #��Z
 6�   $��Right=�6  $	��100��6(  5[      5\      5]      