-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB ability list and ability pages for concise effect summaries.
-- Cross-check: Bulbapedia ability pages for generation/version behavior changes.
-- Sanity: PokeAPI ability changelog CSV for older machine-readable change hints.
-- Scope: product-facing summaries for mainline playthrough-game abilities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 9 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Lingering Aroma
  (268, 23, 'Contact changes the attacker''s Ability to Lingering Aroma.'),
  -- Seed Sower
  (269, 23, 'Turns the ground into Grassy Terrain when the Pokémon is hit by an attack.'),
  -- Thermal Exchange
  (270, 23, 'Raises Attack when hit by a Fire-type move. Cannot be burned.'),
  -- Anger Shell
  (271, 23, 'Lowers Defense/Sp. Def and raises Attack/Sp. Atk/Speed when HP drops below half.'),
  -- Purifying Salt
  (272, 23, 'Protects from status conditions and halves damage from Ghost-type moves.'),
  -- Well-Baked Body
  (273, 23, 'Immune to Fire-type moves, and Defense is sharply boosted.'),
  -- Wind Rider
  (274, 23, 'Takes no damage from wind moves, and boosts Attack if hit by one.'),
  -- Guard Dog
  (275, 23, 'Boosts Attack if intimidated, and prevents being forced to switch out.'),
  -- Rocky Payload
  (276, 23, 'Powers up Rock-type moves.'),
  -- Wind Power
  (277, 23, 'Doubles power of the next Electric-type move used, when hit by a wind move.'),
  -- Zero to Hero
  (278, 23, 'Transforms into its Hero Form when switching out.'),
  -- Commander
  (279, 23, 'Goes inside the mouth of an ally Dondozo if one is on the field.'),
  -- Electromorphosis
  (280, 23, 'Doubles power of the next Electric-type move when hit by an attack.'),
  -- Protosynthesis
  (281, 23, 'Raises highest stat in harsh sunlight, or if holding Booster Energy.'),
  -- Quark Drive
  (282, 23, 'Raises highest stat on Electric Terrain, or if holding Booster Energy.'),
  -- Good as Gold
  (283, 23, 'Gives immunity to status moves.'),
  -- Vessel of Ruin
  (284, 23, 'Lowers Special Attack of all Pokémon except itself.'),
  -- Sword of Ruin
  (285, 23, 'Lowers Defense of all Pokémon except itself.'),
  -- Tablets of Ruin
  (286, 23, 'Lowers Attack of all Pokémon except itself.'),
  -- Beads of Ruin
  (287, 23, 'Lowers Special Defense of all Pokémon except itself.'),
  -- Orichalcum Pulse
  (288, 23, 'Turns the sunlight harsh when entering battle, and boosts Attack while active.'),
  -- Hadron Engine
  (289, 23, 'Creates an Electric Terrain when entering battle, and boosts Special Attack while active.'),
  -- Opportunist
  (290, 23, 'Copies stat boosts by the opponent.'),
  -- Cud Chew
  (291, 23, 'Can eat the same Berry twice.'),
  -- Sharpness
  (292, 23, 'Boosts the power of slicing moves.'),
  -- Supreme Overlord
  (293, 23, 'Attack and Special Attack are boosted for each party Pokémon that has been defeated.'),
  -- Costar
  (294, 23, 'Copies ally''s stat changes on entering battle.'),
  -- Toxic Debris
  (295, 23, 'Scatters poison spikes at the feet of the opposing team when the Pokémon takes damage from physical moves.'),
  -- Armor Tail
  (296, 23, 'Prevents opponent using priority moves.'),
  -- Earth Eater
  (297, 23, 'Restores HP when hit by a Ground-type move.'),
  -- Mycelium Might
  (298, 23, 'Status moves go last, but are not affected by the opponent''s ability.'),
  -- Hospitality
  (299, 24, 'Partially restores an ally''s HP when it enters a battle.'),
  -- Mind's Eye
  (300, 24, 'Ignores opponent''s Evasiveness, and allows Normal- and Fighting-type attacks to hit Ghosts.'),
  -- Embody Aspect
  (301, 24, 'When Terastallized, boosts Speed.'),
  -- Embody Aspect
  (302, 24, 'When Terastallized, boosts Attack.'),
  -- Embody Aspect
  (303, 24, 'When Terastallized, boosts Special Defense.'),
  -- Embody Aspect
  (304, 24, 'When Terastallized, boosts Defense.'),
  -- Toxic Chain
  (305, 24, 'May cause bad poisoning.'),
  -- Supersweet Syrup
  (306, 24, 'Once per battle, lowers adjacent opponents'' evasiveness when entering battle.'),
  -- Tera Shift
  (307, 25, 'Transforms into Terastal Form in battle.'),
  -- Tera Shell
  (308, 25, 'Moves are not very effective when HP is full.'),
  -- Teraform Zero
  (309, 25, 'Eliminates all effects of weather and terrain.'),
  -- Poison Puppeteer
  (310, 25, 'Poisoned Pokémon also become confused.');
