UPDATE eq2emu.items SET adventure_classes='0' WHERE  id=88140;
UPDATE eq2emu.item_details_weapon SET damage_low1='2', damage_high1='5', damage_low2='2', damage_high2='5', damage_low3='2', damage_high3='5' WHERE  id=18141;
UPDATE eq2emu.spawn SET show_command_icon='1' WHERE  id=270007;
UPDATE eq2emu.spawn_npcs SET min_level='20', max_level='20', enc_level='3' WHERE  id=35671;
UPDATE eq2emu.spawn SET targetable='0' WHERE  id=270011;
UPDATE eq2emu.items SET tradeskill_classes='0' WHERE  id=185427;
UPDATE eq2emu.spawn SET attackable='0' WHERE  id=270009;
UPDATE eq2emu.spawn_npcs SET enc_level='5' WHERE  id=35673;
INSERT INTO starting_skills (class_id, race_id, skill_id, current_val, max_val) VALUES(255, 255, 3421494576, 1, 5);
INSERT INTO starting_skills (class_id, race_id, skill_id, current_val, max_val) VALUES(255, 255, 1653482350, 1, 5);
update spawn_objects, spawn set name='a treasure chest', model_type=4016, show_name=1, targetable=1, size=32, command_primary=16, command_secondary=0, visual_state=11903, attackable=0, show_level=0, show_command_icon=1, display_hand_icon=1, collision_radius=29, hp = 0, power = 0, device_id = 0, merchant_min_level = 0, merchant_max_level = 0 where spawn_objects.spawn_id = spawn.id and spawn.id = 270010;
