# DRACULA
Erin Mooney

First -> found the ```&``` and replaced it with ````&amp;```

To grab each line -> ```^.+``` ; and replaced it with ```<p>\0</p>```

Tried to specifically grab the CHAPTER titles, but ended up getting the ```<p>``` too with -> ```(<p>)(CHAPTER \w)(</p>)``` and replaced with this: ```<heading>\0</heading>```

To grab the dates, I used -> ```\w+ May``` and replaced it with: ```<date>\0</date>```

I could grab the numbers in <time> (but not the P.M. attributes) with -> ```(\w:\w\w)``` and replaced it with: ```<time>\0</time>```

To grab the quotes (") I used -> ```"\w+"``` and replaced it with: ```<q>\0</q>```

I tried using ```(</heading>)(.+?)(</heading>)``` to grab each CHAPTER, but to no avail. This one I struggled to figure out, so I am prepared to take notes for it in class. 


IN CLASS

```\n{2,}```-> ```\n\n```

```<p>\n?(CHAPTER.+?)</p>``` -> ```<heading>\1</heading>```

```(<heading>)``` -> ```</chapter>
<chapter>\1```

```"(.+?)"```