|%
++  wut
  |=  [b=*]
  ^-  @
  .?  b
::
++  lus
  |=  [b=*]
  ^-  @
  ?@  b
    .+  b
  !!
::
++  tis
  |=  [a=* b=*]
  ^-  *
  .=  a  b
::
++  fas
  |=  [a=@ b=*]
  ^-  *
  ?+  a
    ?:  =(0 (mod a 2))
      (fas 2 (fas (div a 2) b))
    (fas 3 (fas (div a 2) b))
    %1  b
    %2  -.b
    %3  +.b
  ==
::
++  hax
  ::  a is slot
  ::  b is produbt of *[a b]
  ::  c is procubt of *[a c]
  |=  [a=@ b=* c=*]
  ^-  *
  ?:  =(1 a)  b
  ?:  =(0 (mod a 2))  (hax (div a 2) [b (fas +(a) c)] c)
    (hax (div a 2) [(fas (dec a) c) b] c)
::
++  tar
  |=  [a=* b=*]
  ^-  *
  ?+    b
    ~&  ["give me the formuoli!" a b]  !!
    [^ *]  ::  line 27 of 4.txt
  [(tar a -.b) (tar a +.b)]
    [%0 b=@]
  (fas b.b a)
    [%1 b=*]
  b.b
    [%2 b=* c=*]
  (tar (tar a b.b) (tar a c.b))
    [%3 b=*]
  (wut (tar a b.b))
    [%4 b=^]
  (lus (tar a b.b))
    [%5 b=* c=*]
  (tis (tar a b.b) (tar a c.b))
    [%6 b=* c=* d=*]
  (tar a (tar [c.b d.b] %0 (tar [%2 %3] [%0 (tar a [%4 %4 b.b])])))
    [%7 b=* c=*]
  (tar (tar a b.b) (tar a c.b))
    [%8 b=* c=*]
  (tar [(tar a b.b) a] c.b)
    [%9 b=* c=*]
  (tar (tar a c.b) [%2 [%0 %1] %0 b.b])
    [%10 [b=@ c=*] d=*]
  (hax b.b (tar a c.b) (tar a d.b))
    [%11 b=* c=*]
  (tar a c.b)
    [%11 [b=* c=*] d=*]
  (tar a [[(tar a c.b) (tar a d.b)] %0 %3])
  ==
--