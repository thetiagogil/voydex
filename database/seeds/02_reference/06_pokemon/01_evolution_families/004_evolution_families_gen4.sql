-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 4 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Turtwig Family
  (387, 'turtwig-family', 'Turtwig Family', 203),
  -- Chimchar Family
  (390, 'chimchar-family', 'Chimchar Family', 204),
  -- Piplup Family
  (393, 'piplup-family', 'Piplup Family', 205),
  -- Starly Family
  (396, 'starly-family', 'Starly Family', 206),
  -- Bidoof Family
  (399, 'bidoof-family', 'Bidoof Family', 207),
  -- Kricketot Family
  (401, 'kricketot-family', 'Kricketot Family', 208),
  -- Shinx Family
  (403, 'shinx-family', 'Shinx Family', 209),
  -- Cranidos Family
  (408, 'cranidos-family', 'Cranidos Family', 210),
  -- Shieldon Family
  (410, 'shieldon-family', 'Shieldon Family', 211),
  -- Burmy Family
  (412, 'burmy-family', 'Burmy Family', 212),
  -- Combee Family
  (415, 'combee-family', 'Combee Family', 213),
  -- Pachirisu Family
  (417, 'pachirisu-family', 'Pachirisu Family', 214),
  -- Buizel Family
  (418, 'buizel-family', 'Buizel Family', 215),
  -- Cherubi Family
  (420, 'cherubi-family', 'Cherubi Family', 216),
  -- Shellos Family
  (422, 'shellos-family', 'Shellos Family', 217),
  -- Drifloon Family
  (425, 'drifloon-family', 'Drifloon Family', 218),
  -- Buneary Family
  (427, 'buneary-family', 'Buneary Family', 219),
  -- Glameow Family
  (431, 'glameow-family', 'Glameow Family', 220),
  -- Stunky Family
  (434, 'stunky-family', 'Stunky Family', 221),
  -- Bronzor Family
  (436, 'bronzor-family', 'Bronzor Family', 222),
  -- Chatot Family
  (441, 'chatot-family', 'Chatot Family', 223),
  -- Spiritomb Family
  (442, 'spiritomb-family', 'Spiritomb Family', 224),
  -- Gible Family
  (443, 'gible-family', 'Gible Family', 225),
  -- Riolu Family
  (447, 'riolu-family', 'Riolu Family', 226),
  -- Hippopotas Family
  (449, 'hippopotas-family', 'Hippopotas Family', 227),
  -- Skorupi Family
  (451, 'skorupi-family', 'Skorupi Family', 228),
  -- Croagunk Family
  (453, 'croagunk-family', 'Croagunk Family', 229),
  -- Carnivine Family
  (455, 'carnivine-family', 'Carnivine Family', 230),
  -- Finneon Family
  (456, 'finneon-family', 'Finneon Family', 231),
  -- Snover Family
  (459, 'snover-family', 'Snover Family', 232),
  -- Rotom Family
  (479, 'rotom-family', 'Rotom Family', 233),
  -- Uxie Family
  (480, 'uxie-family', 'Uxie Family', 234),
  -- Mesprit Family
  (481, 'mesprit-family', 'Mesprit Family', 235),
  -- Azelf Family
  (482, 'azelf-family', 'Azelf Family', 236),
  -- Dialga Family
  (483, 'dialga-family', 'Dialga Family', 237),
  -- Palkia Family
  (484, 'palkia-family', 'Palkia Family', 238),
  -- Heatran Family
  (485, 'heatran-family', 'Heatran Family', 239),
  -- Regigigas Family
  (486, 'regigigas-family', 'Regigigas Family', 240),
  -- Giratina Family
  (487, 'giratina-family', 'Giratina Family', 241),
  -- Cresselia Family
  (488, 'cresselia-family', 'Cresselia Family', 242),
  -- Phione Family
  (489, 'phione-family', 'Phione Family', 243),
  -- Manaphy Family
  (490, 'manaphy-family', 'Manaphy Family', 244),
  -- Darkrai Family
  (491, 'darkrai-family', 'Darkrai Family', 245),
  -- Shaymin Family
  (492, 'shaymin-family', 'Shaymin Family', 246),
  -- Arceus Family
  (493, 'arceus-family', 'Arceus Family', 247);
