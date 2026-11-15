-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's The Teal Mask story page, with the places its
-- walkthrough index lists for Kitakami.
-- Scope: Pokémon The Teal Mask story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask's story milestones, each at the place it happens
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
  -- Arrive in Kitakami (Mossui Town)
  (240001, 24, NULL, 2401, 1, 1, NULL, 'arrive-kitakami', 'Arrive in Kitakami', 'Travel to Kitakami on a school trip led by Briar of Blueberry Academy. At the gate of Mossui Town, Carmine battles you to see off the outsiders, and her younger brother Kieran battles you after her.', 1, true, 765),
  -- Festival of Masks (Kitakami Hall)
  (240002, 24, NULL, 2401, 1, 1, NULL, 'festival-of-masks', 'Festival of Masks', 'Go to the Festival of Masks at Kitakami Hall. The ogre of the old tale, Ogerpon, is there among the crowd. She runs from you and Carmine and drops her Teal Mask. Carmine keeps it from Kieran.', 2, true, 760),
  -- Three Signboards (Paradise Barrens)
  (240003, 24, NULL, 2401, 5, 2, NULL, 'three-signboards', 'Three Signboards', 'Finish the trip''s task with Kieran by reading the last of the three signboards about the Loyal Three, in the Paradise Barrens. He has heard what you kept from him, and battles you there.', 3, true, 773),
  -- The Loyal Three (Oni Mountain)
  (240004, 24, NULL, 2401, 6, 3, NULL, 'loyal-three-quest', 'The Loyal Three', 'Kieran takes the mended mask and battles you for it at Loyalty Plaza. The Loyal Three come back to life and carry off Ogerpon''s three masks. Drive them off her at the Dreaded Den, then beat each of them with Carmine, in any order, to win the masks back.', 4, true, 771),
  -- Ogerpon (Oni Mountain)
  (240005, 24, NULL, 2401, 6, 3, NULL, 'ogerpon-battle', 'Ogerpon', 'At the Dreaded Den, Ogerpon wants to go with you. Kieran wants to be her partner himself and battles you first. Then Ogerpon tests you with all four masks. Catch her to finish the story.', 5, true, 771),
  -- Bloodmoon Ursaluna (Mossui Town)
  (240007, 24, NULL, 2402, 6, 3, NULL, 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'Once your Kitakami Pokédex has 150 entries, Perrin, a photographer, battles you in Mossui Town and asks for help. Find the Bloodmoon Beast with her in the Timeless Woods on a foggy night. Catch or defeat it.', 1, false, 765),
  -- Paradise Barrens (Paradise Barrens)
  (240008, 24, NULL, 2402, 6, 2, NULL, 'paradise-barrens', 'Paradise Barrens', 'After you catch Ogerpon, Okidogi is back at its normal size where you fought it. Catch or defeat it.', 2, false, 773),
  -- Wistful Fields (Wistful Fields)
  (240009, 24, NULL, 2402, 6, 2, NULL, 'wistful-fields', 'Wistful Fields', 'After you catch Ogerpon, Munkidori is back at its normal size at the pond where you fought it. Catch or defeat it.', 3, false, 794),
  -- Oni Mountain (Oni Mountain)
  (240010, 24, NULL, 2402, 6, 2, NULL, 'oni-mountain', 'Oni Mountain', 'After you catch Ogerpon, Fezandipiti is back at its normal size on the mountain where you fought it. Catch or defeat it.', 4, false, 771);
