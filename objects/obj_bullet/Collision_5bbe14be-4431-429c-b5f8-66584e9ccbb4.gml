// action
hit = true;
instance_create_layer(x, y, "Bullet_Instance",obj_explosion);
audio_sound_pitch(snd_explosion, random_range(0.8, 1.2))
audio_play_sound(snd_explosion, 10, false);

instance_destroy();