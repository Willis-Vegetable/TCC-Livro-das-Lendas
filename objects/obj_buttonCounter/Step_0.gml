if (total_pressed == 3 && !hole_created) {
    instance_create_depth(1152, 1152, 0, obj_hole);
    hole_created = true;
    with (obj_loopController) {
    parar_loop();
    }
}