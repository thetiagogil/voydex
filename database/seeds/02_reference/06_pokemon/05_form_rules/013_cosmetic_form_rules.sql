-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex form pages per game (Unown, Shellos/Gastrodon, Deerling/Sawsbuck, Vivillon, Flabebe family, Furfrou, Pikachu caps, Alcremie, Keldeo, Zarude, Gimmighoul, Pichu).
-- Cross-check: PokeAPI pokemon-form records for names, ids and images.
-- Scope note: persistent forms that are caught and kept (variants) or switched on a save (forms), purely cosmetic ones included. Alcremie is modelled by cream only; its sweet is a per-Pokemon detail. Cosplay Pikachu, Minior cores, Battle Bond Greninja and Power Construct Zygarde are left out for now.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_form_rules
-- Scope: classes and behavior for the cosmetic and other persistent forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, battle_mechanic, condition_summary, notes)
VALUES
  -- Unown (B)
  (20101, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (C)
  (20102, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (D)
  (20103, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (E)
  (20104, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (F)
  (20105, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (G)
  (20106, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (H)
  (20107, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (I)
  (20108, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (J)
  (20109, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (K)
  (20110, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (L)
  (20111, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (M)
  (20112, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (N)
  (20113, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (O)
  (20114, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (P)
  (20115, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (Q)
  (20116, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (R)
  (20117, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (S)
  (20118, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (T)
  (20119, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (U)
  (20120, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (V)
  (20121, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (W)
  (20122, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (X)
  (20123, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (Y)
  (20124, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (Z)
  (20125, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (!)
  (20126, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Unown (?)
  (20127, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Letter fixed when it is caught.', NULL),
  -- Shellos (East Sea)
  (42201, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Sea fixed by where it hatched or was caught.', NULL),
  -- Gastrodon (East Sea)
  (42301, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Keeps the sea of the Shellos it evolved from.', NULL),
  -- Deerling (Summer Form)
  (58501, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Deerling (Autumn Form)
  (58502, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Deerling (Winter Form)
  (58503, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Sawsbuck (Summer Form)
  (58601, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Sawsbuck (Autumn Form)
  (58602, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Sawsbuck (Winter Form)
  (58603, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Season form: follows the season in Black/White and Black 2/White 2 and the boot area in Scarlet/Violet; fixed in between.', NULL),
  -- Vivillon (Icy Snow Pattern)
  (66601, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Polar Pattern)
  (66602, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Tundra Pattern)
  (66603, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Continental Pattern)
  (66604, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Garden Pattern)
  (66605, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Elegant Pattern)
  (66606, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Modern Pattern)
  (66607, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Marine Pattern)
  (66608, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Archipelago Pattern)
  (66609, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (High Plains Pattern)
  (66610, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Sandstorm Pattern)
  (66611, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (River Pattern)
  (66612, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Monsoon Pattern)
  (66613, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Savanna Pattern)
  (66614, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Sun Pattern)
  (66615, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Ocean Pattern)
  (66616, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Jungle Pattern)
  (66617, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Fancy Pattern)
  (66618, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Vivillon (Poke Ball Pattern)
  (66619, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Pattern fixed when it evolves, from the system region; Fancy and Poke Ball come from events.', NULL),
  -- Flabebe (Yellow Flower)
  (66901, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Flabebe (Orange Flower)
  (66902, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Flabebe (Blue Flower)
  (66903, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Flabebe (White Flower)
  (66904, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Floette (Yellow Flower)
  (67003, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Floette (Orange Flower)
  (67004, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Floette (Blue Flower)
  (67005, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Floette (White Flower)
  (67006, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Florges (Yellow Flower)
  (67101, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Florges (Orange Flower)
  (67102, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Florges (Blue Flower)
  (67103, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Florges (White Flower)
  (67104, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Flower colour fixed when it is caught and kept through evolution.', NULL),
  -- Furfrou (Heart Trim)
  (67601, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Star Trim)
  (67602, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Diamond Trim)
  (67603, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Debutante Trim)
  (67604, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Matron Trim)
  (67605, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Dandy Trim)
  (67606, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (La Reine Trim)
  (67607, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Kabuki Trim)
  (67608, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Furfrou (Pharaoh Trim)
  (67609, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Trim given by a groomer; it goes back to Natural after five days.', NULL),
  -- Alcremie (Ruby Cream)
  (86902, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Matcha Cream)
  (86903, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Mint Cream)
  (86904, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Lemon Cream)
  (86905, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Salted Cream)
  (86906, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Ruby Swirl)
  (86907, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Caramel Swirl)
  (86908, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Alcremie (Rainbow Swirl)
  (86909, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Cream fixed when it evolves; its sweet is a separate detail.', NULL),
  -- Pikachu (Original Cap)
  (2503, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Hoenn Cap)
  (2504, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Sinnoh Cap)
  (2505, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Unova Cap)
  (2506, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Kalos Cap)
  (2507, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Alola Cap)
  (2508, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (Partner Cap)
  (2509, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pikachu (World Cap)
  (2510, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pikachu in a cap; it can''t evolve.', NULL),
  -- Pichu (Spiky-eared)
  (17201, 'variant', TRUE, FALSE, TRUE, FALSE, TRUE, NULL, 'Event Pichu from HeartGold and SoulSilver; it can''t evolve.', NULL),
  -- Zarude (Dada)
  (89301, 'variant', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Event Zarude from the Secrets of the Jungle distribution.', NULL),
  -- Gimmighoul (Roaming Form)
  (99901, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, NULL, 'Roaming Form, only from Pokemon GO; its own stats and ability.', NULL),
  -- Keldeo (Resolute Form)
  (64701, 'form', TRUE, FALSE, TRUE, FALSE, FALSE, NULL, 'Resolute Form while it knows Secret Sword.', NULL);
