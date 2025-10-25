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
                    ('tera-blast', 'Tera Blast', 851, 'generation-ix', 'If the user has Terastallized, it unleashes energy of its Tera Type. This move inflicts damage using the Attack or Sp. Atk stat—whichever is higher for the user.'),
                    ('silk-trap', 'Silk Trap', 852, 'generation-ix', 'The user spins a silken trap, protecting itself from damage while lowering the Speed stat of any attacker that makes direct contact.'),
                    ('axe-kick', 'Axe Kick', 853, 'generation-ix', 'The user attacks by kicking up into the air and slamming its heel down upon the target. This may also confuse the target. If it misses, the user takes damage instead.'),
                    ('last-respects', 'Last Respects', 854, 'generation-ix', 'The user attacks to avenge its allies. The more defeated allies there are in the user''s party, the greater the move''s power.'),
                    ('lumina-crash', 'Lumina Crash', 855, 'generation-ix', 'The user attacks by unleashing a peculiar light that even affects the mind. This also harshly lowers the target''s Sp. Def stat.'),
                    ('order-up', 'Order Up', 856, 'generation-ix', 'The user attacks with elegant poise. If the user has a Tatsugiri in its mouth, this move boosts one of the user''s stats based on the Tatsugiri''s form.'),
                    ('jet-punch', 'Jet Punch', 857, 'generation-ix', 'The user summons a torrent around its fist and punches at blinding speed. This move always goes first.'),
                    ('spicy-extract', 'Spicy Extract', 858, 'generation-ix', 'The user emits an incredibly spicy extract, sharply boosting the target''s Attack stat and harshly lowering the target''s Defense stat.'),
                    ('spin-out', 'Spin Out', 859, 'generation-ix', 'The user spins furiously by straining its legs, inflicting damage on the target. This also harshly lowers the user''s Speed stat.'),
                    ('population-bomb', 'Population Bomb', 860, 'generation-ix', 'The user''s fellows gather in droves to perform a combo attack that hits the target one to ten times in a row.'),
                    ('ice-spinner', 'Ice Spinner', 861, 'generation-ix', 'The user covers its feet in thin ice and twirls around, slamming into the target. This move''s spinning motion also destroys the terrain.'),
                    ('glaive-rush', 'Glaive Rush', 862, 'generation-ix', 'The user throws its entire body into a reckless charge. After this move is used, attacks on the user cannot miss and will inflict double damage until the user''s next turn.'),
                    ('revival-blessing', 'Revival Blessing', 863, 'generation-ix', 'The user bestows a loving blessing, reviving a party Pokémon that has fainted and restoring half that Pokémon''s max HP.'),
                    ('salt-cure', 'Salt Cure', 864, 'generation-ix', 'The user salt cures the target, inflicting damage every turn. Steel and Water types are more strongly affected by this move.'),
                    ('triple-dive', 'Triple Dive', 865, 'generation-ix', 'The user performs a perfectly timed triple dive, hitting the target with splashes of water three times in a row.'),
                    ('mortal-spin', 'Mortal Spin', 866, 'generation-ix', 'The user performs a spin attack that can also eliminate the effects of such moves as Bind, Wrap, and Leech Seed. This also poisons opposing Pokémon.'),
                    ('doodle', 'Doodle', 867, 'generation-ix', 'The user captures the very essence of the target in a sketch. This changes the Abilities of the user and its ally Pokémon to that of the target.'),
                    ('fillet-away', 'Fillet Away', 868, 'generation-ix', 'The user sharply boosts its Attack, Sp. Atk, and Speed stats by using its own HP.'),
                    ('kowtow-cleave', 'Kowtow Cleave', 869, 'generation-ix', 'The user slashes at the target after kowtowing to make the target let down its guard. This attack never misses.'),
                    ('flower-trick', 'Flower Trick', 870, 'generation-ix', 'The user throws a rigged bouquet of flowers at the target. This attack never misses and always lands a critical hit.'),
                    ('torch-song', 'Torch Song', 871, 'generation-ix', 'The user blows out raging flames as if singing a song, scorching the target. This also boosts the user''s Sp. Atk stat.'),
                    ('aqua-step', 'Aqua Step', 872, 'generation-ix', 'The user toys with the target and attacks it using light and fluid dance steps. This also boosts the user''s Speed stat.'),
                    ('raging-bull', 'Raging Bull', 873, 'generation-ix', 'The user performs a tackle like a raging bull. This move''s type depends on the user''s form. It can also break barriers, such as Light Screen and Reflect.'),
                    ('make-it-rain', 'Make It Rain', 874, 'generation-ix', 'The user attacks by throwing out a mass of coins. This also lowers the user''s Sp. Atk stat. Money is earned after the battle.'),
                    ('psyblade', 'Psyblade', 875, 'generation-ix', 'The user rends the target with an ethereal blade. This move''s power is boosted by 50 percent if the user is on Electric Terrain.'),
                    ('hydro-steam', 'Hydro Steam', 876, 'generation-ix', 'The user blasts the target with boiling-hot water. This move''s power is not lowered in harsh sunlight but rather boosted by 50 percent.'),
                    ('ruination', 'Ruination', 877, 'generation-ix', 'The user summons a ruinous disaster. This cuts the target''s HP in half.'),
                    ('collision-course', 'Collision Course', 878, 'generation-ix', 'The user transforms and crashes to the ground, causing a massive prehistoric explosion. This move''s power is boosted more than usual if it''s a supereffective hit.'),
                    ('electro-drift', 'Electro Drift', 879, 'generation-ix', 'The user races forward at ultrafast speeds, piercing its target with futuristic electricity. This move''s power is boosted more than usual if it''s a supereffective hit.'),
                    ('shed-tail', 'Shed Tail', 880, 'generation-ix', 'The user creates a substitute for itself using its own HP before switching places with a party Pokémon in waiting.'),
                    ('chilly-reception', 'Chilly Reception', 881, 'generation-ix', NULL),
                    ('tidy-up', 'Tidy Up', 882, 'generation-ix', 'The user tidies up and removes the effects of Spikes, Stealth Rock, Sticky Web, Toxic Spikes, and Substitute. This also boosts the user''s Attack and Speed stats.'),
                    ('snowscape', 'Snowscape', 883, 'generation-ix', 'The user summons a snowstorm lasting five turns. This boosts the Defense stats of Ice types.'),
                    ('pounce', 'Pounce', 884, 'generation-ix', 'The user attacks by pouncing on the target. This also lowers the target''s Speed stat.'),
                    ('trailblaze', 'Trailblaze', 885, 'generation-ix', 'The user attacks suddenly as if leaping out from tall grass. The user''s nimble footwork boosts its Speed stat.'),
                    ('chilling-water', 'Chilling Water', 886, 'generation-ix', 'The user attacks the target by showering it with water that''s so cold it saps the target''s power. This also lowers the target''s Attack stat.'),
                    ('hyper-drill', 'Hyper Drill', 887, 'generation-ix', 'The user spins the pointed part of its body at high speed to pierce the target. This attack can hit a target using a move such as Protect or Detect.'),
                    ('twin-beam', 'Twin Beam', 888, 'generation-ix', 'The user shoots mystical beams from its eyes to inflict damage. The target is hit twice in a row.'),
                    ('rage-fist', 'Rage Fist', 889, 'generation-ix', 'The user converts its rage into energy to attack. The more times the user has been hit by attacks, the greater the move''s power.'),
                    ('armor-cannon', 'Armor Cannon', 890, 'generation-ix', 'The user shoots its own armor out as blazing projectiles. This also lowers the user''s Defense and Sp. Def stats.'),
                    ('bitter-blade', 'Bitter Blade', 891, 'generation-ix', 'The user focuses its bitter feelings toward the world of the living into a slashing attack. The user''s HP is restored by up to half the damage taken by the target.'),
                    ('double-shock', 'Double Shock', 892, 'generation-ix', 'The user discharges all the electricity from its body to perform a high-damage attack. After using this move, the user will no longer be Electric type.'),
                    ('gigaton-hammer', 'Gigaton Hammer', 893, 'generation-ix', 'The user swings its whole body around to attack with its huge hammer. This move can''t be used twice in a row.'),
                    ('comeuppance', 'Comeuppance', 894, 'generation-ix', 'The user retaliates with much greater force against the opponent that last inflicted damage on it.'),
                    ('aqua-cutter', 'Aqua Cutter', 895, 'generation-ix', 'The user expels pressurized water to cut at the target like a blade. This move has a heightened chance of landing a critical hit.'),
                    ('blazing-torque', 'Blazing Torque', 896, 'generation-ix', 'Blazing Torque inflicts damage and has a 30% chance of burning the target.'),
                    ('wicked-torque', 'Wicked Torque', 897, 'generation-ix', 'Wicked Torque inflicts damage and has a 10% chance of putting the target to sleep.'),
                    ('noxious-torque', 'Noxious Torque', 898, 'generation-ix', 'Noxious Torque inflicts damage and has a 30% chance of poisoning the target.'),
                    ('combat-torque', 'Combat Torque', 899, 'generation-ix', 'Combat Torque inflicts damage and has a 30% chance of paralyzing the target.'),
                    ('magical-torque', 'Magical Torque', 900, 'generation-ix', 'Magical Torque inflicts damage and has a 30% chance of confusing the target.'),
                    ('blood-moon', 'Blood Moon', 901, 'generation-ix', 'The user unleashes the full brunt of its spirit from a full moon that shines as red as blood. This move can''t be used twice in a row.'),
                    ('matcha-gotcha', 'Matcha Gotcha', 902, 'generation-ix', 'The user fires a blast of tea that it mixed. The user''s HP is restored by up to half the damage taken by the target. This may also leave the target with a burn.'),
                    ('syrup-bomb', 'Syrup Bomb', 903, 'generation-ix', 'The user sets off an explosion of sticky candy syrup, which coats the target and causes the target''s Speed stat to drop each turn for three turns.'),
                    ('ivy-cudgel', 'Ivy Cudgel', 904, 'generation-ix', 'The user strikes with an ivy-wrapped cudgel. This move''s type changes depending on the mask worn by the user, and it has a heightened chance of landing a critical hit.'),
                    ('electro-shot', 'Electro Shot', 905, 'generation-ix', 'The user gathers electricity on the first turn, boosting its Sp. Atk stat, then fires a high-voltage shot on the next turn. The shot will be fired immediately in rain.'),
                    ('tera-starstorm', 'Tera Starstorm', 906, 'generation-ix', 'With the power of its crystals, the user bombards and eliminates the target. When used by Terapagos in its Stellar Form, this move damages all opposing Pokémon.'),
                    ('fickle-beam', 'Fickle Beam', 907, 'generation-ix', 'The user shoots a beam of light to inflict damage. Sometimes all the user''s heads shoot beams in unison, doubling the move''s power.'),
                    ('burning-bulwark', 'Burning Bulwark', 908, 'generation-ix', 'The user''s intensely hot fur protects it from attacks and also burns any attacker that makes direct contact with it.'),
                    ('thunderclap', 'Thunderclap', 909, 'generation-ix', 'This move enables the user to attack first with a jolt of electricity. This move fails if the target is not readying an attack.'),
                    ('mighty-cleave', 'Mighty Cleave', 910, 'generation-ix', 'The user wields the light that has accumulated atop its head to cleave the target. This move hits even if the target protects itself.'),
                    ('tachyon-cutter', 'Tachyon Cutter', 911, 'generation-ix', 'The user attacks by launching particle blades at the target twice in a row. This attack never misses.'),
                    ('hard-press', 'Hard Press', 912, 'generation-ix', 'The target is crushed with an arm, a claw, or the like to inflict damage. The more HP the target has left, the greater the move''s power.'),
                    ('dragon-cheer', 'Dragon Cheer', 913, 'generation-ix', 'The user raises its allies'' morale with a draconic cry so that their future attacks have a heightened chance of landing critical hits. This rouses Dragon types more.'),
                    ('alluring-voice', 'Alluring Voice', 914, 'generation-ix', 'The user attacks the target using its angelic voice. This also confuses the target if its stats have been boosted during the turn.'),
                    ('temper-flare', 'Temper Flare', 915, 'generation-ix', 'Spurred by desperation, the user attacks the target. This move''s power is doubled if the user''s previous move failed.'),
                    ('supercell-slam', 'Supercell Slam', 916, 'generation-ix', 'The user electrifies its body and drops onto the target to inflict damage. If this move misses, the user takes damage instead.'),
                    ('psychic-noise', 'Psychic Noise', 917, 'generation-ix', 'The user attacks the target with unpleasant sound waves. For two turns, the target is prevented from recovering HP through moves, Abilities, or held items.'),
                    ('upper-hand', 'Upper Hand', 918, 'generation-ix', 'The user reacts to the target''s movement and strikes with the heel of its palm, making the target flinch. This move fails if the target is not readying a priority move.'),
                    ('malignant-chain', 'Malignant Chain', 919, 'generation-ix', 'The user pours toxins into the target by wrapping them in a toxic, corrosive chain. This may also leave the target badly poisoned.')
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