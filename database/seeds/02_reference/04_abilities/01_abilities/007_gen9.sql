-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 9 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Lingering Aroma
  (268, 'lingering-aroma', 'Lingering Aroma', 268, 9, 268),
  -- Seed Sower
  (269, 'seed-sower', 'Seed Sower', 269, 9, 269),
  -- Thermal Exchange
  (270, 'thermal-exchange', 'Thermal Exchange', 270, 9, 270),
  -- Anger Shell
  (271, 'anger-shell', 'Anger Shell', 271, 9, 271),
  -- Purifying Salt
  (272, 'purifying-salt', 'Purifying Salt', 272, 9, 272),
  -- Well-Baked Body
  (273, 'well-baked-body', 'Well-Baked Body', 273, 9, 273),
  -- Wind Rider
  (274, 'wind-rider', 'Wind Rider', 274, 9, 274),
  -- Guard Dog
  (275, 'guard-dog', 'Guard Dog', 275, 9, 275),
  -- Rocky Payload
  (276, 'rocky-payload', 'Rocky Payload', 276, 9, 276),
  -- Wind Power
  (277, 'wind-power', 'Wind Power', 277, 9, 277),
  -- Zero to Hero
  (278, 'zero-to-hero', 'Zero to Hero', 278, 9, 278),
  -- Commander
  (279, 'commander', 'Commander', 279, 9, 279),
  -- Electromorphosis
  (280, 'electromorphosis', 'Electromorphosis', 280, 9, 280),
  -- Protosynthesis
  (281, 'protosynthesis', 'Protosynthesis', 281, 9, 281),
  -- Quark Drive
  (282, 'quark-drive', 'Quark Drive', 282, 9, 282),
  -- Good as Gold
  (283, 'good-as-gold', 'Good as Gold', 283, 9, 283),
  -- Vessel of Ruin
  (284, 'vessel-of-ruin', 'Vessel of Ruin', 284, 9, 284),
  -- Sword of Ruin
  (285, 'sword-of-ruin', 'Sword of Ruin', 285, 9, 285),
  -- Tablets of Ruin
  (286, 'tablets-of-ruin', 'Tablets of Ruin', 286, 9, 286),
  -- Beads of Ruin
  (287, 'beads-of-ruin', 'Beads of Ruin', 287, 9, 287),
  -- Orichalcum Pulse
  (288, 'orichalcum-pulse', 'Orichalcum Pulse', 288, 9, 288),
  -- Hadron Engine
  (289, 'hadron-engine', 'Hadron Engine', 289, 9, 289),
  -- Opportunist
  (290, 'opportunist', 'Opportunist', 290, 9, 290),
  -- Cud Chew
  (291, 'cud-chew', 'Cud Chew', 291, 9, 291),
  -- Sharpness
  (292, 'sharpness', 'Sharpness', 292, 9, 292),
  -- Supreme Overlord
  (293, 'supreme-overlord', 'Supreme Overlord', 293, 9, 293),
  -- Costar
  (294, 'costar', 'Costar', 294, 9, 294),
  -- Toxic Debris
  (295, 'toxic-debris', 'Toxic Debris', 295, 9, 295),
  -- Armor Tail
  (296, 'armor-tail', 'Armor Tail', 296, 9, 296),
  -- Earth Eater
  (297, 'earth-eater', 'Earth Eater', 297, 9, 297),
  -- Mycelium Might
  (298, 'mycelium-might', 'Mycelium Might', 298, 9, 298),
  -- Hospitality
  (299, 'hospitality', 'Hospitality', 299, 9, 299),
  -- Mind's Eye
  (300, 'minds-eye', 'Mind''s Eye', 300, 9, 300),
  -- Embody Aspect
  (301, 'embody-aspect-teal-mask', 'Embody Aspect', 301, 9, 301),
  -- Embody Aspect
  (302, 'embody-aspect-hearthflame-mask', 'Embody Aspect', 302, 9, 302),
  -- Embody Aspect
  (303, 'embody-aspect-wellspring-mask', 'Embody Aspect', 303, 9, 303),
  -- Embody Aspect
  (304, 'embody-aspect-cornerstone-mask', 'Embody Aspect', 304, 9, 304),
  -- Toxic Chain
  (305, 'toxic-chain', 'Toxic Chain', 305, 9, 305),
  -- Supersweet Syrup
  (306, 'supersweet-syrup', 'Supersweet Syrup', 306, 9, 306),
  -- Tera Shift
  (307, 'tera-shift', 'Tera Shift', 307, 9, 307),
  -- Tera Shell
  (308, 'tera-shell', 'Tera Shell', 308, 9, 308),
  -- Teraform Zero
  (309, 'teraform-zero', 'Teraform Zero', 309, 9, 309),
  -- Poison Puppeteer
  (310, 'poison-puppeteer', 'Poison Puppeteer', 310, 9, 310);
