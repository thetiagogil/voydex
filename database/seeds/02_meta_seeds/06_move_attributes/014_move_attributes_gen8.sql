-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #743 Max Guard
    (743, 8, 1, NULL, NULL, 10, 4, 'status'),
    -- #744 Dynamax Cannon
    (744, 8, 15, 100, 100, 5, 0, 'special'),
    -- #745 Snipe Shot
    (745, 8, 3, 80, 100, 15, 0, 'special'),
    -- #746 Jaw Lock
    (746, 8, 16, 80, 100, 10, 0, 'physical'),
    -- #747 Stuff Cheeks
    (747, 8, 1, NULL, NULL, 10, 0, 'status'),
    -- #748 No Retreat
    (748, 8, 7, NULL, NULL, 5, 0, 'status'),
    -- #749 Tar Shot
    (749, 8, 13, NULL, 100, 15, 0, 'status'),
    -- #750 Magic Powder
    (750, 8, 11, NULL, 100, 20, 0, 'status'),
    -- #751 Dragon Darts
    (751, 8, 15, 50, 100, 10, 0, 'physical'),
    -- #752 Teatime
    (752, 8, 1, NULL, NULL, 10, 0, 'status'),
    -- #753 Octolock
    (753, 8, 7, NULL, 100, 15, 0, 'status'),
    -- #754 Bolt Beak
    (754, 8, 4, 85, 100, 10, 0, 'physical'),
    -- #755 Fishious Rend
    (755, 8, 3, 85, 100, 10, 0, 'physical'),
    -- #756 Court Change
    (756, 8, 1, NULL, 100, 10, 0, 'status'),
    -- #757 Max Flare
    (757, 8, 2, 100, NULL, 10, 0, 'physical'),
    -- #758 Max Flutterby
    (758, 8, 12, 10, NULL, 10, 0, 'physical'),
    -- #759 Max Lightning
    (759, 8, 4, 10, NULL, 10, 0, 'physical'),
    -- #760 Max Strike
    (760, 8, 1, 10, NULL, 10, 0, 'physical'),
    -- #761 Max Knuckle
    (761, 8, 7, 10, NULL, 10, 0, 'physical'),
    -- #762 Max Phantasm
    (762, 8, 14, 10, NULL, 10, 0, 'physical'),
    -- #763 Max Hailstorm
    (763, 8, 6, 10, NULL, 10, 0, 'physical'),
    -- #764 Max Ooze
    (764, 8, 8, 10, NULL, 10, 0, 'physical'),
    -- #765 Max Geyser
    (765, 8, 3, 10, NULL, 10, 0, 'physical'),
    -- #766 Max Airstream
    (766, 8, 10, 10, NULL, 10, 0, 'physical'),
    -- #767 Max Starfall
    (767, 8, 18, 10, NULL, 10, 0, 'physical'),
    -- #768 Max Wyrmwind
    (768, 8, 15, 10, NULL, 10, 0, 'physical'),
    -- #769 Max Mindstorm
    (769, 8, 11, 10, NULL, 10, 0, 'physical'),
    -- #770 Max Rockfall
    (770, 8, 13, 10, NULL, 10, 0, 'physical'),
    -- #771 Max Quake
    (771, 8, 9, 10, NULL, 10, 0, 'physical'),
    -- #772 Max Darkness
    (772, 8, 16, 10, NULL, 10, 0, 'physical'),
    -- #773 Max Overgrowth
    (773, 8, 5, 10, NULL, 10, 0, 'physical'),
    -- #774 Max Steelspike
    (774, 8, 17, 10, NULL, 10, 0, 'physical'),
    -- #775 Clangorous Soul
    (775, 8, 15, NULL, 100, 5, 0, 'status'),
    -- #776 Body Press
    (776, 8, 7, 80, 100, 10, 0, 'physical'),
    -- #777 Decorate
    (777, 8, 18, NULL, NULL, 15, 0, 'status'),
    -- #778 Drum Beating
    (778, 8, 5, 80, 100, 10, 0, 'physical'),
    -- #779 Snap Trap
    (779, 8, 5, 35, 100, 15, 0, 'physical'),
    -- #780 Pyro Ball
    (780, 8, 2, 120, 90, 5, 0, 'physical'),
    -- #781 Behemoth Blade
    (781, 8, 17, 100, 100, 5, 0, 'physical'),
    -- #782 Behemoth Bash
    (782, 8, 17, 100, 100, 5, 0, 'physical'),
    -- #783 Aura Wheel
    (783, 8, 4, 110, 100, 10, 0, 'physical'),
    -- #784 Breaking Swipe
    (784, 8, 15, 60, 100, 15, 0, 'physical'),
    -- #785 Branch Poke
    (785, 8, 5, 40, 100, 40, 0, 'physical'),
    -- #786 Overdrive
    (786, 8, 4, 80, 100, 10, 0, 'special'),
    -- #787 Apple Acid
    (787, 8, 5, 80, 100, 10, 0, 'special'),
    -- #788 Grav Apple
    (788, 8, 5, 80, 100, 10, 0, 'physical'),
    -- #789 Spirit Break
    (789, 8, 18, 75, 100, 15, 0, 'physical'),
    -- #790 Strange Steam
    (790, 8, 18, 90, 95, 10, 0, 'special'),
    -- #791 Life Dew
    (791, 8, 3, NULL, NULL, 10, 0, 'status'),
    -- #792 Obstruct
    (792, 8, 16, NULL, 100, 10, 4, 'status'),
    -- #793 False Surrender
    (793, 8, 16, 80, NULL, 10, 0, 'physical'),
    -- #794 Meteor Assault
    (794, 8, 7, 150, 100, 5, 0, 'physical'),
    -- #795 Eternabeam
    (795, 8, 15, 160, 90, 5, 0, 'special'),
    -- #796 Steel Beam
    (796, 8, 17, 140, 95, 5, 0, 'special'),
    -- #797 Expanding Force
    (797, 8, 11, 80, 100, 10, 0, 'special'),
    -- #798 Steel Roller
    (798, 8, 17, 130, 100, 5, 0, 'physical'),
    -- #799 Scale Shot
    (799, 8, 15, 25, 90, 20, 0, 'physical'),
    -- #800 Meteor Beam
    (800, 8, 13, 120, 90, 10, 0, 'special'),
    -- #801 Shell Side Arm
    (801, 8, 8, 90, 100, 10, 0, 'special'),
    -- #802 Misty Explosion
    (802, 8, 18, 100, 100, 5, 0, 'special'),
    -- #803 Grassy Glide
    (803, 8, 5, 55, 100, 20, 0, 'physical'),
    -- #804 Rising Voltage
    (804, 8, 4, 70, 100, 20, 0, 'special'),
    -- #805 Terrain Pulse
    (805, 8, 1, 50, 100, 10, 0, 'special'),
    -- #806 Skitter Smack
    (806, 8, 12, 70, 90, 10, 0, 'physical'),
    -- #807 Burning Jealousy
    (807, 8, 2, 70, 100, 5, 0, 'special'),
    -- #808 Lash Out
    (808, 8, 16, 75, 100, 5, 0, 'physical'),
    -- #809 Poltergeist
    (809, 8, 14, 110, 90, 5, 0, 'physical'),
    -- #810 Corrosive Gas
    (810, 8, 8, NULL, 100, 40, 0, 'status'),
    -- #811 Coaching
    (811, 8, 7, NULL, NULL, 10, 0, 'status'),
    -- #812 Flip Turn
    (812, 8, 3, 60, 100, 20, 0, 'physical'),
    -- #813 Triple Axel
    (813, 8, 6, 20, 90, 10, 0, 'physical'),
    -- #814 Dual Wingbeat
    (814, 8, 10, 40, 90, 10, 0, 'physical'),
    -- #815 Scorching Sands
    (815, 8, 9, 70, 100, 10, 0, 'special'),
    -- #816 Jungle Healing
    (816, 8, 5, NULL, NULL, 10, 0, 'status'),
    -- #817 Wicked Blow
    (817, 8, 16, 75, 100, 5, 0, 'physical'),
    -- #818 Surging Strikes
    (818, 8, 3, 25, 100, 5, 0, 'physical'),
    -- #819 Thunder Cage
    (819, 8, 4, 80, 90, 15, 0, 'special'),
    -- #820 Dragon Energy
    (820, 8, 15, 150, 100, 5, 0, 'special'),
    -- #821 Freezing Glare
    (821, 8, 11, 90, 100, 10, 0, 'special'),
    -- #822 Fiery Wrath
    (822, 8, 16, 90, 100, 10, 0, 'special'),
    -- #823 Thunderous Kick
    (823, 8, 7, 90, 100, 10, 0, 'physical'),
    -- #824 Glacial Lance
    (824, 8, 6, 120, 100, 5, 0, 'physical'),
    -- #825 Astral Barrage
    (825, 8, 14, 120, 100, 5, 0, 'special'),
    -- #826 Eerie Spell
    (826, 8, 11, 80, 100, 5, 0, 'special'),
    -- #827 Dire Claw
    (827, 8, 8, 80, 100, 15, 0, 'physical'),
    -- #828 Psyshield Bash
    (828, 8, 11, 70, 90, 10, 0, 'physical'),
    -- #829 Power Shift
    (829, 8, 1, 0, NULL, 10, 0, 'status'),
    -- #830 Stone Axe
    (830, 8, 13, 65, 90, 15, 0, 'physical'),
    -- #831 Springtide Storm
    (831, 8, 18, 100, 80, 5, 0, 'special'),
    -- #832 Mystical Power
    (832, 8, 11, 70, 90, 10, 0, 'special'),
    -- #833 Raging Fury
    (833, 8, 2, 120, 100, 10, 0, 'physical'),
    -- #834 Wave Crash
    (834, 8, 3, 120, 100, 10, 0, 'physical'),
    -- #835 Chloroblast
    (835, 8, 5, 150, 95, 5, 0, 'special'),
    -- #836 Mountain Gale
    (836, 8, 6, 100, 85, 10, 0, 'physical'),
    -- #837 Victory Dance
    (837, 8, 7, 0, NULL, 10, 0, 'status'),
    -- #838 Headlong Rush
    (838, 8, 9, 120, 100, 5, 0, 'physical'),
    -- #839 Barb Barrage
    (839, 8, 8, 60, 100, 10, 0, 'physical'),
    -- #840 Esper Wing
    (840, 8, 11, 80, 100, 10, 0, 'special'),
    -- #841 Bitter Malice
    (841, 8, 14, 75, 100, 10, 0, 'special'),
    -- #842 Shelter
    (842, 8, 17, 0, NULL, 10, 0, 'status'),
    -- #843 Triple Arrows
    (843, 8, 7, 90, 100, 10, 0, 'physical'),
    -- #844 Infernal Parade
    (844, 8, 14, 60, 100, 15, 0, 'special'),
    -- #845 Ceaseless Edge
    (845, 8, 16, 65, 90, 15, 0, 'physical'),
    -- #846 Bleakwind Storm
    (846, 8, 10, 100, 80, 10, 0, 'special'),
    -- #847 Wildbolt Storm
    (847, 8, 4, 100, 80, 10, 0, 'special'),
    -- #848 Sandsear Storm
    (848, 8, 9, 100, 80, 10, 0, 'special'),
    -- #849 Lunar Blessing
    (849, 8, 11, 0, NULL, 5, 0, 'status'),
    -- #850 Take Heart
    (850, 8, 11, 0, NULL, 10, 0, 'status');