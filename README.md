``This hud was made for my old FiveM server. Now that I don't host it anymore, I've decided to share it.``

- To change the image, go to ***html/index.html*** at ***line 21*** and change the url.
- To change the colours, go to ***html/style.css*** and change the colours at ***line 67***.
- To change the colour display of the money and bitcoins, go to ***html/listener.js*** and change the hex code from the first two lines.
- To add another layer, or change one, go to ***client.lua*** and ***html/listener.js*** to set another one like so in the ***setValues*** table:
***pmoney = formatMoney(pmoney) = shows pocket money***
***bitcoins = formatMoney(bitcoins) = shows special coins owned***
- After changing one, make sure that you identify these changes in server.lua too.

- When the hud isn't used, only the ***logo*** and ***date*** present on the players screen. To make it so that even those don't show, go to **html/listener.js** and add a function for the logo and date time like the one showed there (for money and bitcoins)
- To make the logo function properly, make sure to use a image that has the size of *96x96*. Just like your server's default logo would have.

- For any problems/inconveniences, contact: ***@5smug*** on discord!
