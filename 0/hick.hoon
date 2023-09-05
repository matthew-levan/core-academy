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
    (fas 3 (fas +((div a 2)) b))
    %1  a
    %2  a
    %3  b
  ==
::
++  hax
  |=  [b=*]
  ^-  *
  1
::
++  tar
  |=  [a=* b=*]
  ^-  *
  ?+    b
    ~&  "give me the formuoli!"  !!
    [%0 b=@]
  (fas b.b b)
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
  ==
::
--