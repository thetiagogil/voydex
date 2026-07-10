-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 551-600.
-- Rows represent acquisition-method deltas for the Master Dojo Move Tutor.
-- The Crown Tundra depends on The Isle of Armor and inherits these rows through resolved content-scope views.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Sandile - Skitter Smack - Tutor
  (551, 55100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sandile - Lash Out - Tutor
  (551, 55100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Sandile - Scorching Sands - Tutor
  (551, 55100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Krokorok - Skitter Smack - Tutor
  (552, 55200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Krokorok - Lash Out - Tutor
  (552, 55200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Krokorok - Scorching Sands - Tutor
  (552, 55200, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Krookodile - Scale Shot - Tutor
  (553, 55300, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Krookodile - Skitter Smack - Tutor
  (553, 55300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Krookodile - Lash Out - Tutor
  (553, 55300, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Krookodile - Scorching Sands - Tutor
  (553, 55300, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Darmanitan - Expanding Force - Tutor
  (555, 55500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Darmanitan - Burning Jealousy - Tutor
  (555, 55500, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Darmanitan - Lash Out - Tutor
  (555, 55500, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Darmanitan (Galarian Darmanitan) - Burning Jealousy - Tutor
  (555, 55502, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Darmanitan (Galarian Darmanitan) - Lash Out - Tutor
  (555, 55502, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Maractus - Grassy Glide - Tutor
  (556, 55600, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dwebble - Skitter Smack - Tutor
  (557, 55700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Crustle - Meteor Beam - Tutor
  (558, 55800, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Crustle - Skitter Smack - Tutor
  (558, 55800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Scraggy - Lash Out - Tutor
  (559, 55900, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Scraggy - Coaching - Tutor
  (559, 55900, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Scrafty - Lash Out - Tutor
  (560, 56000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Scrafty - Coaching - Tutor
  (560, 56000, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Sigilyph - Expanding Force - Tutor
  (561, 56100, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sigilyph - Dual Wingbeat - Tutor
  (561, 56100, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Yamask - Poltergeist - Tutor
  (562, 56200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Yamask (Galarian Yamask) - Poltergeist - Tutor
  (562, 56201, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cofagrigus - Poltergeist - Tutor
  (563, 56300, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tirtouga - Meteor Beam - Tutor
  (564, 56400, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Carracosta - Meteor Beam - Tutor
  (565, 56500, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Archen - Meteor Beam - Tutor
  (566, 56600, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Archen - Lash Out - Tutor
  (566, 56600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Archen - Dual Wingbeat - Tutor
  (566, 56600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Archeops - Meteor Beam - Tutor
  (567, 56700, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Archeops - Lash Out - Tutor
  (567, 56700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Archeops - Dual Wingbeat - Tutor
  (567, 56700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Trubbish - Corrosive Gas - Tutor
  (568, 56800, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Garbodor - Corrosive Gas - Tutor
  (569, 56900, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zorua - Skitter Smack - Tutor
  (570, 57000, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zorua - Burning Jealousy - Tutor
  (570, 57000, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zorua - Lash Out - Tutor
  (570, 57000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Zoroark - Skitter Smack - Tutor
  (571, 57100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zoroark - Burning Jealousy - Tutor
  (571, 57100, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zoroark - Lash Out - Tutor
  (571, 57100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Minccino - Triple Axel - Tutor
  (572, 57200, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cinccino - Triple Axel - Tutor
  (573, 57300, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gothita - Expanding Force - Tutor
  (574, 57400, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gothorita - Expanding Force - Tutor
  (575, 57500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gothitelle - Expanding Force - Tutor
  (576, 57600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Solosis - Expanding Force - Tutor
  (577, 57700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Solosis - Steel Roller - Tutor
  (577, 57700, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Duosion - Expanding Force - Tutor
  (578, 57800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Duosion - Steel Roller - Tutor
  (578, 57800, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Reuniclus - Expanding Force - Tutor
  (579, 57900, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Reuniclus - Steel Roller - Tutor
  (579, 57900, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Emolga - Rising Voltage - Tutor
  (587, 58700, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Emolga - Dual Wingbeat - Tutor
  (587, 58700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Frillish - Poltergeist - Tutor
  (592, 59200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Jellicent - Poltergeist - Tutor
  (593, 59300, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Joltik - Rising Voltage - Tutor
  (595, 59500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Joltik - Skitter Smack - Tutor
  (595, 59500, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Galvantula - Rising Voltage - Tutor
  (596, 59600, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Galvantula - Skitter Smack - Tutor
  (596, 59600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Ferroseed - Steel Roller - Tutor
  (597, 59700, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Ferrothorn - Steel Roller - Tutor
  (598, 59800, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Klink - Steel Roller - Tutor
  (599, 59900, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Klink - Rising Voltage - Tutor
  (599, 59900, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Klang - Steel Roller - Tutor
  (600, 60000, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Klang - Rising Voltage - Tutor
  (600, 60000, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
