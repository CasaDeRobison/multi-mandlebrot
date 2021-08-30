10 print chr$(147):ti$="000000"
20 dim ya(31), xa(31)
30 for i=0 to 31
40 ya(i)=i*2/22-1
50 xa(i)=i*3.5/32-2.5
60 next i
100 for py=0 to 21
110 yz = ya(py)
120 for px=0 to 31
130 xz = xa(px)
140 x = 0:x2 = 0
150 y = 0:y2 = 0:xy = 0
160 for i=0 to 14
180 y = xy + xy + yz
190 x = x2 - y2 + xz
207 x2 = x*x:y2 = y*y
208 if x2+y2 > 4 then goto 220
209 xy = x*y
210 next i
220 poke 55296+o,i
230 poke 1024+o,160
231 o = o+1
240 next px
241 o = o+40-px
260 next py
270 for i=0 to 20
280 print chr$(17);
290 next i
300 print ti/60;
