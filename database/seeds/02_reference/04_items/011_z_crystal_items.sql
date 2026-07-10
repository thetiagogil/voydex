-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Z-Crystal and individual Z-Crystal item pages.
-- Cross-check: Serebii item location pages and PokemonDB Z-Move pages where available.
-- Scope note: missing type Z-Crystal and species-specific Z-Crystals for held-item and Z-Move support.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Additional Z-Crystal catalog rows not covered by the earlier form-item seed.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Normalium Z
  (245, 'normalium-z', 'Normalium Z', 8, 7, NULL, 245),
  -- Aloraichium Z
  (246, 'aloraichium-z', 'Aloraichium Z', 8, 7, NULL, 246),
  -- Decidium Z
  (247, 'decidium-z', 'Decidium Z', 8, 7, NULL, 247),
  -- Eevium Z
  (248, 'eevium-z', 'Eevium Z', 8, 7, NULL, 248),
  -- Incinium Z
  (249, 'incinium-z', 'Incinium Z', 8, 7, NULL, 249),
  -- Kommonium Z
  (250, 'kommonium-z', 'Kommonium Z', 8, 7, NULL, 250),
  -- Lunalium Z
  (251, 'lunalium-z', 'Lunalium Z', 8, 7, NULL, 251),
  -- Lycanium Z
  (252, 'lycanium-z', 'Lycanium Z', 8, 7, NULL, 252),
  -- Marshadium Z
  (253, 'marshadium-z', 'Marshadium Z', 8, 7, NULL, 253),
  -- Mewnium Z
  (254, 'mewnium-z', 'Mewnium Z', 8, 7, NULL, 254),
  -- Mimikium Z
  (255, 'mimikium-z', 'Mimikium Z', 8, 7, NULL, 255),
  -- Pikanium Z
  (256, 'pikanium-z', 'Pikanium Z', 8, 7, NULL, 256),
  -- Pikashunium Z
  (257, 'pikashunium-z', 'Pikashunium Z', 8, 7, NULL, 257),
  -- Primarium Z
  (258, 'primarium-z', 'Primarium Z', 8, 7, NULL, 258),
  -- Snorlium Z
  (259, 'snorlium-z', 'Snorlium Z', 8, 7, NULL, 259),
  -- Solganium Z
  (260, 'solganium-z', 'Solganium Z', 8, 7, NULL, 260),
  -- Tapunium Z
  (261, 'tapunium-z', 'Tapunium Z', 8, 7, NULL, 261),
  -- Ultranecrozium Z
  (262, 'ultranecrozium-z', 'Ultranecrozium Z', 8, 7, NULL, 262);
