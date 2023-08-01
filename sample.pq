#HOST 127.0.0.1
#PORT 1234
#USER primusquery
#PASS file:C:\primusquery\pass.txt
#CHARSET UTF-8
#DATABASE opphenk
#CONVERTSTRINGS &,&amp;,<,&lt;,>,&gt;
#OUTPUT X:\Ulostulo.txt
// Kommenttirivi
// Tätä esimerkkikoodia ei ole testattu
#SEARCH K1=%B0% AND (F172({1},{V9},{V10})>10)
#HEADER_START
<h1>Tuntimerkintätiedot</h1>
#HEADER_STOP
<h2>#DATA{K3} #DATA{K2}</h2>
<table>
<tr>
<th>Pvm</th>
<th>Opettaja</th>
</tr>
#ATTENDANCE_LOOP_START
#IF{F101(V100)<>""}
<tr>
<td>#DATA{F101(V100)}</td>
<td>#DATA{F104(V100)^K7}</td>
</tr>
#ENDIF
#ATTENDANCE_LOOP_STOP
</table>
#FOOTER_START
<hr>
<i>Generoitu #DATA{V2, REPLC(".","-",0,0)}</i>
#FOOTER_STOP
