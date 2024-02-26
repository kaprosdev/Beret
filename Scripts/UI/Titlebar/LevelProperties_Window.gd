extends Window


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("visibility_changed", visibility_changed)
	pass # Replace with function body.

func visibility_changed() -> void:
	if visible:
		for sky in Settings.assets['Skies']:
			%SkyNameOption.add_item(sky['Name'].capitalize())
			%SkyNameOption.set_item_metadata(%SkyNameOption.item_count - 1, sky['Name'].to_upper())
		for song in Settings.assets['Songs']:
			%SongNameOption.add_item(song['Name'].capitalize())
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
