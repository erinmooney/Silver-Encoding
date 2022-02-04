# Regex Step file

While I was working on this, I noted my work in bullet points. SO they are not really complete sentences, but they mark the steps I took in the project.

Look for ampersands. 
Find: ```&```
Replace: ```&amp;```

Find: ^.+
Replace: ```<movie>\0</movie>```


Reminder: Tab = ```\t```

Find: ```<movie>.+?\t```
Update: ```(<movie>)(.+?)\t```

Replace: ```\1<title>\2</title>```

***End in class work

To grab the listed year,  my find was:``` (</title>)(.+?)\t ``` I then replaced it with: ```\1<year>\2</year> ```

Using: ```(</year>)(.+?)\t``` I was able to select the listed locations listed next. I replaced it with: ```\1<location>\2</location>```.

Lastly, for the time listing, I used: ```(</location>)(.+?)(</movie>)``` to grab the information after ```</location>``` and before ```</movie>```.
Then I replaced it with: ```\1<time>\2</time>\3``` to keep ```<time>`` between the parts I used in the search. 





HW NOTES

```(</title>)(\d{4,}?)\t``` can also be used
    replace with ```\1<year>\2</year>```

```(</year>(.+?)\t```
replace with: ```\1<country>\2</country>```

```(</country>(.+?)(</movie>)```
replace with:```\1<runTime>\2</runTime>\3
        <runTime>/d+\s
            (<runTime)(>\d+)\s+(min)
            replace with: \1unit="\3"\2
            