xquery version "3.1";
declare default element namespace "http://www.tei-c.org/ns/1.0";
let $disneySongs := collection('/db/disneySongs/')
    for $d in $disneySongs
    let $d := //title
    
return $d
