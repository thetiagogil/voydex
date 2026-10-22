-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Evolution and Primal Reversion pages.
-- Cross-check: Serebii X / Y, Omega Ruby / Alpha Sapphire and Legends: Z-A Mega Evolution pages.
-- Machine-readable sanity: PokeAPI Mega forms (types and stats match except Mega Starmie, whose
-- PokeAPI row carries a later game's Attack of 100).
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6, 9
-- Table: reference.pokemon_form_rules
-- Scope: Megas are battle-only and never team selectable.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, battle_mechanic, condition_summary, notes)
VALUES
  -- Mega Venusaur
  (301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Venusaurite.', NULL),
  -- Mega Charizard X
  (601, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Charizardite X.', NULL),
  -- Mega Charizard Y
  (602, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Charizardite Y.', NULL),
  -- Mega Blastoise
  (901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Blastoisinite.', NULL),
  -- Mega Beedrill
  (1501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Beedrillite.', NULL),
  -- Mega Pidgeot
  (1801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Pidgeotite.', NULL),
  -- Mega Alakazam
  (6501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Alakazite.', NULL),
  -- Mega Slowbro
  (8001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Slowbronite.', NULL),
  -- Mega Gengar
  (9401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Gengarite.', NULL),
  -- Mega Kangaskhan
  (11501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Kangaskhanite.', NULL),
  -- Mega Pinsir
  (12701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Pinsirite.', NULL),
  -- Mega Gyarados
  (13001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Gyaradosite.', NULL),
  -- Mega Aerodactyl
  (14201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Aerodactylite.', NULL),
  -- Mega Mewtwo X
  (15001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Mewtwonite X.', NULL),
  -- Mega Mewtwo Y
  (15002, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Mewtwonite Y.', NULL),
  -- Mega Ampharos
  (18101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Ampharosite.', NULL),
  -- Mega Steelix
  (20801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Steelixite.', NULL),
  -- Mega Scizor
  (21201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Scizorite.', NULL),
  -- Mega Heracross
  (21401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Heracronite.', NULL),
  -- Mega Houndoom
  (22901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Houndoominite.', NULL),
  -- Mega Tyranitar
  (24801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Tyranitarite.', NULL),
  -- Mega Sceptile
  (25401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Sceptilite.', NULL),
  -- Mega Blaziken
  (25701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Blazikenite.', NULL),
  -- Mega Swampert
  (26001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Swampertite.', NULL),
  -- Mega Gardevoir
  (28201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Gardevoirite.', NULL),
  -- Mega Sableye
  (30201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Sablenite.', NULL),
  -- Mega Mawile
  (30301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Mawilite.', NULL),
  -- Mega Aggron
  (30601, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Aggronite.', NULL),
  -- Mega Medicham
  (30801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Medichamite.', NULL),
  -- Mega Manectric
  (31001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Manectite.', NULL),
  -- Mega Sharpedo
  (31901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Sharpedonite.', NULL),
  -- Mega Camerupt
  (32301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Cameruptite.', NULL),
  -- Mega Altaria
  (33401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Altarianite.', NULL),
  -- Mega Banette
  (35401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Banettite.', NULL),
  -- Mega Absol
  (35901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Absolite.', NULL),
  -- Mega Glalie
  (36201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Glalitite.', NULL),
  -- Mega Salamence
  (37301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Salamencite.', NULL),
  -- Mega Metagross
  (37601, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Metagrossite.', NULL),
  -- Mega Latias
  (38001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Latiasite.', NULL),
  -- Mega Latios
  (38101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Latiosite.', NULL),
  -- Mega Rayquaza
  (38401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle when it knows Dragon Ascent; needs no Mega Stone.', NULL),
  -- Mega Lopunny
  (42801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Lopunnite.', NULL),
  -- Mega Garchomp
  (44501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Garchompite.', NULL),
  -- Mega Lucario
  (44801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Lucarionite.', NULL),
  -- Mega Abomasnow
  (46001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Abomasite.', NULL),
  -- Mega Gallade
  (47501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Galladite.', NULL),
  -- Mega Audino
  (53101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Audinite.', NULL),
  -- Mega Diancie
  (71901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Diancite.', NULL),
  -- Mega Raichu X
  (2602, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Raichunite X.', NULL),
  -- Mega Raichu Y
  (2603, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Raichunite Y.', NULL),
  -- Mega Clefable
  (3601, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Clefablite.', NULL),
  -- Mega Victreebel
  (7101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Victreebelite.', NULL),
  -- Mega Starmie
  (12101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Starminite.', NULL),
  -- Mega Dragonite
  (14901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Dragoninite.', NULL),
  -- Mega Meganium
  (15401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Meganiumite.', NULL),
  -- Mega Feraligatr
  (16001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Feraligite.', NULL),
  -- Mega Skarmory
  (22701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Skarmorite.', NULL),
  -- Mega Chimecho
  (35801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Chimechite.', NULL),
  -- Mega Absol Z
  (35902, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Absolite Z.', NULL),
  -- Mega Staraptor
  (39801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Staraptite.', NULL),
  -- Mega Garchomp Z
  (44502, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Garchompite Z.', NULL),
  -- Mega Lucario Z
  (44802, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Lucarionite Z.', NULL),
  -- Mega Froslass
  (47801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Froslassite.', NULL),
  -- Mega Heatran
  (48501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Heatranite.', NULL),
  -- Mega Darkrai
  (49101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Darkranite.', NULL),
  -- Mega Emboar
  (50001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Emboarite.', NULL),
  -- Mega Excadrill
  (53001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Excadrite.', NULL),
  -- Mega Scolipede
  (54501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Scolipite.', NULL),
  -- Mega Scrafty
  (56001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Scraftinite.', NULL),
  -- Mega Eelektross
  (60401, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Eelektrossite.', NULL),
  -- Mega Chandelure
  (60901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Chandelurite.', NULL),
  -- Mega Golurk
  (62301, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Golurkite.', NULL),
  -- Mega Chesnaught
  (65201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Chesnaughtite.', NULL),
  -- Mega Delphox
  (65501, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Delphoxite.', NULL),
  -- Mega Greninja
  (65801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Greninjite.', NULL),
  -- Mega Pyroar
  (66801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Pyroarite.', NULL),
  -- Mega Floette
  (67001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Floettite.', NULL),
  -- Mega Meowstic
  (67802, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Meowsticite.', NULL),
  -- Mega Malamar
  (68701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Malamarite.', NULL),
  -- Mega Barbaracle
  (68901, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Barbaracite.', NULL),
  -- Mega Dragalge
  (69101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Dragalgite.', NULL),
  -- Mega Hawlucha
  (70101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Hawluchanite.', NULL),
  -- Mega Zygarde
  (71802, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Zygardite.', NULL),
  -- Mega Crabominable
  (74001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Crabominite.', NULL),
  -- Mega Golisopod
  (76801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Golisopite.', NULL),
  -- Mega Drampa
  (78001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Drampanite.', NULL),
  -- Mega Magearna
  (80101, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Magearnite.', NULL),
  -- Mega Zeraora
  (80701, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Zeraorite.', NULL),
  -- Mega Falinks
  (87001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Falinksite.', NULL),
  -- Mega Scovillain
  (95201, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Scovillainite.', NULL),
  -- Mega Glimmora
  (97001, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Glimmoranite.', NULL),
  -- Mega Tatsugiri
  (97803, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Tatsugirinite.', NULL),
  -- Mega Tatsugiri (Droopy)
  (97804, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Tatsugirinite.', NULL),
  -- Mega Tatsugiri (Stretchy)
  (97805, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Tatsugirinite.', NULL),
  -- Mega Baxcalibur
  (99801, 'battle', FALSE, TRUE, FALSE, FALSE, FALSE, 'mega-evolution', 'Mega Evolves in battle while holding Baxcalibrite.', NULL);
