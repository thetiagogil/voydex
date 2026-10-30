CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Story chapters and beats (#155): every chapter says what it is to the
-- journey, side content says what opens it without locking, and each battle
-- sits on the beat where it happens.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d1', 'authenticated', 'authenticated', 'chapters@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 9, 6, 2, 'Chapters FireRed');
SELECT
    plan (17);
-- Every version group with Story has a main-story chapter.
SELECT
    is_empty ($$
        SELECT
            version_groups.slug FROM reference.version_groups
            WHERE
                EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestones
                    WHERE
                        mainline_milestones.version_group_id = version_groups.id)
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_categories
                    WHERE
                        mainline_categories.version_group_id = version_groups.id
                        AND mainline_categories.chapter_kind = 'main-story') $$, 'every journey has a main-story chapter');
-- Only Scarlet / Violet's three paths are played in any order.
SELECT
    results_eq ($$
        SELECT
            version_groups.slug, mainline_categories.slug FROM tracking.mainline_categories
            JOIN reference.version_groups ON version_groups.id = mainline_categories.version_group_id
            WHERE
                mainline_categories.plays_in_any_order ORDER BY mainline_categories.sort_order $$, $$
            VALUES ('sv', 'victory-road'), ('sv', 'starfall-street'), ('sv', 'path-of-legends') $$, 'Scarlet / Violet''s three paths are the chapters played in any order');
-- An opens-after link sits only on an optional beat.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.slug FROM tracking.mainline_milestone_prerequisites
            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_prerequisites.milestone_id
            WHERE
                mainline_milestone_prerequisite_kinds.slug = 'opens-after'
                AND mainline_milestones.is_required_for_completion $$, 'opens-after links sit on optional beats only');
-- Every side-content beat says what opens it, except the ones open from the start.
SELECT
    results_eq ($$
        SELECT
            version_groups.slug, mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.version_groups ON version_groups.id = mainline_milestones.version_group_id
            WHERE
                mainline_categories.chapter_kind = 'side-content'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestone_prerequisites
                    JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
                    WHERE
                        mainline_milestone_prerequisites.milestone_id = mainline_milestones.id
                        AND mainline_milestone_prerequisite_kinds.slug = 'opens-after')
            ORDER BY mainline_milestones.id $$, $$
            VALUES ('sv', 'grasswither-shrine'), ('sv', 'icerend-shrine'), ('sv', 'groundblight-shrine'), ('sv', 'firescourge-shrine') $$, 'only Scarlet / Violet''s shrines are side content open from the start');
-- A side-content beat never has more than one opens-after link.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_prerequisites.milestone_id FROM tracking.mainline_milestone_prerequisites
            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
            WHERE
                mainline_milestone_prerequisite_kinds.slug = 'opens-after' GROUP BY mainline_milestone_prerequisites.milestone_id
            HAVING
                count(*) > 1 $$, 'a beat has one opens-after link at most');
-- The category summary tells Story each chapter's kind.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    results_eq ($$
        SELECT
            category_slug, chapter_kind, plays_in_any_order FROM views.mainline_play_milestone_category_summary
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000d1' ORDER BY category_sort_order $$, $$
            VALUES ('main-story', 'main-story', FALSE), ('pokemon-league', 'main-story', FALSE), ('post-game', 'post-game', FALSE), ('side-content', 'side-content', FALSE) $$, 'the category summary carries each chapter''s kind');
-- An opens-after link never locks: Cerulean Cave records before the Hall of Fame.
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000d1', p_milestone_id => 60029) $$, 'a side-content beat records before the beat that opens it');
RESET ROLE;
-- Ruby / Sapphire and Omega Ruby / Alpha Sapphire: the Cave of Origin is its own beat, so Rain Badge holds only Wallace.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id IN (5, 14)
                AND mainline_milestones.slug IN ('cave-of-origin', 'rain-badge')
            ORDER BY mainline_milestones.version_group_id, mainline_milestones.slug, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('cave-of-origin', 'Groudon'), ('cave-of-origin', 'Kyogre'), ('rain-badge', 'Wallace'), ('cave-of-origin', 'Groudon'), ('cave-of-origin', 'Kyogre'), ('rain-badge', 'Wallace') $$, 'the Cave of Origin holds the forced legendary and Rain Badge holds Wallace');
-- Emerald: the Space Center and Sky Pillar are beats between Mind Badge and Rain Badge.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 7
                AND mainline_categories.slug = 'main-story'
                AND mainline_milestones.sort_order BETWEEN 11 AND 15 ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('mind-badge'), ('space-center'), ('seafloor-cavern'), ('awaken-rayquaza'), ('rain-badge') $$, 'Emerald''s Space Center and Sky Pillar sit between Mind Badge and Rain Badge');
-- Gold / Silver, Crystal, HeartGold / SoulSilver: Silver's Cherrygrove battle leads to Zephyr Badge.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.version_group_id, mainline_milestones.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            WHERE
                mainline_milestone_opponent_refs.notes = 'Cherrygrove City' ORDER BY mainline_milestones.version_group_id $$, $$
            VALUES (3, 'zephyr-badge'), (4, 'zephyr-badge'), (10, 'zephyr-badge') $$, 'Silver''s first battle sits on Zephyr Badge');
-- A rematch is never a Story battle: Wally's Victory Road rematch and Colress's P2 Laboratory rematch are gone.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_opponent_refs.id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.slug = 'hall-of-fame'
                AND mainline_opponents.name IN ('Wally', 'Colress') $$, 'rematches stay off the Hall of Fame');
-- Let's Go: Pokémon Tower is a beat with Trace and Jessie & James, and Route 17 has their Lv. 52 team.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.name, max(mainline_opponent_team_members.level)
            FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_milestones.version_group_id = 17
                AND mainline_milestones.slug IN ('pokemon-tower', 'snorlax-encounter')
            GROUP BY mainline_milestones.slug, mainline_opponents.name ORDER BY mainline_milestones.slug, mainline_opponents.name $$, $$
            VALUES ('pokemon-tower', 'Jessie & James', 34), ('pokemon-tower', 'Trace', 28), ('snorlax-encounter', 'Jessie & James', 52) $$, 'Let''s Go''s Pokémon Tower and Route 17 battles sit on their beats');
-- Isle of Armor: the Dojo Trials beat holds both Klara / Avery trial battles, in order.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.slug = 'dojo-trials' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('klara-avery-warm-up-tunnel'), ('klara-avery') $$, 'the Dojo Trials beat fights Klara or Avery in the tunnel, then at the dojo');
-- X / Y: Battle AZ follows the Hall of Fame in the League chapter; the Kiloude City rival battle is post-game.
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, mainline_milestones.sort_order FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 13
                AND mainline_milestones.slug IN ('hall-of-fame', 'battle-az', 'kiloude-city')
            ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('pokemon-league', 'hall-of-fame', 6), ('pokemon-league', 'battle-az', 7), ('post-game', 'kiloude-city', 1) $$, 'Battle AZ closes the League chapter and Kiloude City is post-game');
-- Sun / Moon and Ultra Sun / Ultra Moon: the Iki Town festival is a beat with Hau on it.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.version_group_id, mainline_opponents.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.slug = 'iki-town-festival' ORDER BY mainline_milestones.version_group_id $$, $$
            VALUES (15, 'Hau'), (16, 'Hau') $$, 'the Iki Town festival beat holds Hau''s festival battle');
-- Sword / Shield: Grass Badge holds the Route 2 and Motostoke battles in play order.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 18
                AND mainline_milestones.slug = 'grass-badge' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('hop-route-2'), ('marnie'), ('hop'), ('bede'), ('milo') $$, 'Grass Badge lists its battles in play order');
-- Receive Pokédex carries no later battle anywhere.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.version_group_id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.slug = 'receive-pokedex'
                AND mainline_opponents.opponent_role = 'rival'
                AND mainline_milestone_opponent_refs.notes NOT IN ('Route 103', 'Professor Oak''s Laboratory, Pallet Town', 'Poco Path lighthouse', 'South gate of Mesagoza (South Province Area One)') $$, 'Receive Pokedex only keeps the battles fought on the way to it or there');
SELECT
    *
FROM
    finish ();
ROLLBACK;
