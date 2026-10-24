-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels: 10% Forme Lv. 33 is confirmed by one source only; Lv. 57 at Jacinthe's tournament is cross-checked with Thonky.
-- Lysandre Labs and L's only battle (Main Mission 42): Bulbapedia, cross-checked with Nintendo Life.
-- Promotion matches (Rank Z to Rank A): Bulbapedia Z-A Royale and trainer pages, cross-checked with Serebii, Thonky and Nintendo Life.
-- Ten matches only: Vinnie's special promotion jumps from Rank V straight to Rank F. Jacinthe's tournament (Main Mission 30) is the Rank B match; Grisham's (end of Main Mission 35) is Rank A.
-- Rogue Megas of Main Missions 11 to 34: Bulbapedia Rogue Mega Evolution page, cross-checked with
-- Serebii's main mission list and Mega Stone locations. Each batch of three can be done in any
-- order in the game; Story keeps mission order.
-- Scope: Pokémon Legends: Z-A major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion
) VALUES
  -- Choose Starter
  (260001, 26, NULL, 2601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Chikorita, Tepig, or Totodile as the first partner Pokémon.', 1, true),
  -- Arrive in Lumiose City
  (260002, 26, NULL, 2601, 1, 1, NULL, 'arrive-lumiose-city', 'Arrive in Lumiose City', 'Arrive in Lumiose City during its urban redevelopment project.', 2, true),
  -- Join Team MZ
  (260003, 26, NULL, 2601, 1, 1, NULL, 'join-team-mz', 'Join Team MZ', 'Join Team MZ at Hotel Z.', 3, true),
  -- Enter Z-A Royale
  (260004, 26, NULL, 2602, 1, 1, NULL, 'enter-za-royale', 'Enter Z-A Royale', 'Enter the Z-A Royale and begin climbing from Rank Z toward Rank A.', 1, true),
  -- Unlock Mega Evolution
  (260005, 26, NULL, 2603, 6, 3, NULL, 'unlock-mega-evolution', 'Unlock Mega Evolution', 'Gain access to Mega Evolution during the Rogue Mega Evolution story.', 1, true),
  -- Reach Rank B (Jacinthe)
  (260006, 26, NULL, 2603, 14, 2, NULL, 'reach-rank-b', 'Reach Rank B', 'Win Jacinthe''s tournament at Hotel Richissime and her promotion match to reach Rank B.', 18, true),
  -- Explore Lysandre Labs
  (260007, 26, NULL, 2604, 1, 3, NULL, 'explore-lysandre-labs', 'Explore Lysandre Labs', 'Explore Lysandre Labs beneath Lysandre Café, where L explains Ange and the ultimate weapon.', 1, true),
  -- Reach Rank A (Grisham)
  (260021, 26, NULL, 2604, 14, 2, NULL, 'reach-rank-a', 'Reach Rank A', 'Beat Grisham of Team Flare Nouveau in his promotion match to reach Rank A.', 2, true),
  -- Stop the Ange Crisis
  (260008, 26, NULL, 2604, 6, 3, NULL, 'stop-ange-crisis', 'Stop the Ange Crisis', 'Stop the Prism Tower Ange crisis with Zygarde.', 3, true),
  -- Infinite Z-A Royale
  (260009, 26, NULL, 2605, 1, 1, NULL, 'infinite-za-royale', 'Infinite Z-A Royale', 'Unlock the Infinite Z-A Royale after the main story.', 1, false),
  -- The One That Gives
  (260010, 26, NULL, 2606, 6, 2, NULL, 'the-one-that-gives', 'The One That Gives', 'Calm the anomalous Alphas for Mable, then catch Xerneas in Wild Zone 11.', 1, false),
  -- The One That Takes
  (260011, 26, NULL, 2606, 6, 2, NULL, 'the-one-that-takes', 'The One That Takes', 'Clear Vinnie''s Rogue Mega simulator, then catch Yveltal on the Galerie de la Lune roof.', 2, false),
  -- To Keep the World in Balance
  (260012, 26, NULL, 2606, 6, 2, NULL, 'to-keep-the-world-in-balance', 'To Keep the World in Balance', 'Beat L at Hotel Z, then battle and catch Zygarde beneath Prism Tower.', 3, false),
  -- Reach Rank Y (Zach)
  (260013, 26, NULL, 2602, 14, 2, NULL, 'reach-rank-y', 'Reach Rank Y', 'Beat Zach in your first promotion match to reach Rank Y.', 2, true),
  -- Reach Rank X (Yvon)
  (260014, 26, NULL, 2602, 14, 2, NULL, 'reach-rank-x', 'Reach Rank X', 'Beat Yvon in a promotion match to reach Rank X.', 3, true),
  -- Reach Rank W (Xavi)
  (260015, 26, NULL, 2602, 14, 2, NULL, 'reach-rank-w', 'Reach Rank W', 'Beat Xavi in a promotion match to reach Rank W.', 4, true),
  -- Reach Rank V (Rintaro)
  (260016, 26, NULL, 2602, 14, 2, NULL, 'reach-rank-v', 'Reach Rank V', 'Beat Rintaro in a promotion match to reach Rank V.', 5, true),
  -- Reach Rank F (Vinnie)
  (260017, 26, NULL, 2603, 14, 2, NULL, 'reach-rank-f', 'Reach Rank F', 'Beat Vinnie in his special promotion match, which jumps you from Rank V to Rank F.', 2, true),
  -- Reach Rank E (Canari)
  (260018, 26, NULL, 2603, 14, 2, NULL, 'reach-rank-e', 'Reach Rank E', 'Beat Canari in a promotion match to reach Rank E.', 6, true),
  -- Reach Rank D (Ivor)
  (260019, 26, NULL, 2603, 14, 2, NULL, 'reach-rank-d', 'Reach Rank D', 'Beat Ivor in a promotion match to reach Rank D.', 10, true),
  -- Reach Rank C (Corbeau)
  (260020, 26, NULL, 2603, 14, 2, NULL, 'reach-rank-c', 'Reach Rank C', 'Beat Corbeau in a promotion match to reach Rank C.', 14, true),
  -- Rogue Mega Slowbro (Main Mission 11)
  (260022, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-slowbro', 'Rogue Mega Slowbro', 'Calm the Rogue Mega Slowbro in Aymlis Park and receive Slowbronite.', 3, true),
  -- Rogue Mega Camerupt (Main Mission 12)
  (260023, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-camerupt', 'Rogue Mega Camerupt', 'Calm the Rogue Mega Camerupt in Jaune Sector 3 and receive Cameruptite.', 4, true),
  -- Rogue Mega Victreebel (Main Mission 13)
  (260024, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-victreebel', 'Rogue Mega Victreebel', 'Calm the Rogue Mega Victreebel in Magenta Sector 9 and receive Victreebelite.', 5, true),
  -- Rogue Mega Beedrill (Main Mission 16)
  (260025, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-beedrill', 'Rogue Mega Beedrill', 'Calm the Rogue Mega Beedrill in Vert Sector 5 and receive Beedrillite.', 7, true),
  -- Rogue Mega Hawlucha (Main Mission 17)
  (260026, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-hawlucha', 'Rogue Mega Hawlucha', 'Calm the Rogue Mega Hawlucha in Magenta Sector 3 and receive Hawluchanite.', 8, true),
  -- Rogue Mega Banette (Main Mission 18)
  (260027, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-banette', 'Rogue Mega Banette', 'Calm the Rogue Mega Banette in Jaune Sector 9 and receive Banettite.', 9, true),
  -- Rogue Mega Mawile (Main Mission 21)
  (260028, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-mawile', 'Rogue Mega Mawile', 'Calm the Rogue Mega Mawile in Magenta Sector 6 and receive Mawilite.', 11, true),
  -- Rogue Mega Barbaracle (Main Mission 22)
  (260029, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-barbaracle', 'Rogue Mega Barbaracle', 'Calm the Rogue Mega Barbaracle in Bleu Sector 5 and receive Barbaracite.', 12, true),
  -- Rogue Mega Ampharos (Main Mission 23)
  (260030, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-ampharos', 'Rogue Mega Ampharos', 'Calm the Rogue Mega Ampharos in Rouge Sector 6 and receive Ampharosite.', 13, true),
  -- Rogue Mega Froslass (Main Mission 27)
  (260031, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-froslass', 'Rogue Mega Froslass', 'Calm the Rogue Mega Froslass in Aymlis Park and receive Froslassite.', 15, true),
  -- Rogue Mega Altaria (Main Mission 28)
  (260032, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-altaria', 'Rogue Mega Altaria', 'Calm the Rogue Mega Altaria in Magenta Sector 4 and receive Altarianite.', 16, true),
  -- Rogue Mega Venusaur (Main Mission 29)
  (260033, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-venusaur', 'Rogue Mega Venusaur', 'Calm the Rogue Mega Venusaur in Jaune Sector 8 and receive Venusaurite.', 17, true),
  -- Rogue Mega Dragonite (Main Mission 32)
  (260034, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-dragonite', 'Rogue Mega Dragonite', 'Calm the Rogue Mega Dragonite in Vert Sector 3 and receive Dragoninite.', 19, true),
  -- Rogue Mega Tyranitar (Main Mission 33)
  (260035, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-tyranitar', 'Rogue Mega Tyranitar', 'Calm the Rogue Mega Tyranitar in Jaune Sector 4 and receive Tyranitarite.', 20, true),
  -- Rogue Mega Starmie (Main Mission 34)
  (260036, 26, NULL, 2603, 6, 2, NULL, 'rogue-mega-starmie', 'Rogue Mega Starmie', 'Calm the Rogue Mega Starmie in Bleu Sector 9 and receive Starminite.', 21, true);
