extends HBoxContainer

func _on_master_volume_slider_value_changed(value):
	$MasterVolumeLabel.text = value


func _on_master_volume_slider_drag_ended(value_changed):
	if value_changed:
		SaveLoadController.update_config(GameConfig.ConfigKeys.MASTER_VOLUME, $MasterVolumeSlider.value)
