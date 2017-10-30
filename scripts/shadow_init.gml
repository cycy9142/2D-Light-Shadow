///shadow_init();

globalvar __sha_shadow_surface;

__sha_shadow_surface = surface_create(view_wview, view_hview);

surface_set_target(__sha_shadow_surface);
    draw_clear_alpha(c_black, 0);
surface_reset_target();
