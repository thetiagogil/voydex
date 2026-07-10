-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 451-500.
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
  -- Skorupi - Skitter Smack - Tutor
  (451, 45100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Drapion - Skitter Smack - Tutor
  (452, 45200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Drapion - Lash Out - Tutor
  (452, 45200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Croagunk - Lash Out - Tutor
  (453, 45300, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Croagunk - Coaching - Tutor
  (453, 45300, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Toxicroak - Lash Out - Tutor
  (454, 45400, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Toxicroak - Corrosive Gas - Tutor
  (454, 45400, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Toxicroak - Coaching - Tutor
  (454, 45400, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Snover - Grassy Glide - Tutor
  (459, 45900, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Abomasnow - Grassy Glide - Tutor
  (460, 46000, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Weavile - Lash Out - Tutor
  (461, 46100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Weavile - Triple Axel - Tutor
  (461, 46100, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Magnezone - Steel Roller - Tutor
  (462, 46200, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magnezone - Rising Voltage - Tutor
  (462, 46200, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Lickilicky - Steel Roller - Tutor
  (463, 46300, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lickilicky - Terrain Pulse - Tutor
  (463, 46300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rhyperior - Meteor Beam - Tutor
  (464, 46400, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rhyperior - Scorching Sands - Tutor
  (464, 46400, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tangrowth - Grassy Glide - Tutor
  (465, 46500, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Electivire - Rising Voltage - Tutor
  (466, 46600, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magmortar - Burning Jealousy - Tutor
  (467, 46700, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magmortar - Scorching Sands - Tutor
  (467, 46700, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Togekiss - Dual Wingbeat - Tutor
  (468, 46800, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Leafeon - Grassy Glide - Tutor
  (470, 47000, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Glaceon - Triple Axel - Tutor
  (471, 47100, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gallade - Expanding Force - Tutor
  (475, 47500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gallade - Coaching - Tutor
  (475, 47500, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gallade - Triple Axel - Tutor
  (475, 47500, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Dusknoir - Skitter Smack - Tutor
  (477, 47700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dusknoir - Poltergeist - Tutor
  (477, 47700, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Froslass - Poltergeist - Tutor
  (478, 47800, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Froslass - Triple Axel - Tutor
  (478, 47800, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom - Rising Voltage - Tutor
  (479, 47900, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom - Poltergeist - Tutor
  (479, 47900, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom (Heat) - Rising Voltage - Tutor
  (479, 47901, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom (Heat) - Poltergeist - Tutor
  (479, 47901, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom (Wash) - Rising Voltage - Tutor
  (479, 47902, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom (Wash) - Poltergeist - Tutor
  (479, 47902, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom (Frost) - Rising Voltage - Tutor
  (479, 47903, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom (Frost) - Poltergeist - Tutor
  (479, 47903, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom (Fan) - Rising Voltage - Tutor
  (479, 47904, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom (Fan) - Poltergeist - Tutor
  (479, 47904, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rotom (Mow) - Rising Voltage - Tutor
  (479, 47905, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rotom (Mow) - Poltergeist - Tutor
  (479, 47905, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Uxie - Expanding Force - Tutor
  (480, 48000, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mesprit - Expanding Force - Tutor
  (481, 48100, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Azelf - Expanding Force - Tutor
  (482, 48200, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dialga - Scale Shot - Tutor
  (483, 48300, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Palkia - Scale Shot - Tutor
  (484, 48400, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Palkia - Dual Wingbeat - Tutor
  (484, 48400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Heatran - Steel Roller - Tutor
  (485, 48500, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Heatran - Burning Jealousy - Tutor
  (485, 48500, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Heatran - Scorching Sands - Tutor
  (485, 48500, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Regigigas - Terrain Pulse - Tutor
  (486, 48600, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Giratina - Poltergeist - Tutor
  (487, 48700, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Giratina - Dual Wingbeat - Tutor
  (487, 48700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Giratina (Origin) - Poltergeist - Tutor
  (487, 48701, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Giratina (Origin) - Dual Wingbeat - Tutor
  (487, 48701, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Cresselia - Expanding Force - Tutor
  (488, 48800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Victini - Expanding Force - Tutor
  (494, 49400, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Victini - Scorching Sands - Tutor
  (494, 49400, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
