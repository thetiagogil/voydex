-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- G-Max move identity rows from the separate Bulbapedia G-Max move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- G-Max Wildfire
  (10001, 'g-max-wildfire', 'G-Max Wildfire', 4, NULL, 8, 903),
  -- G-Max Befuddle
  (10002, 'g-max-befuddle', 'G-Max Befuddle', 4, NULL, 8, 904),
  -- G-Max Volt Crash
  (10003, 'g-max-volt-crash', 'G-Max Volt Crash', 4, NULL, 8, 905),
  -- G-Max Gold Rush
  (10004, 'g-max-gold-rush', 'G-Max Gold Rush', 4, NULL, 8, 906),
  -- G-Max Chi Strike
  (10005, 'g-max-chi-strike', 'G-Max Chi Strike', 4, NULL, 8, 907),
  -- G-Max Terror
  (10006, 'g-max-terror', 'G-Max Terror', 4, NULL, 8, 908),
  -- G-Max Resonance
  (10007, 'g-max-resonance', 'G-Max Resonance', 4, NULL, 8, 909),
  -- G-Max Cuddle
  (10008, 'g-max-cuddle', 'G-Max Cuddle', 4, NULL, 8, 910),
  -- G-Max Replenish
  (10009, 'g-max-replenish', 'G-Max Replenish', 4, NULL, 8, 911),
  -- G-Max Malodor
  (10010, 'g-max-malodor', 'G-Max Malodor', 4, NULL, 8, 912),
  -- G-Max Stonesurge
  (10011, 'g-max-stonesurge', 'G-Max Stonesurge', 4, NULL, 8, 913),
  -- G-Max Wind Rage
  (10012, 'g-max-wind-rage', 'G-Max Wind Rage', 4, NULL, 8, 914),
  -- G-Max Stun Shock
  (10013, 'g-max-stun-shock', 'G-Max Stun Shock', 4, NULL, 8, 915),
  -- G-Max Finale
  (10014, 'g-max-finale', 'G-Max Finale', 4, NULL, 8, 916),
  -- G-Max Depletion
  (10015, 'g-max-depletion', 'G-Max Depletion', 4, NULL, 8, 917),
  -- G-Max Gravitas
  (10016, 'g-max-gravitas', 'G-Max Gravitas', 4, NULL, 8, 918),
  -- G-Max Volcalith
  (10017, 'g-max-volcalith', 'G-Max Volcalith', 4, NULL, 8, 919),
  -- G-Max Sandblast
  (10018, 'g-max-sandblast', 'G-Max Sandblast', 4, NULL, 8, 920),
  -- G-Max Snooze
  (10019, 'g-max-snooze', 'G-Max Snooze', 4, NULL, 8, 921),
  -- G-Max Tartness
  (10020, 'g-max-tartness', 'G-Max Tartness', 4, NULL, 8, 922),
  -- G-Max Sweetness
  (10021, 'g-max-sweetness', 'G-Max Sweetness', 4, NULL, 8, 923),
  -- G-Max Smite
  (10022, 'g-max-smite', 'G-Max Smite', 4, NULL, 8, 924),
  -- G-Max Steelsurge
  (10023, 'g-max-steelsurge', 'G-Max Steelsurge', 4, NULL, 8, 925),
  -- G-Max Meltdown
  (10024, 'g-max-meltdown', 'G-Max Meltdown', 4, NULL, 8, 926),
  -- G-Max Foam Burst
  (10025, 'g-max-foam-burst', 'G-Max Foam Burst', 4, NULL, 8, 927),
  -- G-Max Centiferno
  (10026, 'g-max-centiferno', 'G-Max Centiferno', 4, NULL, 8, 928),
  -- G-Max Vine Lash
  (10027, 'g-max-vine-lash', 'G-Max Vine Lash', 4, NULL, 8, 929),
  -- G-Max Cannonade
  (10028, 'g-max-cannonade', 'G-Max Cannonade', 4, NULL, 8, 930),
  -- G-Max Drum Solo
  (10029, 'g-max-drum-solo', 'G-Max Drum Solo', 4, NULL, 8, 931),
  -- G-Max Fireball
  (10030, 'g-max-fireball', 'G-Max Fireball', 4, NULL, 8, 932),
  -- G-Max Hydrosnipe
  (10031, 'g-max-hydrosnipe', 'G-Max Hydrosnipe', 4, NULL, 8, 933),
  -- G-Max One Blow
  (10032, 'g-max-one-blow', 'G-Max One Blow', 4, NULL, 8, 934),
  -- G-Max Rapid Flow
  (10033, 'g-max-rapid-flow', 'G-Max Rapid Flow', 4, NULL, 8, 935);
