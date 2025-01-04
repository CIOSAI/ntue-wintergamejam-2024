extends Node2D

var fish_max_range_x: float = 50

func cook() -> void:
	for particle: GPUParticles2D in [$Smoke, $RiceBig, $RiceMedium, $RiceSmall, $CookedFish]:
		particle.emitting = true
		particle.finished.connect(check_if_commit_die)

func check_if_commit_die() -> void:
	var all_done: bool = true
	for particle: GPUParticles2D in [$Smoke, $RiceBig, $RiceMedium, $RiceSmall, $CookedFish]:
		if particle.emitting == true:
			all_done = false
	
	if all_done:
		queue_free()
