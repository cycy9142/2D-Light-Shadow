///shadow_simulate();

surface_set_target(__sha_light_surface_1);
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



draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
    var __ss_bval, __ss_i;
    
    __ss_i = 1;
    while (1)
    {    
        __ss_bval = 1+(__ss_i/__sha_radius);
        
        surface_set_target(__sha_light_surface_2);
            draw_clear_alpha(c_black, 0);
            draw_surface(__sha_light_surface_1, 0, 0);
            draw_surface_part_ext( __sha_light_surface_1, __sha_radius-__sha_radius*(1/__ss_bval), __sha_radius-__sha_radius*(1/__ss_bval), 
                                   (__sha_radius*(1/__ss_bval))*2, (__sha_radius*(1/__ss_bval))*2,
                               0, 0, __ss_bval, __ss_bval, c_white, 1);
        surface_reset_target();
        __ss_i += __ss_i;
        
        __ss_bval = 1+(__ss_i/__sha_radius);
        
        surface_set_target(__sha_light_surface_1);
            draw_clear_alpha(c_black, 0);
            draw_surface(__sha_light_surface_2, 0, 0);
            draw_surface_part_ext( __sha_light_surface_2, __sha_radius-__sha_radius*(1/__ss_bval), __sha_radius-__sha_radius*(1/__ss_bval), 
                                   (__sha_radius*(1/__ss_bval))*2, (__sha_radius*(1/__ss_bval))*2,
                               0, 0, __ss_bval, __ss_bval, c_white, 1);
        surface_reset_target();
        
        if( __ss_i > sqr(__sha_radius) ) break;
        
        __ss_i += __ss_i;
    }
surface_reset_target();

//draw_set_blend_mode(bm_add);
/*


draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
surface_set_target(__sha_light_surface_2);
    draw_clear_alpha(c_black, 0);
    draw_surface(__sha_light_surface_1, 0, 0);
    var __ss_bval;
    for(__ss_i = 0; __ss_i <= __sha_radius; __ss_i+=__sha_radius*0.1)
    {
        //draw_surface_ext(__sha_light_surface_1, -__sha_radius*__ss_i*0.005, -__sha_radius*__ss_i*0.005, 1+(__ss_i*0.005), 1+(__ss_i*0.005), 0, c_white, 1);
        //draw_surface_ext(__sha_light_surface_1, -((__ss_i+1)/__ss_i-1)*__sha_radius, -((__ss_i+1)/__ss_i-1)*__sha_radius, (__ss_i+1)/__ss_i, (__ss_i+1)/__ss_i, 0, c_white, 1);
        //draw_surface_ext( __sha_light_surface_1, -__sha_radius*__ss_i*0.1, -__sha_radius*__ss_i*0.1, 1+(__sha_radius*__ss_i*0.1/(__sha_radius)), 1+(__sha_radius*__ss_i*0.1/(__sha_radius)), 0, c_white, 1);
        //draw_surface_ext(__sha_light_surface_1, -__ss_i, -__ss_i, 1+(__ss_i/(__sha_radius)), 1+(__ss_i/(__sha_radius)), 0, c_white, 1);
        
        __ss_bval = 1+(__ss_i/__sha_radius);
        
        draw_surface_part_ext( __sha_light_surface_1, __sha_radius-__sha_radius*(1/__ss_bval), __sha_radius-__sha_radius*(1/__ss_bval), 
                               (__sha_radius*(1/__ss_bval))*2, (__sha_radius*(1/__ss_bval))*2,
                               0, 0, __ss_bval, __ss_bval, c_white, 1);
        //if( __ss_i == 10 ) __ss_i = max(__sha_radius-11, 10);
    }
surface_reset_target();



for(__ss_i = 0; __ss_i < 10; __ss_i++)
{
    surface_set_target(__sha_light_surface_1);
        draw_clear_alpha(c_black, 0);
        draw_surface(__sha_light_surface_2, 0, 0);
        
        draw_surface_part_ext(__sha_t_surf_S2, __sha_radius/power(2, __ss_i), __sha_radius/power(2, __ss_i),
                                               (__sha_radius - __sha_radius/power(2, __ss_i))*2, (__sha_radius - __sha_radius/power(2, __ss_i))*2, 0, 0, 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __ss_i)), 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __ss_i)), c_white, 1);
        
        //draw_surface_ext(__sha_light_surface_2, -__sha_radius*0.1, -__sha_radius*0.1, 1.1, 1.1, 0, c_white, 1);
        
        draw_surface_part_ext(__sha_light_surface_2, __sha_radius*((0.1*__ss_i)+0.05), __sha_radius*((0.1*__ss_i)+0.05),
                                                     (__sha_radius - __sha_radius*((0.1*__ss_i)+0.05))*2, 
                                                     (__sha_radius - __sha_radius*((0.1*__ss_i)+0.05))*2, 0, 0, 
                                                     1 / ((0.1*__ss_i)+0.05), 1 / ((0.1*__ss_i)+0.05), c_white, 1);
    surface_reset_target();
    
    //__ss_i++;
    surface_set_target(__sha_light_surface_2);
        draw_clear_alpha(c_black, 0);
        draw_surface(__sha_light_surface_1, 0, 0);
        
        draw_surface_part_ext(__sha_t_surf_S1, __sha_radius/power(2, __ss_i), __sha_radius/power(2, __ss_i),
                                               (__sha_radius - __sha_radius/power(2, __ss_i))*2, (__sha_radius - __sha_radius/power(2, __ss_i))*2, 0, 0, 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __ss_i)), 
                                               __sha_radius/(__sha_radius - __sha_radius/power(2, __ss_i)), c_white, 1);
        
        //draw_surface_ext(__sha_light_surface_1, -__sha_radius*0.1, -__sha_radius*0.1, 1.1, 1.1, 0, c_white, 1);
        
        draw_surface_part_ext(__sha_light_surface_1, __sha_radius*((0.1*__ss_i)+0.05), __sha_radius*((0.1*__ss_i)+0.05),
                                                     (__sha_radius - __sha_radius*((0.1*__ss_i)+0.05))*2, 
                                                     (__sha_radius - __sha_radius*((0.1*__ss_i)+0.05))*2, 0, 0, 
                                                     1 / ((0.1*__ss_i)+0.05), 1 / ((0.1*__ss_i)+0.05), c_white, 1);
    surface_reset_target();
}
*/

surface_set_target(__sha_light_surface_2);
    draw_clear_alpha(c_black, 0);
    draw_sprite_stretched_ext(spr_light, -1, 0, 0, __sha_radius*2, __sha_radius*2, __sha_colour, __sha_alpha);
    
    draw_set_blend_mode_ext(bm_zero,bm_inv_src_alpha);
        draw_surface(__sha_light_surface_1, 0, 0);
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
    draw_surface(__sha_light_surface_2, x-__sha_radius, y-__sha_radius);
    draw_set_blend_mode(bm_normal);
surface_reset_target();


