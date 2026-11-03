-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia and official Pokémon region history.
-- Descriptions: written for Voydex in its own words from the games themselves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon world region rows used by mainline game metadata.
-- ============================================================================
INSERT INTO reference.regions (id, slug, name, description, sort_order)
VALUES
  -- Kanto
  (1, 'kanto', 'Kanto', 'The first region, a compact mainland between Pallet Town and the Indigo Plateau, with Mt. Moon, Rock Tunnel, Lavender Town''s tower and the Seafoam Islands along the way. It returns in Gold / Silver as the second half of that journey.', 1),
  -- Johto
  (2, 'johto', 'Johto', 'West of Kanto, a region of old towns and traditions: Ecruteak City''s towers, the Ruins of Alph, the Lake of Rage and the Whirl Islands. Its Pokémon League is the one it shares with Kanto at the Indigo Plateau.', 2),
  -- Hoenn
  (3, 'hoenn', 'Hoenn', 'A tropical region of islands, sea routes and volcanoes, split by Mt. Chimney and ringed by water you dive beneath. Team Aqua and Team Magma fight over the sea and the land here.', 3),
  -- Sinnoh
  (4, 'sinnoh', 'Sinnoh', 'A northern region built around Mt. Coronet, which divides it in two, with snow in the north, the Great Marsh in the south and three lakes that hold the legends of its creation.', 4),
  -- Unova
  (5, 'unova', 'Unova', 'A region far from the others, with a big city at its heart, bridges that link its halves and deserts in between. Black 2 / White 2 return two years later with new towns in the west.', 5),
  -- Kalos
  (6, 'kalos', 'Kalos', 'A region shaped like a star, with Lumiose City at its centre, castles and cafés along its routes, and the home of Mega Evolution.', 6),
  -- Alola
  (7, 'alola', 'Alola', 'Four islands and an artificial fifth, where island kahunas and trial captains stand in for Gyms, Z-Moves are at hand, and familiar Pokémon have Alolan forms.', 7),
  -- Galar
  (8, 'galar', 'Galar', 'A long region of stadiums and open countryside, where Gym battles are stadium events, Dynamax towers over the field, and the Wild Area opens up early. The Isle of Armor and The Crown Tundra add two more areas.', 8),
  -- Hisui
  (9, 'hisui', 'Hisui', 'Sinnoh long ago, before towns and Gyms, where Jubilife Village is the only settlement and the Survey Corps catalogues Pokémon in the wild for the first Pokédex.', 9),
  -- Paldea
  (10, 'paldea', 'Paldea', 'An open region around the Great Crater, with three stories to follow in any order: the Gyms, the Titans and Team Star''s bases. The Teal Mask and The Indigo Disk add Kitakami and Blueberry Academy.', 10);
