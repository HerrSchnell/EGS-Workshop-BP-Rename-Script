# Empyrion Galactic Survival Workshop Blueprint Renaming Script (EGS:WBRS)
If, like me, you are constantly hitting the workshop limit of about 300 workshop blueprints visible in the game, this script is for you. OR maybe you strongly dislike the idea of unsubscribing and trying to find a blueprint again later... because wading through a thousand+ "favorites" sounds super fun...

EGS currently does not limit the number of blueprints you can have in your local save directory, but it does start to cut workshop entries out of the in-game menu once you pass around 300 items.

This script was written rename workshop ID numbered directories based on the name of the blueprint (.ebp) file within. This is how the game saves blueprints locally while you play.

E.g. Ente's Aurora Carrier
[3125223658] in the workshop folder
[Aurora RE] if saved to your local folder

# Instructions:

1. **Locate your subscribed steam workshop blueprints in the following location:**
*[steam install directory]*\steamapps\workshop\content\383120\

2. **Copy the all the numbered workshop folders to a temporary folder**
3. **Place this powershell script in the temporary folder**
The script should be in a temp folder but not in a folder itself:
[3125223658] Folder
[3125223659] Folder
[3125223660] Folder
*egs-workshop-rename.ps1*
4. **Run the script**
Right click and "run with powershell"
5. **Copy/Move the renamed folders into your local save folder:**
*[steam install directory]*\steamapps\common\Empyrion - Galactic Survival\Saves\Blueprints\ *[your steam id number]*

6. **Archive your subscriptions to favorites/a collection and unsubscribe to make room for more toys!**
