-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Galar Pokedex number, compatible Pokémon not in any Sword and Shield Pokedex section.
-- Cross-check: PokemonDB Sword/Shield Pokedex and Bulbapedia Pokémon HOME compatibility notes.
-- Scope note: base Sword/Shield compatibility extras only; Isle of Armor and Crown Tundra content-scope availability rows are seeded separately.
-- Source-visible forms excluded by current Voydex form policy: Keldeo Resolute Form, Gigantamax Melmetal, Xerneas Active Mode, and Zygarde Complete Forme.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Sword / Shield
-- Table: reference.pokemon_availability
-- Scope: Pokémon compatible with Sword/Shield but not listed in any Sword/Shield Pokedex.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0150 Mewtwo - Transfer Only
  (150, 15000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0151 Mew - Event
  (151, 15100, 18, NULL, 11, 'Poke Ball Plus programmed serial-code Mew source in Sword/Shield; also compatible through Pokémon HOME transfer.'),
  -- #0151 Mew - Transfer Only
  (151, 15100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0251 Celebi - Transfer Only
  (251, 25100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0385 Jirachi - Transfer Only
  (385, 38500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0643 Reshiram - Transfer Only
  (643, 64300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0644 Zekrom - Transfer Only
  (644, 64400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0646 Kyurem - Transfer Only
  (646, 64600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0646 Kyurem (White) - Transfer Only
  (646, 64601, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0646 Kyurem (Black) - Transfer Only
  (646, 64602, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0647 Keldeo - Transfer Only
  (647, 64700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0722 Rowlet - Transfer Only
  (722, 72200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0723 Dartrix - Transfer Only
  (723, 72300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0724 Decidueye - Transfer Only
  (724, 72400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0725 Litten - Transfer Only
  (725, 72500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0726 Torracat - Transfer Only
  (726, 72600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0727 Incineroar - Transfer Only
  (727, 72700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0728 Popplio - Transfer Only
  (728, 72800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0729 Brionne - Transfer Only
  (729, 72900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0730 Primarina - Transfer Only
  (730, 73000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0789 Cosmog - Transfer Only
  (789, 78900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0790 Cosmoem - Transfer Only
  (790, 79000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0791 Solgaleo - Transfer Only
  (791, 79100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0792 Lunala - Transfer Only
  (792, 79200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0800 Necrozma - Transfer Only
  (800, 80000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0800 Necrozma (Dusk Mane) - Transfer Only
  (800, 80001, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0800 Necrozma (Dawn Wings) - Transfer Only
  (800, 80002, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0802 Marshadow - Transfer Only
  (802, 80200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0807 Zeraora - Transfer Only
  (807, 80700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0808 Meltan - Transfer Only
  (808, 80800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0809 Melmetal - Transfer Only
  (809, 80900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0801 Magearna - Transfer Only
  (801, 80100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0801 Magearna (Original Color) - Transfer Only
  (801, 80102, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0243 Raikou - Transfer Only
  (243, 24300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0244 Entei - Transfer Only
  (244, 24400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0249 Lugia - Transfer Only
  (249, 24900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0250 Ho-Oh - Transfer Only
  (250, 25000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0252 Treecko - Transfer Only
  (252, 25200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0253 Grovyle - Transfer Only
  (253, 25300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0254 Sceptile - Transfer Only
  (254, 25400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0255 Torchic - Transfer Only
  (255, 25500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0256 Combusken - Transfer Only
  (256, 25600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0257 Blaziken - Transfer Only
  (257, 25700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0258 Mudkip - Transfer Only
  (258, 25800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0259 Marshtomp - Transfer Only
  (259, 25900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0260 Swampert - Transfer Only
  (260, 26000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0380 Latias - Transfer Only
  (380, 38000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0381 Latios - Transfer Only
  (381, 38100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0382 Kyogre - Transfer Only
  (382, 38200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0383 Groudon - Transfer Only
  (383, 38300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0384 Rayquaza - Transfer Only
  (384, 38400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0480 Uxie - Transfer Only
  (480, 48000, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0481 Mesprit - Transfer Only
  (481, 48100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0482 Azelf - Transfer Only
  (482, 48200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0483 Dialga - Transfer Only
  (483, 48300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0484 Palkia - Transfer Only
  (484, 48400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0485 Heatran - Transfer Only
  (485, 48500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0486 Regigigas - Transfer Only
  (486, 48600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0487 Giratina - Transfer Only
  (487, 48700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0487 Giratina (Origin) - Transfer Only
  (487, 48701, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0488 Cresselia - Transfer Only
  (488, 48800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0494 Victini - Transfer Only
  (494, 49400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0641 Tornadus - Transfer Only
  (641, 64100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0641 Tornadus (Therian) - Transfer Only
  (641, 64101, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0642 Thundurus - Transfer Only
  (642, 64200, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0642 Thundurus (Therian) - Transfer Only
  (642, 64201, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0645 Landorus - Transfer Only
  (645, 64500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0645 Landorus (Therian) - Transfer Only
  (645, 64501, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0649 Genesect - Transfer Only
  (649, 64900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0649 Genesect (Douse Drive) - Transfer Only
  (649, 64901, 18, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from the Stow-on-Side bargain shop in Sword/Shield.'),
  -- #0649 Genesect (Shock Drive) - Transfer Only
  (649, 64902, 18, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from the Stow-on-Side bargain shop in Sword/Shield.'),
  -- #0649 Genesect (Burn Drive) - Transfer Only
  (649, 64903, 18, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from the Stow-on-Side bargain shop in Sword/Shield.'),
  -- #0649 Genesect (Chill Drive) - Transfer Only
  (649, 64904, 18, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from the Stow-on-Side bargain shop in Sword/Shield.'),
  -- #0716 Xerneas - Transfer Only
  (716, 71600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0717 Yveltal - Transfer Only
  (717, 71700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0718 Zygarde - Transfer Only
  (718, 71800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0718 Zygarde (10% Forme) - Transfer Only
  (718, 71801, 18, NULL, 13, 'Compatible form is possible in Sword/Shield after transfer and the relevant in-game form item or form system; no Sword/Shield Pokedex entry.'),
  -- #0719 Diancie - Transfer Only
  (719, 71900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0721 Volcanion - Transfer Only
  (721, 72100, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0785 Tapu Koko - Transfer Only
  (785, 78500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0786 Tapu Lele - Transfer Only
  (786, 78600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0787 Tapu Bulu - Transfer Only
  (787, 78700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0788 Tapu Fini - Transfer Only
  (788, 78800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0793 Nihilego - Transfer Only
  (793, 79300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0794 Buzzwole - Transfer Only
  (794, 79400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0795 Pheromosa - Transfer Only
  (795, 79500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0796 Xurkitree - Transfer Only
  (796, 79600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0797 Celesteela - Transfer Only
  (797, 79700, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0798 Kartana - Transfer Only
  (798, 79800, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0799 Guzzlord - Transfer Only
  (799, 79900, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0803 Poipole - Transfer Only
  (803, 80300, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0804 Naganadel - Transfer Only
  (804, 80400, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0805 Stakataka - Transfer Only
  (805, 80500, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.'),
  -- #0806 Blacephalon - Transfer Only
  (806, 80600, 18, NULL, 13, 'Compatible with Sword/Shield but not listed in any Sword/Shield Pokedex; available only through Pokémon HOME transfer or compatible import into the base game scope.');
