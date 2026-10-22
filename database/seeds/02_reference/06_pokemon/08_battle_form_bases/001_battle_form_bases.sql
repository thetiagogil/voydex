-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Evolution, Primal Reversion, Ultra Burst and Gigantamax pages.
-- Cross-check: Serebii form pages (Toxtricity, Urshifu, Necrozma, Tatsugiri, Meowstic).
-- Scope note: only the stored forms that reach each battle form. Regional and Partner forms
-- (Alolan Raichu, Galarian Slowbro, Partner Pikachu and Eevee) reach none. Only Eternal
-- Flower Floette reaches Mega Floette, and each Magearna reaches its own Mega. Eternamax
-- Eternatus is never a player's Pokémon, so it has no row. In-battle forms (Zen Mode and the
-- like) are left out.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6-9
-- Table: reference.pokemon_battle_form_bases
-- Scope: Mega, Primal, Ultra Burst and Gigantamax forms to the stored forms that reach them.
INSERT INTO reference.pokemon_battle_form_bases (battle_form_id, base_form_id, species_id)
VALUES
  -- Mega Venusaur <- Venusaur
  (301, 300, 3),
  -- Gigantamax Venusaur <- Venusaur
  (302, 300, 3),
  -- Mega Charizard X <- Charizard
  (601, 600, 6),
  -- Mega Charizard Y <- Charizard
  (602, 600, 6),
  -- Gigantamax Charizard <- Charizard
  (603, 600, 6),
  -- Mega Blastoise <- Blastoise
  (901, 900, 9),
  -- Gigantamax Blastoise <- Blastoise
  (902, 900, 9),
  -- Gigantamax Butterfree <- Butterfree
  (1201, 1200, 12),
  -- Mega Beedrill <- Beedrill
  (1501, 1500, 15),
  -- Mega Pidgeot <- Pidgeot
  (1801, 1800, 18),
  -- Gigantamax Pikachu <- Pikachu
  (2502, 2500, 25),
  -- Mega Raichu X <- Raichu
  (2602, 2600, 26),
  -- Mega Raichu Y <- Raichu
  (2603, 2600, 26),
  -- Mega Clefable <- Clefable
  (3601, 3600, 36),
  -- Gigantamax Meowth <- Meowth
  (5203, 5200, 52),
  -- Mega Alakazam <- Alakazam
  (6501, 6500, 65),
  -- Gigantamax Machamp <- Machamp
  (6801, 6800, 68),
  -- Mega Victreebel <- Victreebel
  (7101, 7100, 71),
  -- Mega Slowbro <- Slowbro
  (8001, 8000, 80),
  -- Mega Gengar <- Gengar
  (9401, 9400, 94),
  -- Gigantamax Gengar <- Gengar
  (9402, 9400, 94),
  -- Gigantamax Kingler <- Kingler
  (9901, 9900, 99),
  -- Mega Kangaskhan <- Kangaskhan
  (11501, 11500, 115),
  -- Mega Starmie <- Starmie
  (12101, 12100, 121),
  -- Mega Pinsir <- Pinsir
  (12701, 12700, 127),
  -- Mega Gyarados <- Gyarados
  (13001, 13000, 130),
  -- Gigantamax Lapras <- Lapras
  (13101, 13100, 131),
  -- Gigantamax Eevee <- Eevee
  (13302, 13300, 133),
  -- Mega Aerodactyl <- Aerodactyl
  (14201, 14200, 142),
  -- Gigantamax Snorlax <- Snorlax
  (14301, 14300, 143),
  -- Mega Dragonite <- Dragonite
  (14901, 14900, 149),
  -- Mega Mewtwo X <- Mewtwo
  (15001, 15000, 150),
  -- Mega Mewtwo Y <- Mewtwo
  (15002, 15000, 150),
  -- Mega Meganium <- Meganium
  (15401, 15400, 154),
  -- Mega Feraligatr <- Feraligatr
  (16001, 16000, 160),
  -- Mega Ampharos <- Ampharos
  (18101, 18100, 181),
  -- Mega Steelix <- Steelix
  (20801, 20800, 208),
  -- Mega Scizor <- Scizor
  (21201, 21200, 212),
  -- Mega Heracross <- Heracross
  (21401, 21400, 214),
  -- Mega Skarmory <- Skarmory
  (22701, 22700, 227),
  -- Mega Houndoom <- Houndoom
  (22901, 22900, 229),
  -- Mega Tyranitar <- Tyranitar
  (24801, 24800, 248),
  -- Mega Sceptile <- Sceptile
  (25401, 25400, 254),
  -- Mega Blaziken <- Blaziken
  (25701, 25700, 257),
  -- Mega Swampert <- Swampert
  (26001, 26000, 260),
  -- Mega Gardevoir <- Gardevoir
  (28201, 28200, 282),
  -- Mega Sableye <- Sableye
  (30201, 30200, 302),
  -- Mega Mawile <- Mawile
  (30301, 30300, 303),
  -- Mega Aggron <- Aggron
  (30601, 30600, 306),
  -- Mega Medicham <- Medicham
  (30801, 30800, 308),
  -- Mega Manectric <- Manectric
  (31001, 31000, 310),
  -- Mega Sharpedo <- Sharpedo
  (31901, 31900, 319),
  -- Mega Camerupt <- Camerupt
  (32301, 32300, 323),
  -- Mega Altaria <- Altaria
  (33401, 33400, 334),
  -- Mega Banette <- Banette
  (35401, 35400, 354),
  -- Mega Chimecho <- Chimecho
  (35801, 35800, 358),
  -- Mega Absol <- Absol
  (35901, 35900, 359),
  -- Mega Absol Z <- Absol
  (35902, 35900, 359),
  -- Mega Glalie <- Glalie
  (36201, 36200, 362),
  -- Mega Salamence <- Salamence
  (37301, 37300, 373),
  -- Mega Metagross <- Metagross
  (37601, 37600, 376),
  -- Mega Latias <- Latias
  (38001, 38000, 380),
  -- Mega Latios <- Latios
  (38101, 38100, 381),
  -- Primal Kyogre <- Kyogre
  (38201, 38200, 382),
  -- Primal Groudon <- Groudon
  (38301, 38300, 383),
  -- Mega Rayquaza <- Rayquaza
  (38401, 38400, 384),
  -- Mega Staraptor <- Staraptor
  (39801, 39800, 398),
  -- Mega Lopunny <- Lopunny
  (42801, 42800, 428),
  -- Mega Garchomp <- Garchomp
  (44501, 44500, 445),
  -- Mega Garchomp Z <- Garchomp
  (44502, 44500, 445),
  -- Mega Lucario <- Lucario
  (44801, 44800, 448),
  -- Mega Lucario Z <- Lucario
  (44802, 44800, 448),
  -- Mega Abomasnow <- Abomasnow
  (46001, 46000, 460),
  -- Mega Gallade <- Gallade
  (47501, 47500, 475),
  -- Mega Froslass <- Froslass
  (47801, 47800, 478),
  -- Mega Heatran <- Heatran
  (48501, 48500, 485),
  -- Mega Darkrai <- Darkrai
  (49101, 49100, 491),
  -- Mega Emboar <- Emboar
  (50001, 50000, 500),
  -- Mega Excadrill <- Excadrill
  (53001, 53000, 530),
  -- Mega Audino <- Audino
  (53101, 53100, 531),
  -- Mega Scolipede <- Scolipede
  (54501, 54500, 545),
  -- Mega Scrafty <- Scrafty
  (56001, 56000, 560),
  -- Gigantamax Garbodor <- Garbodor
  (56901, 56900, 569),
  -- Mega Eelektross <- Eelektross
  (60401, 60400, 604),
  -- Mega Chandelure <- Chandelure
  (60901, 60900, 609),
  -- Mega Golurk <- Golurk
  (62301, 62300, 623),
  -- Mega Chesnaught <- Chesnaught
  (65201, 65200, 652),
  -- Mega Delphox <- Delphox
  (65501, 65500, 655),
  -- Mega Greninja <- Greninja
  (65801, 65800, 658),
  -- Mega Pyroar <- Pyroar
  (66801, 66800, 668),
  -- Mega Floette <- Floette (Eternal Flower)
  (67001, 67002, 670),
  -- Mega Meowstic <- Meowstic
  (67802, 67800, 678),
  -- Mega Meowstic <- Meowstic (Female)
  (67802, 67801, 678),
  -- Mega Malamar <- Malamar
  (68701, 68700, 687),
  -- Mega Barbaracle <- Barbaracle
  (68901, 68900, 689),
  -- Mega Dragalge <- Dragalge
  (69101, 69100, 691),
  -- Mega Hawlucha <- Hawlucha
  (70101, 70100, 701),
  -- Mega Zygarde <- Zygarde
  (71802, 71800, 718),
  -- Mega Diancie <- Diancie
  (71901, 71900, 719),
  -- Mega Crabominable <- Crabominable
  (74001, 74000, 740),
  -- Mega Golisopod <- Golisopod
  (76801, 76800, 768),
  -- Mega Drampa <- Drampa
  (78001, 78000, 780),
  -- Ultra Necrozma <- Necrozma (Dusk Mane)
  (80003, 80001, 800),
  -- Ultra Necrozma <- Necrozma (Dawn Wings)
  (80003, 80002, 800),
  -- Mega Magearna <- Magearna
  (80101, 80100, 801),
  -- Mega Magearna (Original Color) <- Magearna (Original Color)
  (80103, 80102, 801),
  -- Mega Zeraora <- Zeraora
  (80701, 80700, 807),
  -- Gigantamax Melmetal <- Melmetal
  (80901, 80900, 809),
  -- Gigantamax Rillaboom <- Rillaboom
  (81201, 81200, 812),
  -- Gigantamax Cinderace <- Cinderace
  (81501, 81500, 815),
  -- Gigantamax Inteleon <- Inteleon
  (81801, 81800, 818),
  -- Gigantamax Corviknight <- Corviknight
  (82301, 82300, 823),
  -- Gigantamax Orbeetle <- Orbeetle
  (82601, 82600, 826),
  -- Gigantamax Drednaw <- Drednaw
  (83401, 83400, 834),
  -- Gigantamax Coalossal <- Coalossal
  (83901, 83900, 839),
  -- Gigantamax Flapple <- Flapple
  (84101, 84100, 841),
  -- Gigantamax Appletun <- Appletun
  (84201, 84200, 842),
  -- Gigantamax Sandaconda <- Sandaconda
  (84401, 84400, 844),
  -- Gigantamax Toxtricity <- Toxtricity (Amped)
  (84902, 84900, 849),
  -- Gigantamax Toxtricity (Low Key) <- Toxtricity (Low Key)
  (84903, 84901, 849),
  -- Gigantamax Centiskorch <- Centiskorch
  (85101, 85100, 851),
  -- Gigantamax Hatterene <- Hatterene
  (85801, 85800, 858),
  -- Gigantamax Grimmsnarl <- Grimmsnarl
  (86101, 86100, 861),
  -- Gigantamax Alcremie <- Alcremie
  (86901, 86900, 869),
  -- Mega Falinks <- Falinks
  (87001, 87000, 870),
  -- Gigantamax Copperajah <- Copperajah
  (87901, 87900, 879),
  -- Gigantamax Duraludon <- Duraludon
  (88401, 88400, 884),
  -- Gigantamax Urshifu <- Urshifu (Single Strike)
  (89202, 89200, 892),
  -- Gigantamax Urshifu (Rapid Strike) <- Urshifu (Rapid Strike)
  (89203, 89201, 892),
  -- Mega Scovillain <- Scovillain
  (95201, 95200, 952),
  -- Mega Glimmora <- Glimmora
  (97001, 97000, 970),
  -- Mega Tatsugiri <- Tatsugiri (Curly)
  (97803, 97800, 978),
  -- Mega Tatsugiri (Droopy) <- Tatsugiri (Droopy)
  (97804, 97801, 978),
  -- Mega Tatsugiri (Stretchy) <- Tatsugiri (Stretchy)
  (97805, 97802, 978),
  -- Mega Baxcalibur <- Baxcalibur
  (99801, 99800, 998);
