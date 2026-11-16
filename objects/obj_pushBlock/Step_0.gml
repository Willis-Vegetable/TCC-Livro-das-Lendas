// Idle: keep start point synced
if (!sliding)
{
    start_point_x = x;
    start_point_y = y;
    x_speed = 0;
    y_speed = 0;
}

// Are we currently in a push area?
var _in_push_area = place_meeting(x, y, obj_pushBlockArea); 

// Are we currently in a push area final?
var _in_push_area_final = place_meeting(x, y, obj_pushBlockArea_final); 

// Sliding logic
if (sliding)
{
    var _realDir = faceDir * 90;
    target_x = start_point_x + lengthdir_x(grid_space, _realDir);
    target_y = start_point_y + lengthdir_y(grid_space, _realDir);

    // Would the target leave the push area?
    var _target_in_area = place_meeting(target_x, target_y, obj_pushBlockArea);
    var _blocked_by_area = _in_push_area && !_target_in_area;
    
    // Would the target leave the push area final?
    var _target_in_area_final = place_meeting(target_x, target_y, obj_pushBlockArea_final);
    var _blocked_by_area_final = _in_push_area_final && !_target_in_area_final;

    // Would the target hit a solid?
    var _blocked_by_solid = place_meeting(target_x, target_y, obj_solid);

    if (_blocked_by_area || _blocked_by_solid || _blocked_by_area_final)
    {
        // Cancel the slide entirely
        x_speed = 0;
        y_speed = 0;
        sliding = false;
    }
    else
    {
        var _targetDist = point_distance(x, y, target_x, target_y);
        if (_targetDist <= move_speed)
        {
            // Snap to exact target
            x = target_x;
            y = target_y;
            x_speed = 0;
            y_speed = 0;
            sliding = false;
        }
        else
        {
            x_speed = lengthdir_x(move_speed, _realDir);
            y_speed = lengthdir_y(move_speed, _realDir);
        }
    }
}

// Move
x += x_speed;
y += y_speed;

// Depth
depth = -bbox_bottom;