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
