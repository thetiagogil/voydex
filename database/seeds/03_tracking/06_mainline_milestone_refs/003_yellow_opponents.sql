-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon Yellow milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Yellow battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge -> Brock
  (20003, 2001, 2, 'battle-opponent', 2, NULL),
  -- Cascade Badge -> Misty
  (20005, 2002, 2, 'battle-opponent', 2, NULL),
  -- Thunder Badge -> Lt. Surge
  (20006, 2003, 2, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (20007, 2004, 2, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (20008, 2005, 2, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (20009, 2006, 2, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (20011, 2007, 2, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (20012, 2008, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (20013, 2009, 2, 'battle-opponent', 2, NULL),
  -- Elite Four Bruno -> Bruno
  (20014, 2010, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (20015, 2011, 2, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (20016, 2012, 2, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (20017, 2013, 2, 'battle-opponent', 1, NULL),
  -- Receive Pikachu -> Blue
  (20001, 2014, 2, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town'),
  -- Boulder Badge -> Blue
  (20003, 2014, 2, 'battle-opponent', 1, 'Route 22. You can skip this battle.'),
  -- Cascade Badge -> Blue
  (20005, 2014, 2, 'battle-opponent', 1, 'Cerulean City (north exit, before Nugget Bridge)'),
  -- S.S. Anne -> Blue
  (20019, 2014, 2, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City'),
  -- Pokémon Tower -> Blue
  (20021, 2014, 2, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town'),
  -- Rocket Hideout -> Giovanni
  (20020, 2015, 2, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City'),
  -- Silph Co. -> Blue
  (20022, 2014, 2, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City'),
  -- Silph Co. -> Giovanni
  (20022, 2015, 2, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City'),
  -- Elite Four Lorelei -> Blue
  (20013, 2014, 2, 'battle-opponent', 1, 'Route 22'),
  -- Power Plant -> Zapdos
  (20023, 2016, 2, 'battle-opponent', 1, 'Power Plant. You can skip this battle.'),
  -- Seafoam Islands -> Articuno
  (20024, 2017, 2, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.'),
  -- Victory Road -> Moltres
  (20025, 2018, 2, 'battle-opponent', 1, 'Victory Road 2F. You can skip this battle.'),
  -- Cerulean Cave -> Mewtwo
  (20026, 2019, 2, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.');
