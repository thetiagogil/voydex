-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 7 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Breakneck Blitz
  (622, 'breakneck-blitz', 'Breakneck Blitz', 2, 622, 7, 622),
  -- All-Out Pummeling
  (624, 'all-out-pummeling', 'All-Out Pummeling', 2, 624, 7, 623),
  -- Supersonic Skystrike
  (626, 'supersonic-skystrike', 'Supersonic Skystrike', 2, 626, 7, 624),
  -- Acid Downpour
  (628, 'acid-downpour', 'Acid Downpour', 2, 628, 7, 625),
  -- Tectonic Rage
  (630, 'tectonic-rage', 'Tectonic Rage', 2, 630, 7, 626),
  -- Continental Crush
  (632, 'continental-crush', 'Continental Crush', 2, 632, 7, 627),
  -- Savage Spin-Out
  (634, 'savage-spin-out', 'Savage Spin-Out', 2, 634, 7, 628),
  -- Never-Ending Nightmare
  (636, 'never-ending-nightmare', 'Never-Ending Nightmare', 2, 636, 7, 629),
  -- Corkscrew Crash
  (638, 'corkscrew-crash', 'Corkscrew Crash', 2, 638, 7, 630),
  -- Inferno Overdrive
  (640, 'inferno-overdrive', 'Inferno Overdrive', 2, 640, 7, 631),
  -- Hydro Vortex
  (642, 'hydro-vortex', 'Hydro Vortex', 2, 642, 7, 632),
  -- Bloom Doom
  (644, 'bloom-doom', 'Bloom Doom', 2, 644, 7, 633),
  -- Gigavolt Havoc
  (646, 'gigavolt-havoc', 'Gigavolt Havoc', 2, 646, 7, 634),
  -- Shattered Psyche
  (648, 'shattered-psyche', 'Shattered Psyche', 2, 648, 7, 635),
  -- Subzero Slammer
  (650, 'subzero-slammer', 'Subzero Slammer', 2, 650, 7, 636),
  -- Devastating Drake
  (652, 'devastating-drake', 'Devastating Drake', 2, 652, 7, 637),
  -- Black Hole Eclipse
  (654, 'black-hole-eclipse', 'Black Hole Eclipse', 2, 654, 7, 638),
  -- Twinkle Tackle
  (656, 'twinkle-tackle', 'Twinkle Tackle', 2, 656, 7, 639),
  -- Catastropika
  (658, 'catastropika', 'Catastropika', 2, 658, 7, 640),
  -- Shore Up
  (659, 'shore-up', 'Shore Up', 1, 659, 7, 641),
  -- First Impression
  (660, 'first-impression', 'First Impression', 1, 660, 7, 642),
  -- Baneful Bunker
  (661, 'baneful-bunker', 'Baneful Bunker', 1, 661, 7, 643),
  -- Spirit Shackle
  (662, 'spirit-shackle', 'Spirit Shackle', 1, 662, 7, 644),
  -- Darkest Lariat
  (663, 'darkest-lariat', 'Darkest Lariat', 1, 663, 7, 645),
  -- Sparkling Aria
  (664, 'sparkling-aria', 'Sparkling Aria', 1, 664, 7, 646),
  -- Ice Hammer
  (665, 'ice-hammer', 'Ice Hammer', 1, 665, 7, 647),
  -- Floral Healing
  (666, 'floral-healing', 'Floral Healing', 1, 666, 7, 648),
  -- High Horsepower
  (667, 'high-horsepower', 'High Horsepower', 1, 667, 7, 649),
  -- Strength Sap
  (668, 'strength-sap', 'Strength Sap', 1, 668, 7, 650),
  -- Solar Blade
  (669, 'solar-blade', 'Solar Blade', 1, 669, 7, 651),
  -- Leafage
  (670, 'leafage', 'Leafage', 1, 670, 7, 652),
  -- Spotlight
  (671, 'spotlight', 'Spotlight', 1, 671, 7, 653),
  -- Toxic Thread
  (672, 'toxic-thread', 'Toxic Thread', 1, 672, 7, 654),
  -- Laser Focus
  (673, 'laser-focus', 'Laser Focus', 1, 673, 7, 655),
  -- Gear Up
  (674, 'gear-up', 'Gear Up', 1, 674, 7, 656),
  -- Throat Chop
  (675, 'throat-chop', 'Throat Chop', 1, 675, 7, 657),
  -- Pollen Puff
  (676, 'pollen-puff', 'Pollen Puff', 1, 676, 7, 658),
  -- Anchor Shot
  (677, 'anchor-shot', 'Anchor Shot', 1, 677, 7, 659),
  -- Psychic Terrain
  (678, 'psychic-terrain', 'Psychic Terrain', 1, 678, 7, 660),
  -- Lunge
  (679, 'lunge', 'Lunge', 1, 679, 7, 661),
  -- Fire Lash
  (680, 'fire-lash', 'Fire Lash', 1, 680, 7, 662),
  -- Power Trip
  (681, 'power-trip', 'Power Trip', 1, 681, 7, 663),
  -- Burn Up
  (682, 'burn-up', 'Burn Up', 1, 682, 7, 664),
  -- Speed Swap
  (683, 'speed-swap', 'Speed Swap', 1, 683, 7, 665),
  -- Smart Strike
  (684, 'smart-strike', 'Smart Strike', 1, 684, 7, 666),
  -- Purify
  (685, 'purify', 'Purify', 1, 685, 7, 667),
  -- Revelation Dance
  (686, 'revelation-dance', 'Revelation Dance', 1, 686, 7, 668),
  -- Core Enforcer
  (687, 'core-enforcer', 'Core Enforcer', 1, 687, 7, 669),
  -- Trop Kick
  (688, 'trop-kick', 'Trop Kick', 1, 688, 7, 670),
  -- Instruct
  (689, 'instruct', 'Instruct', 1, 689, 7, 671),
  -- Beak Blast
  (690, 'beak-blast', 'Beak Blast', 1, 690, 7, 672),
  -- Clanging Scales
  (691, 'clanging-scales', 'Clanging Scales', 1, 691, 7, 673),
  -- Dragon Hammer
  (692, 'dragon-hammer', 'Dragon Hammer', 1, 692, 7, 674),
  -- Brutal Swing
  (693, 'brutal-swing', 'Brutal Swing', 1, 693, 7, 675),
  -- Aurora Veil
  (694, 'aurora-veil', 'Aurora Veil', 1, 694, 7, 676),
  -- Sinister Arrow Raid
  (695, 'sinister-arrow-raid', 'Sinister Arrow Raid', 2, 695, 7, 677),
  -- Malicious Moonsault
  (696, 'malicious-moonsault', 'Malicious Moonsault', 2, 696, 7, 678),
  -- Oceanic Operetta
  (697, 'oceanic-operetta', 'Oceanic Operetta', 2, 697, 7, 679),
  -- Guardian of Alola
  (698, 'guardian-of-alola', 'Guardian of Alola', 2, 698, 7, 680),
  -- Soul-Stealing 7-Star Strike
  (699, 'soul-stealing-7-star-strike', 'Soul-Stealing 7-Star Strike', 2, 699, 7, 681),
  -- Stoked Sparksurfer
  (700, 'stoked-sparksurfer', 'Stoked Sparksurfer', 2, 700, 7, 682),
  -- Pulverizing Pancake
  (701, 'pulverizing-pancake', 'Pulverizing Pancake', 2, 701, 7, 683),
  -- Extreme Evoboost
  (702, 'extreme-evoboost', 'Extreme Evoboost', 2, 702, 7, 684),
  -- Genesis Supernova
  (703, 'genesis-supernova', 'Genesis Supernova', 2, 703, 7, 685),
  -- Shell Trap
  (704, 'shell-trap', 'Shell Trap', 1, 704, 7, 686),
  -- Fleur Cannon
  (705, 'fleur-cannon', 'Fleur Cannon', 1, 705, 7, 687),
  -- Psychic Fangs
  (706, 'psychic-fangs', 'Psychic Fangs', 1, 706, 7, 688),
  -- Stomping Tantrum
  (707, 'stomping-tantrum', 'Stomping Tantrum', 1, 707, 7, 689),
  -- Shadow Bone
  (708, 'shadow-bone', 'Shadow Bone', 1, 708, 7, 690),
  -- Accelerock
  (709, 'accelerock', 'Accelerock', 1, 709, 7, 691),
  -- Liquidation
  (710, 'liquidation', 'Liquidation', 1, 710, 7, 692),
  -- Prismatic Laser
  (711, 'prismatic-laser', 'Prismatic Laser', 1, 711, 7, 693),
  -- Spectral Thief
  (712, 'spectral-thief', 'Spectral Thief', 1, 712, 7, 694),
  -- Sunsteel Strike
  (713, 'sunsteel-strike', 'Sunsteel Strike', 1, 713, 7, 695),
  -- Moongeist Beam
  (714, 'moongeist-beam', 'Moongeist Beam', 1, 714, 7, 696),
  -- Tearful Look
  (715, 'tearful-look', 'Tearful Look', 1, 715, 7, 697),
  -- Zing Zap
  (716, 'zing-zap', 'Zing Zap', 1, 716, 7, 698),
  -- Nature's Madness
  (717, 'natures-madness', 'Nature''s Madness', 1, 717, 7, 699),
  -- Multi-Attack
  (718, 'multi-attack', 'Multi-Attack', 1, 718, 7, 700),
  -- 10,000,000 Volt Thunderbolt
  (719, '10-000-000-volt-thunderbolt', '10,000,000 Volt Thunderbolt', 2, 719, 7, 701),
  -- Mind Blown
  (720, 'mind-blown', 'Mind Blown', 1, 720, 7, 702),
  -- Plasma Fists
  (721, 'plasma-fists', 'Plasma Fists', 1, 721, 7, 703),
  -- Photon Geyser
  (722, 'photon-geyser', 'Photon Geyser', 1, 722, 7, 704),
  -- Light That Burns the Sky
  (723, 'light-that-burns-the-sky', 'Light That Burns the Sky', 2, 723, 7, 705),
  -- Searing Sunraze Smash
  (724, 'searing-sunraze-smash', 'Searing Sunraze Smash', 2, 724, 7, 706),
  -- Menacing Moonraze Maelstrom
  (725, 'menacing-moonraze-maelstrom', 'Menacing Moonraze Maelstrom', 2, 725, 7, 707),
  -- Let's Snuggle Forever
  (726, 'lets-snuggle-forever', 'Let''s Snuggle Forever', 2, 726, 7, 708),
  -- Splintered Stormshards
  (727, 'splintered-stormshards', 'Splintered Stormshards', 2, 727, 7, 709),
  -- Clangorous Soulblaze
  (728, 'clangorous-soulblaze', 'Clangorous Soulblaze', 2, 728, 7, 710),
  -- Zippy Zap
  (729, 'zippy-zap', 'Zippy Zap', 1, 729, 7, 711),
  -- Splishy Splash
  (730, 'splishy-splash', 'Splishy Splash', 1, 730, 7, 712),
  -- Floaty Fall
  (731, 'floaty-fall', 'Floaty Fall', 1, 731, 7, 713),
  -- Pika Papow
  (732, 'pika-papow', 'Pika Papow', 1, 732, 7, 714),
  -- Bouncy Bubble
  (733, 'bouncy-bubble', 'Bouncy Bubble', 1, 733, 7, 715),
  -- Buzzy Buzz
  (734, 'buzzy-buzz', 'Buzzy Buzz', 1, 734, 7, 716),
  -- Sizzly Slide
  (735, 'sizzly-slide', 'Sizzly Slide', 1, 735, 7, 717),
  -- Glitzy Glow
  (736, 'glitzy-glow', 'Glitzy Glow', 1, 736, 7, 718),
  -- Baddy Bad
  (737, 'baddy-bad', 'Baddy Bad', 1, 737, 7, 719),
  -- Sappy Seed
  (738, 'sappy-seed', 'Sappy Seed', 1, 738, 7, 720),
  -- Freezy Frost
  (739, 'freezy-frost', 'Freezy Frost', 1, 739, 7, 721),
  -- Sparkly Swirl
  (740, 'sparkly-swirl', 'Sparkly Swirl', 1, 740, 7, 722),
  -- Veevee Volley
  (741, 'veevee-volley', 'Veevee Volley', 1, 741, 7, 723),
  -- Double Iron Bash
  (742, 'double-iron-bash', 'Double Iron Bash', 1, 742, 7, 724);
