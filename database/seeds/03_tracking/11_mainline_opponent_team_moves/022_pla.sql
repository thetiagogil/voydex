-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Legends: Arceus Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Legends: Arceus opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Kleavor: Kleavor Lv. 18: Aerial Ace, Double Hit, Stealth Rock, Air Slash
    (220003, 22001, NULL, NULL, NULL, NULL, 1, ARRAY[332, 458, 446, 403]),
    -- Hisuian Lilligant: Hisuian Lilligant Lv. 30: Stun Spore, Poison Powder, Energy Ball, Rock Smash
    (220004, 22002, NULL, NULL, NULL, NULL, 1, ARRAY[78, 77, 412, 249]),
    -- Hisuian Arcanine: Hisuian Arcanine Lv. 36: Fire Fang, Rock Slide, Raging Fury, Crunch
    (220005, 22003, NULL, NULL, NULL, NULL, 1, ARRAY[424, 157, 833, 242]),
    -- Hisuian Electrode: Hisuian Electrode Lv. 46: Thunder Wave, Energy Ball, Thunderbolt, Thunder
    (220006, 22004, NULL, NULL, NULL, NULL, 1, ARRAY[86, 412, 85, 87]),
    -- Hisuian Avalugg: Hisuian Avalugg Lv. 56: Earth Power, Mountain Gale, Blizzard, Double-Edge
    (220007, 22005, NULL, NULL, NULL, NULL, 1, ARRAY[414, 836, 59, 38]),
    -- Origin Dialga / Origin Palkia: Palkia (Origin Forme) Lv. 65: Earth Power, Aqua Tail, Hydro Pump, Spacial Rend
    (220010, 22007, NULL, 220008, 'adaman', NULL, 1, ARRAY[414, 401, 56, 460]),
    -- Origin Dialga / Origin Palkia: Dialga (Origin Forme) Lv. 65: Earth Power, Iron Tail, Flash Cannon, Roar of Time
    (220010, 22007, NULL, 220008, 'irida', NULL, 1, ARRAY[414, 231, 430, 459]),
    -- Volo: Spiritomb Lv. 68: Hypnosis, Dark Pulse, Extrasensory, Shadow Ball
    (220011, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[95, 399, 326, 247]),
    -- Volo: Roserade Lv. 68: Poison Jab, Petal Dance, Spikes
    (220011, 22008, NULL, NULL, NULL, NULL, 2, ARRAY[398, 80, 191]),
    -- Volo: Togekiss Lv. 68: Calm Mind, Moonblast, Extrasensory, Air Slash
    (220011, 22008, NULL, NULL, NULL, NULL, 3, ARRAY[347, 585, 326, 403]),
    -- Volo: Hisuian Arcanine Lv. 68: Raging Fury, Crunch, Rock Slide
    (220011, 22008, NULL, NULL, NULL, NULL, 4, ARRAY[833, 242, 157]),
    -- Volo: Lucario Lv. 68: Close Combat, Crunch, Bulk Up, Bullet Punch
    (220011, 22008, NULL, NULL, NULL, NULL, 5, ARRAY[370, 242, 339, 418]),
    -- Volo: Garchomp Lv. 68: Dragon Claw, Earth Power, Slash, Iron Head
    (220011, 22008, NULL, NULL, NULL, NULL, 6, ARRAY[337, 414, 163, 442]),
    -- Arceus: Arceus Lv. 75: Calm Mind, Recover, Judgment, Hyper Beam
    (220012, 22009, NULL, NULL, NULL, NULL, 1, ARRAY[347, 105, 449, 63]),
    -- Volo: Togepi Lv. 5: Tackle
    (220001, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[33]),
    -- Volo: Togepi Lv. 22: Calm Mind, Draining Kiss, Tackle
    (220004, 22008, NULL, NULL, NULL, NULL, 1, ARRAY[347, 577, 33]),
    -- Volo: Gible Lv. 22: Twister, Bulldoze
    (220004, 22008, NULL, NULL, NULL, NULL, 2, ARRAY[239, 523]),
    -- Dialga / Palkia: Dialga Lv. 65: Earth Power, Iron Tail, Flash Cannon, Roar of Time
    (220010, 22010, NULL, 220008, 'adaman', NULL, 1, ARRAY[414, 231, 430, 459]),
    -- Dialga / Palkia: Palkia Lv. 65: Earth Power, Aqua Tail, Hydro Pump, Spacial Rend
    (220010, 22010, NULL, 220008, 'irida', NULL, 1, ARRAY[414, 401, 56, 460]),
    -- Giratina: Giratina Lv. 70: Aura Sphere, Dragon Claw, Earth Power, Shadow Force
    (220011, 22011, NULL, NULL, NULL, NULL, 1, ARRAY[396, 337, 414, 467]),
    -- Giratina: Giratina (Origin) Lv. 70: Aura Sphere, Dragon Claw, Earth Power, Shadow Force
    (220011, 22011, NULL, NULL, NULL, NULL, 2, ARRAY[396, 337, 414, 467]),
    -- Uxie: Uxie Lv. 70: Swift, Extrasensory, Mystical Power, Hypnosis
    (220013, 22012, NULL, NULL, NULL, NULL, 1, ARRAY[129, 326, 832, 95]),
    -- Mesprit: Mesprit Lv. 70: Swift, Extrasensory, Mystical Power, Recover
    (220013, 22013, NULL, NULL, NULL, NULL, 1, ARRAY[129, 326, 832, 105]),
    -- Azelf: Azelf Lv. 70: Swift, Double Hit, Extrasensory, Mystical Power
    (220013, 22014, NULL, NULL, NULL, NULL, 1, ARRAY[129, 458, 326, 832]),
    -- Heatran: Heatran Lv. 70: Iron Head, Crunch, Earth Power, Magma Storm
    (220014, 22015, NULL, NULL, NULL, NULL, 1, ARRAY[442, 242, 414, 463]),
    -- Cresselia: Cresselia Lv. 70: Psycho Cut, Psychic, Moonblast, Lunar Blessing
    (220015, 22016, NULL, NULL, NULL, NULL, 1, ARRAY[427, 94, 585, 849]),
    -- Regigigas: Regigigas Lv. 70: Zen Headbutt, Iron Head, Crush Grip, Giga Impact
    (220016, 22017, NULL, NULL, NULL, NULL, 1, ARRAY[428, 442, 462, 416]),
    -- Manaphy: Manaphy Lv. 50: Water Pulse, Zen Headbutt, Moonblast, Bubble
    (220017, 22018, NULL, NULL, NULL, NULL, 1, ARRAY[352, 428, 585, 145]),
    -- Giratina: Giratina (Origin) Lv. 70: Dragon Claw, Dragon Pulse, Earth Power, Shadow Force
    (220018, 22011, NULL, NULL, NULL, NULL, 1, ARRAY[337, 406, 414, 467]),
    -- Tornadus: Tornadus Lv. 70: Extrasensory, Crunch, Hurricane, Bleakwind Storm
    (220019, 22019, NULL, NULL, NULL, NULL, 1, ARRAY[326, 242, 542, 846]),
    -- Thundurus: Thundurus Lv. 70: Extrasensory, Crunch, Thunder, Wildbolt Storm
    (220019, 22020, NULL, NULL, NULL, NULL, 1, ARRAY[326, 242, 87, 847]),
    -- Landorus: Landorus Lv. 70: Extrasensory, Crunch, Earth Power, Sandsear Storm
    (220019, 22021, NULL, NULL, NULL, NULL, 1, ARRAY[326, 242, 414, 848]),
    -- Enamorus: Enamorus Lv. 70: Extrasensory, Crunch, Moonblast, Springtide Storm
    (220019, 22022, NULL, NULL, NULL, NULL, 1, ARRAY[326, 242, 585, 831]),
    -- Commander Kamado: Hisuian Braviary Lv. 61: Esper Wing, Air Slash, Quick Attack
    (220009, 22006, NULL, NULL, NULL, NULL, 1, ARRAY[840, 403, 98]),
    -- Commander Kamado: Golem Lv. 61: Stealth Rock, Rock Slide, Double-Edge
    (220009, 22006, NULL, NULL, NULL, NULL, 2, ARRAY[446, 157, 38]),
    -- Commander Kamado: Clefable Lv. 61: Draining Kiss, Psychic, Calm Mind, Baby-Doll Eyes
    (220009, 22006, NULL, NULL, NULL, NULL, 3, ARRAY[577, 94, 347, 608]),
    -- Commander Kamado: Snorlax Lv. 62: Zen Headbutt, High Horsepower, Giga Impact
    (220009, 22006, NULL, NULL, NULL, NULL, 4, ARRAY[428, 667, 416])
)
INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
SELECT
  members.id,
  moves.slot,
  moves.move_id
FROM team_moves
LEFT JOIN tracking.mainline_opponent_team_members AS members
  ON members.milestone_id = team_moves.milestone_id
  AND members.opponent_id = team_moves.opponent_id
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
