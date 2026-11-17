CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The rules every Story review checked by hand, so a gap fails here the
-- moment it is made: every place a game offers is on its route, every battle
-- has a team and every Pokémon in it has moves, a Pokémon someone hands you
-- is named in the Story, and notes and descriptions keep to plain words.
-- Each exception below says why it stands.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
-- Every place a game offers is a step on its route or a milestone's place.
-- Places that move around or change daily are one optional milestone each.
SELECT
    is_empty ($$
        SELECT
            version_groups.slug, locations.name FROM reference.location_version_groups
            JOIN reference.version_groups ON version_groups.id = location_version_groups.version_group_id
            JOIN reference.locations ON locations.id = location_version_groups.location_id
            WHERE
                location_version_groups.version_group_id IN (
                    SELECT
                        version_group_id
                    FROM tracking.mainline_roadmap_steps)
            AND NOT EXISTS (
                SELECT
                    1
                FROM tracking.mainline_roadmap_steps
                WHERE
                    mainline_roadmap_steps.version_group_id = location_version_groups.version_group_id
                    AND mainline_roadmap_steps.location_id = location_version_groups.location_id)
            AND NOT EXISTS (
                SELECT
                    1
                FROM tracking.mainline_milestones
            WHERE
                mainline_milestones.version_group_id = location_version_groups.version_group_id
                AND mainline_milestones.location_id = location_version_groups.location_id)
        AND NOT EXISTS (
            SELECT
                1
            FROM (
                VALUES ('bdsp', 'grand-underground', '^(Big Bluff|Bogsunk|Dazzling|Fountainspring|Glacial|Grassland|Icy|Riverbank|Rocky|Sandsear|Spacious|Stargleam|Still-Water|Sunlit|Swampy|Typhlo|Volcanic|Whiteout) Cav(e|ern)$'), ('oras', 'mirage-spots', '^Mirage (Cave|Forest|Island|Mountain) \('), ('za-md', 'hyperspace-wild-zones', '-type Hyperspace Wild Zones$')) AS grouped (version_group_slug, milestone_slug, place_pattern)
            JOIN tracking.mainline_milestones ON mainline_milestones.slug = grouped.milestone_slug
                    AND mainline_milestones.version_group_id = location_version_groups.version_group_id
            WHERE
                grouped.version_group_slug = version_groups.slug
                    AND locations.name ~ grouped.place_pattern) $$, 'every place a game offers is on its route, or grouped under one optional milestone');
-- Every battle has a team, and every Pokémon on a team has its moves.
SELECT
    is_empty ($$
        SELECT
            refs.milestone_id, refs.opponent_id FROM tracking.mainline_milestone_opponent_refs AS refs
            WHERE
                refs.relation_kind = 'battle-opponent'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_members AS members
                    WHERE
                        members.milestone_id = refs.milestone_id
                        AND members.opponent_id = refs.opponent_id) $$, 'every Story battle has a team');
SELECT
    is_empty ($$
        SELECT
            members.id FROM tracking.mainline_opponent_team_members AS members
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_member_moves AS moves
                    WHERE
                        moves.team_member_id = members.id) $$, 'every Pokémon on a Story team, an ally''s included, has its moves');
-- A Pokémon someone hands you (a gift or an Egg) is named in the game's
-- Story: in a place note, a milestone's description or a choice.
SELECT
    is_empty ($$ WITH gifts AS ( SELECT DISTINCT
                encounters.version_group_id, encounters.location_id, pokemon_species.name AS species FROM reference.pokemon_encounters AS encounters
                JOIN reference.encounter_ways ON encounter_ways.id = encounters.encounter_way_id
                JOIN reference.pokemon_forms ON pokemon_forms.id = encounters.form_id
                JOIN reference.pokemon_species ON pokemon_species.id = pokemon_forms.species_id
                WHERE
                    encounter_ways.slug IN ('gift', 'egg')
                    AND encounters.version_group_id IN (
                        SELECT
                            version_group_id
                        FROM tracking.mainline_roadmap_steps))
            SELECT
                version_groups.slug, locations.name, gifts.species FROM gifts
                JOIN reference.version_groups ON version_groups.id = gifts.version_group_id
                JOIN reference.locations ON locations.id = gifts.location_id
                WHERE
                    NOT EXISTS (
                        SELECT
                            1
                        FROM tracking.mainline_roadmap_steps
                    WHERE
                        mainline_roadmap_steps.version_group_id = gifts.version_group_id
                        AND mainline_roadmap_steps.note ILIKE '%' || gifts.species || '%')
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestones
                WHERE
                    mainline_milestones.version_group_id = gifts.version_group_id
                    AND mainline_milestones.description ILIKE '%' || gifts.species || '%')
            AND NOT EXISTS (
                SELECT
                    1
                FROM tracking.mainline_milestone_decision_options AS options
                JOIN tracking.mainline_milestones ON mainline_milestones.id = options.milestone_id
            WHERE
                mainline_milestones.version_group_id = gifts.version_group_id
                AND options.label ILIKE '%' || gifts.species || '%')
        -- Bought, won or out of reach, so not handed over in the story:
        -- Crystal's Odd Egg (named as the Odd Egg), Primo's password Eggs,
        -- event and code-only gifts, the Totem-sized Pokémon (named as a
        -- group), the Isle of Armor's rewards for the Diglett hunt, Omega
        -- Ruby / Alpha Sapphire's starters from older regions (named by
        -- region) and its Battle Resort gifts.
        AND (version_groups.slug, locations.name)
        NOT IN (('crystal', 'Route 34'), ('hgss', 'Violet City'), ('hgss', 'Cianwood City'), ('bw', 'Castelia City'), ('sm', 'Hau''oli City'), ('usum', 'Hau''oli City'), ('usum', 'Heahea Beach'), ('swsh-ioa', 'Fields of Honor'), ('oras', 'Route 101'), ('oras', 'Battle Resort'), ('za-md', 'Hyperspace Lumiose')) $$, 'a Pokémon someone hands you is named in the game''s Story');
-- Notes and descriptions never say "other", which reads vague in a walkthrough.
SELECT
    is_empty ($$
        SELECT
            mainline_roadmap_steps.id FROM tracking.mainline_roadmap_steps
            WHERE
                mainline_roadmap_steps.note ~* '\mother\M'
            UNION ALL
            SELECT
                mainline_milestones.id FROM tracking.mainline_milestones
                WHERE
                    mainline_milestones.description ~* '\mother\M' $$, 'no Story note or description says "other"');
SELECT
    *
FROM
    finish ();
ROLLBACK;
