FasdUAS 1.101.10   ��   ��    k             w          l   1 	���� 	 O    1 
  
 k   0       l   ��������  ��  ��        I   	�� ��
�� .sysodlogaskr        TEXT  m       �  � C h e c k i n g   a l l   a r t i c l e s   i n   y o u r   s e l e c t i o n   t o   s e e   i f   t h e y   a r e   l i s t e d   a s   o n l y   a r x i v   b u t   t h e   a r X i v   A P I   s a y s   t h a t   t h e y   h a v e   b e e n   p u b l i s h e d   i n   a   j o u r n a l .   D e p e n d i n g   o n   h o w   m a n y   p u b l i c a t i o n s   a r e   i n   y o u r   s e l e c t i o n ,   t h i s   m a y   t a k e   a   w h i l e .��        l  
 
��������  ��  ��        r   
     l  
  ����  n   
     1    ��
�� 
sele  4   
 �� 
�� 
docu  m    ���� ��  ��    o      ���� 0 theselection theSelection      r       !   J    ����   ! o      ���� 0 thearxivpubs theArxivPubs   " # " X    � $�� % $ k   ( � & &  ' ( ' r   ( 0 ) * ) l  ( . +���� + n   ( . , - , 1   , .��
�� 
fldv - n   ( , . / . 4   ) ,�� 0
�� 
bfld 0 m   * + 1 1 � 2 2  E p r i n t / o   ( )���� 0 thepub thePub��  ��   * o      ���� 0 	theeprint 	theEprint (  3 4 3 r   1 6 5 6 5 l  1 4 7���� 7 n   1 4 8 9 8 m   2 4��
�� 
type 9 o   1 2���� 0 thepub thePub��  ��   6 o      ���� 0 thetype theType 4  : ; : r   7 C < = < l  7 ? >���� > n   7 ? ? @ ? 1   = ?��
�� 
fldv @ n   7 = A B A 4   8 =�� C
�� 
bfld C m   9 < D D � E E  A r c h i v e p r e f i x B o   7 8���� 0 thepub thePub��  ��   = o      ���� 0 	theprefix 	thePrefix ;  F G F l  D D��������  ��  ��   G  H�� H Z   D � I J���� I F   D e K L K =   D I M N M o   D E���� 0 thetype theType N m   E H O O � P P  m i s c L l  L a Q���� Q G   L a R S R =   L S T U T o   L O���� 0 	theprefix 	thePrefix U m   O R V V � W W 
 a r X i v S =   V ] X Y X o   V Y���� 0 	theprefix 	thePrefix Y m   Y \ Z Z � [ [  a r { X } i v��  ��   J k   h � \ \  ] ^ ] l  h h��������  ��  ��   ^  _ ` _ l  h h�� a b��   a � � this terminal command pull from arXiv's api, and then grep uses regex to see if the aarticle has a journal reference. If it does not, then grep will return null. To avoid it returning null, we add an "or true" = || true at the end.    b � c c�   t h i s   t e r m i n a l   c o m m a n d   p u l l   f r o m   a r X i v ' s   a p i ,   a n d   t h e n   g r e p   u s e s   r e g e x   t o   s e e   i f   t h e   a a r t i c l e   h a s   a   j o u r n a l   r e f e r e n c e .   I f   i t   d o e s   n o t ,   t h e n   g r e p   w i l l   r e t u r n   n u l l .   T o   a v o i d   i t   r e t u r n i n g   n u l l ,   w e   a d d   a n   " o r   t r u e "   =   | |   t r u e   a t   t h e   e n d . `  d e d r   h o f g f m   h k h h � i i  ( g r e p   - o   ' < a r x i v : j o u r n a l _ r e f . * < / a r x i v : j o u r n a l _ r e f > '   < < <   $ ( c u r l   - - r e q u e s t   G E T   ' h t t p : / / e x p o r t . a r x i v . o r g / a p i / q u e r y ? s e a r c h _ q u e r y = i d : g o      ���� $0 termcommandshort termCommandShort e  j k j r   p } l m l b   p y n o n b   p u p q p o   p s���� $0 termcommandshort termCommandShort q o   s t���� 0 	theeprint 	theEprint o m   u x r r � s s  '   - s ) )   | |   t r u e m o      ���� 0 termcommand termCommand k  t u t l  ~ ~��������  ��  ��   u  v w v l  ~ ~�� x y��   x � � So if the article has a journal reference on arXiv, then theOutput will be a non emtpy string will the reference details. If the article does not have a journal reference, then theOutput will be an empty string.    y � z z�   S o   i f   t h e   a r t i c l e   h a s   a   j o u r n a l   r e f e r e n c e   o n   a r X i v ,   t h e n   t h e O u t p u t   w i l l   b e   a   n o n   e m t p y   s t r i n g   w i l l   t h e   r e f e r e n c e   d e t a i l s .   I f   t h e   a r t i c l e   d o e s   n o t   h a v e   a   j o u r n a l   r e f e r e n c e ,   t h e n   t h e O u t p u t   w i l l   b e   a n   e m p t y   s t r i n g . w  { | { r   ~ � } ~ } I  ~ ���  �
�� .sysoexecTEXT���     TEXT  o   ~ ����� 0 termcommand termCommand � �� ���
�� 
rtyp � m   � ���
�� 
TEXT��   ~ o      ���� 0 	theoutput 	theOutput |  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 ispublished isPublished �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 	theoutput 	theOutput � m   � � � � � � �   � k   � � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � � � ( g r e p   - o   ' < a r x i v : d o i . * < / a r x i v : d o i > '   < < <   $ ( c u r l   - - r e q u e s t   G E T   ' h t t p : / / e x p o r t . a r x i v . o r g / a p i / q u e r y ? s e a r c h _ q u e r y = i d : � o      ���� $0 termcommandshort termCommandShort �  � � � r   � � � � � b   � � � � � b   � � � � � o   � ����� $0 termcommandshort termCommandShort � o   � ����� 0 	theeprint 	theEprint � m   � � � � � � �  '   - s ) )   | |   t r u e � o      ���� 0 termcommand termCommand �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � � � So if the article has a journal reference on arXiv, then theOutput will be a non emtpy string will the reference details. If the article does not have a journal reference, then theOutput will be an empty string.    � � � ��   S o   i f   t h e   a r t i c l e   h a s   a   j o u r n a l   r e f e r e n c e   o n   a r X i v ,   t h e n   t h e O u t p u t   w i l l   b e   a   n o n   e m t p y   s t r i n g   w i l l   t h e   r e f e r e n c e   d e t a i l s .   I f   t h e   a r t i c l e   d o e s   n o t   h a v e   a   j o u r n a l   r e f e r e n c e ,   t h e n   t h e O u t p u t   w i l l   b e   a n   e m p t y   s t r i n g . �  � � � r   � � � � � I  � ��� � �
�� .sysoexecTEXT���     TEXT � o   � ����� 0 termcommand termCommand � �� ���
�� 
rtyp � m   � ���
�� 
TEXT��   � o      ���� 0 	theoutput 	theOutput �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 	theoutput 	theOutput � m   � � � � � � �   � r   � � � � � m   � ���
�� boovfals � o      ���� 0 ispublished isPublished��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � o   � ����� 0 ispublished isPublished � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
ckey � o   � ����� 0 thepub thePub��  ��   � n       � � �  ;   � � � o   � ����� 0 thearxivpubs theArxivPubs��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��  ��  �� 0 thepub thePub % o    ���� 0 theselection theSelection #  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   why we need "my":    � � � � $   w h y   w e   n e e d   " m y " : �  � � � l   �� � ���   � + % https://stackoverflow.com/a/41151712    � � � � J   h t t p s : / / s t a c k o v e r f l o w . c o m / a / 4 1 1 5 1 7 1 2 �  � � � r   
 � � � n   � � � I  �� ����� 0 list2string   �  ��� � o  ���� 0 thearxivpubs theArxivPubs��  ��   �  f    � o      ���� $0 thepublishedpubs thePublishedPubs �  � � � Z  . � ��� � � =   � � � o  ���� $0 thepublishedpubs thePublishedPubs � m   � � � � �   � I � ��~
� .sysodlogaskr        TEXT � m   � � � � � � T h e   a r X i v   a r t i c l e s   i n   y o u r   s e l e c t i o n   a r e   u p   t o   d a t e !   N o n e   h a v e   b e e n   p u b l i s h e d�~  ��   � I .�} ��|
�} .sysodlogaskr        TEXT � b  * � � � b  & � � � m  " � � � � � � T h e   f o l l o w i n g   a r X i v   a r t i c l e s   i n   y o u r   s e l e c t i o n   h a v e   b e e n   p u b l i s h e d :   � o  "%�{�{ $0 thepublishedpubs thePublishedPubs � m  &) � � � � � L .   Y o u   s h o u l d   u p d a t e   y o u r   b i b l i o g r a p h y !�|   �  ��z � l //�y�x�w�y  �x  �w  �z    m      � ��                                                                                  BDSK  alis    &  Macintosh HD               �!HCBD ����BibDesk.app                                                    �����l�        ����  
 cu             TeX   /:Applications:TeX:BibDesk.app/     B i b D e s k . a p p    M a c i n t o s h   H D  Applications/TeX/BibDesk.app  / ��  ��  ��   �                                                                                  BDSK  alis    &  Macintosh HD               �!HCBD ����BibDesk.app                                                    �����l�        ����  
 cu             TeX   /:Applications:TeX:BibDesk.app/     B i b D e s k . a p p    M a c i n t o s h   H D  Applications/TeX/BibDesk.app  / ��     � � � l     �v�u�t�v  �u  �t   �  � � � l     �s�r�q�s  �r  �q   �  � � � i      � � � I      �p ��o�p 0 list2string   �  ��n � o      �m�m 0 thelist theList�n  �o   � k      � �    l     �l�l   + % https://stackoverflow.com/a/53618667    � J   h t t p s : / / s t a c k o v e r f l o w . c o m / a / 5 3 6 1 8 6 6 7  r      m     		 �

  ,   o      �k�k 0 thedelimiter theDelimiter  l   �j�j   N H First, we store in a variable the current delimiter to restore it later    � �   F i r s t ,   w e   s t o r e   i n   a   v a r i a b l e   t h e   c u r r e n t   d e l i m i t e r   t o   r e s t o r e   i t   l a t e r  r    	 n    1    �i
�i 
txdl 1    �h
�h 
ascr o      �g�g 0 	thebackup 	theBackup  l  
 
�f�e�d�f  �e  �d    l  
 
�c�c     Set the new delimiter    � ,   S e t   t h e   n e w   d e l i m i t e r  r   
   o   
 �b�b 0 thedelimiter theDelimiter  n     !"! 1    �a
�a 
txdl" 1    �`
�` 
ascr #$# l   �_�^�]�_  �^  �]  $ %&% l   �\'(�\  '   Perform the conversion   ( �)) .   P e r f o r m   t h e   c o n v e r s i o n& *+* r    ,-, c    ./. o    �[�[ 0 thelist theList/ m    �Z
�Z 
ctxt- o      �Y�Y 0 	thestring 	theString+ 010 l   �X�W�V�X  �W  �V  1 232 l   �U45�U  4 %  Restore the original delimiter   5 �66 >   R e s t o r e   t h e   o r i g i n a l   d e l i m i t e r3 787 r    9:9 o    �T�T 0 	thebackup 	theBackup: n     ;<; 1    �S
�S 
txdl< 1    �R
�R 
ascr8 =>= l   �Q�P�O�Q  �P  �O  > ?�N? L    @@ o    �M�M 0 	thestring 	theString�N   � ABA l     �L�K�J�L  �K  �J  B CDC l     �I�H�G�I  �H  �G  D E�FE l     �E�D�C�E  �D  �C  �F       �BFGH�B  F �A�@�A 0 list2string  
�@ .aevtoappnull  �   � ****G �? ��>�=IJ�<�? 0 list2string  �> �;K�; K  �:�: 0 thelist theList�=  I �9�8�7�6�9 0 thelist theList�8 0 thedelimiter theDelimiter�7 0 	thebackup 	theBackup�6 0 	thestring 	theStringJ 	�5�4�3
�5 
ascr
�4 
txdl
�3 
ctxt�< �E�O��,E�O���,FO��&E�O���,FO�H �2L�1�0MN�/
�2 .aevtoappnull  �   � ****L k    1OO  �.�.  �1  �0  M �-�- 0 thepub thePubN * � �,�+�*�)�(�'�&�%�$ 1�#�"�!�  D� O V Z� h� r������ � � � ���� � � � �
�, .sysodlogaskr        TEXT
�+ 
docu
�* 
sele�) 0 theselection theSelection�( 0 thearxivpubs theArxivPubs
�' 
kocl
�& 
cobj
�% .corecnte****       ****
�$ 
bfld
�# 
fldv�" 0 	theeprint 	theEprint
�! 
type�  0 thetype theType� 0 	theprefix 	thePrefix
� 
bool� $0 termcommandshort termCommandShort� 0 termcommand termCommand
� 
rtyp
� 
TEXT
� .sysoexecTEXT���     TEXT� 0 	theoutput 	theOutput� 0 ispublished isPublished
� 
ckey� 0 list2string  � $0 thepublishedpubs thePublishedPubs�/2�.�j O*�k/�,E�OjvE�O ��[��l 	kh  ���/�,E�O��,E�O��a /�,E` O�a  	 _ a  
 _ a  a &a & �a E` O_ �%a %E` O_ a a l E` OeE` O_ a   Ba  E` O_ �%a !%E` O_ a a l E` O_ a "  
fE` Y hOPY hO_  �a #,�6FY hOPY h[OY�(O)�k+ $E` %O_ %a &  a 'j Y a (_ %%a )%j OPU ascr  ��ޭ