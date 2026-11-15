-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's The Indigo Disk and Mochi Mayhem story pages, with its
-- location pages for the Terarium.
-- Scope: Pokémon The Indigo Disk story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Indigo Disk's story milestones, each at the place it happens
-- (location_id), in Red / Blue's pattern.
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
  -- Arrive at Blueberry Academy (Blueberry Academy)
  (250001, 25, NULL, 2501, 1, 1, NULL, 'arrive-blueberry-academy', 'Arrive at Blueberry Academy', 'Go to Blueberry Academy in Unova as an exchange student. Lacey battles you at the entrance to welcome you. In the Terarium, the school''s undersea dome, Carmine battles you and tells you how Kieran has changed.', 1, true, 974),
  -- BB Elite Four Crispin (Savanna Biome)
  (250002, 25, NULL, 2501, 6, 2, NULL, 'bb-elite-four-crispin', 'BB Elite Four Crispin', 'Pass Crispin''s Elite Trial in the Savanna Biome, then beat Crispin and the Fire types in a Double Battle.', 2, true, 778),
  -- BB Elite Four Amarys (Canyon Biome)
  (250003, 25, NULL, 2501, 6, 2, NULL, 'bb-elite-four-amarys', 'BB Elite Four Amarys', 'Pass Amarys''s Elite Trial in the Canyon Biome, then beat Amarys and the Steel types in a Double Battle.', 3, true, 742),
  -- BB Elite Four Lacey (Coastal Biome)
  (250004, 25, NULL, 2501, 6, 2, NULL, 'bb-elite-four-lacey', 'BB Elite Four Lacey', 'Pass Lacey''s Elite Trial in the Coastal Biome, then beat Lacey and the Fairy types in a Double Battle.', 4, true, 747),
  -- BB Elite Four Drayton (Polar Biome)
  (250005, 25, NULL, 2501, 6, 2, NULL, 'bb-elite-four-drayton', 'BB Elite Four Drayton', 'Pass Drayton''s Elite Trial in the Polar Biome, then beat Drayton and the Dragon types in a Double Battle.', 5, true, 776),
  -- BB Champion Kieran (Blueberry Academy)
  (250006, 25, NULL, 2501, 8, 2, NULL, 'bb-champion-kieran', 'BB Champion Kieran', 'With the four Elite Four members beaten, challenge Kieran, the BB League''s Champion, in a Double Battle. Win and you take his title.', 6, true, 974),
  -- Terapagos (Area Zero Underdepths)
  (250008, 25, NULL, 2501, 6, 3, NULL, 'terapagos-battle', 'Terapagos', 'Go down to the Area Zero Underdepths with Briar, Carmine and Kieran, using the Indigo Disk in the Zero Lab''s lift. Kieran catches the Terapagos sleeping at the bottom and battles you with it. It then runs wild. Beat it with Kieran''s help and catch it.', 7, true, 975),
  -- Mochi Mayhem (Mossui Town)
  (250009, 25, NULL, 2502, 6, 3, NULL, 'mochi-mayhem', 'Mochi Mayhem', 'Touch the odd decoration at Peachy''s in Mossui Town, then go back to Kitakami with Nemona, Arven and Penny. The townspeople fall under a spell and dance for mochi, your friends among them. Free them, then catch Pecharunt.', 1, false, 765),
  -- Coastal Biome (Coastal Biome)
  (250010, 25, NULL, 2502, 6, 2, NULL, 'coastal-biome', 'Coastal Biome', 'Spin in the leaf cyclone east of the Coastal Outdoor Classroom, then use the sepia camera filter to call Meloetta. Catch or defeat it.', 2, false, 747),
  -- Perrin's Paradox Photos (Area Zero)
  (250011, 25, NULL, 2502, 6, 2, NULL, 'perrins-paradox-photos', 'Perrin''s Paradox Photos', 'Reach 200 Blueberry Pokédex entries, then use Perrin''s photos to find two Paradox Pokémon in Area Zero.', 3, false, 739),
  -- Snacksworth's Legendary Treats (Blueberry Academy)
  (250012, 25, NULL, 2502, 6, 2, NULL, 'snacksworth-legendary-treats', 'Snacksworth''s Legendary Treats', 'Trade Blueberry Quests for Snacksworth''s treats, then find each returning Legendary Pokémon in Paldea.', 4, false, 974);
