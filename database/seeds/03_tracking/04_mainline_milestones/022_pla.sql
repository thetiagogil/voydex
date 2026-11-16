-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Legends: Arceus mission, noble Pokémon and location
-- pages for the story's order and every beat's place.
-- Scope: Pokémon Legends: Arceus story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Legends: Arceus story and decision milestones, each at the place it happens
-- (location_id), in Red / Blue's pattern. Main Story is the five nobles, the
-- banishment and the Temple of Sinnoh. Post Game is the plates, Volo and
-- Arceus. Side Content is Manaphy, Giratina and the forces of nature. The
-- game has no Gyms and no League.
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
  -- Choose Starter (Jubilife Village)
  (220001, 22, NULL, 2201, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Laventon lets you keep one of the three Pokémon you caught for him on the beach: Rowlet, Cyndaquil or Oshawott.', 1, true, 704),
  -- Receive Pokédex (Jubilife Village)
  (220002, 22, NULL, 2201, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Pass the Survey Corps''s trial by catching a Bidoof, a Starly and a Shinx. You join the Galaxy Team and start on Hisui''s first Pokédex. Volo, a merchant, battles you at the village gate.', 2, true, 704),
  -- Noble Kleavor (Grandtree Arena)
  (220003, 22, NULL, 2201, 11, 3, NULL, 'noble-kleavor', 'Noble Kleavor', 'Kleavor, the Lord of the Woods, has gone into a frenzy. Win over its warden Lian and gather its favourite food for balms. Then quell it at Grandtree Arena, throwing balms and battling it when it tires.', 3, true, 693),
  -- Noble Lilligant (Brava Arena)
  (220004, 22, NULL, 2201, 11, 3, NULL, 'noble-lilligant', 'Noble Lilligant', 'Ride Ursaluna across the Crimson Mirelands to find what Lilligant, the Lady of the Ridge, needs. Then quell her frenzy at Brava Arena.', 4, true, 945),
  -- Noble Arcanine (Molten Arena)
  (220005, 22, NULL, 2201, 11, 3, NULL, 'noble-arcanine', 'Noble Arcanine', 'Cross the sea on Basculegion to Firespit Island and beat the three Miss Fortune sisters at Molten Arena. The old lord''s heir evolves into Arcanine there and goes into a frenzy. Quell it.', 5, true, 946),
  -- Noble Electrode (Moonview Arena)
  (220006, 22, NULL, 2201, 11, 3, NULL, 'noble-electrode', 'Noble Electrode', 'Climb the Coronet Highlands on Sneasler. Melli, Electrode''s warden, will not help, so quell the Lord of the Hollow at Moonview Arena without him.', 6, true, 947),
  -- Noble Avalugg (Icepeak Arena)
  (220007, 22, NULL, 2201, 11, 3, NULL, 'noble-avalugg', 'Noble Avalugg', 'Win over Gaeric at Avalugg''s Legacy and Sabi at Snowpoint Temple, who lends you Braviary to fly on. Then quell Avalugg, the Lord of the Tundra, at Icepeak Arena.', 7, true, 948),
  -- Choose Clan Leader (Ancient Retreat)
  (220008, 22, NULL, 2201, 12, 1, NULL, 'choose-clan-leader', 'Choose Clan Leader', 'Banished from Jubilife Village, you shelter with Cogita at the Ancient Retreat. Choose Adaman of the Diamond Clan or Irida of the Pearl Clan to go with you to the three lakes for the Red Chain.', 8, true, 950),
  -- Commander Kamado (Temple of Sinnoh)
  (220009, 22, NULL, 2201, 6, 3, NULL, 'commander-kamado', 'Commander Kamado', 'Climb Mount Coronet to the Temple of Sinnoh. Beat Beni, who bars the Stone Portal, then Commander Kamado at the top. Dialga or Palkia then comes out of the rift, depending on the clan leader you chose. Catch it.', 9, true, 796),
  -- Origin Pokémon (Temple of Sinnoh)
  (220010, 22, NULL, 2201, 6, 3, NULL, 'origin-pokemon', 'Origin Pokémon', 'Its counterpart breaks out of the rift in its Origin Forme. With Origin Ore from the Primeval Grotto made into an Origin Ball, quell it at the Temple of Sinnoh and catch it. The credits roll.', 10, true, 796),
  -- The Plate of the Lakes (Lake Verity)
  (220013, 22, NULL, 2202, 6, 3, NULL, 'plate-of-the-lakes', 'The Plate of the Lakes', 'After the credits, Cogita sends you after the plates. Go back to the caverns of the three lakes and catch Uxie, Mesprit and Azelf.', 1, false, 274),
  -- The Plate of Firespit Island (Firespit Island)
  (220014, 22, NULL, 2202, 6, 3, NULL, 'plate-of-firespit-island', 'The Plate of Firespit Island', 'Break Heatran''s fire shield with balls of mud on Firespit Island, then catch it.', 2, false, 686),
  -- The Plate of Moonview Arena (Moonview Arena)
  (220015, 22, NULL, 2202, 6, 3, NULL, 'plate-of-moonview-arena', 'The Plate of Moonview Arena', 'Cresselia has taken over Moonview Arena. Catch it.', 3, false, 947),
  -- The Plate of Snowpoint Temple (Snowpoint Temple)
  (220016, 22, NULL, 2202, 6, 3, NULL, 'plate-of-snowpoint-temple', 'The Plate of Snowpoint Temple', 'Open the door at the top of Snowpoint Temple with the Iron, Icicle and Stone Plates, then catch Regigigas.', 4, false, 322),
  -- Defeat Volo (Temple of Sinnoh)
  (220011, 22, NULL, 2202, 6, 3, NULL, 'defeat-volo', 'Defeat Volo', 'With every plate but one, meet Volo at the Temple of Sinnoh. He wants Arceus for himself. Beat his six Pokémon, then Giratina twice, with no break in between.', 5, false, 796),
  -- Meet Arceus (Temple of Sinnoh)
  (220012, 22, NULL, 2202, 6, 3, NULL, 'meet-arceus', 'Meet Arceus', 'Catch every kind of Pokémon in Hisui, then play the Azure Flute at the Temple of Sinnoh. Arceus tests you in the Hall of Origin.', 6, false, 796),
  -- The Sea's Legend (Seaside Hollow)
  (220017, 22, NULL, 2203, 6, 2, NULL, 'the-seas-legend', 'The Sea''s Legend', 'With Buizel, Mantyke and Overqwil in your party, ride between the stone pillars at Sand''s Reach in the evening. Seaside Hollow opens, and Manaphy waits inside. Catch it.', 1, false, 718),
  -- On the Trail of Giratina (Turnback Cave)
  (220018, 22, NULL, 2203, 6, 2, NULL, 'on-the-trail-of-giratina', 'On the Trail of Giratina', 'After you beat Volo, Giratina waits in Turnback Cave on the Spring Path. Catch it.', 2, false, 332),
  -- Incarnate Forces (Ancient Retreat)
  (220019, 22, NULL, 2203, 6, 2, NULL, 'incarnate-forces', 'Incarnate Forces', 'After you beat Volo, Cogita asks you to catch Tornadus, Thundurus and Landorus, and then Enamorus.', 3, false, 950);
