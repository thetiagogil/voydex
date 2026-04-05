-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #851 Tera Blast
    (851, 9, 1, 80, 100, 10, 0, 'special'),
    -- #852 Silk Trap
    (852, 9, 12, NULL, NULL, 10, 4, 'status'),
    -- #853 Axe Kick
    (853, 9, 7, 120, 90, 10, 0, 'physical'),
    -- #854 Last Respects
    (854, 9, 14, 50, 100, 10, 0, 'physical'),
    -- #855 Lumina Crash
    (855, 9, 11, 80, 100, 10, 0, 'special'),
    -- #856 Order Up
    (856, 9, 15, 80, 100, 10, 0, 'physical'),
    -- #857 Jet Punch
    (857, 9, 3, 60, 100, 15, 1, 'physical'),
    -- #858 Spicy Extract
    (858, 9, 5, NULL, NULL, 15, 0, 'status'),
    -- #859 Spin Out
    (859, 9, 17, 100, 100, 5, 0, 'physical'),
    -- #860 Population Bomb
    (860, 9, 1, 20, 90, 10, 0, 'physical'),
    -- #861 Ice Spinner
    (861, 9, 6, 80, 100, 15, 0, 'physical'),
    -- #862 Glaive Rush
    (862, 9, 15, 120, 100, 5, 0, 'physical'),
    -- #863 Revival Blessing
    (863, 9, 1, NULL, NULL, 1, 0, 'status'),
    -- #864 Salt Cure
    (864, 9, 13, 40, 100, 15, 0, 'physical'),
    -- #865 Triple Dive
    (865, 9, 3, 30, 95, 10, 0, 'physical'),
    -- #866 Mortal Spin
    (866, 9, 8, 30, 100, 15, 0, 'physical'),
    -- #867 Doodle
    (867, 9, 1, NULL, 100, 10, 0, 'status'),
    -- #868 Fillet Away
    (868, 9, 1, NULL, NULL, 10, 0, 'status'),
    -- #869 Kowtow Cleave
    (869, 9, 16, 85, NULL, 10, 0, 'physical'),
    -- #870 Flower Trick
    (870, 9, 5, 70, NULL, 10, 0, 'physical'),
    -- #871 Torch Song
    (871, 9, 2, 80, 100, 10, 0, 'special'),
    -- #872 Aqua Step
    (872, 9, 3, 80, 100, 10, 0, 'physical'),
    -- #873 Raging Bull
    (873, 9, 1, 90, 100, 10, 0, 'physical'),
    -- #874 Make It Rain
    (874, 9, 17, 120, 100, 5, 0, 'special'),
    -- #875 Psyblade
    (875, 9, 11, 80, 100, 15, 0, 'physical'),
    -- #876 Hydro Steam
    (876, 9, 3, 80, 100, 15, 0, 'special'),
    -- #877 Ruination
    (877, 9, 16, 1, 90, 10, 0, 'special'),
    -- #878 Collision Course
    (878, 9, 7, 100, 100, 5, 0, 'physical'),
    -- #879 Electro Drift
    (879, 9, 4, 100, 100, 5, 0, 'special'),
    -- #880 Shed Tail
    (880, 9, 1, NULL, NULL, 10, 0, 'status'),
    -- #881 Chilly Reception
    (881, 9, 6, NULL, NULL, 10, 0, 'status'),
    -- #882 Tidy Up
    (882, 9, 1, NULL, NULL, 10, 0, 'status'),
    -- #883 Snowscape
    (883, 9, 6, NULL, NULL, 10, 0, 'status'),
    -- #884 Pounce
    (884, 9, 12, 50, 100, 20, 0, 'physical'),
    -- #885 Trailblaze
    (885, 9, 5, 50, 100, 20, 0, 'physical'),
    -- #886 Chilling Water
    (886, 9, 3, 50, 100, 20, 0, 'special'),
    -- #887 Hyper Drill
    (887, 9, 1, 100, 100, 5, 0, 'physical'),
    -- #888 Twin Beam
    (888, 9, 11, 40, 100, 10, 0, 'special'),
    -- #889 Rage Fist
    (889, 9, 14, 50, 100, 10, 0, 'physical'),
    -- #890 Armor Cannon
    (890, 9, 2, 120, 100, 5, 0, 'special'),
    -- #891 Bitter Blade
    (891, 9, 2, 90, 100, 10, 0, 'physical'),
    -- #892 Double Shock
    (892, 9, 4, 120, 100, 5, 0, 'physical'),
    -- #893 Gigaton Hammer
    (893, 9, 17, 160, 100, 5, 0, 'physical'),
    -- #894 Comeuppance
    (894, 9, 16, 1, 100, 10, 0, 'physical'),
    -- #895 Aqua Cutter
    (895, 9, 3, 70, 100, 20, 0, 'physical'),
    -- #896 Blazing Torque
    (896, 9, 2, 80, 100, 10, 0, 'physical'),
    -- #897 Wicked Torque
    (897, 9, 16, 80, 100, 10, 0, 'physical'),
    -- #898 Noxious Torque
    (898, 9, 8, 100, 100, 10, 0, 'physical'),
    -- #899 Combat Torque
    (899, 9, 7, 100, 100, 10, 0, 'physical'),
    -- #900 Magical Torque
    (900, 9, 18, 100, 100, 10, 0, 'physical'),
    -- #901 Blood Moon
    (901, 9, 1, 140, 100, 5, 0, 'special'),
    -- #902 Matcha Gotcha
    (902, 9, 5, 80, 90, 15, 0, 'special'),
    -- #903 Syrup Bomb
    (903, 9, 5, 60, 85, 10, 0, 'special'),
    -- #904 Ivy Cudgel
    (904, 9, 5, 100, 100, 10, 0, 'physical'),
    -- #905 Electro Shot
    (905, 9, 4, 130, 100, 10, 0, 'special'),
    -- #906 Tera Starstorm
    (906, 9, 1, 120, 100, 5, 0, 'special'),
    -- #907 Fickle Beam
    (907, 9, 15, 80, 100, 5, 0, 'special'),
    -- #908 Burning Bulwark
    (908, 9, 2, NULL, NULL, 10, 4, 'status'),
    -- #909 Thunderclap
    (909, 9, 4, 70, 100, 5, 1, 'special'),
    -- #910 Mighty Cleave
    (910, 9, 13, 95, 100, 5, 0, 'physical'),
    -- #911 Tachyon Cutter
    (911, 9, 17, 50, NULL, 10, 0, 'special'),
    -- #912 Hard Press
    (912, 9, 17, NULL, 100, 10, 0, 'physical'),
    -- #913 Dragon Cheer
    (913, 9, 15, NULL, NULL, 15, 0, 'status'),
    -- #914 Alluring Voice
    (914, 9, 18, 80, 100, 10, 0, 'special'),
    -- #915 Temper Flare
    (915, 9, 2, 75, 100, 10, 0, 'physical'),
    -- #916 Supercell Slam
    (916, 9, 4, 100, 95, 15, 0, 'physical'),
    -- #917 Psychic Noise
    (917, 9, 11, 75, 100, 10, 0, 'special'),
    -- #918 Upper Hand
    (918, 9, 7, 65, 100, 15, 3, 'physical'),
    -- #919 Malignant Chain
    (919, 9, 8, 100, 100, 5, 0, 'special'),
    -- #920 Nihil Light
    (920, 9, 15, 200, 100, 10, 0, 'special');