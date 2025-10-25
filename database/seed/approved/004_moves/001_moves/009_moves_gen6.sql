-- Generated from PokeAPI (/move)
-- Skipped slugs: unknown, stellar
-- Generated at: 2025-10-25T00:13:21.742Z
WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('flying-press', 'Flying Press', 560, 'generation-vi', 'The user dives down onto the target from the sky. This move is Fighting and Flying type simultaneously.'),
                    ('mat-block', 'Mat Block', 561, 'generation-vi', 'Using a pulled-up mat as a shield, the user protects itself and its allies from damaging moves. This does not stop status moves.'),
                    ('belch', 'Belch', 562, 'generation-vi', 'The user lets out a damaging belch at the target. The user must eat a held Berry to use this move.'),
                    ('rototiller', 'Rototiller', 563, 'generation-vi', 'Tilling the soil, the user makes it easier for plants to grow. This raises the Attack and Sp. Atk stats of Grass-type Pokémon.'),
                    ('sticky-web', 'Sticky Web', 564, 'generation-vi', 'The user weaves a sticky net around the opposing team, which lowers their Speed stat upon switching into battle.'),
                    ('fell-stinger', 'Fell Stinger', 565, 'generation-vi', 'When the user knocks out a target with this move, the user''s Attack stat rises sharply.'),
                    ('phantom-force', 'Phantom Force', 566, 'generation-vi', 'The user vanishes somewhere, then strikes the target on the next turn. This move hits even if the target protects itself.'),
                    ('trick-or-treat', 'Trick Or Treat', 567, 'generation-vi', 'The user takes the target trick-or-treating. This adds Ghost type to the target''s type.'),
                    ('noble-roar', 'Noble Roar', 568, 'generation-vi', 'Letting out a noble roar, the user intimidates the target and lowers its Attack and Sp. Atk stats.'),
                    ('ion-deluge', 'Ion Deluge', 569, 'generation-vi', 'The user disperses electrically charged particles, which changes Normal-type moves to Electric-type moves.'),
                    ('parabolic-charge', 'Parabolic Charge', 570, 'generation-vi', 'The user attacks everything around it. The user''s HP is restored by half the damage taken by those hit.'),
                    ('forests-curse', 'Forests Curse', 571, 'generation-vi', 'The user puts a forest curse on the target. Afflicted targets are now Grass type as well.'),
                    ('petal-blizzard', 'Petal Blizzard', 572, 'generation-vi', 'The user stirs up a violent petal blizzard and attacks everything around it.'),
                    ('freeze-dry', 'Freeze Dry', 573, 'generation-vi', 'The user rapidly cools the target. This may also leave the target frozen. This move is super effective on Water types.'),
                    ('disarming-voice', 'Disarming Voice', 574, 'generation-vi', 'Letting out a charming cry, the user does emotional damage to opposing Pokémon. This attack never misses.'),
                    ('parting-shot', 'Parting Shot', 575, 'generation-vi', 'With a parting threat, the user lowers the target''s Attack and Sp. Atk stats. Then it switches with a party Pokémon.'),
                    ('topsy-turvy', 'Topsy Turvy', 576, 'generation-vi', 'All stat changes affecting the target turn topsy-turvy and become the opposite of what they were.'),
                    ('draining-kiss', 'Draining Kiss', 577, 'generation-vi', 'The user steals the target''s energy with a kiss. The user''s HP is restored by over half of the damage taken by the target.'),
                    ('crafty-shield', 'Crafty Shield', 578, 'generation-vi', 'The user protects itself and its allies from status moves with a mysterious power. This does not stop moves that do damage.'),
                    ('flower-shield', 'Flower Shield', 579, 'generation-vi', 'The user raises the Defense stat of all Grass-type Pokémon in battle with a mysterious power.'),
                    ('grassy-terrain', 'Grassy Terrain', 580, 'generation-vi', 'The user turns the ground under everyone''s feet to grass for five turns. This restores the HP of Pokémon on the ground a little every turn.'),
                    ('misty-terrain', 'Misty Terrain', 581, 'generation-vi', 'The user covers the ground under everyone''s feet with mist for five turns. This protects Pokémon on the ground from status conditions.'),
                    ('electrify', 'Electrify', 582, 'generation-vi', 'If the target is electrified before it uses a move during that turn, the target''s move becomes Electric type.'),
                    ('play-rough', 'Play Rough', 583, 'generation-vi', 'The user plays rough with the target and attacks it. This may also lower the target''s Attack stat.'),
                    ('fairy-wind', 'Fairy Wind', 584, 'generation-vi', 'The user stirs up a fairy wind and strikes the target with it.'),
                    ('moonblast', 'Moonblast', 585, 'generation-vi', 'Borrowing the power of the moon, the user attacks the target. This may also lower the target''s Sp. Atk stat.'),
                    ('boomburst', 'Boomburst', 586, 'generation-vi', 'The user attacks everything around it with the destructive power of a terrible, explosive sound.'),
                    ('fairy-lock', 'Fairy Lock', 587, 'generation-vi', 'By locking down the battlefield, the user keeps all Pokémon from fleeing during the next turn.'),
                    ('kings-shield', 'Kings Shield', 588, 'generation-vi', 'The user takes a defensive stance while it protects itself from damage. It also harshly lowers the Attack stat of any attacker who makes direct contact.'),
                    ('play-nice', 'Play Nice', 589, 'generation-vi', 'The user and the target become friends, and the target loses its will to fight. This lowers the target''s Attack stat.'),
                    ('confide', 'Confide', 590, 'generation-vi', 'The user tells the target a secret, and the target loses its ability to concentrate. This lowers the target''s Sp. Atk stat.'),
                    ('diamond-storm', 'Diamond Storm', 591, 'generation-vi', 'The user whips up a storm of diamonds to damage opposing Pokémon. This may also raise the user''s Defense stat.'),
                    ('steam-eruption', 'Steam Eruption', 592, 'generation-vi', 'The user immerses the target in superheated steam. This may also leave the target with a burn.'),
                    ('hyperspace-hole', 'Hyperspace Hole', 593, 'generation-vi', 'Using a hyperspace hole, the user appears right next to the target and strikes. This also hits a target using Protect or Detect.'),
                    ('water-shuriken', 'Water Shuriken', 594, 'generation-vi', 'The user hits the target with throwing stars two to five times in a row. This move always goes first.'),
                    ('mystical-fire', 'Mystical Fire', 595, 'generation-vi', 'The user attacks by breathing a special, hot fire. This also lowers the target''s Sp. Atk stat.'),
                    ('spiky-shield', 'Spiky Shield', 596, 'generation-vi', 'In addition to protecting the user from attacks, this move also damages any attacker who makes direct contact.'),
                    ('aromatic-mist', 'Aromatic Mist', 597, 'generation-vi', 'The user raises the Sp. Def stat of an ally Pokémon by using a mysterious aroma.'),
                    ('eerie-impulse', 'Eerie Impulse', 598, 'generation-vi', 'The user''s body generates an eerie impulse. Exposing the target to it harshly lowers the target''s Sp. Atk stat.'),
                    ('venom-drench', 'Venom Drench', 599, 'generation-vi', 'Opposing Pokémon are drenched in an odd poisonous liquid. This lowers the Attack, Sp. Atk, and Speed stats of a poisoned target.'),
                    ('powder', 'Powder', 600, 'generation-vi', 'The user covers the target in a powder that explodes and damages the target if it uses a Fire-type move.'),
                    ('geomancy', 'Geomancy', 601, 'generation-vi', 'The user absorbs energy and sharply raises its Sp. Atk, Sp. Def, and Speed stats on the next turn.'),
                    ('magnetic-flux', 'Magnetic Flux', 602, 'generation-vi', 'The user manipulates magnetic fields, which raises the Defense and Sp. Def stats of ally Pokémon with the Plus or Minus Ability.'),
                    ('happy-hour', 'Happy Hour', 603, 'generation-vi', 'Using Happy Hour doubles the amount of prize money received after battle.'),
                    ('electric-terrain', 'Electric Terrain', 604, 'generation-vi', 'The user electrifies the ground under everyone''s feet for five turns. Pokémon on the ground no longer fall asleep.'),
                    ('dazzling-gleam', 'Dazzling Gleam', 605, 'generation-vi', 'The user damages opposing Pokémon by emitting a powerful flash.'),
                    ('celebrate', 'Celebrate', 606, 'generation-vi', 'The Pokémon congratulates you on your special day!'),
                    ('hold-hands', 'Hold Hands', 607, 'generation-vi', 'The user and an ally hold hands. This makes them very happy.'),
                    ('baby-doll-eyes', 'Baby Doll Eyes', 608, 'generation-vi', 'The user stares at the target with its baby-doll eyes, which lowers its Attack stat. This move always goes first.'),
                    ('nuzzle', 'Nuzzle', 609, 'generation-vi', 'The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis.'),
                    ('hold-back', 'Hold Back', 610, 'generation-vi', 'The user holds back when it attacks and the target is left with at least 1 HP.'),
                    ('infestation', 'Infestation', 611, 'generation-vi', 'The target is infested and attacked for four to five turns. The target can''t flee during this time.'),
                    ('power-up-punch', 'Power Up Punch', 612, 'generation-vi', 'Striking opponents over and over makes the user''s fists harder. Hitting a target raises the Attack stat.'),
                    ('oblivion-wing', 'Oblivion Wing', 613, 'generation-vi', 'The user absorbs its target''s HP. The user''s HP is restored by over half of the damage taken by the target.'),
                    ('thousand-arrows', 'Thousand Arrows', 614, 'generation-vi', 'This move also hits opposing Pokémon that are in the air. Those Pokémon are knocked down to the ground.'),
                    ('thousand-waves', 'Thousand Waves', 615, 'generation-vi', 'The user attacks with a wave that crawls along the ground. Those hit can''t flee from battle.'),
                    ('lands-wrath', 'Lands Wrath', 616, 'generation-vi', 'The user gathers the energy of the land and focuses that power on opposing Pokémon to damage them.'),
                    ('light-of-ruin', 'Light Of Ruin', 617, 'generation-vi', 'Drawing power from the Eternal Flower, the user fires a powerful beam of light. This also damages the user quite a lot.'),
                    ('origin-pulse', 'Origin Pulse', 618, 'generation-vi', 'The user attacks opposing Pokémon with countless beams of light that glow a deep and brilliant blue.'),
                    ('precipice-blades', 'Precipice Blades', 619, 'generation-vi', 'The user attacks opposing Pokémon by manifesting the power of the land in fearsome blades of stone.'),
                    ('dragon-ascent', 'Dragon Ascent', 620, 'generation-vi', 'After soaring upward, the user attacks its target by dropping out of the sky at high speeds, although it lowers its own Defense and Sp. Def in the process.'),
                    ('hyperspace-fury', 'Hyperspace Fury', 621, 'generation-vi', 'Using its many arms, the user unleashes a barrage of attacks that ignore the effects of moves like Protect and Detect. This attack lowers the user''s Defense.')
            ) AS m (slug, name, external_id, generation_introduced_slug, effect)
    )
INSERT INTO
    dex.moves (slug, name, external_id, generation_introduced_id, effect)
SELECT
    m.slug,
    m.name,
    m.external_id,
    gen.id,
    m.effect
FROM
    m
    JOIN meta.generations gen ON gen.slug = m.generation_introduced_slug ON CONFLICT (slug) DO NOTHING;