-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 3 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Treecko -> Grovyle
  (252, 25200, 253, 25300, NULL, 3, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 123),
  -- Grovyle -> Sceptile
  (253, 25300, 254, 25400, NULL, 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 124),
  -- Torchic -> Combusken
  (255, 25500, 256, 25600, NULL, 3, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 125),
  -- Combusken -> Blaziken
  (256, 25600, 257, 25700, NULL, 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 126),
  -- Mudkip -> Marshtomp
  (258, 25800, 259, 25900, NULL, 3, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 127),
  -- Marshtomp -> Swampert
  (259, 25900, 260, 26000, NULL, 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 128),
  -- Poochyena -> Mightyena
  (261, 26100, 262, 26200, NULL, 3, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 129),
  -- Zigzagoon -> Linoone
  (263, 26300, 264, 26400, NULL, 3, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 130),
  -- Wurmple -> Silcoon
  (265, 26500, 266, 26600, NULL, 3, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 7; personality/encryption branch to Silcoon', '{"source_trigger":"level-up","branch_rule":"personality-or-encryption","target_branch":"silcoon"}', 131),
  -- Wurmple -> Cascoon
  (265, 26500, 268, 26800, NULL, 3, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 7; personality/encryption branch to Cascoon', '{"source_trigger":"level-up","branch_rule":"personality-or-encryption","target_branch":"cascoon"}', 132),
  -- Silcoon -> Beautifly
  (266, 26600, 267, 26700, NULL, 3, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 133),
  -- Cascoon -> Dustox
  (268, 26800, 269, 26900, NULL, 3, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 134),
  -- Lotad -> Lombre
  (270, 27000, 271, 27100, NULL, 3, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 135),
  -- Lombre -> Ludicolo
  (271, 27100, 272, 27200, NULL, 3, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 136),
  -- Seedot -> Nuzleaf
  (273, 27300, 274, 27400, NULL, 3, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 137),
  -- Nuzleaf -> Shiftry
  (274, 27400, 275, 27500, NULL, 3, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 138),
  -- Taillow -> Swellow
  (276, 27600, 277, 27700, NULL, 3, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 139),
  -- Wingull -> Pelipper
  (278, 27800, 279, 27900, NULL, 3, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 140),
  -- Ralts -> Kirlia
  (280, 28000, 281, 28100, NULL, 3, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 141),
  -- Kirlia -> Gardevoir
  (281, 28100, 282, 28200, NULL, 3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 142),
  -- Surskit -> Masquerain
  (283, 28300, 284, 28400, NULL, 3, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 143),
  -- Shroomish -> Breloom
  (285, 28500, 286, 28600, NULL, 3, 1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 23', '{"source_trigger":"level-up"}', 144),
  -- Slakoth -> Vigoroth
  (287, 28700, 288, 28800, NULL, 3, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 145),
  -- Vigoroth -> Slaking
  (288, 28800, 289, 28900, NULL, 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 146),
  -- Nincada -> Ninjask
  (290, 29000, 291, 29100, NULL, 3, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 147),
  -- Nincada -> Shedinja
  (290, 29000, 292, 29200, NULL, 3, 9, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20; empty party slot', '{"source_trigger":"level-up","requires_empty_party_slot":true,"requires_poke_ball":false}', 148),
  -- Whismur -> Loudred
  (293, 29300, 294, 29400, NULL, 3, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 149),
  -- Loudred -> Exploud
  (294, 29400, 295, 29500, NULL, 3, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 150),
  -- Makuhita -> Hariyama
  (296, 29600, 297, 29700, NULL, 3, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 151),
  -- Azurill -> Marill
  (298, 29800, 183, 18300, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 152),
  -- Skitty -> Delcatty
  (300, 30000, 301, 30100, NULL, 3, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 153),
  -- Aron -> Lairon
  (304, 30400, 305, 30500, NULL, 3, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 154),
  -- Lairon -> Aggron
  (305, 30500, 306, 30600, NULL, 3, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 155),
  -- Meditite -> Medicham
  (307, 30700, 308, 30800, NULL, 3, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 156),
  -- Electrike -> Manectric
  (309, 30900, 310, 31000, NULL, 3, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 157),
  -- Gulpin -> Swalot
  (316, 31600, 317, 31700, NULL, 3, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 158),
  -- Carvanha -> Sharpedo
  (318, 31800, 319, 31900, NULL, 3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 159),
  -- Wailmer -> Wailord
  (320, 32000, 321, 32100, NULL, 3, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 160),
  -- Numel -> Camerupt
  (322, 32200, 323, 32300, NULL, 3, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 33', '{"source_trigger":"level-up"}', 161),
  -- Spoink -> Grumpig
  (325, 32500, 326, 32600, NULL, 3, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 162),
  -- Trapinch -> Vibrava
  (328, 32800, 329, 32900, NULL, 3, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 163),
  -- Vibrava -> Flygon
  (329, 32900, 330, 33000, NULL, 3, 1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 45', '{"source_trigger":"level-up"}', 164),
  -- Cacnea -> Cacturne
  (331, 33100, 332, 33200, NULL, 3, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 165),
  -- Swablu -> Altaria
  (333, 33300, 334, 33400, NULL, 3, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 166),
  -- Barboach -> Whiscash
  (339, 33900, 340, 34000, NULL, 3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 167),
  -- Corphish -> Crawdaunt
  (341, 34100, 342, 34200, NULL, 3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 168),
  -- Baltoy -> Claydol
  (343, 34300, 344, 34400, NULL, 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 169),
  -- Lileep -> Cradily
  (345, 34500, 346, 34600, NULL, 3, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 170),
  -- Anorith -> Armaldo
  (347, 34700, 348, 34800, NULL, 3, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 171),
  -- Feebas -> Milotic
  (349, 34900, 350, 35000, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'beauty 170+', '{"source_trigger":"level-up","min_beauty":170}', 172),
  -- Shuppet -> Banette
  (353, 35300, 354, 35400, NULL, 3, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 173),
  -- Duskull -> Dusclops
  (355, 35500, 356, 35600, NULL, 3, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 174),
  -- Wynaut -> Wobbuffet
  (360, 36000, 202, 20200, NULL, 3, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 175),
  -- Snorunt -> Glalie
  (361, 36100, 362, 36200, NULL, 3, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 176),
  -- Spheal -> Sealeo
  (363, 36300, 364, 36400, NULL, 3, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 177),
  -- Sealeo -> Walrein
  (364, 36400, 365, 36500, NULL, 3, 1, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 44', '{"source_trigger":"level-up"}', 178),
  -- Clamperl -> Huntail
  (366, 36600, 367, 36700, NULL, 3, 3, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 'trade holding Deep Sea Tooth', '{"source_trigger":"trade","held_item":"deep-sea-tooth"}', 179),
  -- Clamperl -> Gorebyss
  (366, 36600, 368, 36800, NULL, 3, 3, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, 'trade holding Deep Sea Scale', '{"source_trigger":"trade","held_item":"deep-sea-scale"}', 180),
  -- Bagon -> Shelgon
  (371, 37100, 372, 37200, NULL, 3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 181),
  -- Shelgon -> Salamence
  (372, 37200, 373, 37300, NULL, 3, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50', '{"source_trigger":"level-up"}', 182),
  -- Beldum -> Metang
  (374, 37400, 375, 37500, NULL, 3, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 183),
  -- Metang -> Metagross
  (375, 37500, 376, 37600, NULL, 3, 1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 45', '{"source_trigger":"level-up"}', 184);

-- ============================================================================
