-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels: 10% Forme Lv. 33 is confirmed by one source only; Lv. 57 at Jacinthe's tournament is cross-checked with Thonky.
-- L's only battle (Main Mission 42) and Rogue Mega Absol: Bulbapedia, cross-checked with Nintendo Life and Deltia's Gaming.
-- Promotion matches and Jacinthe's tournament rounds: Bulbapedia Z-A Royale and trainer pages, cross-checked with Serebii, Thonky and Nintendo Life.
-- Rogue Megas of Main Missions 11 to 34 and their partners: Bulbapedia Rogue Mega Evolution page,
-- places cross-checked with Serebii's Mega Stone locations.
-- Scope: Pokémon Legends: Z-A milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Legends: Z-A's battle milestones to their opponents, in the order
-- they are fought. location_id is set only where the battle is fought away
-- from its milestone's place, on the way to it.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Join Team MZ -> Taunie / Urbain
  (260003, 26001, 26, 'battle-opponent', 1, 'In front of the hotel', NULL),
  -- Reach Rank Y -> Zach
  (260013, 26007, 26, 'battle-opponent', 1, NULL, NULL),
  -- Reach Rank X -> Yvon
  (260014, 26008, 26, 'battle-opponent', 2, NULL, NULL),
  -- Reach Rank W -> Xavi
  (260015, 26009, 26, 'battle-opponent', 2, NULL, NULL),
  -- Reach Rank V -> Rintaro
  (260016, 26010, 26, 'battle-opponent', 2, NULL, NULL),
  -- Unlock Mega Evolution -> Taunie / Urbain
  (260005, 26001, 26, 'battle-opponent', 2, 'In front of the hotel, the next morning', NULL),
  -- Reach Rank F -> Vinnie
  (260017, 26011, 26, 'battle-opponent', 1, 'On the battle court by the building. His Drampa Mega Evolves', NULL),
  -- Reach Rank E -> Zygarde (Hotel Z)
  (260018, 26004, 26, 'battle-opponent', 1, 'Outside the hotel, after the first three Rogue Mega Evolutions.', 437),
  -- Reach Rank E -> Canari
  (260018, 26012, 26, 'battle-opponent', 4, 'Her Eelektross Mega Evolves', NULL),
  -- Reach Rank D -> Ivor
  (260019, 26013, 26, 'battle-opponent', 2, 'His Falinks Mega Evolves', NULL),
  -- Reach Rank C -> Corbeau
  (260020, 26014, 26, 'battle-opponent', 1, 'His Scolipede Mega Evolves', NULL),
  -- Reach Rank A -> Grisham
  (260021, 26016, 26, 'battle-opponent', 3, 'After the labs. His Charizard Mega Evolves into Mega Charizard X', NULL),
  -- Stop the Ange Crisis -> Taunie / Urbain
  (260008, 26001, 26, 'battle-opponent', 1, 'In front of Prism Tower', NULL),
  -- To Keep the World in Balance -> Lysandre
  (260012, 26003, 26, 'battle-opponent', 1, 'At Hotel Z, where he battles you as L', NULL),
  -- To Keep the World in Balance -> Zygarde
  (260012, 26004, 26, 'battle-opponent', 2, 'Beneath Prism Tower. You can skip this battle.', NULL),
  -- The One That Gives -> Xerneas
  (260010, 26005, 26, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- The One That Takes -> Yveltal
  (260011, 26006, 26, 'battle-opponent', 1, 'On the roof of the Galerie de la Lune. You can skip this battle.', NULL),
  -- Rogue Mega Slowbro -> Rogue Mega Slowbro
  (260022, 26017, 26, 'battle-opponent', 1, 'Taunie or Urbain fights beside you', NULL),
  -- Rogue Mega Camerupt -> Rogue Mega Camerupt
  (260023, 26018, 26, 'battle-opponent', 1, 'Lida fights beside you', NULL),
  -- Rogue Mega Victreebel -> Rogue Mega Victreebel
  (260024, 26019, 26, 'battle-opponent', 1, 'Naveen fights beside you', NULL),
  -- Rogue Mega Beedrill -> Rogue Mega Beedrill
  (260025, 26020, 26, 'battle-opponent', 1, 'Taunie or Urbain fights beside you', NULL),
  -- Rogue Mega Hawlucha -> Rogue Mega Hawlucha
  (260026, 26021, 26, 'battle-opponent', 1, 'Lida fights beside you', NULL),
  -- Rogue Mega Banette -> Rogue Mega Banette
  (260027, 26022, 26, 'battle-opponent', 1, 'Naveen fights beside you', NULL),
  -- Rogue Mega Mawile -> Rogue Mega Mawile
  (260028, 26023, 26, 'battle-opponent', 2, 'Taunie or Urbain fights beside you', NULL),
  -- Rogue Mega Barbaracle -> Rogue Mega Barbaracle
  (260029, 26024, 26, 'battle-opponent', 1, 'Lida fights beside you', NULL),
  -- Rogue Mega Ampharos -> Rogue Mega Ampharos
  (260030, 26025, 26, 'battle-opponent', 2, 'Naveen fights beside you', NULL),
  -- Rogue Mega Froslass -> Rogue Mega Froslass
  (260031, 26026, 26, 'battle-opponent', 3, 'Naveen fights beside you', NULL),
  -- Rogue Mega Altaria -> Rogue Mega Altaria
  (260032, 26027, 26, 'battle-opponent', 1, 'Lida fights beside you', NULL),
  -- Rogue Mega Venusaur -> Rogue Mega Venusaur
  (260033, 26028, 26, 'battle-opponent', 1, 'Taunie or Urbain fights beside you', NULL),
  -- Rogue Mega Dragonite -> Rogue Mega Dragonite
  (260034, 26029, 26, 'battle-opponent', 1, 'Taunie or Urbain fights beside you', NULL),
  -- Rogue Mega Tyranitar -> Rogue Mega Tyranitar
  (260035, 26030, 26, 'battle-opponent', 1, 'Naveen fights beside you', NULL),
  -- Rogue Mega Starmie -> Rogue Mega Starmie
  (260036, 26031, 26, 'battle-opponent', 2, 'Lida fights beside you', NULL),
  -- Reach Rank B -> Canari
  (260006, 26012, 26, 'battle-opponent', 2, 'Hotel Richissime, round 1 of Jacinthe''s tournament (Main Mission 30)', NULL),
  -- Reach Rank B -> Ivor
  (260006, 26013, 26, 'battle-opponent', 3, 'Hotel Richissime, round 2 of Jacinthe''s tournament (Main Mission 30)', NULL),
  -- Reach Rank B -> Corbeau
  (260006, 26014, 26, 'battle-opponent', 4, 'Hotel Richissime, the semifinal of Jacinthe''s tournament (Main Mission 30)', NULL),
  -- Reach Rank B -> Zygarde
  (260006, 26004, 26, 'battle-opponent', 5, 'Hotel Richissime, when L brings Zygarde to Jacinthe''s tournament (Main Mission 30, before the final)', NULL),
  -- Reach Rank B -> Jacinthe
  (260006, 26015, 26, 'battle-opponent', 6, 'Hotel Richissime, the tournament final and promotion match (Main Mission 30). Her Clefable Mega Evolves.', NULL);

-- Battles with their own rules for the player's side: player_side.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  player_side
) VALUES
  -- Unlock Mega Evolution -> Rogue Mega Absol (Jaune Sector 6)
  (260005, 26002, 26, 'battle-opponent', 1, 'On the rooftops. You battle with AZ''s Lucario.', 988, 'lent-pokemon');

-- Battles against named characters on the way to a Story point.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Reach Rank X -> Emma
  (260014, 26034, 26, 'battle-opponent', 1, 'Main Mission 5. She shows you what Mega Evolution is.', 985),
  -- Reach Rank W -> Naveen
  (260015, 26033, 26, 'battle-opponent', 1, 'In front of the hotel (Main Mission 7).', 437),
  -- Reach Rank V -> Lida
  (260016, 26032, 26, 'battle-opponent', 1, 'In the empty lot in the back streets where she practises (Main Mission 8).', 437),
  -- Reach Rank E -> Naveen
  (260018, 26033, 26, 'battle-opponent', 2, 'He battles you before he tells you what he knows about Canari (Main Mission 14).', 437),
  -- Reach Rank E -> Tarragon
  (260018, 26035, 26, 'battle-opponent', 3, 'In the garage, after you win the Canari Quiz Whiz Contest. His Excadrill Mega Evolves.', NULL),
  -- Reach Rank D -> Gwynn
  (260019, 26036, 26, 'battle-opponent', 1, 'In the deepest part of the sewers, before Ivor''s match. Her Chandelure Mega Evolves.', NULL),
  -- Rogue Mega Mawile -> Philippe
  (260028, 26037, 26, 'battle-opponent', 1, 'In front of the office (Main Mission 20). His Skarmory Mega Evolves.', 981),
  -- Rogue Mega Ampharos -> Gwynn
  (260030, 26036, 26, 'battle-opponent', 1, 'On your way to the Ampharos. She wants to avenge Canari''s loss. Her Chandelure Mega Evolves.', NULL),
  -- Rogue Mega Froslass -> Lida
  (260031, 26032, 26, 'battle-opponent', 1, 'On the battle court in Vert Sector 4, with her new Mega Ring (Main Mission 25).', 437),
  -- Rogue Mega Froslass -> Naveen
  (260031, 26033, 26, 'battle-opponent', 2, 'On the battle court in Vert Sector 4, right after Lida. His Scrafty Mega Evolves.', 437),
  -- Reach Rank B -> Lebanne
  (260006, 26038, 26, 'battle-opponent', 1, 'At Hotel Z, sent by Jacinthe to press Team MZ into her tournament (Main Mission 26). Her Dragalge Mega Evolves.', 437),
  -- Rogue Mega Starmie -> Philippe
  (260036, 26037, 26, 'battle-opponent', 1, 'He blocks your way to the Starmie and battles you himself. His Skarmory Mega Evolves.', NULL),
  -- Reach Rank A -> Emma
  (260021, 26034, 26, 'battle-opponent', 1, 'She tells you what she knows about Grisham if you win. Her Malamar Mega Evolves.', 985),
  -- Reach Rank A -> Griselle
  (260021, 26039, 26, 'battle-opponent', 2, 'Outside Lysandre Café, before you go in. Her Pyroar Mega Evolves.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Gengar
  (260008, 26040, 26, 'battle-opponent', 2, 'On Vernal Avenue, with Lida and Naveen fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Heracross
  (260008, 26041, 26, 'battle-opponent', 3, 'On Vernal Avenue, with Lida and Naveen fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Kangaskhan
  (260008, 26042, 26, 'battle-opponent', 4, 'On Vert Street, with Ivor and Gwynn fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Pidgeot
  (260008, 26043, 26, 'battle-opponent', 5, 'On Vert Street, with Ivor and Gwynn fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Garchomp
  (260008, 26044, 26, 'battle-opponent', 6, 'On Vert Street, with Ivor and Gwynn fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Blastoise
  (260008, 26045, 26, 'battle-opponent', 7, 'On Jaune Street, with Canari fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Steelix
  (260008, 26046, 26, 'battle-opponent', 8, 'On Jaune Street, with Canari fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Aggron
  (260008, 26047, 26, 'battle-opponent', 9, 'In Jaune Sector 3, with Lebanne fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Salamence
  (260008, 26048, 26, 'battle-opponent', 10, 'In Jaune Sector 3, with Lebanne fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Gardevoir
  (260008, 26049, 26, 'battle-opponent', 11, 'At the Galerie de la Lune, with Corbeau fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Gallade
  (260008, 26050, 26, 'battle-opponent', 12, 'At the Galerie de la Lune, with Corbeau fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Alakazam
  (260008, 26051, 26, 'battle-opponent', 13, 'In Magenta Sector 2, with Griselle and Grisham fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Aerodactyl
  (260008, 26052, 26, 'battle-opponent', 14, 'In Magenta Sector 2, with Griselle and Grisham fighting beside you.', NULL),
  -- Stop the Ange Crisis -> Rogue Mega Metagross
  (260008, 26053, 26, 'battle-opponent', 15, 'In Magenta Sector 2, with Griselle and Grisham fighting beside you.', NULL);
