-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia item, Pokémon form, and evolutionary item pages.
-- Cross-check: Serebii item/form pages and PokemonDB evolution pages.
-- Machine-readable sanity: PokeAPI item IDs only where available.
-- Scope note: reduced item batch required before reference.pokemon_evolution_edges can be seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: evolution items required by Pokémon evolution mechanics.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Moon Stone
  (63, 'moon-stone', 'Moon Stone', 3, 1, 81, 63),
  -- Fire Stone
  (64, 'fire-stone', 'Fire Stone', 3, 1, 82, 64),
  -- Thunder Stone
  (65, 'thunder-stone', 'Thunder Stone', 3, 1, 83, 65),
  -- Water Stone
  (66, 'water-stone', 'Water Stone', 3, 1, 84, 66),
  -- Leaf Stone
  (67, 'leaf-stone', 'Leaf Stone', 3, 1, 85, 67),
  -- Sun Stone
  (68, 'sun-stone', 'Sun Stone', 3, 2, 80, 68),
  -- King's Rock
  (69, 'kings-rock', 'King''s Rock', 3, 2, 198, 69),
  -- Metal Coat
  (70, 'metal-coat', 'Metal Coat', 3, 2, 210, 70),
  -- Dragon Scale
  (71, 'dragon-scale', 'Dragon Scale', 3, 2, 212, 71),
  -- Up-Grade
  (72, 'up-grade', 'Up-Grade', 3, 2, 229, 72),
  -- Deep Sea Tooth
  (73, 'deep-sea-tooth', 'Deep Sea Tooth', 3, 3, 203, 73),
  -- Deep Sea Scale
  (74, 'deep-sea-scale', 'Deep Sea Scale', 3, 3, 204, 74),
  -- Shiny Stone
  (75, 'shiny-stone', 'Shiny Stone', 3, 4, 107, 75),
  -- Dusk Stone
  (76, 'dusk-stone', 'Dusk Stone', 3, 4, 108, 76),
  -- Dawn Stone
  (77, 'dawn-stone', 'Dawn Stone', 3, 4, 109, 77),
  -- Oval Stone
  (78, 'oval-stone', 'Oval Stone', 3, 4, 110, 78),
  -- Protector
  (79, 'protector', 'Protector', 3, 4, 298, 79),
  -- Electirizer
  (80, 'electirizer', 'Electirizer', 3, 4, 299, 80),
  -- Magmarizer
  (81, 'magmarizer', 'Magmarizer', 3, 4, 300, 81),
  -- Dubious Disc
  (82, 'dubious-disc', 'Dubious Disc', 3, 4, 301, 82),
  -- Reaper Cloth
  (83, 'reaper-cloth', 'Reaper Cloth', 3, 4, 302, 83),
  -- Razor Claw
  (84, 'razor-claw', 'Razor Claw', 3, 4, 303, 84),
  -- Razor Fang
  (85, 'razor-fang', 'Razor Fang', 3, 4, 304, 85),
  -- Prism Scale
  (86, 'prism-scale', 'Prism Scale', 3, 5, 580, 86),
  -- Sachet
  (87, 'sachet', 'Sachet', 3, 6, 687, 87),
  -- Whipped Dream
  (88, 'whipped-dream', 'Whipped Dream', 3, 6, 686, 88),
  -- Ice Stone
  (89, 'ice-stone', 'Ice Stone', 3, 7, 885, 89),
  -- Strawberry Sweet
  (90, 'strawberry-sweet', 'Strawberry Sweet', 3, 8, 1167, 90),
  -- Love Sweet
  (91, 'love-sweet', 'Love Sweet', 3, 8, 1168, 91),
  -- Berry Sweet
  (92, 'berry-sweet', 'Berry Sweet', 3, 8, 1169, 92),
  -- Clover Sweet
  (93, 'clover-sweet', 'Clover Sweet', 3, 8, 1170, 93),
  -- Flower Sweet
  (94, 'flower-sweet', 'Flower Sweet', 3, 8, 1171, 94),
  -- Star Sweet
  (95, 'star-sweet', 'Star Sweet', 3, 8, 1172, 95),
  -- Ribbon Sweet
  (96, 'ribbon-sweet', 'Ribbon Sweet', 3, 8, 1173, 96),
  -- Sweet Apple
  (97, 'sweet-apple', 'Sweet Apple', 3, 8, 1174, 97),
  -- Tart Apple
  (98, 'tart-apple', 'Tart Apple', 3, 8, 1175, 98),
  -- Cracked Pot
  (99, 'cracked-pot', 'Cracked Pot', 3, 8, 1311, 99),
  -- Chipped Pot
  (100, 'chipped-pot', 'Chipped Pot', 3, 8, 1312, 100),
  -- Galarica Cuff
  (101, 'galarica-cuff', 'Galarica Cuff', 3, 8, 1633, 101),
  -- Galarica Wreath
  (102, 'galarica-wreath', 'Galarica Wreath', 3, 8, 1643, 102),
  -- Scroll of Darkness
  (103, 'scroll-of-darkness', 'Scroll of Darkness', 3, 9, 1675, 103),
  -- Scroll of Waters
  (104, 'scroll-of-waters', 'Scroll of Waters', 3, 9, 1676, 104),
  -- Linking Cord
  (105, 'linking-cord', 'Linking Cord', 3, 8, 2160, 105),
  -- Black Augurite
  (106, 'black-augurite', 'Black Augurite', 3, 8, 2230, 106),
  -- Peat Block
  (107, 'peat-block', 'Peat Block', 3, 8, 2231, 107),
  -- Malicious Armor
  (108, 'malicious-armor', 'Malicious Armor', 3, 9, 1677, 108),
  -- Auspicious Armor
  (109, 'auspicious-armor', 'Auspicious Armor', 3, 9, 2045, 109),
  -- Leader's Crest
  (110, 'leaders-crest', 'Leader''s Crest', 3, 9, 2046, 110),
  -- Gimmighoul Coin
  (111, 'gimmighoul-coin', 'Gimmighoul Coin', 3, 9, 1938, 111),
  -- Syrupy Apple
  (112, 'syrupy-apple', 'Syrupy Apple', 3, 9, 2109, 112),
  -- Unremarkable Teacup
  (113, 'unremarkable-teacup', 'Unremarkable Teacup', 3, 9, 2110, 113),
  -- Masterpiece Teacup
  (114, 'masterpiece-teacup', 'Masterpiece Teacup', 3, 9, 2111, 114),
  -- Metal Alloy
  (115, 'metal-alloy', 'Metal Alloy', 3, 9, 2232, 115);
