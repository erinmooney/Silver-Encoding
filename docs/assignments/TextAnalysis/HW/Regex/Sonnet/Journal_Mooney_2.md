# Regex HW 2

End of class: ```[IVXLC]+\s\n```


Find: ```[IVXLC]+$```
Replace: ```<sonnet>\0</sonnet>```
        fix up: ```<sonnet>```
        replace: ```<sonnet number="[countSomehow]">```

I had a lot of trial and error trying to get the numerals within the ```<sonnet>``` tag. So, I put a replaceable word in quotes.

Find: ```^.+```
Replace: ```<line>\0</line>```


I could not figure out how to remove sonnet from the <line> selection, but I managed to 
The one below was my closest one. 

Find:```(^.+)([^<sonnet>])```
Replace: ```<line>\0</line>```

