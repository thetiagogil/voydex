-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Z-Crystal and individual Z-Crystal item pages.
-- Cross-check: Serebii item location pages and PokemonDB Z-Move pages where available.
-- Scope note: missing type Z-Crystal and species-specific Z-Crystals for held-item and Z-Move support.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Additional Z-Crystal catalog rows not covered by the earlier form-item seed.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Normalium Z
  (245, 'normalium-z', 'Normalium Z', 8, 7, NULL, 245, 'Lets the holder turn one of its Normal-type moves into a Z-Move once per battle.'),
  -- Aloraichium Z
  (246, 'aloraichium-z', 'Aloraichium Z', 8, 7, NULL, 246, 'Lets Alolan Raichu turn Thunderbolt into the Z-Move Stoked Sparksurfer once per battle.'),
  -- Decidium Z
  (247, 'decidium-z', 'Decidium Z', 8, 7, NULL, 247, 'Lets Decidueye turn Spirit Shackle into the Z-Move Sinister Arrow Raid once per battle.'),
  -- Eevium Z
  (248, 'eevium-z', 'Eevium Z', 8, 7, NULL, 248, 'Lets Eevee turn Last Resort into the Z-Move Extreme Evoboost once per battle.'),
  -- Incinium Z
  (249, 'incinium-z', 'Incinium Z', 8, 7, NULL, 249, 'Lets Incineroar turn Darkest Lariat into the Z-Move Malicious Moonsault once per battle.'),
  -- Kommonium Z
  (250, 'kommonium-z', 'Kommonium Z', 8, 7, NULL, 250, 'Lets Kommo-o turn Clanging Scales into the Z-Move Clangorous Soulblaze once per battle.'),
  -- Lunalium Z
  (251, 'lunalium-z', 'Lunalium Z', 8, 7, NULL, 251, 'Lets Lunala or Dawn Wings Necrozma turn Moongeist Beam into the Z-Move Menacing Moonraze Maelstrom once per battle.'),
  -- Lycanium Z
  (252, 'lycanium-z', 'Lycanium Z', 8, 7, NULL, 252, 'Lets Lycanroc turn Stone Edge into the Z-Move Splintered Stormshards once per battle.'),
  -- Marshadium Z
  (253, 'marshadium-z', 'Marshadium Z', 8, 7, NULL, 253, 'Lets Marshadow turn Spectral Thief into the Z-Move Soul-Stealing 7-Star Strike once per battle.'),
  -- Mewnium Z
  (254, 'mewnium-z', 'Mewnium Z', 8, 7, NULL, 254, 'Lets Mew turn Psychic into the Z-Move Genesis Supernova once per battle.'),
  -- Mimikium Z
  (255, 'mimikium-z', 'Mimikium Z', 8, 7, NULL, 255, 'Lets Mimikyu turn Play Rough into the Z-Move Let''s Snuggle Forever once per battle.'),
  -- Pikanium Z
  (256, 'pikanium-z', 'Pikanium Z', 8, 7, NULL, 256, 'Lets Pikachu turn Volt Tackle into the Z-Move Catastropika once per battle.'),
  -- Pikashunium Z
  (257, 'pikashunium-z', 'Pikashunium Z', 8, 7, NULL, 257, 'Lets Pikachu in a cap turn Thunderbolt into the Z-Move 10,000,000 Volt Thunderbolt once per battle.'),
  -- Primarium Z
  (258, 'primarium-z', 'Primarium Z', 8, 7, NULL, 258, 'Lets Primarina turn Sparkling Aria into the Z-Move Oceanic Operetta once per battle.'),
  -- Snorlium Z
  (259, 'snorlium-z', 'Snorlium Z', 8, 7, NULL, 259, 'Lets Snorlax turn Giga Impact into the Z-Move Pulverizing Pancake once per battle.'),
  -- Solganium Z
  (260, 'solganium-z', 'Solganium Z', 8, 7, NULL, 260, 'Lets Solgaleo or Dusk Mane Necrozma turn Sunsteel Strike into the Z-Move Searing Sunraze Smash once per battle.'),
  -- Tapunium Z
  (261, 'tapunium-z', 'Tapunium Z', 8, 7, NULL, 261, 'Lets the four Tapu turn Nature''s Madness into the Z-Move Guardian of Alola once per battle.'),
  -- Ultranecrozium Z
  (262, 'ultranecrozium-z', 'Ultranecrozium Z', 8, 7, NULL, 262, 'Lets Dusk Mane or Dawn Wings Necrozma Ultra Burst, then turn Photon Geyser into Light That Burns the Sky.');
