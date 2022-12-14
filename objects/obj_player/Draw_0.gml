shader_set(shd_grayscale);
shader_set_uniform_f(shader_get_uniform(shd_grayscale, "u_GrayscaleAmount"), 1);

if (casting_frame == 0) {
    sprite_index = running ? spr_duckling_run : spr_duckling;
    event_inherited();
} else {
    var frame_count = sprite_get_number(spr_duckling_cast) / 4;
    draw_sprite(spr_duckling_cast, ((anim_dir + 1) * frame_count) - casting_frame, x, y);
}

shader_reset();