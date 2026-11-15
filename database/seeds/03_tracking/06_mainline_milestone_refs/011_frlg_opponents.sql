-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Navel Rock and Birth Island: event-only on the original cartridges; the 2026 Switch release hands out their tickets after the Hall of Fame.
-- Rocket Warehouse Admins: the pret pokefirered decompilation's trainer parties and
-- set moves, cross-checked with Bulbapedia's Rocket Warehouse page. The game calls
-- both Admin and names neither, so each is told apart by its lead Pokémon.
-- Move order follows the game.
-- Gideon and the ghost Marowak: the pret pokefirered disassembly's trainer party, set moves and learnsets.
-- Scope: Pokémon FireRed / LeafGreen milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links FireRed / LeafGreen battle milestones to their primary opponents, in
-- Red / Blue's pattern. The Pokémon League holds its six battles in the order
-- they are fought: Blue on Route 22, the Elite Four, then Champion Blue. The
-- Rocket Warehouse's two Admins have no names, so only Gideon is listed there.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Blue on Route 22 (twice) and in Cerulean City. NULL means the battle
-- is at the milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Choose Starter -> Blue
  (60001, 6014, 6, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town', NULL),
  -- Boulder Badge -> Blue (Route 22)
  (60003, 6014, 6, 'battle-opponent', 1, 'Skipped if you stay off Route 22 until you beat Brock.', 52),
  -- Boulder Badge -> Brock
  (60003, 6001, 6, 'battle-opponent', 2, NULL, NULL),
  -- Cascade Badge -> Blue (Cerulean City)
  (60005, 6014, 6, 'battle-opponent', 1, 'At the north exit, before Nugget Bridge. Blue gives you the Fame Checker afterward.', 9),
  -- Cascade Badge -> Misty
  (60005, 6002, 6, 'battle-opponent', 2, NULL, NULL),
  -- S.S. Anne -> Blue
  (60019, 6014, 6, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City', NULL),
  -- Thunder Badge -> Lt. Surge
  (60006, 6003, 6, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (60007, 6004, 6, 'battle-opponent', 1, NULL, NULL),
  -- Rocket Hideout -> Giovanni
  (60020, 6015, 6, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City', NULL),
  -- Pokémon Tower -> Blue
  (60021, 6014, 6, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town', NULL),
  -- Pokémon Tower -> Marowak
  (60021, 6027, 6, 'battle-opponent', 2, 'Pokémon Tower 6F. You can''t catch it, so beat it to pass.', NULL),
  -- Soul Badge -> Koga
  (60008, 6005, 6, 'battle-opponent', 1, NULL, NULL),
  -- Silph Co. -> Blue
  (60022, 6014, 6, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City', NULL),
  -- Silph Co. -> Giovanni
  (60022, 6015, 6, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City', NULL),
  -- Marsh Badge -> Sabrina
  (60009, 6006, 6, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Blaine
  (60011, 6007, 6, 'battle-opponent', 1, NULL, NULL),
  -- Earth Badge -> Giovanni
  (60012, 6008, 6, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Blue (Route 22)
  (60017, 6014, 6, 'battle-opponent', 1, NULL, 52),
  -- Pokémon League -> Lorelei
  (60017, 6009, 6, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bruno
  (60017, 6010, 6, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Agatha
  (60017, 6011, 6, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lance
  (60017, 6012, 6, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Blue
  (60017, 6013, 6, 'battle-opponent', 6, NULL, NULL),
  -- Rocket Warehouse -> Gideon
  (60037, 6028, 6, 'battle-opponent', 1, 'Rocket Warehouse, northeast room, after the two Admins', NULL),
  -- Cerulean Cave -> Mewtwo
  (60029, 6026, 6, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.', NULL),
  -- Roaming Legendary Beast -> Raikou
  (60028, 6023, 6, 'battle-opponent', 1, 'Roams Kanto routes. You can skip this battle.', NULL),
  -- Roaming Legendary Beast -> Entei
  (60028, 6024, 6, 'battle-opponent', 2, 'Roams Kanto routes. You can skip this battle.', NULL),
  -- Roaming Legendary Beast -> Suicune
  (60028, 6025, 6, 'battle-opponent', 3, 'Roams Kanto routes. You can skip this battle.', NULL),
  -- Power Plant -> Zapdos
  (60023, 6016, 6, 'battle-opponent', 1, 'Power Plant. You can skip this battle.', NULL),
  -- Seafoam Islands -> Articuno
  (60024, 6017, 6, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.', NULL),
  -- Mt. Ember -> Moltres
  (60025, 6018, 6, 'battle-opponent', 1, 'Mt. Ember summit (One Island). You can skip this battle.', NULL),
  -- Navel Rock -> Ho-Oh
  (60026, 6019, 6, 'battle-opponent', 1, 'Navel Rock summit. You can skip this battle.', NULL),
  -- Navel Rock -> Lugia
  (60026, 6020, 6, 'battle-opponent', 2, 'Navel Rock base. You can skip this battle.', NULL),
  -- Birth Island -> Deoxys (FireRed)
  (60027, 6021, 6, 'battle-opponent', 1, 'Birth Island. You can skip this battle.', NULL),
  -- Birth Island -> Deoxys (LeafGreen)
  (60027, 6022, 6, 'battle-opponent', 2, 'Birth Island. You can skip this battle.', NULL);
