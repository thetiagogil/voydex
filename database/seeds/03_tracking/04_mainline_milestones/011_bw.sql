-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, N, Ghetsis and Alder pages, and its
-- Black / White walkthrough (all 18 parts) and location pages for the
-- story's order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Black / White shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black / White story, decision, badge and League milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. Main Story follows
-- the order the walkthrough reaches each beat, with the Team Plasma beats the
-- game forces between badges as their own milestones (the Dreamyard,
-- Pinwheel Forest, the Cold Storage, Dragonspiral Tower and the Relic
-- Castle). The Pokémon League closes Main Story as one milestone: the Elite
-- Four, then Reshiram or Zekrom, N and Ghetsis in N's Castle, with no way out
-- in between. The four Elite Four milestones (110011 to 110014) and Battle N
-- (110015) merged into it (110016, once Defeat Ghetsis);
-- database/game-data/id-changes.json moves saved Plays over. Champion Alder
-- is Post Game and holds the Hall of Fame (110018 merged into 110017). Side
-- Content is the Swords of Justice, the roaming Tornadus or Thundurus, Kyurem
-- and Landorus. Dense optional walkthrough beats (the Battle Subway, the
-- Musical, the Seven Sages hunt, the Royal Unova) are intentionally excluded.
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
  -- Choose Starter (Nuvema Town)
  (110001, 11, NULL, 1101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Juniper has left a gift box in your room in Nuvema Town. Pick Snivy, Tepig or Oshawott, then battle Bianca and Cheren on the spot with the two that are left.', 1, true, 369),
  -- Receive Pokédex (Professor Juniper's Laboratory)
  (110002, 11, NULL, 1101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Professor Juniper gives you, Cheren and Bianca a Pokédex each at her lab. Your mom waits outside with a Town Map for each of you.', 2, true, 877),
  -- Trio Badge (Striaton Gym)
  (110003, 11, NULL, 1101, 2, 2, NULL, 'trio-badge', 'Trio Badge', 'Step on the switches that beat each curtain''s type to cross Striaton Gym, then beat the brother whose type beats your starter: Chili for Snivy, Cress for Tepig or Cilan for Oshawott. The Trio Badge makes Pokémon up to level 20 obey you.', 3, true, 878),
  -- Dreamyard (Dreamyard)
  (110023, 11, NULL, 1101, 1, 2, NULL, 'dreamyard', 'Dreamyard', 'Fennel asks you for some Dream Mist. Cut the tree in the Dreamyard and beat the two Team Plasma Grunts tormenting a Munna. A Musharna scares them off and leaves the mist behind, and Fennel gives you the C-Gear.', 4, true, 354),
  -- Basic Badge (Nacrene Gym)
  (110004, 11, NULL, 1101, 2, 2, NULL, 'basic-badge', 'Basic Badge', 'Follow the clues in the books of Nacrene Museum''s library to the hidden stairs, then beat Lenora and her Normal types. The Basic Badge makes Pokémon up to level 30 obey you.', 5, true, 879),
  -- Pinwheel Forest (Pinwheel Forest)
  (110024, 11, NULL, 1101, 1, 2, NULL, 'pinwheel-forest', 'Pinwheel Forest', 'Team Plasma has stolen the Dragon Skull from Nacrene Museum. Search Pinwheel Forest while Burgh guards the exit, and beat four Team Plasma Grunts to win it back. Gorm of the Seven Sages calls his people off.', 6, true, 371),
  -- Insect Badge (Castelia Gym)
  (110005, 11, NULL, 1101, 2, 2, NULL, 'insect-badge', 'Insect Badge', 'Push through the honey walls of Castelia Gym and beat Burgh and his Bug types. The Insect Badge makes Pokémon up to level 40 obey you.', 7, true, 881),
  -- Bolt Badge (Nimbasa Gym)
  (110006, 11, NULL, 1101, 2, 2, NULL, 'bolt-badge', 'Bolt Badge', 'Ride the roller coasters of Nimbasa Gym and switch their tracks to reach Elesa, then beat her Electric types. The Bolt Badge makes Pokémon up to level 50 obey you.', 8, true, 882),
  -- Cold Storage (Cold Storage)
  (110025, 11, NULL, 1101, 1, 2, NULL, 'cold-storage', 'Cold Storage', 'Clay blames you for the Team Plasma members who got away when the drawbridge came down. Track them into the Cold Storage in Driftveil City and beat the Grunts huddled around Zinzolin of the Seven Sages. Clay takes them away and agrees to battle you.', 9, true, 351),
  -- Quake Badge (Driftveil Gym)
  (110007, 11, NULL, 1101, 2, 2, NULL, 'quake-badge', 'Quake Badge', 'Ride the lifts down the mine shaft of Driftveil Gym and beat Clay and his Ground types. The Quake Badge makes Pokémon up to level 60 obey you.', 10, true, 883),
  -- Jet Badge (Mistralton Gym)
  (110008, 11, NULL, 1101, 2, 2, NULL, 'jet-badge', 'Jet Badge', 'Fire yourself from cannon to cannon across Mistralton Gym and beat Skyla and her Flying types. The Jet Badge makes Pokémon up to level 70 obey you.', 11, true, 885),
  -- Freeze Badge (Icirrus Gym)
  (110009, 11, NULL, 1101, 2, 2, NULL, 'freeze-badge', 'Freeze Badge', 'Slide across the ice of Icirrus Gym and beat Brycen and his Ice types. The Freeze Badge makes Pokémon up to level 80 obey you.', 12, true, 886),
  -- Dragonspiral Tower (Dragonspiral Tower)
  (110026, 11, NULL, 1101, 1, 2, NULL, 'dragonspiral-tower', 'Dragonspiral Tower', 'Team Plasma has broken into Dragonspiral Tower. Climb past its Grunts to the top, where N wakes Zekrom in Black or Reshiram in White. He tells you to find the second dragon and leaves on the first one''s back.', 13, true, 353),
  -- Relic Castle (Relic Castle)
  (110027, 11, NULL, 1101, 1, 2, NULL, 'relic-castle', 'Relic Castle', 'Alder sends you to the Relic Castle for the stone that holds the second dragon. Fight down through the Team Plasma Grunts to Ghetsis, who says it is not here. Lenora then hands you the Light Stone in Black or the Dark Stone in White at Nacrene Museum.', 14, true, 372),
  -- Legend Badge (Opelucid Gym)
  (110010, 11, NULL, 1101, 2, 2, NULL, 'legend-badge', 'Legend Badge', 'Walk the dragon statues of Opelucid Gym and beat Drayden in Black or Iris in White and their Dragon types. The Legend Badge makes every Pokémon obey you.', 15, true, 889),
  -- Pokémon League (Pokémon League)
  (110016, 11, NULL, 1101, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four in any order at the Pokémon League. N has already beaten Alder, and his castle rises around the League. Climb to the throne room, where your stone becomes Reshiram in Black or Zekrom in White. Catch it, then beat N and Ghetsis back to back.', 16, true, 890),
  -- Champion Alder (Pokémon League)
  (110017, 11, NULL, 1103, 8, 3, NULL, 'champion-alder', 'Champion Alder', 'After the credits, beat the Elite Four again, now with stronger teams, and then Champion Alder. Your team enters the Hall of Fame.', 1, false, 890),
  -- Swords of Justice (Mistralton Cave)
  (110019, 11, NULL, 1104, 6, 2, NULL, 'swords-of-justice', 'Swords of Justice', 'With Surf, find Cobalion in the Guidance Chamber deep in Mistralton Cave. Meeting it wakes Virizion in Pinwheel Forest and Terrakion in Victory Road. Catch or defeat each one.', 1, false, 365),
  -- Roaming Tornadus or Thundurus (Route 7)
  (110020, 11, NULL, 1104, 6, 2, NULL, 'roaming-tornadus-thundurus', 'Roaming Tornadus or Thundurus', 'After the Legend Badge, a storm hits Route 7. Step into the house there and Tornadus in Black or Thundurus in White starts roaming Unova. Track it down and catch or defeat it.', 2, false, 395),
  -- Giant Chasm (Giant Chasm)
  (110021, 11, NULL, 1104, 6, 2, NULL, 'giant-chasm', 'Giant Chasm', 'After the credits, walk into the forest at the heart of the Giant Chasm. It freezes over and opens the cave where Kyurem waits. Catch or defeat it.', 3, false, 359),
  -- Abundant Shrine (Abundant Shrine)
  (110022, 11, NULL, 1104, 6, 2, NULL, 'abundant-shrine', 'Abundant Shrine', 'Bring both Tornadus and Thundurus, one traded from the opposite game, to the Abundant Shrine off Route 14, and Landorus appears. Catch or defeat it.', 4, false, 342);
