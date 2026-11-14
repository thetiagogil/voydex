-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Jessie & James: the pret pokeyellow disassembly's trainer parties and map
-- scripts, cross-checked with Bulbapedia's Team Rocket trio page.
-- Scope: Pokémon Yellow milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Yellow battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Blue on Route 22, the Elite Four, then Champion Blue. Jessie &
-- James are fought at Mt. Moon (once a Fossil is taken), the Rocket Hideout,
-- Pokémon Tower and Silph Co.
-- location_id is set only where the battle is fought away from its milestone's
-- place: the two rival battles on Route 22 (before the Boulder Badge and before
-- Victory Road) and the rival battle in Cerulean City on the way to Nugget
-- Bridge, not in the Gym. NULL means the battle is at the milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Boulder Badge -> Brock
  (20003, 2001, 2, 'battle-opponent', 2, NULL, NULL),
  -- Cascade Badge -> Misty
  (20005, 2002, 2, 'battle-opponent', 2, NULL, NULL),
  -- Thunder Badge -> Lt. Surge
  (20006, 2003, 2, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (20007, 2004, 2, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Koga
  (20008, 2005, 2, 'battle-opponent', 1, NULL, NULL),
  -- Marsh Badge -> Sabrina
  (20009, 2006, 2, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Blaine
  (20011, 2007, 2, 'battle-opponent', 1, NULL, NULL),
  -- Earth Badge -> Giovanni
  (20012, 2008, 2, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Blue (Route 22, before Victory Road)
  (20017, 2014, 2, 'battle-opponent', 1, NULL, 52),
  -- Pokémon League -> Lorelei
  (20017, 2009, 2, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bruno
  (20017, 2010, 2, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Agatha
  (20017, 2011, 2, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lance
  (20017, 2012, 2, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Blue
  (20017, 2013, 2, 'battle-opponent', 6, NULL, NULL),
  -- Fossil Choice -> Jessie & James
  (20004, 2020, 2, 'battle-opponent', 1, 'Mt. Moon B2F, once you take a Fossil', NULL),
  -- Receive Pikachu -> Blue
  (20001, 2014, 2, 'battle-opponent', 1, 'Oak''s Lab, Pallet Town', NULL),
  -- Boulder Badge -> Blue (Route 22)
  (20003, 2014, 2, 'battle-opponent', 1, 'Skipped if you stay off Route 22 until you beat Brock.', 52),
  -- Cascade Badge -> Blue
  (20005, 2014, 2, 'battle-opponent', 1, 'At the north exit, before Nugget Bridge.', 9),
  -- S.S. Anne -> Blue
  (20019, 2014, 2, 'battle-opponent', 1, 'S.S. Anne 2F, Vermilion City', NULL),
  -- Pokémon Tower -> Blue
  (20021, 2014, 2, 'battle-opponent', 1, 'Pokémon Tower 2F, Lavender Town', NULL),
  -- Pokémon Tower -> Marowak
  (20021, 2021, 2, 'battle-opponent', 2, 'Pokémon Tower 6F. You can''t catch it, so beat it to pass.', NULL),
  -- Pokémon Tower -> Jessie & James
  (20021, 2020, 2, 'battle-opponent', 3, 'Pokémon Tower 7F, Lavender Town', NULL),
  -- Rocket Hideout -> Jessie & James
  (20020, 2020, 2, 'battle-opponent', 1, 'Rocket Hideout B4F, Celadon City, before Giovanni', NULL),
  -- Rocket Hideout -> Giovanni
  (20020, 2015, 2, 'battle-opponent', 2, 'Rocket Hideout B4F, Celadon City', NULL),
  -- Silph Co. -> Blue
  (20022, 2014, 2, 'battle-opponent', 1, 'Silph Co. 7F, Saffron City', NULL),
  -- Silph Co. -> Jessie & James
  (20022, 2020, 2, 'battle-opponent', 2, 'Silph Co. 11F, Saffron City, before Giovanni', NULL),
  -- Silph Co. -> Giovanni
  (20022, 2015, 2, 'battle-opponent', 3, 'Silph Co. 11F, Saffron City', NULL),
  -- Power Plant -> Zapdos
  (20023, 2016, 2, 'battle-opponent', 1, 'Power Plant. You can skip this battle.', NULL),
  -- Seafoam Islands -> Articuno
  (20024, 2017, 2, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.', NULL),
  -- Victory Road -> Moltres
  (20025, 2018, 2, 'battle-opponent', 1, 'Victory Road 2F. You can skip this battle.', NULL),
  -- Cerulean Cave -> Mewtwo
  (20026, 2019, 2, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.', NULL);
