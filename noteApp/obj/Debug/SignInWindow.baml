   M S B A M L   `   `   `  ����B  >noteApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:noteAppnoteApp  5   	       noteApp.SignInWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:noteApp     5   	     � Title$  Log in��5   	   $	��220��6   $	��309��6%    � 
ResizeMode$ CanMinimize=�61   $��Caecilia LT Std Light)�6J   .��5	      � .+�5
   
   �� $��Login��6   $
��Left=�6    $��	56,38,0,0q�6;   $	��Top=�5      $
��Bold"�6(   ���	#FF4D4D4D6:   �� 5   
   $
��Left=�6   $��23��6-   $��
114,42,0,0q�69   $	��Top=�5      $	��158��6*    �� SelectionBrush
 ��� ����	#FF4D4D4D$��0q�5   C   ���	#FFD2E4E4��5   6   ��  �� Path$ Model.Login�.��5   n    J� InputBindings 5      �� 5      
 �� Key$ Enter��6    �� Command 6)   �� *EnterCommand+ �� CommandParameter 5      ��  �� ElementName$ password��.��5   %   5      �� 5   
   $��Password��6   $
��Left=�6#   $��	35,80,0,0q�6>   $	��Top=�5      $
��Bold"�6(   ���	#FF4D4D4D6:   G� 5   
   -   5        $��password��5   :   $
��Left=�5      $��23��61   $��
114,83,0,0q�6=   $	��Top=�5      $	��158��6.   	 G� SelectionBrush
	 ��� ����	#FF4D4D4D$��0q�5   G   ���	#FFD2E4E4 5      �� 5      $ Enter��6    6)   �� *EnterCommand+ 5      �� $ password��5      �� 5   
   $��Enter��6   $
��Left=�6!   $��114,132,0,0q�6<   $	��Top=�5      $��30��6)   $��75��65   
���������6@   �� *EnterCommand+��5       �� $ password����5!      �� 5"      
 �� 
TargetType"
 ��6   .�5#      ��  �� Property � �� �� Value
 ��� �63   �� 5$       � �� 5%      �� 5&       �� 
TargetType" ��6.   .R�5'   "   �� #��z��6)   ._�5(   &   �� $��Center=�67   $��Center=�6T   5)   #   5*      5,       �� Triggers 5-      :� 5.       :� RoutedEvent$ Button.MouseEnter��6'   [�5/      �� 50   "   .��51   &   �� .��52   *   ��  g� AutoReverse .   g� Duration$ 0:0:0.3D�54   +    �� From$ DarkCyanX�55   +   	 �� To$ 	#FF14A2A2X�6;    g� AccelerationRatio$ 1Q�56   +    �� TargetProperty$1 +(Button.Background).(SolidColorBrush.Color)�57   +    g� FillBehavior$ HoldEnd=�58   +   59   +   5:   '   5;   #   5=      :� 5>      $ Button.MouseLeave��6'   [�5?      �� 5@   "   .��5A   &   �� .��5B   *   ��  .  $ 0:0:0.3D�5D   +   $ 	#FF14A2A2X�5E   +   $ DarkCyanX�6<   $ 1Q�5F   +   $1 +(Button.Background).(SolidColorBrush.Color)�5G   +   $ HoldEnd=�5H   +   5I   +   5J   '   5K   #   5M      5O      5R      �� 5S   
   $��Register��6   $
��Left=�6$   $��197,132,0,0q�6?   
�������$	��Top=�5T      $��30��6)   $��75��65   ��6@   �� *RegisterCommand+��5U      �� 5V      "
 ��6   .�5W      ��  � ��
 ��� �63   �� 5X       � �� 5Y      �� 5Z      " ��6.   .R�5[   "   �� #��z��6)   ._�5\   &   �� $��Center=�67   $��Center=�6T   5]   #   5^      5`       5a      :� 5b      $ Button.MouseEnter��6'   [�5c      �� 5d   "   .��5e   &   �� .��5f   *   ��  .  $ 0:0:0.5D�5h   +   $ DarkCyanX�5i   +   $ 	#FF14A2A2X�6;   $ 1Q�5j   +   $1 +(Button.Background).(SolidColorBrush.Color)�5k   +   $ HoldEnd=�5l   +   5m   +   5n   '   5o   #   5q      :� 5r      $ Button.MouseLeave��6'   [�5s      �� 5t   "   .��5u   &   �� .��5v   *   ��  .  $ 0:0:0.5D�5x   +   $ 	#FF14A2A2X�5y   +   $ DarkCyanX�6<   $ 1Q�5z   +   $1 +(Button.Background).(SolidColorBrush.Color)�5{   +   $ HoldEnd=�5|   +   5}   +   5~   '   5   #   5�      5�      5�      5�      5�      