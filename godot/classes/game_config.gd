extends Object
class_name GameConfig

enum ConfigKeys { 
	#gameplay
	
	#music
	MUSIC_VOLUME, SFX_VOLUME, MASTER_VOLUME
}

const defaults = {
	ConfigKeys.MUSIC_VOLUME: 100,
	ConfigKeys.SFX_VOLUME: 100
}
