-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Red / Blue walkthrough (the order the story passes
-- each place and reaches each beat), with its location pages for the places.
-- Scope: Pokémon Red / Blue Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Red / Blue's Story roadmap, step by step: a place the walkthrough passes
-- (location_id) or a milestone (milestone_id), which sits at its own place.
-- Places repeat where the walkthrough comes back (Pallet Town three times,
-- Route 2, Viridian City, Lavender Town and Route 22 twice). Every Red / Blue
-- milestone is one step, side content and post-game included, where the
-- walkthrough reaches it (the Fighting Dojo before the Marsh Badge, the
-- Seafoam Islands on the way to Cinnabar Island, the Power Plant on the way
-- back to Viridian City, Victory Road before the Indigo Plateau).
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id
) VALUES
  -- 1: Pallet Town
  (1, 1, 30, NULL),
  -- 2: Choose Starter (milestone)
  (1, 2, NULL, 10001),
  -- 3: Route 1
  (1, 3, 38, NULL),
  -- 4: Viridian City
  (1, 4, 76, NULL),
  -- 5: Pallet Town
  (1, 5, 30, NULL),
  -- 6: Receive Pokédex (milestone)
  (1, 6, NULL, 10002),
  -- 7: Route 22
  (1, 7, 52, NULL),
  -- 8: Route 2
  (1, 8, 49, NULL),
  -- 9: Viridian Forest
  (1, 9, 77, NULL),
  -- 10: Pewter City
  (1, 10, 104, NULL),
  -- 11: Boulder Badge (milestone)
  (1, 11, NULL, 10003),
  -- 12: Route 3
  (1, 12, 56, NULL),
  -- 13: Mt. Moon
  (1, 13, 27, NULL),
  -- 14: Fossil Choice (milestone)
  (1, 14, NULL, 10004),
  -- 15: Route 4
  (1, 15, 57, NULL),
  -- 16: Cerulean City
  (1, 16, 9, NULL),
  -- 17: Cascade Badge (milestone)
  (1, 17, NULL, 10005),
  -- 18: Route 24
  (1, 18, 54, NULL),
  -- 19: Route 25
  (1, 19, 55, NULL),
  -- 20: Bill's Sea Cottage (milestone)
  (1, 20, NULL, 10027),
  -- 21: Route 5
  (1, 21, 58, NULL),
  -- 22: Underground Path (Kanto Routes 5-6)
  (1, 22, 73, NULL),
  -- 23: Route 6
  (1, 23, 59, NULL),
  -- 24: Vermilion City
  (1, 24, 74, NULL),
  -- 25: S.S. Anne (milestone)
  (1, 25, NULL, 10019),
  -- 26: Thunder Badge (milestone)
  (1, 26, NULL, 10006),
  -- 27: Route 11
  (1, 27, 40, NULL),
  -- 28: Diglett's Cave
  (1, 28, 13, NULL),
  -- 29: Route 2
  (1, 29, 49, NULL),
  -- 30: Pewter Museum of Science
  (1, 30, 105, NULL),
  -- 31: Route 9
  (1, 31, 62, NULL),
  -- 32: Route 10
  (1, 32, 39, NULL),
  -- 33: Rock Tunnel
  (1, 33, 37, NULL),
  -- 34: Lavender Town
  (1, 34, 23, NULL),
  -- 35: Route 8
  (1, 35, 61, NULL),
  -- 36: Underground Path (Kanto Routes 7-8)
  (1, 36, 809, NULL),
  -- 37: Route 7
  (1, 37, 60, NULL),
  -- 38: Celadon City
  (1, 38, 6, NULL),
  -- 39: Rainbow Badge (milestone)
  (1, 39, NULL, 10007),
  -- 40: Rocket Hideout (milestone)
  (1, 40, NULL, 10020),
  -- 41: Lavender Town
  (1, 41, 23, NULL),
  -- 42: Pokémon Tower (milestone)
  (1, 42, NULL, 10021),
  -- 43: Saffron City
  (1, 43, 133, NULL),
  -- 44: Silph Co. (milestone)
  (1, 44, NULL, 10022),
  -- 45: Fighting Dojo Choice (milestone)
  (1, 45, NULL, 10010),
  -- 46: Marsh Badge (milestone)
  (1, 46, NULL, 10009),
  -- 47: Route 16
  (1, 47, 45, NULL),
  -- 48: Route 17
  (1, 48, 46, NULL),
  -- 49: Route 18
  (1, 49, 47, NULL),
  -- 50: Fuchsia City
  (1, 50, 18, NULL),
  -- 51: Soul Badge (milestone)
  (1, 51, NULL, 10008),
  -- 52: Safari Zone (milestone)
  (1, 52, NULL, 10028),
  -- 53: Route 12
  (1, 53, 41, NULL),
  -- 54: Route 13
  (1, 54, 42, NULL),
  -- 55: Route 14
  (1, 55, 43, NULL),
  -- 56: Route 15
  (1, 56, 44, NULL),
  -- 57: Route 19
  (1, 57, 48, NULL),
  -- 58: Route 20
  (1, 58, 50, NULL),
  -- 59: Seafoam Islands (milestone)
  (1, 59, NULL, 10024),
  -- 60: Cinnabar Island
  (1, 60, 11, NULL),
  -- 61: Cinnabar Lab
  (1, 61, 12, NULL),
  -- 62: Pokémon Mansion (milestone)
  (1, 62, NULL, 10029),
  -- 63: Volcano Badge (milestone)
  (1, 63, NULL, 10011),
  -- 64: Route 21
  (1, 64, 51, NULL),
  -- 65: Pallet Town
  (1, 65, 30, NULL),
  -- 66: Power Plant (milestone)
  (1, 66, NULL, 10023),
  -- 67: Viridian City
  (1, 67, 76, NULL),
  -- 68: Earth Badge (milestone)
  (1, 68, NULL, 10012),
  -- 69: Route 22
  (1, 69, 52, NULL),
  -- 70: Route 23
  (1, 70, 53, NULL),
  -- 71: Victory Road (milestone)
  (1, 71, NULL, 10025),
  -- 72: Indigo Plateau
  (1, 72, 21, NULL),
  -- 73: Elite Four Lorelei (milestone)
  (1, 73, NULL, 10013),
  -- 74: Elite Four Bruno (milestone)
  (1, 74, NULL, 10014),
  -- 75: Elite Four Agatha (milestone)
  (1, 75, NULL, 10015),
  -- 76: Elite Four Lance (milestone)
  (1, 76, NULL, 10016),
  -- 77: Champion Blue (milestone)
  (1, 77, NULL, 10017),
  -- 78: Hall of Fame (milestone)
  (1, 78, NULL, 10018),
  -- 79: Cerulean Cave (milestone)
  (1, 79, NULL, 10026);
