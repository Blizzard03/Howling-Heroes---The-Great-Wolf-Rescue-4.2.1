extends Node

#save_update
#Full Screen
func _toggle_fullscreen(toggle):
	get_window().mode = Window.MODE_EXCLUSIVE_FULLSCREEN if (toggle) else Window.MODE_WINDOWED
	SaveSettings.Data_Settings.FullScreen_on = toggle
	SaveSettings.save_settings()
	
# V-Sync
func _toggle_vsync(toggle):
	DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED if (toggle) else DisplayServer.VSYNC_DISABLED)
	SaveSettings.Data_Settings.V_Sync_on = toggle
	SaveSettings.save_settings()
	
# Master Volume	
func _update_master_Volume(vol):
	AudioServer.set_bus_volume_db(0,vol)
	SaveSettings.Data_Settings.Master_Volume = vol
	SaveSettings.save_settings()
	
# Music Volume	
func _update_music_Volume(vol):
	AudioServer.set_bus_volume_db(1,vol)
	SaveSettings.Data_Settings.Music_Volume = vol
	SaveSettings.save_settings()
	
# Dialogue Volume	
func _update_dialogue_Volume(vol):
	AudioServer.set_bus_volume_db(2,vol)
	SaveSettings.Data_Settings.Dialogue_Volume = vol
	SaveSettings.save_settings()
	
# SFX Volume	
func _update_SFX_Volume(vol):
	AudioServer.set_bus_volume_db(3,vol)
	SaveSettings.Data_Settings.SFX_Volume = vol
	SaveSettings.save_settings()
	
