-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_availability
-- Scope: DLC additions (swsh-ct)
-- DLC additions only. Base game Pokemon are in the parent VG.
-- Pokemon: 75 (DLC additions)
INSERT INTO
    meta.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #029 Nidoran♀
    (8686, 29, 2900, 20, NULL, 'native'),
    -- #030 Nidorina
    (8687, 30, 3000, 20, NULL, 'native'),
    -- #031 Nidoqueen
    (8688, 31, 3100, 20, NULL, 'native'),
    -- #032 Nidoran♂
    (8689, 32, 3200, 20, NULL, 'native'),
    -- #033 Nidorino
    (8690, 33, 3300, 20, NULL, 'native'),
    -- #034 Nidoking
    (8691, 34, 3400, 20, NULL, 'native'),
    -- #041 Zubat
    (8692, 41, 4100, 20, NULL, 'native'),
    -- #042 Golbat
    (8693, 42, 4200, 20, NULL, 'native'),
    -- #124 Jynx
    (8694, 124, 12400, 20, NULL, 'native'),
    -- #125 Electabuzz
    (8695, 125, 12500, 20, NULL, 'native'),
    -- #126 Magmar
    (8696, 126, 12600, 20, NULL, 'native'),
    -- #138 Omanyte
    (8697, 138, 13800, 20, NULL, 'native'),
    -- #139 Omastar
    (8698, 139, 13900, 20, NULL, 'native'),
    -- #140 Kabuto
    (8699, 140, 14000, 20, NULL, 'native'),
    -- #141 Kabutops
    (8700, 141, 14100, 20, NULL, 'native'),
    -- #142 Aerodactyl
    (8701, 142, 14200, 20, NULL, 'native'),
    -- #144 Articuno
    (8702, 144, 14400, 20, NULL, 'native'),
    -- #145 Zapdos
    (8703, 145, 14500, 20, NULL, 'native'),
    -- #146 Moltres
    (8704, 146, 14600, 20, NULL, 'native'),
    -- #147 Dratini
    (8705, 147, 14700, 20, NULL, 'native'),
    -- #148 Dragonair
    (8706, 148, 14800, 20, NULL, 'native'),
    -- #149 Dragonite
    (8707, 149, 14900, 20, NULL, 'native'),
    -- #169 Crobat
    (8708, 169, 16900, 20, NULL, 'native'),
    -- #238 Smoochum
    (8709, 238, 23800, 20, NULL, 'native'),
    -- #239 Elekid
    (8710, 239, 23900, 20, NULL, 'native'),
    -- #240 Magby
    (8711, 240, 24000, 20, NULL, 'native'),
    -- #304 Aron
    (8712, 304, 30400, 20, NULL, 'native'),
    -- #305 Lairon
    (8713, 305, 30500, 20, NULL, 'native'),
    -- #306 Aggron
    (8714, 306, 30600, 20, NULL, 'native'),
    -- #333 Swablu
    (8715, 333, 33300, 20, NULL, 'native'),
    -- #334 Altaria
    (8716, 334, 33400, 20, NULL, 'native'),
    -- #345 Lileep
    (8717, 345, 34500, 20, NULL, 'native'),
    -- #346 Cradily
    (8718, 346, 34600, 20, NULL, 'native'),
    -- #347 Anorith
    (8719, 347, 34700, 20, NULL, 'native'),
    -- #348 Armaldo
    (8720, 348, 34800, 20, NULL, 'native'),
    -- #359 Absol
    (8721, 359, 35900, 20, NULL, 'native'),
    -- #363 Spheal
    (8722, 363, 36300, 20, NULL, 'native'),
    -- #364 Sealeo
    (8723, 364, 36400, 20, NULL, 'native'),
    -- #365 Walrein
    (8724, 365, 36500, 20, NULL, 'native'),
    -- #369 Relicanth
    (8725, 369, 36900, 20, NULL, 'native'),
    -- #371 Bagon
    (8726, 371, 37100, 20, NULL, 'native'),
    -- #372 Shelgon
    (8727, 372, 37200, 20, NULL, 'native'),
    -- #373 Salamence
    (8728, 373, 37300, 20, NULL, 'native'),
    -- #374 Beldum
    (8729, 374, 37400, 20, NULL, 'native'),
    -- #375 Metang
    (8730, 375, 37500, 20, NULL, 'native'),
    -- #376 Metagross
    (8731, 376, 37600, 20, NULL, 'native'),
    -- #377 Regirock
    (8732, 377, 37700, 20, NULL, 'native'),
    -- #378 Regice
    (8733, 378, 37800, 20, NULL, 'native'),
    -- #379 Registeel
    (8734, 379, 37900, 20, NULL, 'native'),
    -- #442 Spiritomb
    (8735, 442, 44200, 20, NULL, 'native'),
    -- #443 Gible
    (8736, 443, 44300, 20, NULL, 'native'),
    -- #444 Gabite
    (8737, 444, 44400, 20, NULL, 'native'),
    -- #445 Garchomp
    (8738, 445, 44500, 20, NULL, 'native'),
    -- #466 Electivire
    (8739, 466, 46600, 20, NULL, 'native'),
    -- #467 Magmortar
    (8740, 467, 46700, 20, NULL, 'native'),
    -- #531 Audino
    (8741, 531, 53100, 20, NULL, 'native'),
    -- #564 Tirtouga
    (8742, 564, 56400, 20, NULL, 'native'),
    -- #565 Carracosta
    (8743, 565, 56500, 20, NULL, 'native'),
    -- #566 Archen
    (8744, 566, 56600, 20, NULL, 'native'),
    -- #567 Archeops
    (8745, 567, 56700, 20, NULL, 'native'),
    -- #615 Cryogonal
    (8746, 615, 61500, 20, NULL, 'native'),
    -- #621 Druddigon
    (8747, 621, 62100, 20, NULL, 'native'),
    -- #638 Cobalion
    (8748, 638, 63800, 20, NULL, 'native'),
    -- #639 Terrakion
    (8749, 639, 63900, 20, NULL, 'native'),
    -- #640 Virizion
    (8750, 640, 64000, 20, NULL, 'native'),
    -- #696 Tyrunt
    (8751, 696, 69600, 20, NULL, 'native'),
    -- #697 Tyrantrum
    (8752, 697, 69700, 20, NULL, 'native'),
    -- #698 Amaura
    (8753, 698, 69800, 20, NULL, 'native'),
    -- #699 Aurorus
    (8754, 699, 69900, 20, NULL, 'native'),
    -- #703 Carbink
    (8755, 703, 70300, 20, NULL, 'native'),
    -- #894 Regieleki
    (8756, 894, 89400, 20, NULL, 'native'),
    -- #895 Regidrago
    (8757, 895, 89500, 20, NULL, 'native'),
    -- #896 Glastrier
    (8758, 896, 89600, 20, NULL, 'native'),
    -- #897 Spectrier
    (8759, 897, 89700, 20, NULL, 'native'),
    -- #898 Calyrex
    (8760, 898, 89800, 20, NULL, 'native');