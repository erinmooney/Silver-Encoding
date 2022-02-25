# Mulan

Specs:

speeches
stage directions (cues for the actors and stage managers in square brackets)
speaker's names within each speech

Suggestions
Start by wrapping everything separated by two newlines as a speech first with, say <sp>....</sp>.

Next, look for stage directions inside literal square brackets (which you will need to escape because these are special regex characters). Escape square brackets with \[ and \].

Try searching speakers with Dot matches all turned off because otherwise these will match too greedily across multiple speeches. Don't worry in the end about getting all of the speakers because we will have a way of locating the missing speakers in a later unit of our course!


My code:
```([\w.+?])``` -> ```\[\0\]```
Did NOT work, but looks fun.

```\n\n``` -> ```</sp>\0<sp>```
Don't know why I needed to make it backwards, but it works.

```\[(.+?)\]``` -> ```<stageDirect>\0</stageDirect>```



I am very sorry, but I had no time for this one (car and medical issues). I will resubmit it before the next assignment. 



IN CLASS

```\n{3,}``` -> ```\n\n```

```^(.+?)(\n\n)``` -> ```<sp>\1</sp>\2```

```\[.+?\]```->```<stage>\1</stage>```

IMPORTANT:```[[^<]+?\]```

```<sp>[^<]+?:```

```<sp>[^:]+?(?=<st)```






