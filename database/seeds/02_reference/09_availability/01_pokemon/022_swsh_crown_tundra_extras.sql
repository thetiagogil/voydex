-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Dynamax Adventure and in-game event Pokémon in Sword/Shield.
-- Cross-check: Serebii Dynamax Adventures and Sword/Shield legendary Pokémon pages.
-- Scope note: Crown Tundra non-Pokedex availability only. Crown Tundra Pokedex rows are seeded in the previous file.
-- Form policy note: Keldeo Resolute Form and item/form-change-only alternate forms remain represented by default/species rows or base compatible-form rows.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Crown Tundra
-- Table: reference.pokemon_availability
-- Scope: Crown Tundra non-dex Dynamax Adventure, gift, special encounter, and derived evolution availability.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0252 Treecko - Breeding
  (252, 25200, 20, NULL, 8, 'Treecko is breedable from Grovyle or Sceptile caught in Crown Tundra Dynamax Adventures; Treecko itself is not a Dynamax Adventure encounter.'),
  -- #0253 Grovyle - Raid or Special Encounter
  (253, 25300, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0254 Sceptile - Raid or Special Encounter
  (254, 25400, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0255 Torchic - Breeding
  (255, 25500, 20, NULL, 8, 'Torchic is breedable from Combusken or Blaziken caught in Crown Tundra Dynamax Adventures; Torchic itself is not a Dynamax Adventure encounter.'),
  -- #0256 Combusken - Raid or Special Encounter
  (256, 25600, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0257 Blaziken - Raid or Special Encounter
  (257, 25700, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0258 Mudkip - Breeding
  (258, 25800, 20, NULL, 8, 'Mudkip is breedable from Marshtomp or Swampert caught in Crown Tundra Dynamax Adventures; Mudkip itself is not a Dynamax Adventure encounter.'),
  -- #0259 Marshtomp - Raid or Special Encounter
  (259, 25900, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0260 Swampert - Raid or Special Encounter
  (260, 26000, 20, NULL, 10, 'Dynamax Adventure rentable/encounterable Pokémon in The Crown Tundra Max Lair.'),
  -- #0486 Regigigas - Raid or Special Encounter
  (486, 48600, 20, NULL, 10, 'Solo Max Raid Battle from the normally unresponsive Giant''s Bed den after bringing all five legendary giants to the den.'),
  -- #0647 Keldeo - Static Encounter
  (647, 64700, 20, NULL, 2, 'Keldeo spawns on the Ballimere Lake island after Cobalion, Terrakion, and Virizion are caught, brought to the party, and curry is made there. Source-visible Resolute Form is represented by default Keldeo under the current Voydex form policy.'),
  -- #0789 Cosmog - Gift
  (789, 78900, 20, NULL, 4, 'Cosmog gift in Freezington after defeating the rampaging Glastrier or Spectrier in the Crown Tundra Calyrex questline.'),
  -- #0790 Cosmoem - Evolution
  (790, 79000, 20, NULL, 7, 'Evolves from the Freezington Cosmog gift in Sword/Shield.'),
  -- #0791 Solgaleo - Sword - Evolution
  (791, 79100, 20, 31, 7, 'Evolves from Cosmoem in Pokémon Sword; Shield players can obtain Solgaleo through a Sword-hosted Dynamax Adventure path.'),
  -- #0792 Lunala - Shield - Evolution
  (792, 79200, 20, 32, 7, 'Evolves from Cosmoem in Pokémon Shield; Sword players can obtain Lunala through a Shield-hosted Dynamax Adventure path.'),
  -- #0803 Poipole - Gift
  (803, 80300, 20, NULL, 4, 'Poipole gift in the Max Lair after unlocking They Came From The Ultra Beyond! and obtaining five Ultra Beasts through Dynamax Adventures.'),
  -- #0804 Naganadel - Evolution
  (804, 80400, 20, NULL, 7, 'Evolves from the Crown Tundra Max Lair Poipole gift after learning Dragon Pulse.'),
  -- #0150 Mewtwo - Raid or Special Encounter
  (150, 15000, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0243 Raikou - Raid or Special Encounter
  (243, 24300, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0244 Entei - Raid or Special Encounter
  (244, 24400, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0245 Suicune - Raid or Special Encounter
  (245, 24500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0249 Lugia - Shield - Raid or Special Encounter
  (249, 24900, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0249 Lugia - Sword - Raid or Special Encounter
  (249, 24900, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0250 Ho-Oh - Sword - Raid or Special Encounter
  (250, 25000, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0250 Ho-Oh - Shield - Raid or Special Encounter
  (250, 25000, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0380 Latias - Shield - Raid or Special Encounter
  (380, 38000, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0380 Latias - Sword - Raid or Special Encounter
  (380, 38000, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0381 Latios - Sword - Raid or Special Encounter
  (381, 38100, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0381 Latios - Shield - Raid or Special Encounter
  (381, 38100, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0382 Kyogre - Shield - Raid or Special Encounter
  (382, 38200, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0382 Kyogre - Sword - Raid or Special Encounter
  (382, 38200, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0383 Groudon - Sword - Raid or Special Encounter
  (383, 38300, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0383 Groudon - Shield - Raid or Special Encounter
  (383, 38300, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0384 Rayquaza - Raid or Special Encounter
  (384, 38400, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0480 Uxie - Raid or Special Encounter
  (480, 48000, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0481 Mesprit - Raid or Special Encounter
  (481, 48100, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0482 Azelf - Raid or Special Encounter
  (482, 48200, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0483 Dialga - Sword - Raid or Special Encounter
  (483, 48300, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0483 Dialga - Shield - Raid or Special Encounter
  (483, 48300, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0484 Palkia - Shield - Raid or Special Encounter
  (484, 48400, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0484 Palkia - Sword - Raid or Special Encounter
  (484, 48400, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0485 Heatran - Raid or Special Encounter
  (485, 48500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0487 Giratina - Raid or Special Encounter
  (487, 48700, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0487 Giratina (Origin) - Raid or Special Encounter
  (487, 48701, 20, NULL, 10, 'Requires Crown Tundra Giratina plus Griseous Orb access from the Stow-on-Side bargain shop keeper in Sword/Shield.'),
  -- #0488 Cresselia - Raid or Special Encounter
  (488, 48800, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0641 Tornadus - Sword - Raid or Special Encounter
  (641, 64100, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0641 Tornadus - Shield - Raid or Special Encounter
  (641, 64100, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0642 Thundurus - Shield - Raid or Special Encounter
  (642, 64200, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0642 Thundurus - Sword - Raid or Special Encounter
  (642, 64200, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0643 Reshiram - Sword - Raid or Special Encounter
  (643, 64300, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0643 Reshiram - Shield - Raid or Special Encounter
  (643, 64300, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0644 Zekrom - Shield - Raid or Special Encounter
  (644, 64400, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0644 Zekrom - Sword - Raid or Special Encounter
  (644, 64400, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0645 Landorus - Raid or Special Encounter
  (645, 64500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0646 Kyurem - Raid or Special Encounter
  (646, 64600, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0716 Xerneas - Sword - Raid or Special Encounter
  (716, 71600, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0716 Xerneas - Shield - Raid or Special Encounter
  (716, 71600, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0717 Yveltal - Shield - Raid or Special Encounter
  (717, 71700, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0717 Yveltal - Sword - Raid or Special Encounter
  (717, 71700, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0718 Zygarde - Raid or Special Encounter
  (718, 71800, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0785 Tapu Koko - Raid or Special Encounter
  (785, 78500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0786 Tapu Lele - Raid or Special Encounter
  (786, 78600, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0787 Tapu Bulu - Raid or Special Encounter
  (787, 78700, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0788 Tapu Fini - Raid or Special Encounter
  (788, 78800, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0791 Solgaleo - Sword - Raid or Special Encounter
  (791, 79100, 20, 31, 10, 'Self-hosted Sword Dynamax Adventure final boss in The Crown Tundra Max Lair; Shield can catch it by joining a Sword-hosted Dynamax Adventure.'),
  -- #0791 Solgaleo - Shield - Raid or Special Encounter
  (791, 79100, 20, 32, 10, 'Requires joining another player''s Sword-hosted Dynamax Adventure path; it is not in the self-hosted Shield final-boss path pool.'),
  -- #0792 Lunala - Shield - Raid or Special Encounter
  (792, 79200, 20, 32, 10, 'Self-hosted Shield Dynamax Adventure final boss in The Crown Tundra Max Lair; Sword can catch it by joining a Shield-hosted Dynamax Adventure.'),
  -- #0792 Lunala - Sword - Raid or Special Encounter
  (792, 79200, 20, 31, 10, 'Requires joining another player''s Shield-hosted Dynamax Adventure path; it is not in the self-hosted Sword final-boss path pool.'),
  -- #0793 Nihilego - Raid or Special Encounter
  (793, 79300, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0794 Buzzwole - Raid or Special Encounter
  (794, 79400, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0795 Pheromosa - Raid or Special Encounter
  (795, 79500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0796 Xurkitree - Raid or Special Encounter
  (796, 79600, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0797 Celesteela - Raid or Special Encounter
  (797, 79700, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0798 Kartana - Raid or Special Encounter
  (798, 79800, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0799 Guzzlord - Raid or Special Encounter
  (799, 79900, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0800 Necrozma - Raid or Special Encounter
  (800, 80000, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0805 Stakataka - Raid or Special Encounter
  (805, 80500, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.'),
  -- #0806 Blacephalon - Raid or Special Encounter
  (806, 80600, 20, NULL, 10, 'Dynamax Adventure final boss in The Crown Tundra Max Lair.');
