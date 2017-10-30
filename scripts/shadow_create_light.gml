///shadow_create_light(type, alpha[, colour[, x, y, r]]);

var __sc_inst;
__sc_inst = instance_create(0, 0, shadow_light);

with(__sc_inst)
{
    if( argument_count <= 2 )
    {
        shadow_set_light(argument[0], argument[1]);
    }
    else if( argument_count <= 3 )
    {
        shadow_set_light(argument[0], argument[1], argument[2]);
    }
    else
    {
        x = argument[3];
        y = argument[4];
        shadow_set_light(argument[0], argument[1], argument[2], argument[5]);
    }
}
return __sc_inst;
/*
__sha_inst = instance_create(0, 0, shadow_light);
__sha_inst.__sha_type = argument[0];
__sha_inst.__sha_alpha = argument[1];


switch (__sha_inst.__sha_type)
{
    case LIGHT_POINT:
        if( argument_count >= 4 )
        {
            __sha_inst.x = argument[3];
            __sha_inst.y = argument[4];
            __sha_inst.__sha_radius = argument[5];
            
            with(__sha_inst)
            {
                surface_free(__sha_light_surface);
                __sha_light_surface = surface_create(__sha_radius*2, __sha_radius*2);
                
                surface_set_target(__sha_light_surface);
                    draw_clear_alpha(c_black, 0);
                    draw_primitive_begin(pr_trianglefan);
                        draw_vertex_colour(__sha_radius, __sha_radius, __sha_colour, 1);
                        for (__i = 72; __i >= 0; __i -= 1)
                            {
                                draw_vertex_colour( __sha_radius + lengthdir_x(__sha_radius, 5 * __i), 
                                                    __sha_radius + lengthdir_y(__sha_radius, 5 * __i), __sha_colour, 0)
                            }
                    draw_primitive_end();
                surface_reset_target();
            }
        }
        
        break;
    case LIGHT_DIRECTIONAL:
        
        break;
    default:
        return 0;
}
*/
