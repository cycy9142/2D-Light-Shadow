///shadow_set_light(type, alpha[, colour[, r]]);
__sha_type = argument[0];
__sha_alpha = argument[1];
if( argument_count >= 3)
{
    __sha_colour = argument[2];
}
else
{
    __sha_colour = c_white;
}

switch (__sha_type)
{
    case LIGHT_POINT:
        if( argument_count >= 4)
        {
            __sha_radius = argument[3];
        }
        else
        {
            __sha_radius = 100;
        }
        __sha_light_surface_1 = surface_create(__sha_radius*2, __sha_radius*2);
        __sha_light_surface_2 = surface_create(__sha_radius*2, __sha_radius*2);
        
        break;
    case LIGHT_DIRECTIONAL:
        
        break;
    default:
        return 0;
}

return 0;
