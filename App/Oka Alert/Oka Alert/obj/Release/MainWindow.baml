   M S B A M L   `   `   `  ���� D  @Oka Alert, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Oka_Alert	Oka_Alert      Oka_Alert.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:Oka_Alert     -     � Title$  	Oka Alert�� � Icon$ Ressources/logo.png��$	��200��$	��200��$	��200��$	��320��$	��320��$	��320�� � 	Resources    CheckBoxStyle1 �� 
TargetType �� Property �� Value �� 
TargetType � 	Resources  Key g� 	BeginTime	 �� 
TargetName
 �� TargetProperty O� KeyTime O� Value p� KeyTime p� Value ]�Name J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat ��Name �� CornerRadius J� RenderTransformOrigin �� ScaleX �� ScaleY �� AngleX �� AngleY �� Angle T� X T� Y �� EndPoint �� 
StartPoint � Color  � Offset! �� Triggers" P� Property# P� Value$ N� ExitActions% ��Name  OnUnchecking& N� EnterActions  
OnChecking  MyFocusVisual' �� StrokeDashArray( � ActualWidth) � ActualHeight  ShadowStyle  InformButton* �� Padding+ �� 
TargetName��%�
  &	        7  7  &	 e    &	 �    &	     7  7  �� " ��.���  � ��# � ����  � ��# � ����  � �� �� " �� ���� 
OnChecking .��U� $ 00:00:00X�$	 slider��$U
 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�.\��� $ 00:00:00.3000000��$ 25Q��� OnUnchecking .��U� $ 00:00:00X�$	 slider��$U
 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�.\��� $ 00:00:00.3000000��$ 0Q�r� $ 00:00:00X�$	 slider��$
 (FrameworkElement.Margin)�.	��� $ 00:00:00.3000000��$ 1,1,1,1q�.R�]� $ 	dockPanel��.+��� # z #��z��# z #��z����. $��Center=�� $��5,5,0,5q�$��50�����	#FFC0CCD9.+��� $��ON��$
��Wrap=�$
��Bold"�$��12(�$��Right=�$��0,0,3,0q��� $
��Left=�$��2,0,0,0q�$��12(�$
��Bold"�$	��OFF��$
��Wrap=��� $ slider��$
��Left=�$��23��$��1,1,1,1q�$ 3,3,3,3��$ 0.5,0.5&�$��1,1,1,1q�z�V� .~��� $ 1Q�$ 1Q��� $ 0Q�$ 0Q��� $ 0Q�T� $ 0Q�$ 0Q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFFFFFFF��$  0Q�� $ 	#FFFF4444��$  1Q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFFF8A8A��$  1Q�� $ 	#FFFFD1D1��$  0Q�! P� " �@d�	IsChecked$
# TrueY�$ �� $"% OnUnchecking_BeginStoryboard��8��  & �� $ % OnChecking_BeginStoryboard��8�� P� " � {�# .  . ��� # � �� � ���� .���  � �� �� " ��.R�� $	��3 2q�.+��� $��r1��$��1��
���   �$	' 2 2R��� $��border��#��z( #��z) $ 2��$��1q��� .���  � ��
 ������� " ��.���  �@�OverridesDefaultStyle . ��  � ��$ 2q���  � ��$ Verdana)���  � ��$
 11px(���  � ��$
 Bold"���  �@�FocusVisualStyle8   ��  � �� �� $	 0,0&�$	 0,1&�.��� $ 	#FFFF9090��$	  0.2Q�� $ 	#FFFF0C00��$
  0.85Q�� $ 	#FFFFD190��$  1Q���  � �� �� " ��.R��� $��border��$��1q�$	* 4,2q�
�������$ 3��#��z��._�� .+��� $��contentShadow��$��Center=�$��Center=�8�� z�T� $	 1.0Q�$	 1.0Q��� $��content��$��Center=�$��Center=�! P� " �@J�IsMouseOver# . . ��� $+ border�� � �� �	#FF4788c8��  � �� �	#FFC84747P� " � ��# . . ���  � �� �� $	 0,0&�$	 0,1&�.��� $ 	#FFFF9090��$
  0.35Q�� $	 Red��$
  0.95Q�� $ 	#FFFF9090��$  1Q��� $+ content�� � z� T� $	 1.0Q�P� " �@��IsDefaulted# . . ��� $+ border�� � �� �	#FF282828P� " �@J�	IsFocused# . . ��� $+ border�� � �� �	#FF282828P� " � {�# .  . ��� $+ border�� �@J�Opacity$	 0.7Q���  � ��
 �   �.��� , � ColumnDefinitions, �� $��* ��� $��* �- � RowDefinitions- �� $
��30px ��� $
��40px ��� $��* ��� $
��20px ��� $��* �.+��� $��2��$��Ressources/logo.png���� $��1��$��1��$��2��$��0 1 0 1q����	#FFE29595�� $��1��$��1��$��2��$��2��$��1 1 0 1q����	#FFE29595�� $��1��$��Center=�$��Center=�$��	Open Sans)�$��14(�Etat du live :�� -   . ��Name$. CheckStatus��$��1��$��1��$��Center=�#���   $��Center=��� $��2��$��Center=�$��Center=�$��	Open Sans)�$��14(�	Message :�� -   / ��Name$/ MessageToSend��0 � ToolTip$&0  Inférieur à 40 charactères :)��$��2��$��Center=�$��Center=�$��19��$	��101��$��1��
���   �
������ ���	#FFEAD0D0$
��10,7q��� -   1 ��Name$1 	txtStatus��$��3��$��200px��$��Center=�$��Center=�$��2���� -   2 ��Name$2 btnSend��#��[ $
��GO !��$��4��$��2��$��Center=�$��Center=�$
��10,4q����� $	 0,1&�$	 0,0&�.��� $ 	#FFF77373��$	  0.2Q�� $ 	#FFFF0C00��$
  0.85Q�� $ 	#FFFF7C7C��$
  0.99Q�