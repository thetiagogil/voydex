-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Legends: Z-A walkthrough, part by part (Main Missions
-- 01 to 42).
-- Scope: Pokémon Legends: Z-A story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Legends: Z-A's story, decision and promotion-match milestones, each at
-- the place it happens (location_id), in Red / Blue's pattern. The game is
-- one city, so a place is a street, a sector, a building or a Wild Zone.
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
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Starter (Gare de Lumiose)
  (260001, 26, NULL, 2601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Step off the train at Gare de Lumiose. Taunie or Urbain meets you outside, a Pancham runs off with your bag, and you pick Chikorita, Tepig or Totodile to help get it back.', 1, true, 976),
  -- Join Team MZ (Hotel Z)
  (260003, 26, NULL, 2601, 1, 1, NULL, 'join-team-mz', 'Join Team MZ', 'After a night at Hotel Z, Taunie or Urbain asks you to join Team MZ and aim for Rank A in the Z-A Royale, which grants a wish. Then they battle you in front of the hotel.', 2, true, 437),
  -- Reach Rank Y (South Boulevard)
  (260013, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-y', 'Reach Rank Y', 'Enter the Z-A Royale at Rank Z. Win battles in the Battle Zone at night for the 1,000 points a ticket costs, then beat Zach in your first promotion match.', 3, true, 477),
  -- Reach Rank X (Bleu Plaza)
  (260014, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-x', 'Reach Rank X', 'Earn 3,000 points in the Battle Zone, then beat Yvon in a promotion match.', 4, true, 977),
  -- Reach Rank W (Académie Étoile)
  (260015, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-w', 'Reach Rank W', 'Earn 4,000 points in the Battle Zone, then beat Xavi in a promotion match.', 5, true, 800),
  -- Reach Rank V (Restaurant Le Nah)
  (260016, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-v', 'Reach Rank V', 'Earn 5,000 points in the Battle Zone, then beat Rintaro in a promotion match at his restaurant.', 6, true, 978),
  -- Unlock Mega Evolution (Hotel Z)
  (260005, 26, NULL, 2601, 6, 3, NULL, 'unlock-mega-evolution', 'Unlock Mega Evolution', 'Chase Zygarde to the rooftops and calm the Rogue Mega Absol there with AZ''s Lucario and the Mega Ring he sends you. The Absol and its Absolite are yours. The next morning Taunie or Urbain battles you so you can try Mega Evolution.', 7, true, 437),
  -- Reach Rank F (Quasartico Inc. (building))
  (260017, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-f', 'Reach Rank F', 'Beat Vinnie of Quasartico Inc. in his special promotion match, which takes you from Rank V straight to Rank F.', 8, true, 448),
  -- Rogue Mega Slowbro (Aymlis Park)
  (260022, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-slowbro', 'Rogue Mega Slowbro', 'Calm the Rogue Mega Slowbro in Aymlis Park with Taunie or Urbain fighting beside you. It leaves you its Slowbronite.', 9, true, 983),
  -- Rogue Mega Camerupt (Jaune Sector 3)
  (260023, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-camerupt', 'Rogue Mega Camerupt', 'Calm the Rogue Mega Camerupt in Jaune Sector 3 with Lida fighting beside you. It leaves you its Cameruptite.', 10, true, 986),
  -- Rogue Mega Victreebel (Magenta Sector 9)
  (260024, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-victreebel', 'Rogue Mega Victreebel', 'Calm the Rogue Mega Victreebel in Magenta Sector 9 with Naveen fighting beside you. It leaves you its Victreebelite.', 11, true, 994),
  -- Reach Rank E (Racine Construction)
  (260018, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-e', 'Reach Rank E', 'Find the streamer Canari with Naveen''s help, earn 36,000 points and pass her quiz, then beat her in a promotion match.', 12, true, 979),
  -- Rogue Mega Beedrill (Vert Sector 5)
  (260025, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-beedrill', 'Rogue Mega Beedrill', 'Calm the Rogue Mega Beedrill in Vert Sector 5 with Taunie or Urbain fighting beside you. It leaves you its Beedrillite.', 13, true, 996),
  -- Rogue Mega Hawlucha (Magenta Sector 3)
  (260026, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-hawlucha', 'Rogue Mega Hawlucha', 'Calm the Rogue Mega Hawlucha in Magenta Sector 3 with Lida fighting beside you. It leaves you its Hawluchanite.', 14, true, 991),
  -- Rogue Mega Banette (Jaune Sector 9)
  (260027, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-banette', 'Rogue Mega Banette', 'Calm the Rogue Mega Banette in Jaune Sector 9 with Naveen fighting beside you. It leaves you its Banettite.', 15, true, 990),
  -- Reach Rank D (Justice Dojo)
  (260019, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-d', 'Reach Rank D', 'Earn 35,000 points, then beat Ivor, who leads the Fist of Justice, in a promotion match at his dojo.', 16, true, 980),
  -- Rogue Mega Mawile (Magenta Sector 6)
  (260028, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-mawile', 'Rogue Mega Mawile', 'Calm the Rogue Mega Mawile in Magenta Sector 6 with Taunie or Urbain fighting beside you. It leaves you its Mawilite.', 17, true, 993),
  -- Rogue Mega Barbaracle (Bleu Sector 5)
  (260029, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-barbaracle', 'Rogue Mega Barbaracle', 'Calm the Rogue Mega Barbaracle in Bleu Sector 5 with Lida fighting beside you. It leaves you its Barbaracite.', 18, true, 997),
  -- Rogue Mega Ampharos (Rouge Sector 6)
  (260030, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-ampharos', 'Rogue Mega Ampharos', 'Calm the Rogue Mega Ampharos in Rouge Sector 6 with Naveen fighting beside you. It leaves you its Ampharosite.', 19, true, 999),
  -- Reach Rank C (Rust Syndicate Office)
  (260020, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-c', 'Reach Rank C', 'Do the jobs Corbeau of the Rust Syndicate sets you, then beat him in a promotion match in his office.', 20, true, 981),
  -- Rogue Mega Froslass (Aymlis Park)
  (260031, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-froslass', 'Rogue Mega Froslass', 'Calm the Rogue Mega Froslass in Aymlis Park with Naveen fighting beside you. It leaves you its Froslassite.', 21, true, 983),
  -- Rogue Mega Altaria (Magenta Sector 4)
  (260032, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-altaria', 'Rogue Mega Altaria', 'Calm the Rogue Mega Altaria in Magenta Sector 4 with Lida fighting beside you. It leaves you its Altarianite.', 22, true, 992),
  -- Rogue Mega Venusaur (Jaune Sector 8)
  (260033, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-venusaur', 'Rogue Mega Venusaur', 'Calm the Rogue Mega Venusaur in Jaune Sector 8 with Taunie or Urbain fighting beside you. It leaves you its Venusaurite.', 23, true, 989),
  -- Reach Rank B (Hotel Richissime)
  (260006, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-b', 'Reach Rank B', 'Win Jacinthe''s tournament at Hotel Richissime and her promotion match in its final.', 24, true, 982),
  -- Rogue Mega Dragonite (Vert Sector 3)
  (260034, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-dragonite', 'Rogue Mega Dragonite', 'Calm the Rogue Mega Dragonite in Vert Sector 3 with Taunie or Urbain fighting beside you. It leaves you its Dragoninite.', 25, true, 995),
  -- Rogue Mega Tyranitar (Jaune Sector 4)
  (260035, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-tyranitar', 'Rogue Mega Tyranitar', 'Calm the Rogue Mega Tyranitar in Jaune Sector 4 with Naveen fighting beside you. It leaves you its Tyranitarite.', 26, true, 987),
  -- Rogue Mega Starmie (Bleu Sector 9)
  (260036, 26, NULL, 2601, 6, 2, NULL, 'rogue-mega-starmie', 'Rogue Mega Starmie', 'Calm the Rogue Mega Starmie in Bleu Sector 9 with Lida fighting beside you. It leaves you its Starminite.', 27, true, 998),
  -- Reach Rank A (Lysandre Labs)
  (260021, 26, NULL, 2601, 14, 2, NULL, 'reach-rank-a', 'Reach Rank A', 'Follow Grisham and Griselle into Lysandre Labs under Lysandre Café, where L explains Ange and the ultimate weapon. Then beat Grisham of Team Flare Nouveau in his promotion match.', 28, true, 910),
  -- Stop the Ange Crisis (Centrico Plaza)
  (260008, 26, NULL, 2601, 6, 3, NULL, 'stop-ange-crisis', 'Stop the Ange Crisis', 'Prism Tower goes rogue. Beat Taunie or Urbain at Centrico Plaza to decide who climbs it, then stop Ange with Zygarde before it fires on the city.', 29, true, 984),
  -- Infinite Z-A Royale (Centrico Plaza)
  (260009, 26, NULL, 2605, 1, 1, NULL, 'infinite-za-royale', 'Infinite Z-A Royale', 'After the credits, tell Vinnie your wish at Centrico Plaza. The Z-A Royale opens again with no last rank.', 1, false, 984),
  -- The One That Gives (Wild Zone 11)
  (260010, 26, NULL, 2606, 6, 2, NULL, 'the-one-that-gives', 'The One That Gives', 'Calm the anomalous Alphas for Mable, then catch Xerneas in Wild Zone 11.', 1, false, 486),
  -- The One That Takes (Rouge Sector 2)
  (260011, 26, NULL, 2606, 6, 2, NULL, 'the-one-that-takes', 'The One That Takes', 'Clear Vinnie''s Rogue Mega simulator, then catch Yveltal on the Galerie de la Lune roof.', 2, false, 1000),
  -- To Keep the World in Balance (Wild Zone 20)
  (260012, 26, NULL, 2606, 6, 2, NULL, 'to-keep-the-world-in-balance', 'To Keep the World in Balance', 'Beat L at Hotel Z, then battle and catch Zygarde beneath Prism Tower.', 3, false, 496);
