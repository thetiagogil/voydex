-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokeAPI (data derived from Bulbapedia/Serebii)

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: meta.pokemon_learnsets
-- Scope: FireRed / LeafGreen (VG 7) not_default learnsets
INSERT INTO
    meta.pokemon_learnsets (species_id, form_id, move_id, version_group_id, learn_method_id, level_learned_at)
VALUES
    -- #386 Deoxys (Attack)
    (386, 38601, 35, 7, 1, 1),  -- wrap lv1
    (386, 38601, 43, 7, 1, 1),  -- leer lv1
    (386, 38601, 101, 7, 1, 5),  -- night-shade lv5
    (386, 38601, 100, 7, 1, 10),  -- teleport lv10
    (386, 38601, 269, 7, 1, 15),  -- taunt lv15
    (386, 38601, 228, 7, 1, 20),  -- pursuit lv20
    (386, 38601, 94, 7, 1, 25),  -- psychic lv25
    (386, 38601, 276, 7, 1, 30),  -- superpower lv30
    (386, 38601, 322, 7, 1, 35),  -- cosmic-power lv35
    (386, 38601, 192, 7, 1, 40),  -- zap-cannon lv40
    (386, 38601, 354, 7, 1, 45),  -- psycho-boost lv45
    (386, 38601, 63, 7, 1, 50),  -- hyper-beam lv50
    (386, 38601, 15, 7, 2, NULL),  -- cut tm
    (386, 38601, 58, 7, 2, NULL),  -- ice-beam tm
    (386, 38601, 63, 7, 2, NULL),  -- hyper-beam tm
    (386, 38601, 70, 7, 2, NULL),  -- strength tm
    (386, 38601, 76, 7, 2, NULL),  -- solar-beam tm
    (386, 38601, 85, 7, 2, NULL),  -- thunderbolt tm
    (386, 38601, 87, 7, 2, NULL),  -- thunder tm
    (386, 38601, 92, 7, 2, NULL),  -- toxic tm
    (386, 38601, 94, 7, 2, NULL),  -- psychic tm
    (386, 38601, 104, 7, 2, NULL),  -- double-team tm
    (386, 38601, 113, 7, 2, NULL),  -- light-screen tm
    (386, 38601, 115, 7, 2, NULL),  -- reflect tm
    (386, 38601, 148, 7, 2, NULL),  -- flash tm
    (386, 38601, 156, 7, 2, NULL),  -- rest tm
    (386, 38601, 182, 7, 2, NULL),  -- protect tm
    (386, 38601, 216, 7, 2, NULL),  -- return tm
    (386, 38601, 218, 7, 2, NULL),  -- frustration tm
    (386, 38601, 219, 7, 2, NULL),  -- safeguard tm
    (386, 38601, 237, 7, 2, NULL),  -- hidden-power tm
    (386, 38601, 240, 7, 2, NULL),  -- rain-dance tm
    (386, 38601, 241, 7, 2, NULL),  -- sunny-day tm
    (386, 38601, 247, 7, 2, NULL),  -- shadow-ball tm
    (386, 38601, 249, 7, 2, NULL),  -- rock-smash tm
    (386, 38601, 259, 7, 2, NULL),  -- torment tm
    (386, 38601, 263, 7, 2, NULL),  -- facade tm
    (386, 38601, 264, 7, 2, NULL),  -- focus-punch tm
    (386, 38601, 269, 7, 2, NULL),  -- taunt tm
    (386, 38601, 280, 7, 2, NULL),  -- brick-break tm
    (386, 38601, 285, 7, 2, NULL),  -- skill-swap tm
    (386, 38601, 289, 7, 2, NULL),  -- snatch tm
    (386, 38601, 290, 7, 2, NULL),  -- secret-power tm
    (386, 38601, 317, 7, 2, NULL),  -- rock-tomb tm
    (386, 38601, 332, 7, 2, NULL),  -- aerial-ace tm
    (386, 38601, 347, 7, 2, NULL),  -- calm-mind tm
    (386, 38601, 351, 7, 2, NULL),  -- shock-wave tm
    (386, 38601, 352, 7, 2, NULL),  -- water-pulse tm
    (386, 38601, 5, 7, 6, NULL),  -- mega-punch tutor
    (386, 38601, 25, 7, 6, NULL),  -- mega-kick tutor
    (386, 38601, 34, 7, 6, NULL),  -- body-slam tutor
    (386, 38601, 38, 7, 6, NULL),  -- double-edge tutor
    (386, 38601, 68, 7, 6, NULL),  -- counter tutor
    (386, 38601, 69, 7, 6, NULL),  -- seismic-toss tutor
    (386, 38601, 86, 7, 6, NULL),  -- thunder-wave tutor
    (386, 38601, 102, 7, 6, NULL),  -- mimic tutor
    (386, 38601, 138, 7, 6, NULL),  -- dream-eater tutor
    (386, 38601, 157, 7, 6, NULL),  -- rock-slide tutor
    (386, 38601, 164, 7, 6, NULL),  -- substitute tutor
    -- #386 Deoxys (Defense)
    (386, 38602, 35, 7, 1, 1),  -- wrap lv1
    (386, 38602, 43, 7, 1, 1),  -- leer lv1
    (386, 38602, 101, 7, 1, 5),  -- night-shade lv5
    (386, 38602, 100, 7, 1, 10),  -- teleport lv10
    (386, 38602, 282, 7, 1, 15),  -- knock-off lv15
    (386, 38602, 191, 7, 1, 20),  -- spikes lv20
    (386, 38602, 94, 7, 1, 25),  -- psychic lv25
    (386, 38602, 289, 7, 1, 30),  -- snatch lv30
    (386, 38602, 133, 7, 1, 35),  -- amnesia lv35
    (386, 38602, 334, 7, 1, 35),  -- iron-defense lv35
    (386, 38602, 105, 7, 1, 40),  -- recover lv40
    (386, 38602, 354, 7, 1, 45),  -- psycho-boost lv45
    (386, 38602, 68, 7, 1, 50),  -- counter lv50
    (386, 38602, 243, 7, 1, 50),  -- mirror-coat lv50
    (386, 38602, 15, 7, 2, NULL),  -- cut tm
    (386, 38602, 58, 7, 2, NULL),  -- ice-beam tm
    (386, 38602, 63, 7, 2, NULL),  -- hyper-beam tm
    (386, 38602, 70, 7, 2, NULL),  -- strength tm
    (386, 38602, 76, 7, 2, NULL),  -- solar-beam tm
    (386, 38602, 85, 7, 2, NULL),  -- thunderbolt tm
    (386, 38602, 87, 7, 2, NULL),  -- thunder tm
    (386, 38602, 92, 7, 2, NULL),  -- toxic tm
    (386, 38602, 94, 7, 2, NULL),  -- psychic tm
    (386, 38602, 104, 7, 2, NULL),  -- double-team tm
    (386, 38602, 113, 7, 2, NULL),  -- light-screen tm
    (386, 38602, 115, 7, 2, NULL),  -- reflect tm
    (386, 38602, 148, 7, 2, NULL),  -- flash tm
    (386, 38602, 156, 7, 2, NULL),  -- rest tm
    (386, 38602, 182, 7, 2, NULL),  -- protect tm
    (386, 38602, 216, 7, 2, NULL),  -- return tm
    (386, 38602, 218, 7, 2, NULL),  -- frustration tm
    (386, 38602, 219, 7, 2, NULL),  -- safeguard tm
    (386, 38602, 237, 7, 2, NULL),  -- hidden-power tm
    (386, 38602, 240, 7, 2, NULL),  -- rain-dance tm
    (386, 38602, 241, 7, 2, NULL),  -- sunny-day tm
    (386, 38602, 247, 7, 2, NULL),  -- shadow-ball tm
    (386, 38602, 249, 7, 2, NULL),  -- rock-smash tm
    (386, 38602, 259, 7, 2, NULL),  -- torment tm
    (386, 38602, 263, 7, 2, NULL),  -- facade tm
    (386, 38602, 264, 7, 2, NULL),  -- focus-punch tm
    (386, 38602, 269, 7, 2, NULL),  -- taunt tm
    (386, 38602, 280, 7, 2, NULL),  -- brick-break tm
    (386, 38602, 285, 7, 2, NULL),  -- skill-swap tm
    (386, 38602, 289, 7, 2, NULL),  -- snatch tm
    (386, 38602, 290, 7, 2, NULL),  -- secret-power tm
    (386, 38602, 317, 7, 2, NULL),  -- rock-tomb tm
    (386, 38602, 332, 7, 2, NULL),  -- aerial-ace tm
    (386, 38602, 347, 7, 2, NULL),  -- calm-mind tm
    (386, 38602, 351, 7, 2, NULL),  -- shock-wave tm
    (386, 38602, 352, 7, 2, NULL),  -- water-pulse tm
    (386, 38602, 5, 7, 6, NULL),  -- mega-punch tutor
    (386, 38602, 25, 7, 6, NULL),  -- mega-kick tutor
    (386, 38602, 34, 7, 6, NULL),  -- body-slam tutor
    (386, 38602, 38, 7, 6, NULL),  -- double-edge tutor
    (386, 38602, 68, 7, 6, NULL),  -- counter tutor
    (386, 38602, 69, 7, 6, NULL),  -- seismic-toss tutor
    (386, 38602, 86, 7, 6, NULL),  -- thunder-wave tutor
    (386, 38602, 102, 7, 6, NULL),  -- mimic tutor
    (386, 38602, 138, 7, 6, NULL),  -- dream-eater tutor
    (386, 38602, 157, 7, 6, NULL),  -- rock-slide tutor
    (386, 38602, 164, 7, 6, NULL);  -- substitute tutor
