-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Z-Crystal and Z-Move pages.
-- Cross-check: Serebii Sun / Moon and Ultra Sun / Ultra Moon Z-Move pages.
-- Scope note: one row per crystal and the move it turns into a Z-Move.
-- Pikashunium Z waits for the cap Pikachu forms (#121), so it has no row yet.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.z_move_sources
-- Scope: type Z-Crystals (any damaging move of that type) and exclusive
-- Z-Crystals (one move on one Pokémon).
-- ============================================================================

INSERT INTO reference.z_move_sources (z_move_id, item_id, base_type_id, species_id, form_id, base_move_id)
VALUES
  -- Normalium Z: Normal move becomes Breakneck Blitz
  (622, 245, 1, NULL, NULL, NULL),
  -- Fightinium Z: Fighting move becomes All-Out Pummeling
  (624, 28, 7, NULL, NULL, NULL),
  -- Flyinium Z: Flying move becomes Supersonic Skystrike
  (626, 31, 10, NULL, NULL, NULL),
  -- Poisonium Z: Poison move becomes Acid Downpour
  (628, 29, 8, NULL, NULL, NULL),
  -- Groundium Z: Ground move becomes Tectonic Rage
  (630, 30, 9, NULL, NULL, NULL),
  -- Rockium Z: Rock move becomes Continental Crush
  (632, 34, 13, NULL, NULL, NULL),
  -- Buginium Z: Bug move becomes Savage Spin-Out
  (634, 33, 12, NULL, NULL, NULL),
  -- Ghostium Z: Ghost move becomes Never-Ending Nightmare
  (636, 35, 14, NULL, NULL, NULL),
  -- Steelium Z: Steel move becomes Corkscrew Crash
  (638, 38, 17, NULL, NULL, NULL),
  -- Firium Z: Fire move becomes Inferno Overdrive
  (640, 23, 2, NULL, NULL, NULL),
  -- Waterium Z: Water move becomes Hydro Vortex
  (642, 24, 3, NULL, NULL, NULL),
  -- Grassium Z: Grass move becomes Bloom Doom
  (644, 26, 5, NULL, NULL, NULL),
  -- Electrium Z: Electric move becomes Gigavolt Havoc
  (646, 25, 4, NULL, NULL, NULL),
  -- Psychium Z: Psychic move becomes Shattered Psyche
  (648, 32, 11, NULL, NULL, NULL),
  -- Icium Z: Ice move becomes Subzero Slammer
  (650, 27, 6, NULL, NULL, NULL),
  -- Dragonium Z: Dragon move becomes Devastating Drake
  (652, 36, 15, NULL, NULL, NULL),
  -- Darkinium Z: Dark move becomes Black Hole Eclipse
  (654, 37, 16, NULL, NULL, NULL),
  -- Fairium Z: Fairy move becomes Twinkle Tackle
  (656, 39, 18, NULL, NULL, NULL),
  -- Pikanium Z: Pikachu's Volt Tackle becomes Catastropika
  (658, 256, NULL, 25, 2500, 344),
  -- Decidium Z: Decidueye's Spirit Shackle becomes Sinister Arrow Raid
  (695, 247, NULL, 724, 72400, 662),
  -- Incinium Z: Incineroar's Darkest Lariat becomes Malicious Moonsault
  (696, 249, NULL, 727, 72700, 663),
  -- Primarium Z: Primarina's Sparkling Aria becomes Oceanic Operetta
  (697, 258, NULL, 730, 73000, 664),
  -- Tapunium Z: Tapu Koko's Nature's Madness becomes Guardian of Alola
  (698, 261, NULL, 785, 78500, 717),
  -- Tapunium Z: Tapu Lele's Nature's Madness becomes Guardian of Alola
  (698, 261, NULL, 786, 78600, 717),
  -- Tapunium Z: Tapu Bulu's Nature's Madness becomes Guardian of Alola
  (698, 261, NULL, 787, 78700, 717),
  -- Tapunium Z: Tapu Fini's Nature's Madness becomes Guardian of Alola
  (698, 261, NULL, 788, 78800, 717),
  -- Marshadium Z: Marshadow's Spectral Thief becomes Soul-Stealing 7-Star Strike
  (699, 253, NULL, 802, 80200, 712),
  -- Aloraichium Z: Alolan Raichu's Thunderbolt becomes Stoked Sparksurfer
  (700, 246, NULL, 26, 2601, 85),
  -- Snorlium Z: Snorlax's Giga Impact becomes Pulverizing Pancake
  (701, 259, NULL, 143, 14300, 416),
  -- Eevium Z: Eevee's Last Resort becomes Extreme Evoboost
  (702, 248, NULL, 133, 13300, 387),
  -- Mewnium Z: Mew's Psychic becomes Genesis Supernova
  (703, 254, NULL, 151, 15100, 94),
  -- Ultranecrozium Z: Ultra Necrozma's Photon Geyser becomes Light That Burns the Sky
  (723, 262, NULL, 800, 80003, 722),
  -- Solganium Z: Solgaleo's Sunsteel Strike becomes Searing Sunraze Smash
  (724, 260, NULL, 791, 79100, 713),
  -- Solganium Z: Dusk Mane Necrozma's Sunsteel Strike becomes Searing Sunraze Smash
  (724, 260, NULL, 800, 80001, 713),
  -- Lunalium Z: Lunala's Moongeist Beam becomes Menacing Moonraze Maelstrom
  (725, 251, NULL, 792, 79200, 714),
  -- Lunalium Z: Dawn Wings Necrozma's Moongeist Beam becomes Menacing Moonraze Maelstrom
  (725, 251, NULL, 800, 80002, 714),
  -- Mimikium Z: Mimikyu's Play Rough becomes Let's Snuggle Forever (either form)
  (726, 255, NULL, 778, NULL, 583),
  -- Lycanium Z: Lycanroc's Stone Edge becomes Splintered Stormshards (any form)
  (727, 252, NULL, 745, NULL, 444),
  -- Kommonium Z: Kommo-o's Clanging Scales becomes Clangorous Soulblaze
  (728, 250, NULL, 784, 78400, 691);
