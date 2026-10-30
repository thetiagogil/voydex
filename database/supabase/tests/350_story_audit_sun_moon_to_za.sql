CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The per-game Story data audit from Sun / Moon to Z-A (#115): the rows it
-- corrected and the battles it added stay as the games have them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (14);
-- Every Alola trial is fought against its totem, an opponent of its own.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            WHERE
                mainline_milestones.version_group_id IN (15, 16)
                AND mainline_milestone_types.slug = 'trial'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestone_opponent_refs
                    JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                    WHERE
                        mainline_milestone_opponent_refs.milestone_id = mainline_milestones.id
                        AND mainline_opponents.opponent_role = 'totem') $$, $$
            VALUES (0) $$, 'every Alola trial names its totem as an opponent');
-- Ilima battles you in Hau'oli City before his trial, with a Smeargle that
-- counters your starter.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.slug = 'ilima'
                AND mainline_opponent_team_members.milestone_id IN (150003, 160003)
                AND mainline_opponent_team_members.species_id = 235 $$, $$
            VALUES (6) $$, 'Ilima''s own battle is seeded once per starter in Sun / Moon and Ultra Sun / Ultra Moon');
-- Mina's trial sends every captain she names at you before the totem.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_milestone_opponent_refs
            WHERE
                milestone_id = 160012 $$, $$
            VALUES (8) $$, 'Mina''s trial lists Mina, the five captains she sends, Nanu and Totem Ribombee');
-- Episode RR: every Rainbow Rocket boss is fought before Giovanni.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 160022 ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('faba-rr'::text), ('archie'::text), ('maxie'::text), ('cyrus'::text), ('lysandre'::text), ('ghetsis'::text), ('giovanni'::text) $$, 'Team Rainbow Rocket runs Faba, Archie, Maxie, Cyrus, Lysandre and Ghetsis before Giovanni');
-- The Necrozma caught at Mount Lanakila's crater holds an Ultranecrozium Z.
SELECT
    results_eq ($$
        SELECT
            items.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.milestone_id = 160025 $$, $$
            VALUES ('ultranecrozium-z'::text) $$, 'Necrozma at the Mount Lanakila crater holds an Ultranecrozium Z');
-- The Champion Cup finals: Nessa, Bea or Allister, then Raihan.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 180015
                AND mainline_opponents.opponent_role = 'gym-leader' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('nessa'::text), ('bea'::text), ('allister'::text), ('raihan'::text) $$, 'the Champion Cup finals field Nessa, Bea / Allister and Raihan');
-- Zacian and Zamazenta fight the post-game Crowned, holding their rusted item.
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.milestone_id = 180014
                AND mainline_opponent_team_members.species_id IN (888, 889)
                AND mainline_opponent_team_members.ally_opponent_id IS NULL ORDER BY mainline_opponent_team_members.opponent_id, pokemon_forms.slug $$, $$
            VALUES ('zacian-crowned'::text, 'rusted-sword'::text), ('zacian-crowned'::text, 'rusted-sword'::text), ('zacian-crowned'::text, 'rusted-sword'::text), ('zamazenta-crowned'::text, 'rusted-shield'::text), ('zamazenta-crowned'::text, 'rusted-shield'::text), ('zamazenta-crowned'::text, 'rusted-shield'::text), ('zamazenta-crowned'::text, 'rusted-shield'::text), ('zacian-crowned'::text, 'rusted-sword'::text), ('zacian-crowned'::text, 'rusted-sword'::text), ('zamazenta-crowned'::text, 'rusted-shield'::text) $$, 'every post-game Zacian and Zamazenta is Crowned and holds its rusted item');
-- Mustard's Urshifu uses the style you did not pick, with that style's move.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.decision_option_slug, pokemon_forms.slug, moves.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN tracking.mainline_opponent_team_member_moves ON mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.milestone_id = 190007
                AND mainline_opponent_team_members.species_id = 892
                AND moves.slug IN ('wicked-blow', 'surging-strikes')
            ORDER BY 1 $$, $$
            VALUES ('tower-of-darkness'::text, 'gigantamax-urshifu-rapid-strike'::text, 'surging-strikes'::text), ('tower-of-waters'::text, 'gigantamax-urshifu'::text, 'wicked-blow'::text) $$, 'Mustard''s Urshifu knows the signature move of its own style');
-- Team Galactic's Commanders are fought on the way to each Gym and at Spear Pillar.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_opponents.version_group_id = 21
                AND mainline_opponents.slug IN ('mars', 'jupiter', 'saturn', 'mars-jupiter') $$, $$
            VALUES (6) $$, 'Mars, Jupiter and Saturn are fought six times in Brilliant Diamond / Shining Pearl');
-- Every Team Star boss sends out its Starmobile last.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug, pokemon_forms.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            WHERE
                mainline_opponents.opponent_role = 'team-star-boss'
                AND mainline_opponent_team_members.slot = (
                    SELECT
                        max(slot)
                    FROM tracking.mainline_opponent_team_members AS team
                    WHERE
                        team.opponent_id = mainline_opponents.id
                        AND team.milestone_id = mainline_opponent_team_members.milestone_id)
                ORDER BY mainline_opponents.sort_order $$, $$
                VALUES ('giacomo'::text, 'segin-starmobile'::text), ('mela'::text, 'schedar-starmobile'::text), ('atticus'::text, 'navi-starmobile'::text), ('ortega'::text, 'ruchbah-starmobile'::text), ('eri'::text, 'caph-starmobile'::text) $$, 'every Team Star boss ends with its Starmobile');
-- The False Dragon Titan's Dondozo knows three moves; Order Up is Tatsugiri's.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_member_moves.team_member_id FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.species_id = 977
                AND moves.slug = 'order-up' $$, 'no Dondozo knows Order Up');
-- Hop's Wooloo at the Grass Badge knows Defense Curl when you started with Sobble, as the sources list it.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponent_team_member_moves ON mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.milestone_id = 180003
                AND moves.slug = 'defense-curl'
                AND mainline_opponent_team_members.species_id = 831 $$, $$
            VALUES (1) $$, 'Hop''s Wooloo knows Defense Curl in the Sobble start');
-- Red waits in front of the Pokémon League in Let's Go with six Pokémon at Lv. 85.
SELECT
    results_eq ($$
        SELECT
            count(*)::integer FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.slug = 'red'
                AND mainline_opponents.version_group_id = 17
                AND mainline_opponent_team_members.level = 85 $$, $$
            VALUES (6) $$, 'Red''s Let''s Go team is six Pokémon at Lv. 85');
-- Mega Dimension's Special Scans hold seven legendaries at Lv. 60, and Raging Lightning a Mega Zeraora.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug, pokemon_forms.slug, mainline_opponent_team_members.level FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            WHERE
                mainline_opponents.id BETWEEN 27017 AND 27024 ORDER BY mainline_opponents.id $$, $$
            VALUES ('latias'::text, 'latias'::text, 60), ('latios', 'latios', 60), ('cobalion', 'cobalion', 60), ('terrakion', 'terrakion', 60), ('virizion', 'virizion', 60), ('keldeo', 'keldeo', 60), ('meloetta', 'meloetta', 60), ('rogue-mega-zeraora', 'mega-zeraora', 85) $$, 'the Special Scan legendaries and the rogue Mega Zeraora are seeded at their levels');
SELECT
    *
FROM
    finish ();
ROLLBACK;
