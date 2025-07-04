extends Control

func _on_ready() -> void:
	$PanelContainer/MarginContainer/VBoxContainer/ScrollContainer/VBoxContainer/Credits.text = credits_text

func _on_back_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_back_button_mouse_entered() -> void:
	FxPlayer.play_blip()


const credits_text = "
[font otv=\"emb=0.4\"][font_size=30]
[font otv=\"emb=0.6\"][font_size=50]Showcase[/font_size][/font]

[u]Lead Developer[/u]
Moondog

[u]Music, Sound, Development[/u]
Davkas Plays

[u]Testing, Development[/u]
Dominik K

[u]Testing[/u]
Salubrious Beets




[font otv=\"emb=0.6\"][font_size=50]A Salt and Battering[/font_size][/font]

[u]Development Team[/u]
The Automagical Automobehicle
Duhitsrafa
doog
elzanite
Honeysaur
Kenesu-h
minhieu_art
Lishi
theoku
(klop)

[u]Logo[/u]
Skiddosaur




[font otv=\"emb=0.6\"][font_size=50]Eggs Eggs Eggs Chase[/font_size][/font]

[u]Developer[/u]
nyfor_kfp




[font otv=\"emb=0.6\"][font_size=50]KFP Fury[/font_size][/font]

[u]Developer[/u]
Alphros




[font otv=\"emb=0.6\"][font_size=50]Frogiwawa's Sugar Rush[/font_size][/font]

[u]Developer[/u]
bluruler




[font otv=\"emb=0.6\"][font_size=50]DYNAMIC[/font_size][/font]

[u]Developer[/u]
du5k




[font otv=\"emb=0.6\"][font_size=50]The Legend of Kiara: Three's a Crow-d[/font_size][/font]

[u]Lead Developer, Level Designer, SFX Producer[/u]
LogicalParadox

[u]Programmer, Technical Designer[/u]
Aurick

[u]Lead Artist, Art Designer[/u]
LighSkYce




[font otv=\"emb=0.6\"][font_size=50]Jimmy's Dilemma[/font_size][/font]

[u]Developer[/u]
Apols

[u]Background, Food Assets[/u]
nithemaer

[u]Character Assets[/u]
Aeriwritten


[font otv=\"emb=0.6\"][font_size=50]KFP is Inevitable[/font_size][/font]

[u]Developer[/u]
AwesomeAxolotlt




[font_size=50]Talkshow[/font_size][/font]

[u]Developer[/u]
asbestosstar
[/font_size]
[/font]
"
