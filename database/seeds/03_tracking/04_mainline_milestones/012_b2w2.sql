-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Iris, Colress and Ghetsis pages, and
-- its Black 2 / White 2 walkthrough (all 22 parts) and location pages for
-- the story's order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Black 2 / White 2 shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black 2 / White 2 story, decision, badge and League milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. Main Story follows
-- the order the walkthrough reaches each beat, with the beats the game forces
-- between badges as their own milestones (the Castelia Sewers, the Pokémon
-- World Tournament, Team Plasma's attack on Opelucid City, the Plasma Frigate
-- and Ghetsis in the Giant Chasm). The Pokémon League closes Main Story as
-- one milestone: the four Elite Four milestones (120013 to 120016) and the
-- Hall of Fame milestone (120018) merged into it (120017);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is
-- Hugh in Undella Town. Side Content is the legendary Pokémon. Dense optional
-- walkthrough beats (Pokéstar Studios, Join Avenue, the Subway, the later
-- tournaments, Black Tower and White Treehollow) are intentionally excluded.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Starter (Aspertia City)
  (120001, 12, NULL, 1201, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Bianca is waiting on the lookout above Aspertia City with three Poké Balls. Pick Snivy, Tepig or Oshawott. Your rival Hugh battles you right away.', 1, true, 344),
  -- Receive Pokédex (Aspertia City)
  (120002, 12, NULL, 1201, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Bianca hands you a Pokédex on the lookout, and one to Hugh. Your mom gives you the Running Shoes on your way out of Aspertia City, and Hugh''s sister a Town Map.', 2, true, 344),
  -- Basic Badge (Aspertia Gym)
  (120003, 12, NULL, 1201, 2, 2, NULL, 'basic-badge', 'Basic Badge', 'Beat Cheren, the new Gym Leader, and his Normal types in the yard behind Aspertia''s Trainers'' School. The Basic Badge makes Pokémon up to level 20 obey you.', 3, true, 891),
  -- Toxic Badge (Virbank Gym)
  (120004, 12, NULL, 1201, 2, 2, NULL, 'toxic-badge', 'Toxic Badge', 'Beat Roxie and her Poison types on the stage of her band''s club in Virbank City. The Toxic Badge makes Pokémon up to level 30 obey you.', 4, true, 892),
  -- Castelia Sewers (Castelia Sewers)
  (120029, 12, NULL, 1201, 1, 2, NULL, 'castelia-sewers', 'Castelia Sewers', 'Burgh is away from his Gym, and Iris thinks Team Plasma may be hiding in the sewers. Go in with Hugh, who heals your team after every battle, and beat the Team Plasma Grunts you find. Burgh goes back to his Gym, and a scientist called Colress introduces himself.', 5, true, 346),
  -- Insect Badge (Castelia Gym)
  (120005, 12, NULL, 1201, 2, 2, NULL, 'insect-badge', 'Insect Badge', 'Slide through the silk cocoons of Castelia Gym and beat Burgh and his Bug types. The Insect Badge makes Pokémon up to level 40 obey you.', 6, true, 881),
  -- Bolt Badge (Nimbasa Gym)
  (120006, 12, NULL, 1201, 2, 2, NULL, 'bolt-badge', 'Bolt Badge', 'Walk the fashion runway of Nimbasa Gym and beat Elesa and her Electric types. The Bolt Badge makes Pokémon up to level 50 obey you.', 7, true, 882),
  -- Quake Badge (Driftveil Gym)
  (120007, 12, NULL, 1201, 2, 2, NULL, 'quake-badge', 'Quake Badge', 'Find your way through the dark mine of Driftveil Gym and beat Clay and his Ground types. The Quake Badge makes Pokémon up to level 60 obey you.', 8, true, 883),
  -- Pokémon World Tournament (Pokémon World Tournament)
  (120030, 12, NULL, 1201, 1, 2, NULL, 'pokemon-world-tournament', 'Pokémon World Tournament', 'Clay sends you to the Pokémon World Tournament south of Driftveil City. Win the Driftveil Tournament by beating Hugh, Cheren and Colress with three Pokémon. Then storm Team Plasma''s ship at the pier with Hugh and Cheren, until the Shadow Triad throws you off.', 9, true, 893),
  -- Jet Badge (Mistralton Gym)
  (120008, 12, NULL, 1201, 2, 2, NULL, 'jet-badge', 'Jet Badge', 'Push through the wind of the giant fans in Mistralton Gym and beat Skyla and her Flying types. The Jet Badge makes Pokémon up to level 70 obey you.', 10, true, 885),
  -- Legend Badge (Opelucid Gym)
  (120009, 12, NULL, 1201, 2, 2, NULL, 'legend-badge', 'Legend Badge', 'Ride the dragon statues of Opelucid Gym up to Drayden and beat his Dragon types. The Legend Badge makes Pokémon up to level 80 obey you.', 11, true, 889),
  -- Team Plasma's Attack (Opelucid City)
  (120031, 12, NULL, 1201, 1, 2, NULL, 'opelucid-city', 'Team Plasma''s Attack', 'The Plasma Frigate freezes Opelucid City from the air. Slide across the ice to beat the three Team Plasma Grunts hunting for the DNA Splicers, then Zinzolin in front of the Gym. One of the Shadow Triad battles you and takes the Splicers all the same.', 12, true, 888),
  -- Wave Badge (Humilau Gym)
  (120010, 12, NULL, 1201, 2, 2, NULL, 'wave-badge', 'Wave Badge', 'Cross the lily pads of Humilau Gym and beat Marlon and his Water types. The Wave Badge makes every Pokémon obey you.', 13, true, 896),
  -- Plasma Frigate (Plasma Frigate)
  (120011, 12, NULL, 1201, 6, 2, NULL, 'plasma-frigate', 'Plasma Frigate', 'Board the Plasma Frigate off Route 21 with Hugh and beat Zinzolin and a Team Plasma Grunt in a Multi Battle. The ship then flies to the Giant Chasm. Board it again there, get past its barrier, and beat Zinzolin and then Colress.', 14, true, 897),
  -- Defeat Ghetsis (Giant Chasm)
  (120012, 12, NULL, 1201, 6, 3, NULL, 'defeat-ghetsis', 'Defeat Ghetsis', 'Beat the Shadow Triad one after another on the frigate, then follow Ghetsis into the Giant Chasm''s deepest cave. He fuses Kyurem with N''s dragon. Beat Black Kyurem in Black 2 or White Kyurem in White 2, which you can''t catch, then Ghetsis himself.', 15, true, 359),
  -- Pokémon League (Pokémon League)
  (120017, 12, NULL, 1201, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four in any order and then Champion Iris at the Pokémon League. Your team enters the Hall of Fame.', 16, true, 890),
  -- Hugh in Undella Town (Undella Town)
  (120028, 12, NULL, 1203, 5, 2, NULL, 'undella-town', 'Hugh in Undella Town', 'After the credits, Hugh waits in Undella Town now that his sister''s Pokémon is home, and battles you.', 1, false, 403),
  -- Swords of Justice (Route 13)
  (120019, 12, NULL, 1204, 6, 2, NULL, 'swords-of-justice', 'Swords of Justice', 'Cobalion waits on Route 13, Virizion on Route 11 and Terrakion on Route 22. Each one stands in your way. Catch or defeat them.', 1, false, 379),
  -- Dreamyard (Dreamyard)
  (120020, 12, NULL, 1204, 6, 2, NULL, 'dreamyard', 'Dreamyard', 'After the Hall of Fame, Latios in Black 2 or Latias in White 2 shows itself in the Dreamyard. Chase it through the ruins until it stops to battle. Catch or defeat it.', 2, false, 354),
  -- Cave of Being (Cave of Being)
  (120021, 12, NULL, 1204, 6, 2, NULL, 'cave-of-being', 'Cave of Being', 'After the Hall of Fame, meet Professor Juniper in the Cave of Being on Route 20. Uxie, Mesprit and Azelf fly off. Find Uxie outside Nacrene Museum, Mesprit on top of Celestial Tower and Azelf on Route 23.', 3, false, 898),
  -- Dragonspiral Tower (Dragonspiral Tower)
  (120022, 12, NULL, 1204, 6, 2, NULL, 'dragonspiral-tower', 'Dragonspiral Tower', 'After the Hall of Fame, beat N in the ruins of his castle past Victory Road. He gives you the Dark Stone in Black 2 or the Light Stone in White 2. Take it to the top of Dragonspiral Tower, where it becomes Zekrom or Reshiram. Catch or defeat it.', 4, false, 353),
  -- Giant Chasm (Giant Chasm)
  (120023, 12, NULL, 1204, 6, 2, NULL, 'giant-chasm', 'Giant Chasm', 'After Dragonspiral Tower, Kyurem is back in the deepest cave of the Giant Chasm. Catch or defeat it.', 5, false, 359),
  -- Underground Ruins (Underground Ruins)
  (120024, 12, NULL, 1204, 6, 2, NULL, 'underground-ruins', 'Underground Ruins', 'Solve the door puzzle in the Underground Ruins under Clay Tunnel to face Regirock, then Registeel or Regice with the matching key.', 6, false, 404),
  -- Twist Mountain (Twist Mountain)
  (120025, 12, NULL, 1204, 6, 2, NULL, 'twist-mountain', 'Twist Mountain', 'Bring Regirock, Regice and Registeel to the chamber behind the Ice Rock in Twist Mountain to wake Regigigas.', 7, false, 401),
  -- Reversal Mountain (Reversal Mountain)
  (120026, 12, NULL, 1204, 6, 2, NULL, 'reversal-mountain', 'Reversal Mountain', 'Bring the Magma Stone from Route 18 to Reversal Mountain''s lowest floor to make Heatran appear.', 8, false, 374),
  -- Marvelous Bridge (Marvelous Bridge)
  (120027, 12, NULL, 1204, 6, 2, NULL, 'marvelous-bridge', 'Marvelous Bridge', 'Take the Lunar Wing from the Strange House to Marvelous Bridge to face Cresselia.', 9, false, 364);
