# Reference Gap Review

Date: 2026-06-08

Scope: file-level review of `database/schema/02_reference` and
`database/seeds/02_reference`.

This review tracks missing reference data and schema/design work for the clean schema rebuild.

## Current Coverage Status

Seeded reference areas:

- Foundation: product families, generations, regions, game types, version groups, platforms, games, game platforms, game content scopes, and content-scope dependencies. Final closeout pins 7 product families, 9 generations, 10 regions, 4 game types, 27 version groups, 7 platforms, 38 games, 42 game-platform mappings, 47 game content scopes, and 2 content-scope dependency rows by source-verified fingerprints.
- Mechanics: types, type matchups, natures, egg groups, abilities, ability attributes, move kinds, moves, and move attributes. Batch 4 mainline mechanics closure is complete at file level: lookup descriptions, type matchups, ability identities/effects, move identities, and move attributes are pinned by source-verified rowset fingerprints plus semantic checks.
- Pokémon identity and mechanics: evolution families, species, forms, form rules, form item requirements, attributes, and evolution edges. Batch 3 Pokémon identity/forms/attributes closure is complete at file level: 541 evolution families, 1025 species, 1185 forms, 160 form rules, 62 form item requirement rows, and 2243 attribute rows are pinned by source-verified rowset fingerprints plus semantic checks.
- Items: reduced Pokémon-relevant item catalog, category memberships, and item availability. Final closeout pins 502 item identities and 1,012 category membership rows by source-verified fingerprints, in addition to item availability scope fingerprints and semantic exception checks.
- Availability: availability methods, Pokémon availability, item availability, and move availability. Batch 5 Pokémon availability closure is complete at file level: all 27 seeded version-group/content scopes are pinned by source-verified rowset fingerprints. Batch 8 move availability closure is complete at file level: 9,713 positive version-group-wide move availability rows across 22 audited scopes are pinned by exact source-verified move sets.
- Pokedex: regional/local/DLC/special/National Pokedex definitions and species-level entries. Batch 2 Pokedex closure is complete at file level: definition metadata and every Pokedex entry scope are pinned in the offline audit.
- Learnsets: move machines and Pokémon learnsets for current seeded game/content scope. Batch 6 learnset/machine closure is complete at file level: 23 machine catalog scopes and 26 Pokémon learnset scopes are pinned by source-verified fingerprints.
- Lookups: evolution methods and learn methods.

Reference tables with no seed rows yet:

- None in the current reference schema.

Feature-level gaps not represented by empty tables:

- Mainline mechanics: Batch 4 pins complete rowsets for 18 types, 129 type matchup rows, 25 natures, 15 egg groups, 18 item categories, 4 move kinds, 9 evolution methods, 13 availability methods, 12 learn methods, 310 abilities, 382 ability attribute rows, 935 moves, and 1161 move attribute rows. Existing semantic checks still carry the source-specific assertions for type matchup resolution, historic move changes, move kind handling, and ability change-point coverage.
- National Pokedex scopes are seeded for games with a real in-game National Mode/National Pokedex system.
- Other future special Pokedex scopes remain schema-supported through `reference.pokedex.pokedex_kind = 'special'`.
- Optional Pokedex scope completion behavior is resolved: National and special post-game Pokedex scopes are trackable/browsable when seeded, and count toward completion only when `gameplay.mainline_play_settings.include_optional_pokedexes_in_completion = true`.
- Move availability: Batch 8 pins 9,713 positive version-group-wide rows across 22 audited scopes. The audit rejects duplicate move/scope rows, unexpected version-group scopes, pre-introduction move rows, game-specific rows, non-add scope operations, and move-kind leakage such as Z-Moves outside Alola or Max/G-Max moves outside Sword/Shield.
- Item availability is structurally seeded and pinned per version-group/content scope in the offline audit after the current 3,877-row source pass. Batch 1 item availability closure is complete at file level: Poke Balls, fossils, berries, Z-Crystals, non-Z form-change items, evolution items, Mega Stones, and general held items are now covered by exact matrices or category-specific row-count/SHA-256 fingerprints, plus explicit exception checks for Fairy Gem, Exp. Share key-item-era rows, Polkadot Bow transfer-only rows, Red/Blue Orb held-item-era rows, Kubfu scroll scope, Black Augurite, Metal Alloy, Galarica items, and version-exclusive Electirizer/Magmarizer rows.
- Pokémon availability now includes source-generated Pokémon Legends: Z-A and Mega Dimension rows from individual game-location source data, expanded to the current Voydex form scope.
- Pokémon availability: Batch 5 pins all 12,653 Pokémon availability rows by version-group/content-scope fingerprints. The audit also validates natural uniqueness, species/form pairs, method references, game/content-scope references, evolution item dependencies, and item-driven form item dependencies.
- Pokémon learnsets through Pokémon Legends: Z-A and Mega Dimension are row-level source-verified and pinned in the offline audit.
- Learnsets and machines: Batch 6 pins 2,060 move machine rows and 583,348 Pokémon learnset rows by version-group/content-scope fingerprints. The audit now rejects unexpected unpinned learnset scopes, matching the existing machine-scope guard.
- Evolution edges: Generation I-IX evolution rows are source-verified and pinned in the offline audit for source/target form, method, level, item/held item, known move/type, time gate, location, condition data, and scope. Batch 7 evolution closure adds schema-level natural uniqueness and a matching offline duplicate check for the same form pair, scope, method, requirements, and structured mechanic data. The current pass also encodes Wurmple personality/encryption branching, the Generation III vs Generation IV+ Shedinja Poke Ball requirement difference, Generation IV magnetic/Moss/Ice location rows separate from later location and stone alternatives, Generation V Chargestone/Pinwheel/Twist location rows, Feebas Prism Scale trade evolution, Unova trade-pair evolutions, historical friendship thresholds, the Generation VI Sylveon affection requirement separate from the later Generation VIII friendship path, Generation VII version/form-specific outcomes for Rockruff and Cosmoem, Generation VIII PLA-specific scoping for Hisui-only evolution methods, and Generation IX Paldea/DLC special mechanics including Dudunsparce and Maushold rare outcomes, Let's Go step evolutions, Union Circle evolution, Gimmighoul Coins, Dipplin/Hydrapple, Archaludon, and Poltchageist/Sinistcha item-form outcomes.
- Pokémon identity/forms/attributes: the current reference scope intentionally pins the complete Generation I-IX species set at 1025 National Dex species. Later official species outside that scope should be handled as a deliberate scope expansion, not silent drift in existing seed files. Current supported forms are default forms plus curated non-default forms relevant to out-of-battle team planning, biography, availability, or item-driven identity; battle-only and cosmetic-only variants remain accepted exclusions for the current companion scope.
- Reference schema access: final closeout automates the Supabase-facing file contract for reference/read-model SQL. Every `reference` table must enable RLS, revoke broad client access, grant only `SELECT` to `anon`/`authenticated`, grant maintenance access to `service_role`, and expose a `read_all` SELECT policy. Every `views` view must use `WITH (security_invoker = true)` and must not use `SECURITY DEFINER`.

## Completed Seed Areas

### Ability Attributes

Completed for concise product-facing ability summaries used by Pokémon detail, team detail, Pokedex, and planner surfaces.

Design status:

- Existing table shape is acceptable after switching change points to `version_group_start_id`.
- Ability slots for Pokémon/forms already live in `reference.pokemon_attributes`; no separate Pokémon ability slot table is needed now.
- Rows must be version-group change points by `ability_id + version_group_start_id`.
- The seed contains one first-applicable row for every seeded mainline ability plus sourced product-relevant change-point rows.

Source strategy:

- Primary: PokemonDB ability list/pages for concise current summaries.
- Cross-check: Bulbapedia ability pages for generation/version behavior changes.
- Sanity: PokeAPI ability changelog CSV for older machine-readable change hints.

Seeding rule:

- Do not seed current-only text as if it applied historically.
- Seed a concise product-facing summary for every ability and add additional rows for sourced version-group or generation change points.
- If deeper simulator-level mechanics are not modeled in the concise summary, document the source scope instead of inventing unsupported detail.

## Completed Large Seed Areas Requiring Row-Level Source Audit

### Move Availability

Seeded for current game/content scope and required for game-aware move browsing, move search, team planning, and filtering moves that are not usable in a selected game/content scope.

Design status:

- Existing table shape is acceptable after removing row `notes`; source provenance and version caveats belong in seed comments/docs.
- Keep `reference.move_availability` as a positive availability model: row existence means the move is available/usable in that game or content scope after audit.
- Do not add `availability_method_id` now. Learn/acquisition method belongs on `reference.pokemon_learnsets`; move availability answers whether the move itself is in scope.
- Use `game_id` only for game-specific move availability differences. Otherwise seed version-group/content-scope rows.

Source strategy:

- Primary: Bulbapedia move availability tables for Generations VII-IX and Bulbapedia game/category pages for LGPE/Switch-era scopes.
- Cross-check: Serebii game-specific move lists and PokemonDB move pages where useful.
- For Generations I-VI, use curated generation/version-group game data with source exceptions documented, especially ORAS-only moves that are not programmed into X/Y.
- PokeAPI can help detect impossible IDs or missing canonical move identities, but not final historic scope.

Row-level source audit progress:

- Red / Blue: verified as the complete Generation I indexed move range, move IDs 1-165.
- Yellow: verified as the complete Generation I indexed move range, move IDs 1-165.
- Gold / Silver: verified as the complete Generation I-II indexed move range, move IDs 1-251.
- Crystal: verified as the complete Generation I-II indexed move range, move IDs 1-251.
- Ruby / Sapphire: verified as the complete Generation I-III indexed move range, move IDs 1-354.
- FireRed / LeafGreen: verified as the complete Generation I-III indexed move range, move IDs 1-354.
- Emerald: verified as the complete Generation I-III indexed move range, move IDs 1-354.
- Diamond / Pearl: verified as the complete Generation I-IV indexed move range, move IDs 1-467.
- Platinum: verified as the complete Generation I-IV indexed move range, move IDs 1-467.
- HeartGold / SoulSilver: verified as the complete Generation I-IV indexed move range, move IDs 1-467.
- Black / White: verified as the complete Generation I-V indexed move range, move IDs 1-559.
- Black 2 / White 2: verified as the complete Generation I-V indexed move range, move IDs 1-559.
- X / Y: verified as the complete Generation I-VI X/Y-programmed indexed move range, move IDs 1-617.
- Omega Ruby / Alpha Sapphire: verified as the complete Generation I-VI ORAS indexed move range, move IDs 1-621.
- Sun / Moon: verified as the complete S/M move set, move IDs 1-621, generic Z-Move representative IDs 622/624/626/628/630/632/634/636/638/640/642/644/646/648/650/652/654/656, and move IDs 658-719.
- Ultra Sun / Ultra Moon: verified as the complete US/UM move set, move IDs 1-621, generic Z-Move representative IDs 622/624/626/628/630/632/634/636/638/640/642/644/646/648/650/652/654/656, and move IDs 658-728.
- Let's Go, Pikachu! / Let's Go, Eevee!: verified as the complete P/E move set, move IDs 1-165, 182, 188, 200, 224, 227, 231, 242-243, 247, 252, 257, 261, 263, 269-270, 276, 280-281, 339, 347, 355, 364, 369, 389, 394, 398-399, 403-406, 417, 420, 430, 438, 446, 453, 483, 492, 499, 503-504, 525, 529, 583, 585, 605-606, and 729-742.
- Sword / Shield: verified as the complete patched Sw/Sh usable move set, move IDs 1, 5-12, 14-25, 28-40, 42-48, 50-81, 83-95, 97-98, 100-111, 113-116, 118, 120, 122-124, 126-127, 129-130, 133-139, 141-144, 147, 150-157, 160-165, 167-168, 170, 172-184, 186-192, 194-215, 217, 219-221, 223-227, 229-236, 238-264, 266-273, 275-286, 288, 291-292, 295-299, 303-315, 317, 319, 321-323, 325-326, 328-345, 347-353, 355-356, 359-362, 364-372, 374-375, 379-380, 383-385, 387-390, 392-425, 427-428, 430, 432-442, 444, 446-447, 450-455, 457-463, 467-476, 478-480, 482-484, 486-497, 499-506, 508-515, 517-530, 532-536, 538-546, 548-562, 564-568, 570-592, 594-599, 601-616, 618-620, 659-664, 666-670, 673-685, 687-689, 691-694, 704-718, 720-722, 742-826, and curated G-Max move IDs 10001-10033.
- Brilliant Diamond / Shining Pearl: verified as the complete BD/SP usable move set, move IDs 1, 5-12, 14-25, 28-40, 42-48, 50-81, 83-95, 97-98, 100-111, 113-116, 118, 120, 122-124, 126-127, 129-130, 133-139, 141-144, 147-148, 150-157, 160-168, 170, 172-184, 186-192, 194-215, 217, 219-221, 223-227, 229-264, 266-273, 275-286, 288, 291-292, 294-299, 303-315, 317, 319, 321-323, 325-326, 328-345, 347-356, 359-362, 364-372, 374-375, 379-380, 383-385, 387-425, 427-428, 430-442, 444, 446-455, 457-465, 467-476, 478-480, 482-484, 486-497, 499-506, 509-515, 517, 521-526, 528-530, 534, 536, 538, 540, 542, 555-556, 562, 564-566, 568, 572-575, 577, 579-581, 583-586, 589-590, 595-599, 602, 604-605, 608-609, 611-612, 618-620, 667-668, 670, 672-673, 675, 679, 682, 684, 692, 694, 707, 710, 715, 776, and 791.
- Pokémon Legends: Arceus: verified as the complete LA usable move set, move IDs 7-9, 14, 16, 33, 38, 40, 42, 44, 52-53, 56, 58-59, 63, 71, 77-80, 84-87, 93-95, 98, 100, 102, 105, 116, 120, 126, 129, 135, 139, 141, 145, 147, 150-151, 156-157, 161, 163, 165, 172, 181, 183, 188-191, 196, 200, 205-206, 209, 224, 231, 237, 239, 242, 246-247, 249, 301, 310, 314-315, 318, 326, 332, 334, 337, 339, 344-345, 347-348, 352, 355, 370, 394, 396, 398-401, 403-406, 408-409, 412-414, 416-418, 420-428, 430, 434, 437, 440, 442, 444, 446, 449, 451-453, 457-460, 462-467, 474, 491, 506, 522-523, 528, 542, 555-556, 577, 583-585, 595, 605, 608, 667, 670, 710, 796, and 827-850.
- Scarlet / Violet: verified as the complete patched S/V usable move set, move IDs 1, 5-12, 14-25, 28-40, 42-48, 50-65, 67-81, 83-95, 97-98, 100-111, 113-116, 118, 120, 122-124, 126-127, 129, 133, 135-139, 141, 143-144, 147, 150-154, 156-157, 160-168, 172-184, 186-189, 191-192, 194-215, 217, 219-221, 223-227, 229-232, 234-236, 238-257, 259-264, 266, 268-273, 275-276, 278, 280-286, 291-292, 294-299, 303-311, 313-315, 317, 319, 321-323, 325-326, 328-345, 347-356, 359-362, 364-372, 374, 379-380, 383-385, 387-425, 427-428, 430, 432-442, 444, 446-447, 449-455, 457-465, 467-474, 476, 478-479, 482-484, 486-497, 499-506, 508-515, 517-529, 532-535, 538-542, 547-560, 562, 564-566, 568, 570-577, 580-581, 583-587, 589-598, 602-611, 618-621, 659-670, 672, 675-676, 678-684, 686, 688-694, 705-707, 709-711, 713-716, 722, 744-752, 756, 775-778, 780-791, 793, and 796-919.
- Pokémon Legends: Z-A: verified as the complete ZA-column usable move set, move IDs 4, 6-9, 13-14, 16-19, 22, 29, 33-34, 36, 38-40, 42-48, 52-61, 63-64, 71, 73-81, 83-95, 97-98, 100, 102-106, 108-109, 113-116, 118, 120, 122, 126-127, 129-130, 133, 137-138, 141, 143, 147, 150-151, 153, 155, 157, 160-164, 172, 174, 176, 182-183, 188, 191-192, 195-197, 200, 202-207, 209, 211, 219, 223-225, 231-232, 234-236, 239, 242, 245-250, 252, 257, 259, 261, 263, 268-269, 273, 280, 282, 295-297, 299, 304-305, 307-308, 313, 315, 317-319, 325, 328-334, 337-341, 344-345, 347-348, 350, 352, 369-370, 377, 390, 392, 394, 396, 398-400, 402-414, 416-418, 420-425, 427-428, 430, 434-438, 441-444, 446, 451-453, 457-458, 463-464, 466, 473, 480, 482, 484, 488, 490-491, 503, 509, 521, 523-524, 526-530, 532-533, 535, 538, 540, 542, 546-548, 555-556, 560, 564, 566-567, 570-571, 573-577, 583-586, 588, 591-596, 598, 601, 605, 609, 611-621, 659-660, 665, 669-670, 679, 687, 693, 705-706, 708, 710, 712, 721, 742, 748, 753, 783-784, 786, 794, 796, 799-800, 812-815, 830, 839, 854, 856, 858, 862, 864, 866, 874, 880, 885-886, 889-891, 893, and 920.

Gen I-IX source decision:

- Bulbapedia's move index is the primary source for the canonical indexed move range. It lists Generation I moves from Pound (#001) through Struggle (#165), with Sketch (#166) beginning Generation II.
- The same index lists Generation II moves from Sketch (#166) through Beat Up (#251), with Fake Out (#252) beginning Generation III.
- The same index lists Generation III moves from Fake Out (#252) through Psycho Boost (#354), with Roost (#355) beginning Generation IV.
- The same index lists Generation IV moves from Roost (#355) through Shadow Force (#467), with Hone Claws (#468) beginning Generation V.
- The same index lists Generation V moves from Hone Claws (#468) through Fusion Bolt (#559), with Flying Press (#560) beginning Generation VI.
- The same index lists Generation VI moves from Flying Press (#560) through Hyperspace Fury (#621), with Breakneck Blitz (#622) beginning Generation VII.
- X / Y intentionally stops at Light of Ruin (#617) because the ORAS-only moves Origin Pulse (#618), Precipice Blades (#619), Dragon Ascent (#620), and Hyperspace Fury (#621) are not programmed into X/Y. Bulbapedia move pages document the ORAS introduction/non-X/Y game-data behavior; Origin Pulse is the pinned source example for this rule.
- Bulbapedia's Generation VII availability table is the primary source for S/M and US/UM column availability. Its generic Z-Move rows split physical and special source rows, but Voydex deliberately collapses each physical/special pair into one move identity because the user-facing move is the same named Z-Move.
- S/M stops at 10,000,000 Volt Thunderbolt (#719). US/UM adds Mind Blown (#720) through Clangorous Soulblaze (#728). Let's Go-only moves (#729-#742) are handled separately in the Let's Go Pikachu / Let's Go Eevee version group.
- Let's Go Pikachu / Let's Go Eevee uses the P/E column from Bulbapedia's Generation VII availability table. It intentionally excludes Z-Moves and most post-Generation I moves, includes the source-marked later compatible moves, includes Struggle and Celebrate because the availability table marks them even though the category cross-check count is smaller, and includes the Let's Go-exclusive moves Zippy Zap (#729) through Double Iron Bash (#742).
- Bulbapedia's Generation VIII availability table is the primary source for Sw/Sh availability. Voydex uses the Sw/Sh column's usable marks and intentionally excludes moves marked unusable/removed for Sw/Sh.
- Sw/Sh is modeled as the patched game scope: moves marked usable via v1.2.0/v1.3.0 updates are included at version-group scope because move availability answers whether the move can exist/use in current Sw/Sh, while DLC acquisition details belong to learnsets/machines/item or Pokémon availability rows.
- Max Moves (#743 and #757-#774) are included from the Generation VIII move table. G-Max moves are also available in Sw/Sh, but Voydex models them as separate curated move identities with IDs 10001-10033 because Bulbapedia groups many G-Max names onto the matching Max Move source rows.
- Brilliant Diamond / Shining Pearl uses the BD/SP column from Bulbapedia's Generation VIII availability table. It intentionally excludes Sw/Sh-only Max/G-Max mechanics, Sw/Sh DLC move additions, and Legends: Arceus-only moves; BDSP-specific compatibility ends at Life Dew (#791) in the current curated set.
- Pokémon Legends: Arceus uses the LA column from Bulbapedia's Generation VIII availability table. It intentionally excludes normal-series transfer assumptions, Sw/Sh-only Max/G-Max mechanics, and BDSP-only compatibility; PLA-only moves Dire Claw (#827) through Take Heart (#850) are included.
- Scarlet / Violet uses the S/V column from Bulbapedia's Generation IX availability table. It is modeled as the patched current S/V game scope, including update/DLC-era moves marked usable by the source table because this table answers whether the move itself is usable in S/V, while acquisition timing belongs in learnsets, machines, item availability, Pokémon availability, or content-scope views.
- Pokémon Legends: Z-A uses the ZA column from Bulbapedia's Generation IX availability table. Voydex models the patched/current ZA game scope, including rows marked usable in update 2.0.0+, because move availability answers whether a move is usable in the current game engine. DLC or update-gated acquisition should be modeled in learnsets, machines, item availability, Pokémon availability, and content-scope views instead of duplicating move identity availability rows.
- Pokémon's official Legends: Z-A site marks the game as available now and lists February 27, 2026 official updates, so the ZA move availability seed is treated as released/official source data rather than rumor/leak-derived data.
- PokemonDB's Generation 1, Generation 2, Generation 3, Generation 4, Generation 5, Generation 6, Generation 7, Generation 8, and Generation 9 move pages are the cross-checks for these move sets.
- Because `reference.move_availability` models move existence/usability in the version group, not Pokémon acquisition method, Red / Blue, Yellow, Gold / Silver, Crystal, Ruby / Sapphire, FireRed / LeafGreen, Emerald, Diamond / Pearl, Platinum, HeartGold / SoulSilver, Black / White, Black 2 / White 2, X / Y, Omega Ruby / Alpha Sapphire, Sun / Moon, Ultra Sun / Ultra Moon, Let's Go Pikachu / Let's Go Eevee, Sword / Shield, Brilliant Diamond / Shining Pearl, Pokémon Legends: Arceus, Scarlet / Violet, and Pokémon Legends: Z-A intentionally seed every indexed move available in that version group once at version-group scope, with generic Z-Move duplicate source rows collapsed and G-Max move names separated into curated Voydex identities.
- The offline audit now enforces these exact source-verified ranges/sets for Red / Blue, Yellow, Gold / Silver, Crystal, Ruby / Sapphire, FireRed / LeafGreen, Emerald, Diamond / Pearl, Platinum, HeartGold / SoulSilver, Black / White, Black 2 / White 2, X / Y, Omega Ruby / Alpha Sapphire, Sun / Moon, Ultra Sun / Ultra Moon, Let's Go Pikachu / Let's Go Eevee, Sword / Shield, Brilliant Diamond / Shining Pearl, Pokémon Legends: Arceus, Scarlet / Violet, and Pokémon Legends: Z-A.

### Move Machines

Seeded for every current game/content scope with TM/HM/TR-style machine catalogs and required by machine learnset rows, Pokémon move planning, and user-facing move acquisition labels.

Design status:

- Existing table shape is acceptable: `reference.move_machines` stores the machine label, learn method, scoped version group/game, and mapped move.
- TMs/HMs/TRs remain outside the reduced item catalog. They are learnset/acquisition labels, not Pokémon-held or biography-relevant items.
- Scarlet / Violet DLC machine catalogs are additive delta scopes: base S/V seeds TM001-TM171, The Teal Mask seeds TM172-TM201, and The Indigo Disk seeds TM202-TM229.
- Legends: Arceus has no seeded machine catalog because its move tutor/training model is not a TM/HM/TR catalog in this schema.

Source audit status:

- Red / Blue, Yellow, Gold / Silver, Crystal, Ruby / Sapphire, FireRed / LeafGreen, Emerald, Diamond / Pearl, Platinum, HeartGold / SoulSilver, Black / White, Black 2 / White 2, X / Y, Omega Ruby / Alpha Sapphire, Sun / Moon, Ultra Sun / Ultra Moon, Let's Go Pikachu / Let's Go Eevee, Sword / Shield, Brilliant Diamond / Shining Pearl, Scarlet / Violet, Scarlet / Violet DLC, and Pokémon Legends: Z-A machine catalogs are row-level source-verified.
- Bulbapedia's List of TMs is the primary source for generation and game machine mappings.
- Bulbapedia TM/HM location pages are the cross-check for Generation I-VI HM presence and version-specific exceptions.
- PokemonDB's Let's Go TM page is the cross-check for Let's Go, Pikachu! / Let's Go, Eevee!.
- The offline audit enforces exact row counts and source-verified machine mapping fingerprints for every seeded move-machine scope.

Row-level source decisions:

- FireRed / LeafGreen excludes HM08 Dive; Ruby / Sapphire and Emerald include it.
- Diamond / Pearl and Platinum use HM05 Defog; HeartGold / SoulSilver uses HM05 Whirlpool.
- X / Y uses TM94 Rock Smash; Omega Ruby / Alpha Sapphire uses TM94 Secret Power and adds HM06 Rock Smash and HM07 Dive.
- Sword / Shield includes both TM and TR catalogs.
- Scarlet / Violet base and DLC scopes are cumulative through content-scope dependencies, so DLC seed files contain only newly added machine labels.
- Pokémon Legends: Z-A seeds TM001-TM160 from the Generation IX Z-A machine table.

### Pokémon Availability

Seeded for current game/content scope and required for game-aware Pokedex filtering, team planning, availability warnings, and future location/progression-aware planning.

Design status:

- Existing table shape remains acceptable: generated surrogate IDs, composite species/form integrity, optional game scope, availability method, scope operation, and product-facing notes.
- Availability rows answer obtainability method, not Pokedex membership. Lumiose and Hyperspace Pokedex rows were used as coverage inputs only.
- Current form scope remains intentional: persistent, regional, evolution-relevant, item-driven, and planning-relevant forms are expanded; cosmetic-only source variants stay collapsed to the supported Voydex form row. Deerling/Sawsbuck seasonal forms and Gimmighoul Roaming Form are accepted exclusions from current team/planner scope; future HOME/living-dex features can add them as collection-specific forms if needed.

Pokémon Legends: Z-A source pass:

- Lumiose availability is seeded from Bulbapedia individual Pokémon game-location rows for every Lumiose Pokedex species. The seed expands supported forms and alternate meaningful paths, resulting in 246 rows for 232 species-level Pokedex entries.
- Mega Dimension / Hyperspace availability is seeded from Bulbapedia individual Pokémon game-location rows for every Hyperspace Pokedex species. The seed expands supported forms and special paths, resulting in 152 rows for 132 species-level Pokedex entries.
- Mystery Gift-gated entries are modeled as `event`; NPC trades are `in_game_trade`; Special Scan-gated Hyperspace rows are `raid_or_special`; one-time mission/legendary encounters are `static_encounter`.
- Starters and gift Pokémon that also have later wild encounters receive separate method rows so planner warnings can distinguish early choice/gift access from later catch access.
- The current pass is primary-source generated and offline-audited. A wider Serebii/PokemonDB row comparison can still be run during the full reference audit.

### Pokémon Learnsets

Seeded for current game/content scope and required for team planning, move selection, Pokémon detail pages, future move recommendations, and accurate level-up method/level display.

Design status:

- Existing table shape is acceptable after unique/index hardening and method-specific row-shape checks.
- `species_id + form_id` integrity is enforced through the composite FK to `reference.pokemon_forms`.
- `source_item_id` remains optional because TMs/HMs/TRs are intentionally not part of the reduced item catalog. TM/HM/TR rows use `move_machine_id`, which points to `reference.move_machines` for display label and move mapping.
- Learn methods are stable lookup rows; DB checks and the offline audit both enforce level/machine method shape.

Seed organization:

- Use a dedicated `10_learnsets` reference seed folder.
- Organize by two-digit prefixed version-group folders, then split by species generation or source page group when files become too large.
- Recommended pattern: `10_learnsets/01_rb/001_001_050.sql`, with additional dex-range files when row count is large.
- Every row should have a helper comment naming Pokémon/form, move, method, and level or machine/tutor label.

Source strategy:

- Primary: Bulbapedia Pokémon learnset raw pages when version-aware columns or row gates are available.
- Cross-check: Serebii game-specific Pokémon learnset pages and PokemonDB generation learnset pages where useful.
- PokeAPI can be used only for machine-readable sanity checks.

Row-level source audit progress:

- Red / Blue: verified against Bulbapedia Generation I raw learnset pages for all 151 species, using direct leveling-up and TM/HM sections only. The parser uses the RGB level column, excludes Yellow-only rows, excludes Move Reminder/prior-evolution/event/transfer sections, and matches all 4,127 seeded rows exactly. The offline audit now pins the Red / Blue learnset fingerprint.
- Yellow: verified against Bulbapedia Generation I raw learnset pages for all 151 species, using direct leveling-up and TM/HM sections only. The parser uses the Yellow level column, includes Yellow-only TM/HM rows, excludes Red / Blue-only rows, excludes Move Reminder/prior-evolution/event/transfer sections, and matches all 4,152 seeded rows exactly. The offline audit now pins the Yellow learnset fingerprint.
- Yellow Vaporeon Mist at level 42 stores a product-facing Day Care caveat in `condition_summary` because Bulbapedia marks the level with a footnote: in Generation I, Vaporeon cannot normally learn both Haze and Mist at level 42 outside the Day Care.
- Gold / Silver: verified against Bulbapedia Generation II raw learnset pages for all 251 species, using Gold / Silver level columns, TM/HM rows, and direct egg move rows. The seed preserves source-visible duplicate level-up rows, excludes Crystal-only egg moves, excludes raw egg rows marked as having no legitimate father, excludes tutor/event/transfer/prior-evolution sections, and matches all 9,054 seeded rows exactly. The offline audit now pins the Gold / Silver learnset fingerprint.
- Crystal: verified against Bulbapedia Generation II raw learnset pages for all 251 species, using Crystal level columns, TM/HM rows, direct egg move rows, and Crystal Move Tutor rows. The seed preserves source-visible duplicate level-up rows, includes Crystal-only egg moves, excludes Gold/Silver-only egg rows, excludes raw egg rows marked as having no legitimate father, excludes event/transfer/prior-evolution sections, and matches all 9,288 seeded rows exactly. The offline audit now pins the Crystal learnset fingerprint.
- Ruby / Sapphire: verified against Bulbapedia Generation III raw learnset pages for all 386 species, using Ruby / Sapphire level rows, TM/HM rows, and direct egg move rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Ruby / Sapphire machine catalog, excludes FireRed/LeafGreen-only, Emerald-only, tutor, event, transfer, and prior-evolution sections, treats evolved-page egg move rows as prior-evolution acquisition, excludes Emerald-only Pichu Volt Tackle, uses Normal Forme Deoxys level rows for Ruby / Sapphire, and matches all 13,852 seeded rows exactly. The offline audit now pins the Ruby / Sapphire learnset fingerprint.
- FireRed / LeafGreen: verified against Bulbapedia Generation III raw learnset pages for all 386 species, using FireRed / LeafGreen level rows, TM/HM rows, direct egg move rows, and FireRed/LeafGreen one-time Move Tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the FireRed / LeafGreen machine catalog, excludes Emerald-only Pichu Volt Tackle, excludes HM08 Dive compatibility rows because HM08 is not legitimately obtainable in FireRed / LeafGreen, excludes Emerald/XD-only tutors, treats evolved-page egg move rows as prior-evolution acquisition, omits the default Deoxys learnset in favor of Attack and Defense Forme rows, and matches all 16,325 seeded rows exactly. The offline audit now pins the FireRed / LeafGreen learnset fingerprint.
- Emerald: verified against Bulbapedia Generation III raw learnset pages for all 386 species, using Emerald level rows, TM/HM rows, direct egg move rows, and Emerald Move Tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Emerald machine catalog including HM08 Dive, includes Emerald-only Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes non-Emerald tutor rows, treats evolved-page egg move rows as prior-evolution acquisition, omits the default Deoxys learnset in favor of Speed Forme rows, and matches all 19,195 seeded rows exactly. The offline audit now pins the Emerald learnset fingerprint.
- Diamond / Pearl: verified against Bulbapedia Generation IV raw learnset pages for all 493 species, using Diamond / Pearl level rows, TM/HM rows, direct egg move rows, and Diamond / Pearl tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Diamond / Pearl machine catalog, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes Platinum/HGSS-only rows and non-Diamond/Pearl form sections, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared Deoxys and Wormadam machine compatibility onto their selectable form rows, and matches all 26,310 seeded rows exactly. The offline audit now pins the Diamond / Pearl learnset fingerprint.
- Platinum: verified against Bulbapedia Generation IV raw learnset pages for all 493 species, using Platinum level rows, TM/HM rows, direct egg move rows, and Platinum tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Platinum machine catalog, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes HGSS-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable Platinum forms where the source exposes shared/default form compatibility, removes the unsupported Wormadam Sandy Rollout tutor row, and matches all 30,857 seeded rows exactly. The offline audit now pins the Platinum learnset fingerprint.
- HeartGold / SoulSilver: verified against Bulbapedia Generation IV raw learnset pages for all 493 species, using HeartGold / SoulSilver level rows, TM/HM rows, direct egg move rows, and HeartGold / SoulSilver tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the HeartGold / SoulSilver machine catalog including HM05 Whirlpool, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes DPPt-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable HeartGold / SoulSilver forms where the source/game relationship supports direct form queries, removes the unsupported Wormadam Sandy Rollout tutor row, and matches all 32,053 seeded rows exactly. The offline audit now pins the HeartGold / SoulSilver learnset fingerprint.
- Black / White: verified against Bulbapedia Generation V raw learnset pages for all 649 species, using Black / White level rows, TM/HM rows, direct egg move rows, and Black / White tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Black / White machine catalog including TM95 Snarl and its Lock Capsule condition, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes Black 2 / White 2-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable Black / White forms where the source/game relationship supports direct form queries, excludes Dream World, event, transfer, and Rotom form-change event rows, removes the unsupported Tympole Captivate egg row, and matches all 33,580 seeded rows exactly. The offline audit now pins the Black / White learnset fingerprint.
- Black 2 / White 2: verified against Bulbapedia Generation V raw learnset pages for all 649 species, using Black 2 / White 2 level rows, TM/HM rows, direct egg move rows, and Black 2 / White 2 tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Black 2 / White 2 machine catalog including TM95 Snarl, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes Black / White-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable Black 2 / White 2 forms where the source/game relationship supports direct form queries, includes Therian and Kyurem form rows supported by source/game context, excludes Dream World, event, transfer, and Rotom form-change event rows, and matches all 41,267 seeded rows exactly. The offline audit now pins the Black 2 / White 2 learnset fingerprint.
- X / Y: verified against Bulbapedia Generation VI raw learnset pages for all 721 species, using X / Y level rows, TM/HM rows, direct egg move rows, and X / Y tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the X / Y machine catalog including TM94 Rock Smash, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes Omega Ruby / Alpha Sapphire-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable X / Y forms where the source/game relationship supports direct form queries, includes Meowstic female and size/form rows supported by source/game context without duplicating explicit form sections, excludes event, transfer, prior-evolution, and Rotom form-change event rows, excludes the non-numeric Floette Light of Ruin source row because Eternal Flower Floette is outside the current form scope, and matches all 40,541 seeded rows exactly. The offline audit now pins the X / Y learnset fingerprint.
- Omega Ruby / Alpha Sapphire: verified against Bulbapedia Generation VI raw learnset pages for all 721 species, using Omega Ruby / Alpha Sapphire level rows, TM/HM rows, direct egg move rows, and Omega Ruby / Alpha Sapphire tutor rows. The seed preserves source-visible duplicate level-up rows, links machine rows to the Omega Ruby / Alpha Sapphire machine catalog including TM94 Secret Power, HM06 Rock Smash, and HM07 Dive, includes Pichu Volt Tackle as a Light Ball breeding row with `source_item_id`, excludes X / Y-only rows, treats evolved-page egg move rows as prior-evolution acquisition, duplicates shared rows onto current selectable Omega Ruby / Alpha Sapphire forms where the source/game relationship supports direct form queries, includes Hoopa Unbound and other supported form rows without duplicating explicit form sections, excludes event, transfer, prior-evolution, and Rotom form-change event rows, excludes the non-numeric Floette Light of Ruin source row because Eternal Flower Floette is outside the current form scope, and matches all 49,620 seeded rows exactly. The offline audit now pins the Omega Ruby / Alpha Sapphire learnset fingerprint.
- Sun / Moon: verified against Bulbapedia Generation VII raw learnset pages for all 802 species, using Sun / Moon level rows from the first `levelVII` column where split, direct TM rows linked to the Sun / Moon machine catalog, direct egg rows for hatchable/base and incense-family forms, Sun / Moon tutor rows from the first `tutor7` flag, and evolution-learned rows. The seed preserves source-visible duplicate level-up rows, treats evolved-page egg rows as prior-evolution acquisition unless the species/form is hatchable in the current breeding model, duplicates shared rows onto current selectable Sun / Moon forms where the source/game relationship supports direct form queries, collapses duplicate source sections when multiple source forms map to one curated Voydex form, excludes event, transfer, prior-evolution, and Rotom form-change event rows, and excludes Ultra Sun / Ultra Moon-only Lycanroc Dusk and Necrozma fusion form rows from the Sun / Moon scope. It matches all 44,348 seeded rows exactly. The offline audit now pins the Sun / Moon learnset fingerprint.
- Ultra Sun / Ultra Moon: verified against Bulbapedia Generation VII raw learnset pages for all 807 species, using Ultra Sun / Ultra Moon level rows from the second `levelVII` column where split, direct TM rows linked to the Ultra Sun / Ultra Moon machine catalog, direct egg rows for hatchable/base and incense-family forms, Ultra Sun / Ultra Moon tutor rows from the second `tutor7` flag, and evolution-learned rows. The seed preserves source-visible duplicate level-up rows, treats evolved-page egg rows as prior-evolution acquisition unless the species/form is hatchable in the current breeding model, duplicates shared rows onto current selectable Ultra Sun / Ultra Moon forms where the source/game relationship supports direct form queries, includes USUM-only Lycanroc Dusk and Necrozma fusion forms, collapses duplicate source sections when multiple source forms map to one curated Voydex form, excludes event, transfer, prior-evolution, Rotom form-change event rows, and out-of-scope battle-only Ultra Necrozma rows, and removes unsupported Silvally pledge tutor rows. It matches all 54,989 seeded rows exactly. The offline audit now pins the Ultra Sun / Ultra Moon learnset fingerprint.
- Let's Go Pikachu / Let's Go Eevee: verified against Bulbapedia Generation VII raw learnset pages, using the dedicated LGPE sections for Kanto species and PE-only pages for Meltan/Melmetal. The seed preserves source-visible duplicate level-up rows for evolved species, links TM rows to the 60-row LGPE machine catalog, includes explicit Alolan form sections, duplicates default Pikachu/Eevee level/TM rows onto Partner Pikachu/Eevee for direct form queries, and adds partner-exclusive tutor and Partner Power rows. Partner Power rows use the `special` learn method because they are not official event distributions or standard move tutors. It matches all 5,193 seeded rows exactly. The offline audit now pins the LGPE learnset fingerprint.
- Sword / Shield: verified against Bulbapedia Generation VIII raw learnset pages for all 664 source-visible Sw/Sh species/pages, using Sword / Shield level rows, TM/TR rows linked to the Sword / Shield machine catalog, direct egg rows, base move tutor rows, evolution-learned rows, and The Isle of Armor move tutor rows as the optional child content delta. The seed now preserves current-page source rows, including evolved/form rows that the older normalized seed omitted, duplicates shared/default source rows onto current selectable item/form rows where the source/game relationship supports direct form queries, keeps BDSP-only rows exposed on shared Generation VIII pages out of Sw/Sh, and keeps Crown Tundra at 0 direct delta rows because no separate Crown Tundra learnset acquisition rows are currently modeled beyond inherited Sword / Shield and Isle of Armor rows. Raw source quirks such as Dragonite Outrage level 41 and Igglybuff Covet are retained because the source marks them as game data rows. It matches all 44,520 Sword / Shield rows and all 972 Isle of Armor rows exactly; the offline audit now pins both fingerprints.
- Brilliant Diamond / Shining Pearl: verified against Bulbapedia Generation VIII raw learnset pages for all 493 species, using direct level rows, TM rows linked to the BDSP machine catalog, direct egg rows, and evolution-learned rows. The seed preserves source-visible starting and evolution rows, includes Pichu/Pikachu/Raichu Volt Tackle as Light Ball breeding rows with `source_item_id`, excludes Sword/Shield-only TM/TR/tutor rows, excludes alternate/regional form sections from these default-form files, and intentionally excludes prior-evolution, move-reminder, event, transfer, and tutoring sections until those methods are explicitly modeled for BDSP. It matches all 27,086 seeded rows exactly. The offline audit now pins the Brilliant Diamond / Shining Pearl learnset fingerprint.
- Scarlet / Violet: verified against Bulbapedia Generation IX raw learnset pages for all source-visible base S/V species/forms, using direct level rows, TM rows linked to the S/V base machine catalog, direct egg rows, evolution-learned rows, and supported game-specific form sections. The Teal Mask and The Indigo Disk are modeled as cumulative DLC machine-delta scopes: Teal Mask seeds TM172-TM201 compatibility for S/V + Teal-compatible forms, while Indigo Disk seeds TM202-TM229 compatibility for S/V + Teal + Indigo-compatible forms and TM172-TM201 compatibility for forms first available in Indigo Disk. It matches all 44,010 base S/V rows, all 2,166 Teal Mask rows, and all 3,233 Indigo Disk rows exactly; the offline audit now pins all three fingerprints.
- Pokémon Legends: Z-A: verified against Bulbapedia Generation IX raw learnset pages for source-visible ZA and Mega Dimension scoped species/forms, using numeric ZA level rows, source `Evo.` rows, and TM001-TM160 rows linked to the ZA machine catalog. Base ZA rows cover Pokémon/forms available in the base ZA availability scope. Mega Dimension rows are additive delta rows for Pokémon/forms first available in the optional Mega Dimension scope and inherit base ZA machine rows through the parent content scope. Version 2.0.0+ source rows keep product-facing condition summaries. Source Move Reminder rows are excluded until reminder/relearn behavior is modeled for this game. It matches all 10,232 base ZA rows and all 7,086 Mega Dimension rows exactly; the offline audit now pins both fingerprints.

Seeding rules:

- Preserve source-valid level-up rows, including multiple level rows for the same move where sources list them.
- Use `level_learned_at` only for level-up rows.
- Use `move_machine_id` for TM/HM/TR rows. The referenced `reference.move_machines` row stores the machine label and move mapping.
- Use `game_id` for paired-game differences only when source learnsets differ within a version group.
- Use optional child version groups for DLC/optional-content acquisition paths; base move usability can still be inherited from the parent version group.
- Use product-facing `condition_summary` for real player-relevant caveats, not source provenance.
- Direct learnset seeds include direct acquisition rows only; prior-evolution, move-reminder, event, and transfer sections require explicit method modeling before they are seeded.

## National And Other Pokedex Seed Area

Regional/local/DLC/special Pokedexes are seeded where currently in scope. National Pokedexes are seeded for games with a real in-game National Mode/National Pokedex system.

Resolved product path:

- Seed National/other Pokedex scopes where they are meaningful in-game or post-game systems.
- Use `pokedex_kind = 'national'` for National Dex scopes.
- Use `pokedex_kind = 'special'` only for non-regional, non-DLC Pokedex scopes that do not fit National Dex semantics.
- Keep `is_completion_relevant = true` for National/special scopes that can count when enabled.
- Completion includes National/special scopes only when `include_optional_pokedexes_in_completion = true`.
- `include_optional_pokedex_entries_in_completion` remains separate and controls optional entries inside a Pokedex, such as source-visible optional mythicals or explicit optional entries.

### National Pokedex Audit Decision

National Pokedex scopes are seeded only when the game has a real in-game National Mode/National Pokedex system. Do not seed a duplicate National scope only because the species can be sorted by National Dex number elsewhere in the product.

Seeded optional National Pokedex scopes:

- Ruby / Sapphire: National Mode, 386 species.
- FireRed / LeafGreen: National Mode, 386 species.
- Emerald: National Mode, 386 species.
- Diamond / Pearl: National Mode, 493 species.
- Platinum: National Mode, 493 species.
- HeartGold / SoulSilver: National Mode, 493 species.
- Black / White: National Mode, 649 species.
- Black 2 / White 2: National Mode, 649 species.
- X / Y: National Pokedex, 721 species.
- Omega Ruby / Alpha Sapphire: National Pokedex, 721 species.
- Brilliant Diamond / Shining Pearl: National Mode, 493 species.

Do not seed as separate National completion scopes:

- Red / Blue and Yellow: the first 151 National entries are already the Kanto Pokedex scope.
- Gold / Silver and Crystal: Old Pokedex Mode is an alternate National-order display mode for the same 251-species Pokedex, not a separate completion scope. If a future UI needs the exact old-order browsing mode, add it as browse-only with `is_completion_relevant = false`.
- Sun / Moon and Ultra Sun / Ultra Moon: no in-game National Pokedex.
- Let's Go, Pikachu! / Let's Go, Eevee!: no in-game National Pokedex.
- Sword / Shield: no in-game National Pokedex.
- Pokémon Legends: Arceus: no in-game National Pokedex.
- Scarlet / Violet: no in-game National Pokedex.
- Pokémon Legends: Z-A: no in-game National Pokedex.

National Pokedex entry rows use species IDs as National Pokedex numbers. `is_source_required_for_completion` defaults to true for ordinary species and false for Mythical/event-only species, preserving the existing optional-entry toggle behavior.

Source notes:

- Bulbapedia National Pokedex page is the primary source for in-game National Mode presence, acquisition, and generation limits.
- Bulbapedia List of Pokémon by National Pokedex number is the primary row-order source.
- Serebii National Pokedex and PokemonDB National Pokedex are cross-checks for species ranges and names.
- 2026-06-15 source spot-check: Bulbapedia National Pokedex confirms National Mode/National Pokedex scope for Ruby/Sapphire, FireRed/LeafGreen, Emerald, Diamond/Pearl, Platinum, HeartGold/SoulSilver, Black/White, Black 2/White 2, X/Y, Omega Ruby/Alpha Sapphire, and Brilliant Diamond/Shining Pearl; it also confirms no in-game National Pokedex for Sun/Moon/Ultra Sun/Ultra Moon, Let's Go, Sword/Shield, Legends: Arceus, Scarlet/Violet, or Legends: Z-A. The offline audit now enforces that exact National scope set and generation-limited species counts.
- 2026-06-15 optional-entry source spot-check: Kanto/LGPE, Sinnoh, Hisui, Isle of Armor, Blueberry, Alola, Lumiose, and Hyperspace Pokedex pages were checked for source-visible but not source-required completion entries. The audit now rejects unsupported optional flags; National Pokedex entries use the broad Mythical/event-only optional rule, while regional/local/DLC/special Pokedexes require explicit per-dex exceptions. This pass corrected Platinum Manaphy to source-required because Platinum's expanded Sinnoh Pokedex requires all 210 entries.
- 2026-06-15 batch 2 closure: the offline audit now pins exact Pokedex definition metadata, the complete seeded Pokedex scope set, and per-Pokedex entry fingerprints for every regional, local, DLC, and National Pokedex scope.

## Next Seeding Order

Recommended order:

1. Tracking milestone, collectible, badge, and opponent definitions after reference source status is stable.
2. Future special Pokedex scopes only if a new in-game/product scope requires them.
3. Future detail tables only when product features require them, such as locations, encounter rates, story gates, or platform-specific rerelease behavior.

## Reference Audit Closure

Current status:

1. File-level reference audit is closed for the current scope. The offline audit script checks schema/security expectations, helper comments, row-level relationships, semantic exceptions, row-count/SHA-256 fingerprints, and source-backed scope allowlists across all current reference seed areas.
2. Future reference audits should be triggered by deliberate scope expansion: new official species/forms, new game/version group/content scope, new Pokedex scope, new item category, new learn/acquisition method, or schema changes that alter natural keys/completion logic.
3. Remaining verification gates are execution checks, not source-file audit gaps: rebuild generated Supabase wrappers after source changes, run local SQL reset when Docker is available, and inspect live Supabase only when explicitly requested.

## Audit Expectations To Add During Seeding

Ability attributes:

- Every seeded ability attribute references a seeded ability and version group.
- No ability has duplicate version-group change-point rows.
- Every seeded ability has at least one ability attribute row.
- Known product-relevant ability change points are pinned in the offline audit.
- Rows must have non-empty `effect_summary`.

Move availability:

- Every regular move intended to be usable in a version group has a scoped availability row.
- No duplicate move/scope rows.
- Game-specific rows must match `reference.game_content_scopes`.
- Move availability rows must be compatible with move introduction generation and move kind.

Move machines:

- Every seeded machine row references a seeded move, version group, and machine learn method.
- Machine labels must match the learn method format: `TM###`, `HM##`, or `TR##`.
- Every machine row must have move availability in its own scope or an inherited parent content scope.
- Every seeded version group with machine rows must have an explicit expected row count and source-verified mapping fingerprint in the offline audit.

Pokémon learnsets:

- Every row references seeded species/form, move, version group, learn method, and optional game/item.
- Level-up rows require `level_learned_at`; non-level methods should not set it unless the method is explicitly redefined.
- TM/HM/TR rows require `move_machine_id` referencing a matching `reference.move_machines` row.
- Non-machine rows must not set `move_machine_id`.
- No duplicate source-equivalent rows after normalizing nullable level, item, and move machine fields.
- Learnset row `sort_order` must be contiguous within each Pokémon form + version group + game scope.
- Every learnset move should be available in the same version group/game scope, or in a parent base scope for optional child content, unless documented as a transfer/event exception.
