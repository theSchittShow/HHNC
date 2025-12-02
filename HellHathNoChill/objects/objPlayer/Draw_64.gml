/// @desc Heatlth and stamina hud
healthbar_wid = 100
healthbar_hgt = 12
healthbar_x = 6
healthbar_y = 490
draw_sprite(sprBarBg, 0, healthbar_x, healthbar_y)
draw_sprite_stretched(sprHealthFill, 0, healthbar_x, healthbar_y, (hp_current/hp_max) * healthbar_wid, healthbar_hgt)
draw_sprite(sprBrdr, 0, healthbar_x, healthbar_y)

stambar_wid = 100
stambar_hgt = 12
stambar_x = 6
stambar_y = 520
draw_sprite(sprBarBg, 0, stambar_x, stambar_y)
draw_sprite_stretched(sprStamFill, 0, stambar_x, stambar_y, (stamina_current/stamina_max) * stambar_wid, stambar_hgt)
draw_sprite(sprBrdr, 0, stambar_x, stambar_y)