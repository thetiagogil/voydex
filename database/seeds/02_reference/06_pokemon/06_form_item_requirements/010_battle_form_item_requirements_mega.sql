-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Evolution and Primal Reversion pages.
-- Cross-check: Serebii X / Y, Omega Ruby / Alpha Sapphire and Legends: Z-A Mega Evolution pages.
-- Machine-readable sanity: PokeAPI Mega forms (types and stats match except Mega Starmie, whose
-- PokeAPI row carries a later game's Attack of 100).
-- Scope note: the Mega Stone a Pokémon must hold to Mega Evolve.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 6
-- Table: reference.pokemon_form_item_requirements
-- Scope: Mega Stone to Mega form.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Mega Venusaur -> Venusaurite -> required_held_item
  (301, 263, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Charizard X -> Charizardite X -> required_held_item
  (601, 264, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Charizard Y -> Charizardite Y -> required_held_item
  (602, 265, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Blastoise -> Blastoisinite -> required_held_item
  (901, 266, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Beedrill -> Beedrillite -> required_held_item
  (1501, 267, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Pidgeot -> Pidgeotite -> required_held_item
  (1801, 268, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Alakazam -> Alakazite -> required_held_item
  (6501, 269, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Slowbro -> Slowbronite -> required_held_item
  (8001, 270, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Gengar -> Gengarite -> required_held_item
  (9401, 271, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Kangaskhan -> Kangaskhanite -> required_held_item
  (11501, 272, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Pinsir -> Pinsirite -> required_held_item
  (12701, 273, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Gyarados -> Gyaradosite -> required_held_item
  (13001, 274, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Aerodactyl -> Aerodactylite -> required_held_item
  (14201, 275, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Mewtwo X -> Mewtwonite X -> required_held_item
  (15001, 276, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Mewtwo Y -> Mewtwonite Y -> required_held_item
  (15002, 277, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Ampharos -> Ampharosite -> required_held_item
  (18101, 278, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Steelix -> Steelixite -> required_held_item
  (20801, 279, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Scizor -> Scizorite -> required_held_item
  (21201, 280, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Heracross -> Heracronite -> required_held_item
  (21401, 281, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Houndoom -> Houndoominite -> required_held_item
  (22901, 282, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Tyranitar -> Tyranitarite -> required_held_item
  (24801, 283, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Sceptile -> Sceptilite -> required_held_item
  (25401, 284, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Blaziken -> Blazikenite -> required_held_item
  (25701, 285, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Swampert -> Swampertite -> required_held_item
  (26001, 286, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Gardevoir -> Gardevoirite -> required_held_item
  (28201, 287, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Sableye -> Sablenite -> required_held_item
  (30201, 288, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Mawile -> Mawilite -> required_held_item
  (30301, 289, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Aggron -> Aggronite -> required_held_item
  (30601, 290, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Medicham -> Medichamite -> required_held_item
  (30801, 291, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Manectric -> Manectite -> required_held_item
  (31001, 292, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Sharpedo -> Sharpedonite -> required_held_item
  (31901, 293, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Camerupt -> Cameruptite -> required_held_item
  (32301, 294, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Altaria -> Altarianite -> required_held_item
  (33401, 295, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Banette -> Banettite -> required_held_item
  (35401, 296, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Absol -> Absolite -> required_held_item
  (35901, 297, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Glalie -> Glalitite -> required_held_item
  (36201, 298, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Salamence -> Salamencite -> required_held_item
  (37301, 299, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Metagross -> Metagrossite -> required_held_item
  (37601, 300, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Latias -> Latiasite -> required_held_item
  (38001, 301, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Latios -> Latiosite -> required_held_item
  (38101, 302, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Lopunny -> Lopunnite -> required_held_item
  (42801, 303, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Garchomp -> Garchompite -> required_held_item
  (44501, 304, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Lucario -> Lucarionite -> required_held_item
  (44801, 305, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Abomasnow -> Abomasite -> required_held_item
  (46001, 306, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Gallade -> Galladite -> required_held_item
  (47501, 307, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Audino -> Audinite -> required_held_item
  (53101, 308, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Diancie -> Diancite -> required_held_item
  (71901, 309, 6, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Raichu X -> Raichunite X -> required_held_item
  (2602, 487, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Raichu Y -> Raichunite Y -> required_held_item
  (2603, 488, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Clefable -> Clefablite -> required_held_item
  (3601, 458, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Victreebel -> Victreebelite -> required_held_item
  (7101, 459, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Starmie -> Starminite -> required_held_item
  (12101, 460, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Dragonite -> Dragoninite -> required_held_item
  (14901, 461, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Meganium -> Meganiumite -> required_held_item
  (15401, 462, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Feraligatr -> Feraligite -> required_held_item
  (16001, 463, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Skarmory -> Skarmorite -> required_held_item
  (22701, 464, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Chimecho -> Chimechite -> required_held_item
  (35801, 489, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Absol Z -> Absolite Z -> required_held_item
  (35902, 490, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Staraptor -> Staraptite -> required_held_item
  (39801, 491, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Garchomp Z -> Garchompite Z -> required_held_item
  (44502, 492, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Lucario Z -> Lucarionite Z -> required_held_item
  (44802, 493, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Froslass -> Froslassite -> required_held_item
  (47801, 465, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Heatran -> Heatranite -> required_held_item
  (48501, 466, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Darkrai -> Darkranite -> required_held_item
  (49101, 467, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Emboar -> Emboarite -> required_held_item
  (50001, 468, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Excadrill -> Excadrite -> required_held_item
  (53001, 469, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Scolipede -> Scolipite -> required_held_item
  (54501, 470, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Scrafty -> Scraftinite -> required_held_item
  (56001, 471, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Eelektross -> Eelektrossite -> required_held_item
  (60401, 472, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Chandelure -> Chandelurite -> required_held_item
  (60901, 473, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Golurk -> Golurkite -> required_held_item
  (62301, 494, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Chesnaught -> Chesnaughtite -> required_held_item
  (65201, 474, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Delphox -> Delphoxite -> required_held_item
  (65501, 475, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Greninja -> Greninjite -> required_held_item
  (65801, 476, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Pyroar -> Pyroarite -> required_held_item
  (66801, 477, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Floette -> Floettite -> required_held_item
  (67001, 478, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Meowstic -> Meowsticite -> required_held_item
  (67802, 495, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Malamar -> Malamarite -> required_held_item
  (68701, 479, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Barbaracle -> Barbaracite -> required_held_item
  (68901, 480, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Dragalge -> Dragalgite -> required_held_item
  (69101, 481, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Hawlucha -> Hawluchanite -> required_held_item
  (70101, 482, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Zygarde -> Zygardite -> required_held_item
  (71802, 483, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Crabominable -> Crabominite -> required_held_item
  (74001, 496, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Golisopod -> Golisopite -> required_held_item
  (76801, 497, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Drampa -> Drampanite -> required_held_item
  (78001, 484, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Magearna -> Magearnite -> required_held_item
  (80101, 498, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Magearna (Original Color) -> Magearnite -> required_held_item
  (80103, 498, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Zeraora -> Zeraorite -> required_held_item
  (80701, 485, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Falinks -> Falinksite -> required_held_item
  (87001, 486, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Scovillain -> Scovillainite -> required_held_item
  (95201, 499, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Glimmora -> Glimmoranite -> required_held_item
  (97001, 502, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Tatsugiri -> Tatsugirinite -> required_held_item
  (97803, 501, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Tatsugiri (Droopy) -> Tatsugirinite -> required_held_item
  (97804, 501, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Tatsugiri (Stretchy) -> Tatsugirinite -> required_held_item
  (97805, 501, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.'),
  -- Mega Baxcalibur -> Baxcalibrite -> required_held_item
  (99801, 500, 9, NULL, NULL, NULL, 'required_held_item', NULL, NULL, 'Applies only in games with Mega Evolution.');
