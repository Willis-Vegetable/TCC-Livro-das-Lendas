/// @function scr_shadow_clear()
/// @description Instantly clears the shadow darkening effect and resets the shadow state.
function scr_shadow_clear() {
    with (obj_shadowController) {
        shadow = false;
        target_darkness = 0;
        darkness = 0;
    }
}