shader_set(shd_sepia);

shader_set_uniform_f(shader_get_uniform(shd_sepia, "u_SepiaAmount"), 0.5 + 0.5 * sin(current_time / 1000));

draw_surface(application_surface, 0, 0);

shader_reset();