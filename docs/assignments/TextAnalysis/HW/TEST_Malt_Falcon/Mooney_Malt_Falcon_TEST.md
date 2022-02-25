# Mooney Regex Test

***
No reserved characters (&, <, and <)

No groups of blank lines exceeding 2 (\n{2,})
***

1. The find results in all of the document being selected (because the code grabs items separated with return). The only part of the document not captured is the section at the end: ```"___________________________
Originally broadcast: 3 July 1946
Source: https://emruf.webs.com/acad.htm" ```

    A) When 'Dot Matches All' is checked, all lines selected by the given code ```^(.+?)(\n\n)``` was given an <sp> start tag and an </sp> end tag. If 'DMA' is NOT checked, it leaves out the large chuncks of text because they do not have the required return amounts between lines.
    B.) In my own words, the \1 and \2 mark particular start and stop points of the code being replaced. The \1 identifies the first item WITHIN the tag while the \2 reffers to the first marker OUTSIDE of the tag. 
    C.) The phrasing of the question was a bit confusing here, but I think it means to commit the Find/Replace code being questioned about.

2. In order to grab all of the directions and cues, I used ```\((.+?)\)``` because they are withing parenthesis. I decided to wrap them by inputting ```<stageDirect>\0</stageDirect>``` in the Replace window. I used 'DMA' because it grabbed one extra result (and I could not find the extra one, so I would rather it be grabbed than awkwardly cut off).

3. The Find: ```<sp>[^<]+?:``` results in the capture of ```<sp> blahblahblah:``` . The result amounts are the same whether 'DMA' is activated or not (297 results). I replaced it using ```<speaker>\0</speaker>``` . However, it also wrapped the <sp> in the tag. So, I made another string to move the <sp> tag out using ```<speaker><sp>``` and replacing it with ```<sp><speaker>```.

4. Wrote <root> and pasted the edited .txt into the xml sheet. Happy green square! 








