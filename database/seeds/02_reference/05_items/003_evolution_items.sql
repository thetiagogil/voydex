-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia item, Pokémon form, and evolutionary item pages.
-- Cross-check: Serebii item/form pages and PokemonDB evolution pages.
-- Machine-readable sanity: PokeAPI item IDs only where available.
-- Scope note: reduced item batch required before reference.pokemon_evolution_edges can be seeded.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: evolution items required by Pokémon evolution mechanics.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Moon Stone
  (63, 'moon-stone', 'Moon Stone', 3, 1, 81, 63, NULL),
  -- Fire Stone
  (64, 'fire-stone', 'Fire Stone', 3, 1, 82, 64, NULL),
  -- Thunder Stone
  (65, 'thunder-stone', 'Thunder Stone', 3, 1, 83, 65, NULL),
  -- Water Stone
  (66, 'water-stone', 'Water Stone', 3, 1, 84, 66, NULL),
  -- Leaf Stone
  (67, 'leaf-stone', 'Leaf Stone', 3, 1, 85, 67, NULL),
  -- Sun Stone
  (68, 'sun-stone', 'Sun Stone', 3, 2, 80, 68, NULL),
  -- King's Rock
  (69, 'kings-rock', 'King''s Rock', 3, 2, 198, 69, 'Gives the holder''s attacks a 10% chance to make the target flinch. Poliwhirl and Slowpoke evolve when traded holding it.'),
  -- Metal Coat
  (70, 'metal-coat', 'Metal Coat', 3, 2, 210, 70, 'Raises the power of Steel-type moves by 20%. Onix and Scyther evolve when traded holding it.'),
  -- Dragon Scale
  (71, 'dragon-scale', 'Dragon Scale', 3, 2, 212, 71, 'Seadra evolves into Kingdra when traded while holding it. In Gen 2 it also raised the power of Dragon-type moves by 10%.'),
  -- Up-Grade
  (72, 'up-grade', 'Up-Grade', 3, 2, 229, 72, 'Porygon evolves into Porygon2 when traded while holding it; no effect in battle.'),
  -- Deep Sea Tooth
  (73, 'deep-sea-tooth', 'Deep Sea Tooth', 3, 3, 203, 73, 'Doubles Clamperl''s Sp. Atk. Clamperl evolves into Huntail when traded holding it.'),
  -- Deep Sea Scale
  (74, 'deep-sea-scale', 'Deep Sea Scale', 3, 3, 204, 74, 'Doubles Clamperl''s Sp. Def. Clamperl evolves into Gorebyss when traded holding it.'),
  -- Shiny Stone
  (75, 'shiny-stone', 'Shiny Stone', 3, 4, 107, 75, NULL),
  -- Dusk Stone
  (76, 'dusk-stone', 'Dusk Stone', 3, 4, 108, 76, NULL),
  -- Dawn Stone
  (77, 'dawn-stone', 'Dawn Stone', 3, 4, 109, 77, NULL),
  -- Oval Stone
  (78, 'oval-stone', 'Oval Stone', 3, 4, 110, 78, 'Happiny evolves into Chansey when it levels up holding it during the day.'),
  -- Protector
  (79, 'protector', 'Protector', 3, 4, 298, 79, 'Rhydon evolves into Rhyperior when traded while holding it; no effect in battle.'),
  -- Electirizer
  (80, 'electirizer', 'Electirizer', 3, 4, 299, 80, 'Electabuzz evolves into Electivire when traded while holding it; no effect in battle.'),
  -- Magmarizer
  (81, 'magmarizer', 'Magmarizer', 3, 4, 300, 81, 'Magmar evolves into Magmortar when traded while holding it; no effect in battle.'),
  -- Dubious Disc
  (82, 'dubious-disc', 'Dubious Disc', 3, 4, 301, 82, 'Porygon2 evolves into Porygon-Z when traded while holding it; no effect in battle.'),
  -- Reaper Cloth
  (83, 'reaper-cloth', 'Reaper Cloth', 3, 4, 302, 83, 'Dusclops evolves into Dusknoir when traded while holding it; no effect in battle.'),
  -- Razor Claw
  (84, 'razor-claw', 'Razor Claw', 3, 4, 303, 84, 'Raises the holder''s critical-hit ratio by one stage. Sneasel evolves when it levels up holding it at night, Hisuian Sneasel by day.'),
  -- Razor Fang
  (85, 'razor-fang', 'Razor Fang', 3, 4, 304, 85, 'Gives the holder''s attacks a 10% chance to make the target flinch. Gligar evolves when it levels up holding it at night.'),
  -- Prism Scale
  (86, 'prism-scale', 'Prism Scale', 3, 5, 580, 86, 'Feebas evolves into Milotic when traded while holding it; no effect in battle.'),
  -- Sachet
  (87, 'sachet', 'Sachet', 3, 6, 687, 87, 'Spritzee evolves into Aromatisse when traded while holding it; no effect in battle.'),
  -- Whipped Dream
  (88, 'whipped-dream', 'Whipped Dream', 3, 6, 686, 88, 'Swirlix evolves into Slurpuff when traded while holding it; no effect in battle.'),
  -- Ice Stone
  (89, 'ice-stone', 'Ice Stone', 3, 7, 885, 89, NULL),
  -- Strawberry Sweet
  (90, 'strawberry-sweet', 'Strawberry Sweet', 3, 8, 1167, 90, 'Milcery holding it evolves into Alcremie topped with a strawberry when you spin around.'),
  -- Love Sweet
  (91, 'love-sweet', 'Love Sweet', 3, 8, 1168, 91, 'Milcery holding it evolves into Alcremie topped with a heart when you spin around.'),
  -- Berry Sweet
  (92, 'berry-sweet', 'Berry Sweet', 3, 8, 1169, 92, 'Milcery holding it evolves into Alcremie topped with a berry when you spin around.'),
  -- Clover Sweet
  (93, 'clover-sweet', 'Clover Sweet', 3, 8, 1170, 93, 'Milcery holding it evolves into Alcremie topped with a clover when you spin around.'),
  -- Flower Sweet
  (94, 'flower-sweet', 'Flower Sweet', 3, 8, 1171, 94, 'Milcery holding it evolves into Alcremie topped with a flower when you spin around.'),
  -- Star Sweet
  (95, 'star-sweet', 'Star Sweet', 3, 8, 1172, 95, 'Milcery holding it evolves into Alcremie topped with a star when you spin around.'),
  -- Ribbon Sweet
  (96, 'ribbon-sweet', 'Ribbon Sweet', 3, 8, 1173, 96, 'Milcery holding it evolves into Alcremie topped with a ribbon when you spin around.'),
  -- Sweet Apple
  (97, 'sweet-apple', 'Sweet Apple', 3, 8, 1174, 97, NULL),
  -- Tart Apple
  (98, 'tart-apple', 'Tart Apple', 3, 8, 1175, 98, NULL),
  -- Cracked Pot
  (99, 'cracked-pot', 'Cracked Pot', 3, 8, 1311, 99, NULL),
  -- Chipped Pot
  (100, 'chipped-pot', 'Chipped Pot', 3, 8, 1312, 100, NULL),
  -- Galarica Cuff
  (101, 'galarica-cuff', 'Galarica Cuff', 3, 8, 1633, 101, NULL),
  -- Galarica Wreath
  (102, 'galarica-wreath', 'Galarica Wreath', 3, 8, 1643, 102, NULL),
  -- Scroll of Darkness
  (103, 'scroll-of-darkness', 'Scroll of Darkness', 3, 9, 1675, 103, NULL),
  -- Scroll of Waters
  (104, 'scroll-of-waters', 'Scroll of Waters', 3, 9, 1676, 104, NULL),
  -- Linking Cord
  (105, 'linking-cord', 'Linking Cord', 3, 8, 2160, 105, NULL),
  -- Black Augurite
  (106, 'black-augurite', 'Black Augurite', 3, 8, 2230, 106, NULL),
  -- Peat Block
  (107, 'peat-block', 'Peat Block', 3, 8, 2231, 107, NULL),
  -- Malicious Armor
  (108, 'malicious-armor', 'Malicious Armor', 3, 9, 1677, 108, NULL),
  -- Auspicious Armor
  (109, 'auspicious-armor', 'Auspicious Armor', 3, 9, 2045, 109, NULL),
  -- Leader's Crest
  (110, 'leaders-crest', 'Leader''s Crest', 3, 9, 2046, 110, 'Carried by Bisharp that lead Pawniard; a Bisharp that defeats three of them evolves into Kingambit.'),
  -- Gimmighoul Coin
  (111, 'gimmighoul-coin', 'Gimmighoul Coin', 3, 9, 1938, 111, NULL),
  -- Syrupy Apple
  (112, 'syrupy-apple', 'Syrupy Apple', 3, 9, 2109, 112, NULL),
  -- Unremarkable Teacup
  (113, 'unremarkable-teacup', 'Unremarkable Teacup', 3, 9, 2110, 113, NULL),
  -- Masterpiece Teacup
  (114, 'masterpiece-teacup', 'Masterpiece Teacup', 3, 9, 2111, 114, NULL),
  -- Metal Alloy
  (115, 'metal-alloy', 'Metal Alloy', 3, 9, 2232, 115, NULL);
