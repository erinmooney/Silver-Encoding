(: Erin Mooney :)

(:
xquery version "3.1";

(: Question 1 :)
let $drafts := collection('/db/starwars/fixed/')
return $drafts
    (: pulls info from collection :)
    
(: Question 2:)
(: This code is grabbing and organizing the
information within <date>. Specifically, it is reaching
within <date> to the attribute @date and organizing based
on that @date data. :)

(: Question 3 :)
(: I am a little confused with the wording of this one, but
here we go. :)

xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
    let $sortOrder := 
            for $d in $drafts
            let $date := $d//date/@date ! data()! normalize-space() => sort()
            order by $date
            return $d
            
return $drafts

(: Question 4 :)
xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
    for $d in $drafts
    let $date := $d//date/@date
    order by $date
    let $title := $d//title
return $d

(: Question 5 :)
xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
let $sp := $drafts//sp ! normalize-space() => count()
return $sp
(: 3705 :)

(: Question 6 :)
xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
let $spk := $drafts//sp/@spk ! string() => distinct-values()
return string-join($spk," | ") 


(: Question 7 :)
xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
let $spk := $drafts//sp/@spk ! string() => distinct-values() => count()
return string-join($spk," | ") 
(: 168 :)

(: Question 8 :)
xquery version "3.1";

let $drafts := collection('/db/starwars/fixed/')
 for $d in $drafts
    let $date := $d//date/@date ! normalize-space()
    let $title := $d//title ! normalize-space()
let $sp := $drafts//sp ! normalize-space() => count() => string() => distinct-values()
let $spk := $drafts//sp/@spk ! string() => distinct-values() => count() => string() => distinct-values()
return  concat ($title, " | ", $date , " | ", $sp, " | ", $spk )

(: Question 9 :)
(: If there is a problem with the way I have this structured,
please let me know. This way was the easiest for my remaining
brain cells to organize it! :)

:)

(: Pt 2 :)

xquery version "3.1";
declare variable $drafts := collection('/db/starwars/fixed/');
declare variable $ThisFileContent :=
<html>
    <head>
        <title>Star Wars Test</title>
    </head>
<body>
    <h1>Information Gathered from the Star Wars Drafts Provided</h1>
  
     <h2>Dates</h2>
  <ol> 
   {  for $d in $drafts
    let $date := $d//date/@date ! normalize-space()
      return 
       <li>{$date}</li>
   }
     </ol>


  <h2>Titles</h2>
  <ol> 
   {  for $d in $drafts
   let $title := $d//title ! normalize-space()
    return
        <li>{$title}</li>
   }
     </ol>

 <h2>Speeches</h2>
  <ol> 
   { let $sp := $drafts//sp ! normalize-space() => count() => string() => distinct-values()
    return
        <li>{$sp}</li>
   }
     </ol>

 <h2>Speakers</h2>
  <ol> 
   { let $spk := $drafts//sp/@spk ! string() => distinct-values() => count() => string() => distinct-values()
    return
        <li>{$spk}</li>
   }
     </ol>

   
</body>
</html> ;
$ThisFileContent









