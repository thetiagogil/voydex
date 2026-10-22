-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Berry, Generation II berry, and individual berry item pages.
-- Cross-check: Serebii berry pages and PokemonDB item pages where available.
-- Machine-readable sanity: PokeAPI item IDs for modern Generation III+ berries only.
-- Scope note: berries relevant as held items, Pokémon biography data, and future team planning filters.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Historical Generation II berries and modern Generation III+ berry catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Berry (Gen II)
  (168, 'gen2-berry', 'Berry (Gen II)', 6, 2, NULL, 168, 'Restores 10 HP when the holder''s HP falls to half or less, then is eaten.'),
  -- Gold Berry
  (169, 'gold-berry', 'Gold Berry', 6, 2, NULL, 169, 'Restores 30 HP when the holder''s HP falls to half or less, then is eaten.'),
  -- PRZCureBerry
  (170, 'przcureberry', 'PRZCureBerry', 6, 2, NULL, 170, 'Cures the holder''s paralysis, then is eaten.'),
  -- PSNCureBerry
  (171, 'psncureberry', 'PSNCureBerry', 6, 2, NULL, 171, 'Cures the holder''s poisoning, then is eaten.'),
  -- Burnt Berry
  (172, 'burnt-berry', 'Burnt Berry', 6, 2, NULL, 172, 'Thaws the holder out when it is frozen, then is eaten.'),
  -- Ice Berry
  (173, 'ice-berry', 'Ice Berry', 6, 2, NULL, 173, 'Heals the holder''s burn, then is eaten.'),
  -- Mint Berry
  (174, 'mint-berry', 'Mint Berry', 6, 2, NULL, 174, 'Wakes the holder up when it falls asleep, then is eaten.'),
  -- Bitter Berry
  (175, 'bitter-berry', 'Bitter Berry', 6, 2, NULL, 175, 'Snaps the holder out of confusion, then is eaten.'),
  -- MiracleBerry
  (176, 'miracleberry', 'MiracleBerry', 6, 2, NULL, 176, 'Cures any status problem or confusion on the holder, then is eaten.'),
  -- MysteryBerry
  (177, 'mysteryberry', 'MysteryBerry', 6, 2, NULL, 177, 'Restores 5 PP to a move once it runs out of PP, then is eaten.'),
  -- Cheri Berry
  (178, 'cheri-berry', 'Cheri Berry', 6, 3, 126, 178, 'Cures the holder''s paralysis, then is eaten.'),
  -- Chesto Berry
  (179, 'chesto-berry', 'Chesto Berry', 6, 3, 127, 179, 'Wakes the holder up when it falls asleep, then is eaten.'),
  -- Pecha Berry
  (180, 'pecha-berry', 'Pecha Berry', 6, 3, 128, 180, 'Cures the holder''s poisoning, then is eaten.'),
  -- Rawst Berry
  (181, 'rawst-berry', 'Rawst Berry', 6, 3, 129, 181, 'Heals the holder''s burn, then is eaten.'),
  -- Aspear Berry
  (182, 'aspear-berry', 'Aspear Berry', 6, 3, 130, 182, 'Thaws the holder out when it is frozen, then is eaten.'),
  -- Leppa Berry
  (183, 'leppa-berry', 'Leppa Berry', 6, 3, 131, 183, 'Restores 10 PP to a move once it runs out of PP, then is eaten.'),
  -- Oran Berry
  (184, 'oran-berry', 'Oran Berry', 6, 3, 132, 184, 'Restores 10 HP when the holder''s HP falls to half or less, then is eaten.'),
  -- Persim Berry
  (185, 'persim-berry', 'Persim Berry', 6, 3, 133, 185, 'Snaps the holder out of confusion, then is eaten.'),
  -- Lum Berry
  (186, 'lum-berry', 'Lum Berry', 6, 3, 134, 186, 'Cures any status problem or confusion on the holder, then is eaten.'),
  -- Sitrus Berry
  (187, 'sitrus-berry', 'Sitrus Berry', 6, 3, 135, 187, 'Restores a quarter of max HP when the holder''s HP falls to half or less. In Gen 3 it restored 30 HP.'),
  -- Figy Berry
  (188, 'figy-berry', 'Figy Berry', 6, 3, 136, 188, 'Restores a third of max HP at a quarter HP or less; confuses a holder whose nature lowers Attack.'),
  -- Wiki Berry
  (189, 'wiki-berry', 'Wiki Berry', 6, 3, 137, 189, 'Restores a third of max HP at a quarter HP or less; confuses a holder whose nature lowers Sp. Atk.'),
  -- Mago Berry
  (190, 'mago-berry', 'Mago Berry', 6, 3, 138, 190, 'Restores a third of max HP at a quarter HP or less; confuses a holder whose nature lowers Speed.'),
  -- Aguav Berry
  (191, 'aguav-berry', 'Aguav Berry', 6, 3, 139, 191, 'Restores a third of max HP at a quarter HP or less; confuses a holder whose nature lowers Sp. Def.'),
  -- Iapapa Berry
  (192, 'iapapa-berry', 'Iapapa Berry', 6, 3, 140, 192, 'Restores a third of max HP at a quarter HP or less; confuses a holder whose nature lowers Defense.'),
  -- Razz Berry
  (193, 'razz-berry', 'Razz Berry', 6, 3, 141, 193, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Bluk Berry
  (194, 'bluk-berry', 'Bluk Berry', 6, 3, 142, 194, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Nanab Berry
  (195, 'nanab-berry', 'Nanab Berry', 6, 3, 143, 195, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Wepear Berry
  (196, 'wepear-berry', 'Wepear Berry', 6, 3, 144, 196, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Pinap Berry
  (197, 'pinap-berry', 'Pinap Berry', 6, 3, 145, 197, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Pomeg Berry
  (198, 'pomeg-berry', 'Pomeg Berry', 6, 3, 146, 198, 'No effect when held; fed to a Pokémon, it lowers its HP EVs and raises its friendship.'),
  -- Kelpsy Berry
  (199, 'kelpsy-berry', 'Kelpsy Berry', 6, 3, 147, 199, 'No effect when held; fed to a Pokémon, it lowers its Attack EVs and raises its friendship.'),
  -- Qualot Berry
  (200, 'qualot-berry', 'Qualot Berry', 6, 3, 148, 200, 'No effect when held; fed to a Pokémon, it lowers its Defense EVs and raises its friendship.'),
  -- Hondew Berry
  (201, 'hondew-berry', 'Hondew Berry', 6, 3, 149, 201, 'No effect when held; fed to a Pokémon, it lowers its Sp. Atk EVs and raises its friendship.'),
  -- Grepa Berry
  (202, 'grepa-berry', 'Grepa Berry', 6, 3, 150, 202, 'No effect when held; fed to a Pokémon, it lowers its Sp. Def EVs and raises its friendship.'),
  -- Tamato Berry
  (203, 'tamato-berry', 'Tamato Berry', 6, 3, 151, 203, 'No effect when held; fed to a Pokémon, it lowers its Speed EVs and raises its friendship.'),
  -- Cornn Berry
  (204, 'cornn-berry', 'Cornn Berry', 6, 3, 152, 204, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Magost Berry
  (205, 'magost-berry', 'Magost Berry', 6, 3, 153, 205, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Rabuta Berry
  (206, 'rabuta-berry', 'Rabuta Berry', 6, 3, 154, 206, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Nomel Berry
  (207, 'nomel-berry', 'Nomel Berry', 6, 3, 155, 207, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Spelon Berry
  (208, 'spelon-berry', 'Spelon Berry', 6, 3, 156, 208, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Pamtre Berry
  (209, 'pamtre-berry', 'Pamtre Berry', 6, 3, 157, 209, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Watmel Berry
  (210, 'watmel-berry', 'Watmel Berry', 6, 3, 158, 210, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Durin Berry
  (211, 'durin-berry', 'Durin Berry', 6, 3, 159, 211, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Belue Berry
  (212, 'belue-berry', 'Belue Berry', 6, 3, 160, 212, 'No effect when held; used for making treats such as Pokéblocks and Poffins.'),
  -- Occa Berry
  (213, 'occa-berry', 'Occa Berry', 6, 4, 161, 213, 'Halves the damage of one super-effective Fire-type hit on the holder, then is eaten.'),
  -- Passho Berry
  (214, 'passho-berry', 'Passho Berry', 6, 4, 162, 214, 'Halves the damage of one super-effective Water-type hit on the holder, then is eaten.'),
  -- Wacan Berry
  (215, 'wacan-berry', 'Wacan Berry', 6, 4, 163, 215, 'Halves the damage of one super-effective Electric-type hit on the holder, then is eaten.'),
  -- Rindo Berry
  (216, 'rindo-berry', 'Rindo Berry', 6, 4, 164, 216, 'Halves the damage of one super-effective Grass-type hit on the holder, then is eaten.'),
  -- Yache Berry
  (217, 'yache-berry', 'Yache Berry', 6, 4, 165, 217, 'Halves the damage of one super-effective Ice-type hit on the holder, then is eaten.'),
  -- Chople Berry
  (218, 'chople-berry', 'Chople Berry', 6, 4, 166, 218, 'Halves the damage of one super-effective Fighting-type hit on the holder, then is eaten.'),
  -- Kebia Berry
  (219, 'kebia-berry', 'Kebia Berry', 6, 4, 167, 219, 'Halves the damage of one super-effective Poison-type hit on the holder, then is eaten.'),
  -- Shuca Berry
  (220, 'shuca-berry', 'Shuca Berry', 6, 4, 168, 220, 'Halves the damage of one super-effective Ground-type hit on the holder, then is eaten.'),
  -- Coba Berry
  (221, 'coba-berry', 'Coba Berry', 6, 4, 169, 221, 'Halves the damage of one super-effective Flying-type hit on the holder, then is eaten.'),
  -- Payapa Berry
  (222, 'payapa-berry', 'Payapa Berry', 6, 4, 170, 222, 'Halves the damage of one super-effective Psychic-type hit on the holder, then is eaten.'),
  -- Tanga Berry
  (223, 'tanga-berry', 'Tanga Berry', 6, 4, 171, 223, 'Halves the damage of one super-effective Bug-type hit on the holder, then is eaten.'),
  -- Charti Berry
  (224, 'charti-berry', 'Charti Berry', 6, 4, 172, 224, 'Halves the damage of one super-effective Rock-type hit on the holder, then is eaten.'),
  -- Kasib Berry
  (225, 'kasib-berry', 'Kasib Berry', 6, 4, 173, 225, 'Halves the damage of one super-effective Ghost-type hit on the holder, then is eaten.'),
  -- Haban Berry
  (226, 'haban-berry', 'Haban Berry', 6, 4, 174, 226, 'Halves the damage of one super-effective Dragon-type hit on the holder, then is eaten.'),
  -- Colbur Berry
  (227, 'colbur-berry', 'Colbur Berry', 6, 4, 175, 227, 'Halves the damage of one super-effective Dark-type hit on the holder, then is eaten.'),
  -- Babiri Berry
  (228, 'babiri-berry', 'Babiri Berry', 6, 4, 176, 228, 'Halves the damage of one super-effective Steel-type hit on the holder, then is eaten.'),
  -- Chilan Berry
  (229, 'chilan-berry', 'Chilan Berry', 6, 4, 177, 229, 'Halves the damage of one Normal-type hit on the holder, then is eaten.'),
  -- Liechi Berry
  (230, 'liechi-berry', 'Liechi Berry', 6, 3, 178, 230, 'Raises Attack by one stage when the holder''s HP falls to a quarter or less.'),
  -- Ganlon Berry
  (231, 'ganlon-berry', 'Ganlon Berry', 6, 3, 179, 231, 'Raises Defense by one stage when the holder''s HP falls to a quarter or less.'),
  -- Salac Berry
  (232, 'salac-berry', 'Salac Berry', 6, 3, 180, 232, 'Raises Speed by one stage when the holder''s HP falls to a quarter or less.'),
  -- Petaya Berry
  (233, 'petaya-berry', 'Petaya Berry', 6, 3, 181, 233, 'Raises Sp. Atk by one stage when the holder''s HP falls to a quarter or less.'),
  -- Apicot Berry
  (234, 'apicot-berry', 'Apicot Berry', 6, 3, 182, 234, 'Raises Sp. Def by one stage when the holder''s HP falls to a quarter or less.'),
  -- Lansat Berry
  (235, 'lansat-berry', 'Lansat Berry', 6, 3, 183, 235, 'Raises the critical-hit ratio by two stages when the holder''s HP falls to a quarter or less.'),
  -- Starf Berry
  (236, 'starf-berry', 'Starf Berry', 6, 3, 184, 236, 'Sharply raises a random stat when the holder''s HP falls to a quarter or less, then is eaten.'),
  -- Enigma Berry
  (237, 'enigma-berry', 'Enigma Berry', 6, 3, 185, 237, 'Restores a quarter of max HP after the holder takes a super-effective hit.'),
  -- Micle Berry
  (238, 'micle-berry', 'Micle Berry', 6, 4, 186, 238, 'Boosts the accuracy of the holder''s next move when its HP falls to a quarter or less.'),
  -- Custap Berry
  (239, 'custap-berry', 'Custap Berry', 6, 4, 187, 239, 'Lets the holder move first in its priority bracket once when its HP is at a quarter or less.'),
  -- Jaboca Berry
  (240, 'jaboca-berry', 'Jaboca Berry', 6, 4, 188, 240, 'When a physical move hits the holder, the attacker loses an eighth of its max HP.'),
  -- Rowap Berry
  (241, 'rowap-berry', 'Rowap Berry', 6, 4, 189, 241, 'When a special move hits the holder, the attacker loses an eighth of its max HP.'),
  -- Roseli Berry
  (242, 'roseli-berry', 'Roseli Berry', 6, 6, 723, 242, 'Halves the damage of one super-effective Fairy-type hit on the holder, then is eaten.'),
  -- Kee Berry
  (243, 'kee-berry', 'Kee Berry', 6, 6, 724, 243, 'Raises Defense by one stage when a physical move hits the holder, then is eaten.'),
  -- Maranga Berry
  (244, 'maranga-berry', 'Maranga Berry', 6, 6, 725, 244, 'Raises Sp. Def by one stage when a special move hits the holder, then is eaten.');
