   M S B A M L   `   `   `  ����B  >noteApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:noteAppnoteApp  5   	       noteApp.SignUpWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:noteApp     5   	     � Title$  Registration��5   	   $	��228��6   $	��323��6+    � 
ResizeMode$ CanMinimize=�67   $��Caecilia LT Std Light)�6P   .��5	      � .+�5
   
   �� $��Login��6   $
��Left=�6    $��	61,41,0,0q�6;   $	��Top=�6N   $
��Bold"�6f   ���	#FF4D4D4D6x   �� 5   
   $
��Left=�6   $��23��6-   $��
119,45,0,0q�69   $	��Top=�5      $	��158��6*    �� SelectionBrush
 ��� ����	#FF4D4D4D$��0q�5   C   ���	#FFD2E4E4��5   6   �� *Model.Login+.��5   n    J� InputBindings 5      �� 5      
 �� Key$ Enter��6    �� Command 6)   �� *SignUpCommand+ �� CommandParameter 6K   ��  �� ElementName$ password��.��5   %   5      �� 5   
   $��Password��6   $
��Left=�6#   $��	40,83,0,0q�6>   $	��Top=�6Q   $
��Bold"�6i   ���	#FF4D4D4D6{   G� 5   
   -   5         G�Name$ password��5   :   $
��Left=�5      $��23��61   $��
119,86,0,0q�6=   $	��Top=�5      $	��158��6.   	 G� SelectionBrush
	 ��� ����	#FF4D4D4D$��0q�5   G   ���	#FFD2E4E4 5      �� 5      $ Enter��6    6)   �� *SignUpCommand+ 6K   �� $ password��5      �� 5   
   $��Register��6   $
��Left=�6$   $��119,135,0,0q�6?   $	��Top=�5      $��30��6)   $��75��65   
���������6@   �� *SignUpCommand+��5      �� $ password����5      �� 5      
 �� 
TargetType"
 ��6   .�5      ��  �� Property � �� �� Value
 ��� �63   �� 5        � �� 5!      �� 5"       �� 
TargetType" ��6.   .R�5#   "   �� #��z��6)   ._�5$   &   �� $��Center=�67   $��Center=�6T   5%   #   5&      5(       �� Triggers 5)      :� 5*       :� RoutedEvent$ Button.MouseEnter��6'   [�5+      �� 5,   "   .��5-   &   �� .��5.   *   ��  g� AutoReverse .   g� Duration$ 0:0:0.3D�50   +    �� From$ DarkCyanX�51   +   	 �� To$ 	#FF14A2A2X�6;    g� AccelerationRatio$ 1Q�52   +    �� TargetProperty$1 +(Button.Background).(SolidColorBrush.Color)�53   +    g� FillBehavior$ HoldEnd=�54   +   55   +   56   '   57   #   59      :� 5:      $ Button.MouseLeave��6'   [�5;      �� 5<   "   .��5=   &   �� .��5>   *   ��  .  $ 0:0:0.3D�5@   +   $ 	#FF14A2A2X�5A   +   $ DarkCyanX�6<   $ 1Q�5B   +   $1 +(Button.Background).(SolidColorBrush.Color)�5C   +   $ HoldEnd=�5D   +   5E   +   5F   '   5G   #   5I      5K      5M      �� 5N   
   $��Cancel��6   $
��Left=�6"   $��202,135,0,0q�6=   $	��Top=�5O      $��30��6)   $��75��65   
���������5P      �� *CancelCommand+��5Q      �� 5R      "
 ��6   .�5S      ��  � ��
 ��� �63   �� 5T       � �� 5U      �� 5V      " ��6.   .R�5W   "   �� #��z��6)   ._�5X   &   �� $��Center=�67   $��Center=�6T   5Y   #   5Z      5\       5]      :� 5^      $ Button.MouseEnter��6'   [�5_      �� 5`   "   .��5a   &   �� .��5b   *   ��  .  $ 0:0:0.3D�5d   +   $ DarkCyanX�5e   +   $ 	#FF14A2A2X�6;   $ 1Q�5f   +   $1 +(Button.Background).(SolidColorBrush.Color)�5g   +   $ HoldEnd=�5h   +   5i   +   5j   '   5k   #   5m      :� 5n      $ Button.MouseLeave��6'   [�5o      �� 5p   "   .��5q   &   �� .��5r   *   ��  .  $ 0:0:0.3D�5t   +   $ 	#FF14A2A2X�5u   +   $ DarkCyanX�6<   $ 1Q�5v   +   $1 +(Button.Background).(SolidColorBrush.Color)�5w   +   $ HoldEnd=�5x   +   5y   +   5z   '   5{   #   5}      5      5�      5�      5�      