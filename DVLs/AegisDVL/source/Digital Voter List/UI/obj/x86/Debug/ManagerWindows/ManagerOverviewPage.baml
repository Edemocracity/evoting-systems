   M S B A M L   `   `   `  ����  UI+    %UI.ManagerWindows.ManagerOverviewPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$  OverviewPage��5      $	��407��6-   $	��903��6:   .��5      � .+�5	   
   &   System.Windows.Controls.DataGrid  -   5        $��ManagerstationGrid��5	   k      AutoGenerateColumns .  $	��263��6/   $
��Left=�6<   $��
342,41,0,0q�6W   $	��Top=�6�   $	��533��6�      CanUserDeleteRows .     CanUserAddRows .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .     CanUserSortColumns .     Columns 5
      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 
IP Adresse��6)   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6=      
IsReadOnly .    CellTemplate 5      �� 5      .R�5      ��  �� TextAlignment$ Center=�6B   ��6(   �� *
IpAdress+6B   5      5        5      $	 
Tilsluttet��6)   $
 * 6=    .  5      �� 5      .R�5      �� $��Center=�6G   $��Center=�6d   {�.   d� 	IsChecked 6'   �� *	Connected+6   5      5      5      �� 5   
   $��308,325,0,12q�6    �� Orientation$ 
Horizontal=�6+   .+�5      �� -   5        $��RefreshButton��5   H   $��Opdater��6   $��20,13,10,20q�6'   $��23��6<   $��75��6]   6h   �� 5      -   5        $��	AddButton��5   b   $��Tilføj��6   $��20,20,10,20q�6&   $��23��6;   $
��Left=�6G   $	��Top=�6s   $��75��6�   6�   �� 5       -   5        $��RemoveButton��5    b   $��Fjern��6   $��20,20,10,20q�6%   $��23��6:   $��Right=�6F   $	��Top=�6v   $��75��6�   6�   �� 5!      -   5        $��MakeManagerButton��5!   k   $��Gør til Manager��6   $��20,20,10,20q�6/   $
��Left=�6D   $��23��6_   $	��Top=�6�   $	��110��6�   6�   �� 5"      -   5        $��EndElectionButton��5"   h   $��Afslut Valg��6   $��20,20,10,20q�6+   $
��Left=�6A   $��23��6\   $	��Top=�6�   $��98��6�   6�   5#      �� 5%      -   5        $��voterCardNumberLabel��5%   m   $��Valgkortsnummer��6   $��30��6.   $��Center=�6:   $��111,57,687,0q�6W   $	��Top=�6�   �� 5&      -   5        $��voterCardNumberTextbox��5&   y   $��30��6:   $��Center=�6F   $��104,92,679,0q�6c   $	��Top=�6�   $	��120��6�   6�   �� 5'      -	   5        $��CPRNumberLabel��5'   i   $��
CPR nummer��6   $��30��6)   $��Center=�65   $��124,157,700,0q�6R   $	��Top=�6   �� 5(      -
   5        $��CPRNumberTextbox��5(   z   $��30��6:   $��Center=�6F   $��104,0,679,185q�6c   $��Bottom=�6�   $	��120��6�    �� 	MaxLength$ 10��6�   6�   �� 5)      -   5        $��checkValidityButton��5)   �   $��Færdig��66   $��30��6G   $��Center=�6S   $��104,0,679,99q�6p   $��Bottom=�6�   $	��120��6�   �� 5*      -   5        $��OnlyCprButton��5*   f   $��Kun CPR��6   $��30��6'   $��Center=�63   $��104,0,679,48q�6P   $��Bottom=�6{   $	��120��6�   6�   �� 5+   
   -   5        $��WaitingLabel��5+   f   $��Venter på svar...��6   $��28��6,   $
��Left=�68   $��	24,27,0,0q�6S   $	��Top=�6z   $	��278��6�   $��Center=�6�   �� 5,   
   -   5        $��PasswordLabel��5,   V   $�� ��6   $��28��6   $
��Left=�6'   $��
342,12,0,0q�6B   $	��Top=�6k   $	��411��6�   �� 5-   
   -   5        $��UpdateLabel��5-   U   $�� ��6   $��28��6   $
��Left=�6'   $��	759,0,0,0q�6B   $	��Top=�6h   $	��116��6�   � 5.   
   -   5        $��
LoadingBar��5.   Q   $��10��6   $
��Left=�6"   $��
759,27,0,0q�6=   $	��Top=�6c   $	��116��6{   5/      50      