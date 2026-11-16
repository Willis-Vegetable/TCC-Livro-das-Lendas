// ============================================================
// NPC PARENT - DRAW EVENT
// Draws the NPC and a "talk" indicator when in range.
// ============================================================

// Ensure the sprite assigned to this object is drawn
//draw_self();

// Show the attention bubble above the NPC if the player can talk
// and no dialogue is currently open
if (can_talk && !instance_exists(obj_bookUI))
{
    draw_sprite(spr_Talk, 0, x + 64, y - 80);
}