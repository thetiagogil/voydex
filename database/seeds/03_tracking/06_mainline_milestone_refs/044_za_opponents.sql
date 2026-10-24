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
-- Links Pokémon Legends: Z-A battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Join Team MZ -> Taunie / Urbain
  (260003, 26001, 26, 'battle-opponent', 1, 'In front of Hotel Z'),
  -- Unlock Mega Evolution -> Taunie / Urbain
  (260005, 26001, 26, 'battle-opponent', 2, 'Hotel Z'),
  -- Stop the Ange Crisis -> Taunie / Urbain
  (260008, 26001, 26, 'battle-opponent', 1, 'Centrico Plaza, in front of Prism Tower'),
  -- Reach Rank Y -> Zach
  (260013, 26007, 26, 'battle-opponent', 1, 'South Boulevard (Main Mission 4)'),
  -- Reach Rank X -> Yvon
  (260014, 26008, 26, 'battle-opponent', 1, 'Bleu Plaza (Main Mission 6)'),
  -- Reach Rank W -> Xavi
  (260015, 26009, 26, 'battle-opponent', 1, 'Academie Etoile (Main Mission 7)'),
  -- Reach Rank V -> Rintaro
  (260016, 26010, 26, 'battle-opponent', 1, 'Restaurant Le Nah (Main Mission 8)'),
  -- Reach Rank F -> Vinnie
  (260017, 26011, 26, 'battle-opponent', 1, 'Battle court by Quasartico Inc. (Main Mission 10, after the rival battle at Hotel Z). His Drampa Mega Evolves.'),
  -- Reach Rank E -> Zygarde
  (260018, 26004, 26, 'battle-opponent', 1, 'Outside Hotel Z, after the Rogue Mega Slowbro, Camerupt and Victreebel (Main Missions 11 to 13)'),
  -- Reach Rank E -> Canari
  (260018, 26012, 26, 'battle-opponent', 2, 'Racine Construction (Main Mission 14). Her Eelektross Mega Evolves.'),
  -- Reach Rank D -> Ivor
  (260019, 26013, 26, 'battle-opponent', 1, 'Justice Dojo (Main Mission 19). His Falinks Mega Evolves.'),
  -- Reach Rank C -> Corbeau
  (260020, 26014, 26, 'battle-opponent', 1, 'Rust Syndicate Office (Main Mission 24). His Scolipede Mega Evolves.'),
  -- Reach Rank B -> Canari
  (260006, 26012, 26, 'battle-opponent', 1, 'Hotel Richissime, round 1 of Jacinthe''s tournament (Main Mission 30)'),
  -- Reach Rank B -> Ivor
  (260006, 26013, 26, 'battle-opponent', 2, 'Hotel Richissime, round 2 of Jacinthe''s tournament (Main Mission 30)'),
  -- Reach Rank B -> Corbeau
  (260006, 26014, 26, 'battle-opponent', 3, 'Hotel Richissime, the semifinal of Jacinthe''s tournament (Main Mission 30)'),
  -- Reach Rank B -> Zygarde
  (260006, 26004, 26, 'battle-opponent', 4, 'Hotel Richissime, when L brings Zygarde to Jacinthe''s tournament (Main Mission 30, before the final)'),
  -- Reach Rank B -> Jacinthe
  (260006, 26015, 26, 'battle-opponent', 5, 'Hotel Richissime, the tournament final and promotion match (Main Mission 30). Her Clefable Mega Evolves.'),
  -- Reach Rank A -> Grisham
  (260021, 26016, 26, 'battle-opponent', 1, 'End of Main Mission 35, after Lysandre Labs. His Charizard Mega Evolves into Mega Charizard X.'),
  -- The One That Gives -> Xerneas
  (260010, 26005, 26, 'battle-opponent', 1, 'Wild Zone 11. You can skip this battle.'),
  -- The One That Takes -> Yveltal
  (260011, 26006, 26, 'battle-opponent', 1, 'Rouge Sector 2, roof of the Galerie de la Lune. You can skip this battle.'),
  -- To Keep the World in Balance -> Lysandre
  (260012, 26003, 26, 'battle-opponent', 1, 'Hotel Z, where he battles you as L (Main Mission 42)'),
  -- To Keep the World in Balance -> Zygarde
  (260012, 26004, 26, 'battle-opponent', 2, 'Wild Zone 20, beneath Prism Tower. You can skip this battle.'),
  -- Rogue Mega Slowbro -> Rogue Mega Slowbro
  (260022, 26017, 26, 'battle-opponent', 1, 'Aymlis Park (Main Mission 11). Taunie or Urbain fights beside you.'),
  -- Rogue Mega Camerupt -> Rogue Mega Camerupt
  (260023, 26018, 26, 'battle-opponent', 1, 'Jaune Sector 3 (Main Mission 12). Lida fights beside you.'),
  -- Rogue Mega Victreebel -> Rogue Mega Victreebel
  (260024, 26019, 26, 'battle-opponent', 1, 'Magenta Sector 9 (Main Mission 13). Naveen fights beside you.'),
  -- Rogue Mega Beedrill -> Rogue Mega Beedrill
  (260025, 26020, 26, 'battle-opponent', 1, 'Vert Sector 5 (Main Mission 16). Taunie or Urbain fights beside you.'),
  -- Rogue Mega Hawlucha -> Rogue Mega Hawlucha
  (260026, 26021, 26, 'battle-opponent', 1, 'Magenta Sector 3 (Main Mission 17). Lida fights beside you.'),
  -- Rogue Mega Banette -> Rogue Mega Banette
  (260027, 26022, 26, 'battle-opponent', 1, 'Jaune Sector 9 (Main Mission 18). Naveen fights beside you.'),
  -- Rogue Mega Mawile -> Rogue Mega Mawile
  (260028, 26023, 26, 'battle-opponent', 1, 'Magenta Sector 6 (Main Mission 21). Taunie or Urbain fights beside you.'),
  -- Rogue Mega Barbaracle -> Rogue Mega Barbaracle
  (260029, 26024, 26, 'battle-opponent', 1, 'Bleu Sector 5 (Main Mission 22). Lida fights beside you.'),
  -- Rogue Mega Ampharos -> Rogue Mega Ampharos
  (260030, 26025, 26, 'battle-opponent', 1, 'Rouge Sector 6 (Main Mission 23). Naveen fights beside you.'),
  -- Rogue Mega Froslass -> Rogue Mega Froslass
  (260031, 26026, 26, 'battle-opponent', 1, 'Aymlis Park (Main Mission 27). Naveen fights beside you.'),
  -- Rogue Mega Altaria -> Rogue Mega Altaria
  (260032, 26027, 26, 'battle-opponent', 1, 'Magenta Sector 4 (Main Mission 28). Lida fights beside you.'),
  -- Rogue Mega Venusaur -> Rogue Mega Venusaur
  (260033, 26028, 26, 'battle-opponent', 1, 'Jaune Sector 8 (Main Mission 29). Taunie or Urbain fights beside you.'),
  -- Rogue Mega Dragonite -> Rogue Mega Dragonite
  (260034, 26029, 26, 'battle-opponent', 1, 'Vert Sector 3 (Main Mission 32). Taunie or Urbain fights beside you.'),
  -- Rogue Mega Tyranitar -> Rogue Mega Tyranitar
  (260035, 26030, 26, 'battle-opponent', 1, 'Jaune Sector 4 (Main Mission 33). Naveen fights beside you.'),
  -- Rogue Mega Starmie -> Rogue Mega Starmie
  (260036, 26031, 26, 'battle-opponent', 1, 'Bleu Sector 9 (Main Mission 34). Lida fights beside you.');

-- Battles fought with a Pokémon lent for the fight, not the player's team.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  player_side
) VALUES
  -- Unlock Mega Evolution -> Rogue Mega Absol
  (260005, 26002, 26, 'battle-opponent', 1, 'Jaune Sector 6 rooftops (Main Mission 9). You battle with AZ''s Lucario.', 'lent-pokemon');
