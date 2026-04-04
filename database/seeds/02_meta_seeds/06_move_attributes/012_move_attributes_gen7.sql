-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #622 Breakneck Blitz (Physical)
    (622, 7, 1, NULL, NULL, 1, 0, 'physical'),
    -- #623 Breakneck Blitz (Special)
    (623, 7, 1, NULL, NULL, 1, 0, 'special'),
    -- #624 All-Out Pummeling (Physical)
    (624, 7, 7, NULL, NULL, 1, 0, 'physical'),
    -- #625 All-Out Pummeling (Special)
    (625, 7, 7, NULL, NULL, 1, 0, 'special'),
    -- #626 Supersonic Skystrike (Physical)
    (626, 7, 10, NULL, NULL, 1, 0, 'physical'),
    -- #627 Supersonic Skystrike (Special)
    (627, 7, 10, NULL, NULL, 1, 0, 'special'),
    -- #628 Acid Downpour (Physical)
    (628, 7, 8, NULL, NULL, 1, 0, 'physical'),
    -- #629 Acid Downpour (Special)
    (629, 7, 8, NULL, NULL, 1, 0, 'special'),
    -- #630 Tectonic Rage (Physical)
    (630, 7, 9, NULL, NULL, 1, 0, 'physical'),
    -- #631 Tectonic Rage (Special)
    (631, 7, 9, NULL, NULL, 1, 0, 'special'),
    -- #632 Continental Crush (Physical)
    (632, 7, 13, NULL, NULL, 1, 0, 'physical'),
    -- #633 Continental Crush (Special)
    (633, 7, 13, NULL, NULL, 1, 0, 'special'),
    -- #634 Savage Spin-Out (Physical)
    (634, 7, 12, NULL, NULL, 1, 0, 'physical'),
    -- #635 Savage Spin-Out (Special)
    (635, 7, 12, NULL, NULL, 1, 0, 'special'),
    -- #636 Never-Ending Nightmare (Physical)
    (636, 7, 14, NULL, NULL, 1, 0, 'physical'),
    -- #637 Never-Ending Nightmare (Special)
    (637, 7, 14, NULL, NULL, 1, 0, 'special'),
    -- #638 Corkscrew Crash (Physical)
    (638, 7, 17, NULL, NULL, 1, 0, 'physical'),
    -- #639 Corkscrew Crash (Special)
    (639, 7, 17, NULL, NULL, 1, 0, 'special'),
    -- #640 Inferno Overdrive (Physical)
    (640, 7, 2, NULL, NULL, 1, 0, 'physical'),
    -- #641 Inferno Overdrive (Special)
    (641, 7, 2, NULL, NULL, 1, 0, 'special'),
    -- #642 Hydro Vortex (Physical)
    (642, 7, 3, NULL, NULL, 1, 0, 'physical'),
    -- #643 Hydro Vortex (Special)
    (643, 7, 3, NULL, NULL, 1, 0, 'special'),
    -- #644 Bloom Doom (Physical)
    (644, 7, 5, NULL, NULL, 1, 0, 'physical'),
    -- #645 Bloom Doom (Special)
    (645, 7, 5, NULL, NULL, 1, 0, 'special'),
    -- #646 Gigavolt Havoc (Physical)
    (646, 7, 4, NULL, NULL, 1, 0, 'physical'),
    -- #647 Gigavolt Havoc (Special)
    (647, 7, 4, NULL, NULL, 1, 0, 'special'),
    -- #648 Shattered Psyche (Physical)
    (648, 7, 11, NULL, NULL, 1, 0, 'physical'),
    -- #649 Shattered Psyche (Special)
    (649, 7, 11, NULL, NULL, 1, 0, 'special'),
    -- #650 Subzero Slammer (Physical)
    (650, 7, 6, NULL, NULL, 1, 0, 'physical'),
    -- #651 Subzero Slammer (Special)
    (651, 7, 6, NULL, NULL, 1, 0, 'special'),
    -- #652 Devastating Drake (Physical)
    (652, 7, 15, NULL, NULL, 1, 0, 'physical'),
    -- #653 Devastating Drake (Special)
    (653, 7, 15, NULL, NULL, 1, 0, 'special'),
    -- #654 Black Hole Eclipse (Physical)
    (654, 7, 16, NULL, NULL, 1, 0, 'physical'),
    -- #655 Black Hole Eclipse (Special)
    (655, 7, 16, NULL, NULL, 1, 0, 'special'),
    -- #656 Twinkle Tackle (Physical)
    (656, 7, 18, NULL, NULL, 1, 0, 'physical'),
    -- #657 Twinkle Tackle (Special)
    (657, 7, 18, NULL, NULL, 1, 0, 'special'),
    -- #658 Catastropika
    (658, 7, 4, 210, NULL, 1, 0, 'physical'),
    -- #659 Shore Up
    (659, 7, 9, NULL, NULL, 5, 0, 'status'),
    -- #660 First Impression
    (660, 7, 12, 90, 100, 10, 2, 'physical'),
    -- #661 Baneful Bunker
    (661, 7, 8, NULL, NULL, 10, 4, 'status'),
    -- #662 Spirit Shackle
    (662, 7, 14, 80, 100, 10, 0, 'physical'),
    -- #663 Darkest Lariat
    (663, 7, 16, 85, 100, 10, 0, 'physical'),
    -- #664 Sparkling Aria
    (664, 7, 3, 90, 100, 10, 0, 'special'),
    -- #665 Ice Hammer
    (665, 7, 6, 100, 90, 10, 0, 'physical'),
    -- #666 Floral Healing
    (666, 7, 18, NULL, NULL, 10, 0, 'status'),
    -- #667 High Horsepower
    (667, 7, 9, 95, 95, 10, 0, 'physical'),
    -- #668 Strength Sap
    (668, 7, 5, NULL, 100, 10, 0, 'status'),
    -- #669 Solar Blade
    (669, 7, 5, 125, 100, 10, 0, 'physical'),
    -- #670 Leafage
    (670, 7, 5, 40, 100, 40, 0, 'physical'),
    -- #671 Spotlight
    (671, 7, 1, NULL, NULL, 15, 3, 'status'),
    -- #672 Toxic Thread
    (672, 7, 8, NULL, 100, 20, 0, 'status'),
    -- #673 Laser Focus
    (673, 7, 1, NULL, NULL, 30, 0, 'status'),
    -- #674 Gear Up
    (674, 7, 17, NULL, NULL, 20, 0, 'status'),
    -- #675 Throat Chop
    (675, 7, 16, 80, 100, 15, 0, 'physical'),
    -- #676 Pollen Puff
    (676, 7, 12, 90, 100, 15, 0, 'special'),
    -- #677 Anchor Shot
    (677, 7, 17, 80, 100, 20, 0, 'physical'),
    -- #678 Psychic Terrain
    (678, 7, 11, NULL, NULL, 10, 0, 'status'),
    -- #679 Lunge
    (679, 7, 12, 80, 100, 15, 0, 'physical'),
    -- #680 Fire Lash
    (680, 7, 2, 80, 100, 15, 0, 'physical'),
    -- #681 Power Trip
    (681, 7, 16, 20, 100, 10, 0, 'physical'),
    -- #682 Burn Up
    (682, 7, 2, 130, 100, 5, 0, 'special'),
    -- #683 Speed Swap
    (683, 7, 11, NULL, NULL, 10, 0, 'status'),
    -- #684 Smart Strike
    (684, 7, 17, 70, NULL, 10, 0, 'physical'),
    -- #685 Purify
    (685, 7, 8, NULL, NULL, 20, 0, 'status'),
    -- #686 Revelation Dance
    (686, 7, 1, 90, 100, 15, 0, 'special'),
    -- #687 Core Enforcer
    (687, 7, 15, 100, 100, 10, 0, 'special'),
    -- #688 Trop Kick
    (688, 7, 5, 70, 100, 15, 0, 'physical'),
    -- #689 Instruct
    (689, 7, 11, NULL, NULL, 15, 0, 'status'),
    -- #690 Beak Blast
    (690, 7, 10, 100, 100, 15, -3, 'physical'),
    -- #691 Clanging Scales
    (691, 7, 15, 110, 100, 5, 0, 'special'),
    -- #692 Dragon Hammer
    (692, 7, 15, 90, 100, 15, 0, 'physical'),
    -- #693 Brutal Swing
    (693, 7, 16, 60, 100, 20, 0, 'physical'),
    -- #694 Aurora Veil
    (694, 7, 6, NULL, NULL, 20, 0, 'status'),
    -- #695 Sinister Arrow Raid
    (695, 7, 14, 180, NULL, 1, 0, 'physical'),
    -- #696 Malicious Moonsault
    (696, 7, 16, 180, NULL, 1, 0, 'physical'),
    -- #697 Oceanic Operetta
    (697, 7, 3, 195, NULL, 1, 0, 'special'),
    -- #698 Guardian of Alola
    (698, 7, 18, NULL, NULL, 1, 0, 'special'),
    -- #699 Soul-Stealing 7-Star Strike
    (699, 7, 14, 195, NULL, 1, 0, 'physical'),
    -- #700 Stoked Sparksurfer
    (700, 7, 4, 175, NULL, 1, 0, 'special'),
    -- #701 Pulverizing Pancake
    (701, 7, 1, 210, NULL, 1, 0, 'physical'),
    -- #702 Extreme Evoboost
    (702, 7, 1, NULL, NULL, 1, 0, 'status'),
    -- #703 Genesis Supernova
    (703, 7, 11, 185, NULL, 1, 0, 'special'),
    -- #704 Shell Trap
    (704, 7, 2, 150, 100, 5, -3, 'special'),
    -- #705 Fleur Cannon
    (705, 7, 18, 130, 90, 5, 0, 'special'),
    -- #706 Psychic Fangs
    (706, 7, 11, 85, 100, 10, 0, 'physical'),
    -- #707 Stomping Tantrum
    (707, 7, 9, 75, 100, 10, 0, 'physical'),
    -- #708 Shadow Bone
    (708, 7, 14, 85, 100, 10, 0, 'physical'),
    -- #709 Accelerock
    (709, 7, 13, 40, 100, 20, 1, 'physical'),
    -- #710 Liquidation
    (710, 7, 3, 85, 100, 10, 0, 'physical'),
    -- #711 Prismatic Laser
    (711, 7, 11, 160, 100, 10, 0, 'special'),
    -- #712 Spectral Thief
    (712, 7, 14, 90, 100, 10, 0, 'physical'),
    -- #713 Sunsteel Strike
    (713, 7, 17, 100, 100, 5, 0, 'physical'),
    -- #714 Moongeist Beam
    (714, 7, 14, 100, 100, 5, 0, 'special'),
    -- #715 Tearful Look
    (715, 7, 1, NULL, NULL, 20, 0, 'status'),
    -- #716 Zing Zap
    (716, 7, 4, 80, 100, 10, 0, 'physical'),
    -- #717 Nature
    (717, 7, 18, NULL, 90, 10, 0, 'special'),
    -- #718 Multi-Attack
    (718, 7, 1, 90, 100, 10, 0, 'physical'),
    -- #719 10,000,000 Volt Thunderbolt
    (719, 7, 4, 195, NULL, 1, 0, 'special'),
    -- #720 Mind Blown
    (720, 7, 2, 150, 100, 5, 0, 'special'),
    -- #721 Plasma Fists
    (721, 7, 4, 100, 100, 15, 0, 'physical'),
    -- #722 Photon Geyser
    (722, 7, 11, 100, 100, 5, 0, 'special'),
    -- #723 Light That Burns the Sky
    (723, 7, 11, 200, NULL, 1, 0, 'special'),
    -- #724 Searing Sunraze Smash
    (724, 7, 17, 200, NULL, 1, 0, 'physical'),
    -- #725 Menacing Moonraze Maelstrom
    (725, 7, 14, 200, NULL, 1, 0, 'special'),
    -- #726 Let
    (726, 7, 18, 190, NULL, 1, 0, 'physical'),
    -- #727 Splintered Stormshards
    (727, 7, 13, 190, NULL, 1, 0, 'physical'),
    -- #728 Clangorous Soulblaze
    (728, 7, 15, 185, NULL, 1, 0, 'special'),
    -- #729 Zippy Zap
    (729, 7, 4, 50, 100, 15, 2, 'physical'),
    -- #730 Splishy Splash
    (730, 7, 3, 90, 100, 15, 0, 'special'),
    -- #731 Floaty Fall
    (731, 7, 10, 90, 95, 15, 0, 'physical'),
    -- #732 Pika Papow
    (732, 7, 4, NULL, NULL, 20, 0, 'special'),
    -- #733 Bouncy Bubble
    (733, 7, 3, 90, 100, 15, 0, 'special'),
    -- #734 Buzzy Buzz
    (734, 7, 4, 90, 100, 15, 0, 'special'),
    -- #735 Sizzly Slide
    (735, 7, 2, 90, 100, 15, 0, 'physical'),
    -- #736 Glitzy Glow
    (736, 7, 11, 90, 100, 15, 0, 'special'),
    -- #737 Baddy Bad
    (737, 7, 16, 90, 100, 15, 0, 'special'),
    -- #738 Sappy Seed
    (738, 7, 5, 90, 100, 15, 0, 'physical'),
    -- #739 Freezy Frost
    (739, 7, 6, 90, 100, 15, 0, 'special'),
    -- #740 Sparkly Swirl
    (740, 7, 18, 90, 100, 15, 0, 'special'),
    -- #741 Veevee Volley
    (741, 7, 1, NULL, NULL, 20, 0, 'physical'),
    -- #742 Double Iron Bash
    (742, 7, 17, 60, 100, 5, 0, 'physical');