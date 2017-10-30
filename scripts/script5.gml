///shadow_simulate();
/*
__sha_t_surf_L = surface_create(__sha_radius*2, __sha_radius*2);
__sha_t_surf_S1 = surface_create(__sha_radius*2, __sha_radius*2);
__sha_t_surf_S2 = surface_create(__sha_radius*2, __sha_radius*2);


surface_set_target(__sha_light_surface);
    draw_clear_alpha(c_black, 0);
    draw_sprite_stretched(spr_light, -1, 0, 0, __sha_radius*2, __sha_radius*2);
    
    
surface_reset_target();


surface_set_target(__sha_t_surf_S1);
    draw_clear_alpha(c_black, 0);
    __sha_tx = __sha_radius - x;
    __sha_ty = __sha_radius - y;
    with(shadow_parent)
    {
        if( sprite_index != -1)
        {
            draw_sprite_ext(sprite_index, image_index, x+other.__sha_tx, y+other.__sha_ty, 1, 1, 0, c_black, 1)
        }
    }
surface_reset_target();

//draw_set_blend_mode(bm_add);
draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
surface_set_target(__sha_t_surf_S2);
    draw_clear_alpha(c_black, 0);
    draw_surface(__sha_t_surf_S1, 0, 0);
    for(__i = 1; __i <= 5; __i++)
    {
        draw_surface_ext(__sha_t_surf_S1, -__i, -__i, 1+(__i/(__sha_radius)), 1+(__i/(__sha_radius)), 0, c_white, 1);
    }
surface_reset_target();

for(__i = 10; __i > 0; __i--)
{
    surface_set_target(__sha_t_surf_S1);
        draw_surface(__sha_t_surf_S2, 0, 0);
        draw_surface_part_ext(__sha_t_surf_S2, __sha_radius/power(2, __i), __sha_radius/power(2, __i),
                                               (__sha_radius - __sha_radius/power(2, __i))*2, (__sha_radius - __sha_radius/power(2, __i))*2, 0, 0, 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __i)), 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __i)), c_white, 1);
        
        draw_surface_ext(__sha_t_surf_S2, -power(2, __i)*10, -power(2, __i)*10, 1+(power(2, __i)/(__sha_radius*0.1)), 1+(power(2, __i)/(__sha_radius*0.1)), 0, c_white, 1);
    surface_reset_target();
    
    __i--;
    surface_set_target(__sha_t_surf_S2);
        draw_surface(__sha_t_surf_S1, 0, 0);
        
        draw_surface_part_ext(__sha_t_surf_S1, __sha_radius/power(2, __i), __sha_radius/power(2, __i),
                                               (__sha_radius - __sha_radius/power(2, __i))*2, (__sha_radius - __sha_radius/power(2, __i))*2, 0, 0, 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __i)), 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __i)), c_white, 1);
        
        draw_surface_ext(__sha_t_surf_S1, -power(2, __i)*10, -power(2, __i)*10, 1+(power(2, __i)/(__sha_radius*0.1)), 1+(power(2, __i)/(__sha_radius*0.1)), 0, c_white, 1);
    surface_reset_target();
}


surface_set_target(__sha_t_surf_L);
draw_set_blend_mode_ext(bm_zero,bm_inv_src_alpha);
    
    draw_surface(__sha_t_surf_S2, 0, 0);

draw_set_blend_mode(bm_normal);
surface_reset_target();

if( !surface_exists(__sha_shadow_surface) )
{
    __sha_shadow_surface = surface_create(view_wview, view_hview);
    
    surface_set_target(__sha_shadow_surface);
        draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
surface_set_target(__sha_shadow_surface);
    draw_set_blend_mode(bm_add);
    draw_surface(__sha_t_surf_L, x-__sha_radius, y-__sha_radius);
    draw_set_blend_mode(bm_normal);
surface_reset_target();

surface_free(__sha_t_surf_L);
surface_free(__sha_t_surf_S1);
surface_free(__sha_t_surf_S2);
*/
