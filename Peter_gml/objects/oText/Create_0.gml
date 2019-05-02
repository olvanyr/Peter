


/*
um, this is really simple. create a small choice box that lets the user select an option 
(e.g. 'yes' and 'no' are classic). have that set a variable. then change the dialogue based on that variable

it requires a lot of gui coding and such, but it's not like, mentally challenging or anything

you could also write some kind of parser. e.g.

"do you like apples?"
"[choice:yes,no]"
"yuck, you like apples? i hate them. [if:yes]"
"hmph, you don't like apples? well, i love them! [if:no]"

the game would check the lines of strings, and remove what's in the brackets, and only 
display that line of text if the player answered with yes (or no). that is more complicated to 
code, and i would only recommend it if your game has a much branching dialogue as a wrpg like 
fallout 3 or something, but it's what it'd do.

note that you do *not* require string_execute to do that, the game would simply use the string 
functions to check inside the brackets and do certain code actions depending on what's inside 
(and also it'd always remove whatever's in the brackets before displaying it on screen).*/






line = "";

line_part = "";

line_counter = 0;



enum page
{
	intro,
	height //so I now how many number of ellement I have
}


page_intro = 


//creat the "pages" of the menu and store them into ds_grid
ds_intro = create_page(
["Hello Peter you juste arrived in our compagnie ?"], 
["yes",], 
["no?"]
);

/*
ds_menu_main = create_page(
	["PLAY",		menu_element.page_transfer,	menu_page.slots], 
	["SETTINGS",	menu_element.page_transfer,	menu_page.settings],
	["EXIT",		menu_element.script_runner,	exit_game]
);