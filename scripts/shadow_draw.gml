///shadow_draw()

if( !surface_exists(__sha_shadow_surface) )
{
    __sha_shadow_surface = surface_create(view_wview, view_hview);
    
    surface_set_target(__sha_shadow_surface);
        draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

draw_set_blend_mode_ext(bm_dest_color,bm_src_alpha);
    draw_surface_ext(__sha_shadow_surface, 0, 0, 1, 1, 0, c_white, 0.5);
draw_set_blend_mode(bm_normal);

surface_set_target(__sha_shadow_surface);
    draw_clear_alpha(c_black, 0);
surface_reset_target();
