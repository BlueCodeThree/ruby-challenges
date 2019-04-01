# Ruby Intro

## Check your ruby version
Check which version of ruby you have installed (compare this to the version that should be installed according to the instructor)
ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-linux]

## Floats and integers 
What do you think happens when you combine the following floats and integers? Is the result a float or an integer? If an operator is unfamiliar, look it up and learn what it does. Check yourself using IRB.
1. 3.0 / 2      # 1.5 float
2. 3 / 2.0      # 1.5 float
3. 4 ** 2.0     # 16.0 float
4. 4.1 % 2      # 0.09999999999999964 float 

## Strings
What do you think the output will be if you type these into IRB? Record the output you expect, and the actual (if it is different).
1. "tom" * 3            expect: tomtomtom           correct!
2. "tom" + "tom"        expect: tomtom              yay!
3. "tom" + 1            expect: error               yes - TypeError
4. "tom" / 2            expect: error               yes - NoMethodError

## Calculations in IRB
Try these calculations in IRB
1. How many hours are in a year?            24 * 365  => 8760
2. How many minutes are in a decade?        8760 * 60 * 10   =>  5256000
3. How many seconds old are you?            8760 * 60 * 60 * 33 => 1040688000