-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_context
-- Scope: all seeded version groups
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Links progress items to optional metadata: opponent, badge, collectible.
-- Only items with relevant context have entries here.
-- Not every milestone has an opponent or badge (e.g. receive-pokedex, hall-of-fame).
INSERT INTO
    progress.item_context (progress_item_id, opponent_id, badge_id, collectible_id)
VALUES
    -- ========================================================================
    -- Gen 1 — Red / Blue (VG 1)
    -- ========================================================================
    (101, 100, 100, NULL), -- boulder-badge: Brock + Boulder Badge
    (102, 101, 101, NULL), -- cascade-badge: Misty + Cascade Badge
    (103, 102, 102, NULL), -- thunder-badge: Lt. Surge + Thunder Badge
    (104, 103, 103, NULL), -- rainbow-badge: Erika + Rainbow Badge
    (105, 104, 104, NULL), -- soul-badge: Koga + Soul Badge
    (106, 105, 105, NULL), -- marsh-badge: Sabrina + Marsh Badge
    (107, 106, 106, NULL), -- volcano-badge: Blaine + Volcano Badge
    (108, 107, 107, NULL), -- earth-badge: Giovanni + Earth Badge
    (109, 108, NULL, NULL), -- elite-four-lorelei: Lorelei
    (110, 109, NULL, NULL), -- elite-four-bruno: Bruno
    (111, 110, NULL, NULL), -- elite-four-agatha: Agatha
    (112, 111, NULL, NULL), -- elite-four-lance: Lance
    (113, 112, NULL, NULL), -- champion-blue: Blue
    -- ========================================================================
    -- Gen 2 — Crystal (VG 4)
    -- ========================================================================
    -- Johto gyms
    (201, 150, 120, NULL), -- zephyr-badge: Falkner + Zephyr Badge
    (202, 151, 121, NULL), -- hive-badge: Bugsy + Hive Badge
    (203, 152, 122, NULL), -- plain-badge: Whitney + Plain Badge
    (204, 153, 123, NULL), -- fog-badge: Morty + Fog Badge
    (205, 154, 124, NULL), -- storm-badge: Chuck + Storm Badge
    (206, 155, 125, NULL), -- mineral-badge: Jasmine + Mineral Badge
    (207, 156, 126, NULL), -- glacier-badge: Pryce + Glacier Badge
    (208, 157, 127, NULL), -- rising-badge: Clair + Rising Badge
    -- Johto E4
    (209, 158, NULL, NULL), -- elite-four-will: Will
    (210, 159, NULL, NULL), -- elite-four-koga: Koga
    (211, 160, NULL, NULL), -- elite-four-bruno: Bruno
    (212, 161, NULL, NULL), -- elite-four-karen: Karen
    (213, 162, NULL, NULL), -- champion-lance: Lance
    -- Kanto gyms (post-game)
    (215, 163, 130, NULL), -- thunder-badge-kanto: Lt. Surge + Thunder Badge
    (216, 164, 133, NULL), -- marsh-badge-kanto: Sabrina + Marsh Badge
    (217, 165, 131, NULL), -- rainbow-badge-kanto: Erika + Rainbow Badge
    (218, 166, 132, NULL), -- soul-badge-kanto: Janine + Soul Badge
    (219, 167, 129, NULL), -- cascade-badge-kanto: Misty + Cascade Badge
    (220, 169, 134, NULL), -- volcano-badge-kanto: Blaine + Volcano Badge
    (221, 170, 135, NULL), -- earth-badge-kanto: Blue + Earth Badge
    (222, 168, 128, NULL), -- boulder-badge-kanto: Brock + Boulder Badge
    (223, 171, NULL, NULL), -- red: Red
    -- ========================================================================
    -- Gen 3 — Emerald (VG 6)
    -- ========================================================================
    (301, 200, 150, NULL), -- stone-badge: Roxanne + Stone Badge
    (302, 201, 151, NULL), -- knuckle-badge: Brawly + Knuckle Badge
    (303, 202, 152, NULL), -- dynamo-badge: Wattson + Dynamo Badge
    (304, 203, 153, NULL), -- heat-badge: Flannery + Heat Badge
    (305, 204, 154, NULL), -- balance-badge: Norman + Balance Badge
    (306, 205, 155, NULL), -- feather-badge: Winona + Feather Badge
    (307, 206, 156, NULL), -- mind-badge: Tate & Liza + Mind Badge
    (308, 207, 157, NULL), -- rain-badge: Juan + Rain Badge
    (309, 208, NULL, NULL), -- elite-four-sidney: Sidney
    (310, 209, NULL, NULL), -- elite-four-phoebe: Phoebe
    (311, 210, NULL, NULL), -- elite-four-glacia: Glacia
    (312, 211, NULL, NULL), -- elite-four-drake: Drake
    (313, 212, NULL, NULL), -- champion-wallace: Wallace
    -- ========================================================================
    -- Gen 4 — Platinum (VG 9)
    -- ========================================================================
    (401, 250, 170, NULL), -- coal-badge: Roark + Coal Badge
    (402, 251, 171, NULL), -- forest-badge: Gardenia + Forest Badge
    (403, 252, 172, NULL), -- cobble-badge: Maylene + Cobble Badge
    (404, 253, 173, NULL), -- fen-badge: Crasher Wake + Fen Badge
    (405, 254, 174, NULL), -- relic-badge: Fantina + Relic Badge
    (406, 255, 175, NULL), -- mine-badge: Byron + Mine Badge
    (407, 256, 176, NULL), -- icicle-badge: Candice + Icicle Badge
    (408, 257, 177, NULL), -- beacon-badge: Volkner + Beacon Badge
    (409, 258, NULL, NULL), -- elite-four-aaron: Aaron
    (410, 259, NULL, NULL), -- elite-four-bertha: Bertha
    (411, 260, NULL, NULL), -- elite-four-flint: Flint
    (412, 261, NULL, NULL), -- elite-four-lucian: Lucian
    (413, 262, NULL, NULL), -- champion-cynthia: Cynthia
    -- ========================================================================
    -- Gen 5 — Black / White (VG 11)
    -- ========================================================================
    (501, 300, 190, NULL), -- trio-badge: Cilan/Chili/Cress + Trio Badge
    (502, 301, 191, NULL), -- basic-badge: Lenora + Basic Badge
    (503, 302, 192, NULL), -- insect-badge: Burgh + Insect Badge
    (504, 303, 193, NULL), -- bolt-badge: Elesa + Bolt Badge
    (505, 304, 194, NULL), -- quake-badge: Clay + Quake Badge
    (506, 305, 195, NULL), -- jet-badge: Skyla + Jet Badge
    (507, 306, 196, NULL), -- freeze-badge: Brycen + Freeze Badge
    (508, 307, 197, NULL), -- legend-badge: Drayden + Legend Badge
    (509, 308, NULL, NULL), -- elite-four-shauntal: Shauntal
    (510, 309, NULL, NULL), -- elite-four-grimsley: Grimsley
    (511, 310, NULL, NULL), -- elite-four-caitlin: Caitlin
    (512, 311, NULL, NULL), -- elite-four-marshal: Marshal
    (513, 312, NULL, NULL), -- n-battle: N
    (514, 313, NULL, NULL), -- ghetsis-battle: Ghetsis
    (516, 314, NULL, NULL), -- champion-alder: Alder
    -- ========================================================================
    -- Gen 6 — X / Y (VG 13)
    -- ========================================================================
    (601, 350, 210, NULL), -- bug-badge: Viola + Bug Badge
    (602, 351, 211, NULL), -- cliff-badge: Grant + Cliff Badge
    (603, 352, 212, NULL), -- rumble-badge: Korrina + Rumble Badge
    (604, 353, 213, NULL), -- plant-badge: Ramos + Plant Badge
    (605, 354, 214, NULL), -- voltage-badge: Clemont + Voltage Badge
    (606, 355, 215, NULL), -- fairy-badge: Valerie + Fairy Badge
    (607, 356, 216, NULL), -- psychic-badge: Olympia + Psychic Badge
    (608, 357, 217, NULL), -- iceberg-badge: Wulfric + Iceberg Badge
    (609, 358, NULL, NULL), -- elite-four-malva: Malva
    (610, 359, NULL, NULL), -- elite-four-siebold: Siebold
    (611, 360, NULL, NULL), -- elite-four-wikstrom: Wikstrom
    (612, 361, NULL, NULL), -- elite-four-drasna: Drasna
    (613, 362, NULL, NULL), -- champion-diantha: Diantha
    -- ========================================================================
    -- Gen 7 — Ultra Sun / Ultra Moon (VG 16)
    -- ========================================================================
    (701, 400, NULL, NULL), -- ilima-trial: Ilima
    (702, 407, NULL, NULL), -- grand-trial-hala: Hala
    (703, 401, NULL, NULL), -- lana-trial: Lana
    (704, 402, NULL, NULL), -- kiawe-trial: Kiawe
    (705, 403, NULL, NULL), -- mallow-trial: Mallow
    (706, 408, NULL, NULL), -- grand-trial-olivia: Olivia
    (707, 404, NULL, NULL), -- sophocles-trial: Sophocles
    (708, 405, NULL, NULL), -- acerola-trial: Acerola
    (709, 409, NULL, NULL), -- grand-trial-nanu: Nanu
    (710, 406, NULL, NULL), -- mina-trial: Mina
    (712, 410, NULL, NULL), -- grand-trial-hapu: Hapu
    (713, 416, NULL, NULL), -- ultra-necrozma: Ultra Necrozma
    (714, 411, NULL, NULL), -- elite-four-molayne: Molayne
    (715, 412, NULL, NULL), -- elite-four-olivia: Olivia (E4)
    (716, 413, NULL, NULL), -- elite-four-acerola: Acerola (E4)
    (717, 414, NULL, NULL), -- elite-four-kahili: Kahili
    (718, 415, NULL, NULL), -- champion-hau: Hau
    (724, NULL, NULL, 100), -- totem-stickers: Totem Stickers collectible
    -- ========================================================================
    -- Gen 8 — Sword / Shield (VG 18)
    -- ========================================================================
    (801, 450, 230, NULL), -- grass-badge: Milo + Grass Badge
    (802, 451, 231, NULL), -- water-badge: Nessa + Water Badge
    (803, 452, 232, NULL), -- fire-badge: Kabu + Fire Badge
    (804, 456, 233, NULL), -- fighting-badge: Bea + Fighting Badge (Sword)
    (805, 458, 238, NULL), -- ghost-badge: Allister + Ghost Badge (Shield)
    (806, 453, 234, NULL), -- fairy-badge: Opal + Fairy Badge
    (807, 457, 235, NULL), -- rock-badge: Gordie + Rock Badge (Sword)
    (808, 459, 239, NULL), -- ice-badge: Melony + Ice Badge (Shield)
    (809, 454, 236, NULL), -- dark-badge: Piers + Dark Badge
    (810, 455, 237, NULL), -- dragon-badge: Raihan + Dragon Badge
    (811, 460, NULL, NULL), -- champion-leon: Leon
    -- ========================================================================
    -- Gen 9 — Scarlet / Violet (VG 23)
    -- ========================================================================
    -- Victory Road gyms
    (901, 500, 250, NULL), -- bug-badge: Katy + Bug Badge
    (902, 501, 251, NULL), -- grass-badge: Brassius + Grass Badge
    (903, 502, 252, NULL), -- electric-badge: Iono + Electric Badge
    (904, 503, 253, NULL), -- water-badge: Kofu + Water Badge
    (905, 504, 254, NULL), -- normal-badge: Larry + Normal Badge
    (906, 505, 255, NULL), -- ghost-badge: Ryme + Ghost Badge
    (907, 506, 256, NULL), -- psychic-badge: Tulip + Psychic Badge
    (908, 507, 257, NULL), -- ice-badge: Grusha + Ice Badge
    -- Starfall Street bosses
    (909, 508, NULL, NULL), -- dark-star: Giacomo
    (910, 509, NULL, NULL), -- fire-star: Mela
    (911, 510, NULL, NULL), -- poison-star: Atticus
    (912, 511, NULL, NULL), -- fairy-star: Ortega
    (913, 512, NULL, NULL), -- fighting-star: Eri
    -- Elite Four + Champions
    (919, 513, NULL, NULL), -- elite-four-rika: Rika
    (920, 514, NULL, NULL), -- elite-four-poppy: Poppy
    (921, 515, NULL, NULL), -- elite-four-larry: Larry (E4)
    (922, 516, NULL, NULL), -- elite-four-hassel: Hassel
    (923, 517, NULL, NULL), -- top-champion-geeta: Geeta
    (924, 518, NULL, NULL), -- champion-nemona: Nemona
    (927, 519, NULL, NULL);

-- professor-ai: Professor AI