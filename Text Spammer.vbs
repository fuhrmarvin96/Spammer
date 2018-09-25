'This sends txt via the sendkeys statement to what txtarea has focus at the time
'Repeatedly until the variable 'mynum' is reached

set a = createobject("wscript.shell")

mytxt=inputbox("Was möchtest du Spammen","Text","Oh Yeah!")
mynum=inputbox("Wie viel mal Spammen?","Wie viel","3") 
myspeed=inputbox("Wie schnell Spammen in Milisekunden!","Cooldown","200") 
mywait=inputbox("Wartezeit bis das Spammen beginnt","Wartezeit","5")

msgbox("Du hast " & mywait & " Sekunden um ein Text Feld zu wählen!")
wscript.sleep (mywait*1000) 
for i=1 to mynum 		'count down from mynum variable
	a.sendkeys (mytxt)       'Sends the text you typed in the mytxt prompt
	a.sendkeys ("{ENTER}")   'presses the enter key to send your text you may change it to the apropriate key that sends the msg in your chat
	wscript.sleep (myspeed)   'sleeps OR waits the amount of Milseconds you typed in the Mywait prompt
next
msgbox("Finished Spamming!")