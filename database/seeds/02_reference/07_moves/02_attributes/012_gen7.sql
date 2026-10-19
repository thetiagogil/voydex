-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen7 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Breakneck Blitz Generation VII
  (622, 7, 1, NULL, NULL, 1, 0, 'variable'),
  -- All-Out Pummeling Generation VII
  (624, 7, 7, NULL, NULL, 1, 0, 'variable'),
  -- Supersonic Skystrike Generation VII
  (626, 7, 10, NULL, NULL, 1, 0, 'variable'),
  -- Acid Downpour Generation VII
  (628, 7, 8, NULL, NULL, 1, 0, 'variable'),
  -- Tectonic Rage Generation VII
  (630, 7, 9, NULL, NULL, 1, 0, 'variable'),
  -- Continental Crush Generation VII
  (632, 7, 13, NULL, NULL, 1, 0, 'variable'),
  -- Savage Spin-Out Generation VII
  (634, 7, 12, NULL, NULL, 1, 0, 'variable'),
  -- Never-Ending Nightmare Generation VII
  (636, 7, 14, NULL, NULL, 1, 0, 'variable'),
  -- Corkscrew Crash Generation VII
  (638, 7, 17, NULL, NULL, 1, 0, 'variable'),
  -- Inferno Overdrive Generation VII
  (640, 7, 2, NULL, NULL, 1, 0, 'variable'),
  -- Hydro Vortex Generation VII
  (642, 7, 3, NULL, NULL, 1, 0, 'variable'),
  -- Bloom Doom Generation VII
  (644, 7, 5, NULL, NULL, 1, 0, 'variable'),
  -- Gigavolt Havoc Generation VII
  (646, 7, 4, NULL, NULL, 1, 0, 'variable'),
  -- Shattered Psyche Generation VII
  (648, 7, 11, NULL, NULL, 1, 0, 'variable'),
  -- Subzero Slammer Generation VII
  (650, 7, 6, NULL, NULL, 1, 0, 'variable'),
  -- Devastating Drake Generation VII
  (652, 7, 15, NULL, NULL, 1, 0, 'variable'),
  -- Black Hole Eclipse Generation VII
  (654, 7, 16, NULL, NULL, 1, 0, 'variable'),
  -- Twinkle Tackle Generation VII
  (656, 7, 18, NULL, NULL, 1, 0, 'variable'),
  -- Catastropika Generation VII
  (658, 7, 4, 210, NULL, 1, 0, 'physical'),
  -- Shore Up Generation VII
  (659, 7, 9, NULL, NULL, 5, 0, 'status'),
  -- First Impression Generation VII
  (660, 7, 12, 90, 100, 10, 2, 'physical'),
  -- Baneful Bunker Generation VII
  (661, 7, 8, NULL, NULL, 10, 4, 'status'),
  -- Spirit Shackle Generation VII
  (662, 7, 14, 80, 100, 10, 0, 'physical'),
  -- Darkest Lariat Generation VII
  (663, 7, 16, 85, 100, 10, 0, 'physical'),
  -- Sparkling Aria Generation VII
  (664, 7, 3, 90, 100, 10, 0, 'special'),
  -- Ice Hammer Generation VII
  (665, 7, 6, 100, 90, 10, 0, 'physical'),
  -- Floral Healing Generation VII
  (666, 7, 18, NULL, NULL, 10, 0, 'status'),
  -- High Horsepower Generation VII
  (667, 7, 9, 95, 95, 10, 0, 'physical'),
  -- Strength Sap Generation VII
  (668, 7, 5, NULL, 100, 10, 0, 'status'),
  -- Solar Blade Generation VII
  (669, 7, 5, 125, 100, 10, 0, 'physical'),
  -- Leafage Generation VII
  (670, 7, 5, 40, 100, 40, 0, 'physical'),
  -- Spotlight Generation VII
  (671, 7, 1, NULL, NULL, 15, 3, 'status'),
  -- Toxic Thread Generation VII
  (672, 7, 8, NULL, 100, 20, 0, 'status'),
  -- Laser Focus Generation VII
  (673, 7, 1, NULL, NULL, 30, 0, 'status'),
  -- Gear Up Generation VII
  (674, 7, 17, NULL, NULL, 20, 0, 'status'),
  -- Throat Chop Generation VII
  (675, 7, 16, 80, 100, 15, 0, 'physical'),
  -- Pollen Puff Generation VII
  (676, 7, 12, 90, 100, 15, 0, 'special'),
  -- Anchor Shot Generation VII
  (677, 7, 17, 80, 100, 20, 0, 'physical'),
  -- Psychic Terrain Generation VII
  (678, 7, 11, NULL, NULL, 10, 0, 'status'),
  -- Lunge Generation VII
  (679, 7, 12, 80, 100, 15, 0, 'physical'),
  -- Fire Lash Generation VII
  (680, 7, 2, 80, 100, 15, 0, 'physical'),
  -- Power Trip Generation VII
  (681, 7, 16, 20, 100, 10, 0, 'physical'),
  -- Burn Up Generation VII
  (682, 7, 2, 130, 100, 5, 0, 'special'),
  -- Speed Swap Generation VII
  (683, 7, 11, NULL, NULL, 10, 0, 'status'),
  -- Smart Strike Generation VII
  (684, 7, 17, 70, NULL, 10, 0, 'physical'),
  -- Purify Generation VII
  (685, 7, 8, NULL, NULL, 20, 0, 'status'),
  -- Revelation Dance Generation VII
  (686, 7, 1, 90, 100, 15, 0, 'special'),
  -- Core Enforcer Generation VII
  (687, 7, 15, 100, 100, 10, 0, 'special'),
  -- Trop Kick Generation VII
  (688, 7, 5, 70, 100, 15, 0, 'physical'),
  -- Instruct Generation VII
  (689, 7, 11, NULL, NULL, 15, 0, 'status'),
  -- Beak Blast Generation VII
  (690, 7, 10, 100, 100, 15, -3, 'physical'),
  -- Clanging Scales Generation VII
  (691, 7, 15, 110, 100, 5, 0, 'special'),
  -- Dragon Hammer Generation VII
  (692, 7, 15, 90, 100, 15, 0, 'physical'),
  -- Brutal Swing Generation VII
  (693, 7, 16, 60, 100, 20, 0, 'physical'),
  -- Aurora Veil Generation VII
  (694, 7, 6, NULL, NULL, 20, 0, 'status'),
  -- Sinister Arrow Raid Generation VII
  (695, 7, 14, 180, NULL, 1, 0, 'physical'),
  -- Malicious Moonsault Generation VII
  (696, 7, 16, 180, NULL, 1, 0, 'physical'),
  -- Oceanic Operetta Generation VII
  (697, 7, 3, 195, NULL, 1, 0, 'special'),
  -- Guardian of Alola Generation VII
  (698, 7, 18, NULL, NULL, 1, 0, 'special'),
  -- Soul-Stealing 7-Star Strike Generation VII
  (699, 7, 14, 195, NULL, 1, 0, 'physical'),
  -- Stoked Sparksurfer Generation VII
  (700, 7, 4, 175, NULL, 1, 0, 'special'),
  -- Pulverizing Pancake Generation VII
  (701, 7, 1, 210, NULL, 1, 0, 'physical'),
  -- Extreme Evoboost Generation VII
  (702, 7, 1, NULL, NULL, 1, 0, 'status'),
  -- Genesis Supernova Generation VII
  (703, 7, 11, 185, NULL, 1, 0, 'special'),
  -- Shell Trap Generation VII
  (704, 7, 2, 150, 100, 5, -3, 'special'),
  -- Fleur Cannon Generation VII
  (705, 7, 18, 130, 90, 5, 0, 'special'),
  -- Psychic Fangs Generation VII
  (706, 7, 11, 85, 100, 10, 0, 'physical'),
  -- Stomping Tantrum Generation VII
  (707, 7, 9, 75, 100, 10, 0, 'physical'),
  -- Shadow Bone Generation VII
  (708, 7, 14, 85, 100, 10, 0, 'physical'),
  -- Accelerock Generation VII
  (709, 7, 13, 40, 100, 20, 1, 'physical'),
  -- Liquidation Generation VII
  (710, 7, 3, 85, 100, 10, 0, 'physical'),
  -- Prismatic Laser Generation VII
  (711, 7, 11, 160, 100, 10, 0, 'special'),
  -- Spectral Thief Generation VII
  (712, 7, 14, 90, 100, 10, 0, 'physical'),
  -- Sunsteel Strike Generation VII
  (713, 7, 17, 100, 100, 5, 0, 'physical'),
  -- Moongeist Beam Generation VII
  (714, 7, 14, 100, 100, 5, 0, 'special'),
  -- Tearful Look Generation VII
  (715, 7, 1, NULL, NULL, 20, 0, 'status'),
  -- Zing Zap Generation VII
  (716, 7, 4, 80, 100, 10, 0, 'physical'),
  -- Nature's Madness Generation VII
  (717, 7, 18, NULL, 90, 10, 0, 'special'),
  -- Multi-Attack Generation VII
  (718, 7, 1, 90, 100, 10, 0, 'physical'),
  -- 10,000,000 Volt Thunderbolt Generation VII
  (719, 7, 4, 195, NULL, 1, 0, 'special'),
  -- Mind Blown Generation VII
  (720, 7, 2, 150, 100, 5, 0, 'special'),
  -- Plasma Fists Generation VII
  (721, 7, 4, 100, 100, 15, 0, 'physical'),
  -- Photon Geyser Generation VII
  (722, 7, 11, 100, 100, 5, 0, 'special'),
  -- Light That Burns the Sky Generation VII
  (723, 7, 11, 200, NULL, 1, 0, 'special'),
  -- Searing Sunraze Smash Generation VII
  (724, 7, 17, 200, NULL, 1, 0, 'physical'),
  -- Menacing Moonraze Maelstrom Generation VII
  (725, 7, 14, 200, NULL, 1, 0, 'special'),
  -- Let's Snuggle Forever Generation VII
  (726, 7, 18, 190, NULL, 1, 0, 'physical'),
  -- Splintered Stormshards Generation VII
  (727, 7, 13, 190, NULL, 1, 0, 'physical'),
  -- Clangorous Soulblaze Generation VII
  (728, 7, 15, 185, NULL, 1, 0, 'special'),
  -- Zippy Zap Generation VII
  (729, 7, 4, 50, 100, 15, 2, 'physical'),
  -- Splishy Splash Generation VII
  (730, 7, 3, 90, 100, 15, 0, 'special'),
  -- Floaty Fall Generation VII
  (731, 7, 10, 90, 95, 15, 0, 'physical'),
  -- Pika Papow Generation VII
  (732, 7, 4, NULL, NULL, 20, 0, 'special'),
  -- Bouncy Bubble Generation VII
  (733, 7, 3, 90, 100, 15, 0, 'special'),
  -- Buzzy Buzz Generation VII
  (734, 7, 4, 90, 100, 15, 0, 'special'),
  -- Sizzly Slide Generation VII
  (735, 7, 2, 90, 100, 15, 0, 'physical'),
  -- Glitzy Glow Generation VII
  (736, 7, 11, 90, 100, 15, 0, 'special'),
  -- Baddy Bad Generation VII
  (737, 7, 16, 90, 100, 15, 0, 'special'),
  -- Sappy Seed Generation VII
  (738, 7, 5, 90, 100, 15, 0, 'physical'),
  -- Freezy Frost Generation VII
  (739, 7, 6, 90, 100, 15, 0, 'special'),
  -- Sparkly Swirl Generation VII
  (740, 7, 18, 90, 100, 15, 0, 'special'),
  -- Veevee Volley Generation VII
  (741, 7, 1, NULL, NULL, 20, 0, 'physical'),
  -- Double Iron Bash Generation VII
  (742, 7, 17, 60, 100, 5, 0, 'physical');
