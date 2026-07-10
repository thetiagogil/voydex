# Reference Data Strategy

Reference data powers Pokedex search, planning, team building, play validation, and completion calculations.

The goal is not only to store current Pokémon facts. Voydex needs historic game-era data for older generations and game-specific behavior.

## Current File-Level Closure

As of 2026-06-15, the active reference schema and seed files are
file-level-audited for the current Voydex scope. The primary gate is
`scripts/database/audit-seed-files.mjs`, invoked by `npm run db:audit`; it
validates active reference seeds, source-backed rowset fingerprints, semantic
edge cases, helper comments for ID-heavy rows, and the Supabase-facing
reference/read-model SQL contract.

Generated Supabase migration/seed wrappers are execution artifacts. Local SQL reset and live Supabase inspection are separate verification gates and should not be treated as the source-file audit itself.

Final closeout currently pins foundation/game scope at 7 product families, 9 generations, 10 regions, 4 game types, 27 version groups, 7 platforms, 38 games, 42 game-platform mappings, 47 game content scopes, and 2 content-scope dependencies. It also pins the reduced item catalog at 502 item identities and 1,012 item category membership rows.

## Source Hierarchy

Use this hierarchy when sources disagree:

1. Official Pokémon sources for release/scope authority.
2. Bulbapedia for version-aware Pokémon learnset pages, mechanics/history explanations, form timelines, ability/stat/type changes, and source disagreement context.
3. Serebii for game-specific availability, version exclusives, dex pages, DLC, current game data, and learnset cross-checking.
4. PokemonDB for cross-checking stats, moves, dex listings, and historic generation learnset pages.
5. PokeAPI CSV snapshots for machine-readable sanity checks only.

PokeAPI should not be treated as authoritative for curated historic behavior when it disagrees with the selected source hierarchy.

## Learnset Source Rules

Learnsets are source-preserving acquisition rows, not just a list of compatible moves.

- Use Bulbapedia Pokémon learnset raw pages as the primary acquisition source when they expose version-aware columns or row gates.
- Cross-check with Serebii game-specific Pokémon learnset pages and PokemonDB when a row looks unusual or source terminology differs.
- Store TM/HM/TR catalogs in `reference.move_machines`; do not add full TM/HM/TR item encyclopedia rows only to support learnsets. Machine learnset rows reference `move_machine_id`.
- Scope DLC or optional tutor/acquisition paths to the optional child version group. The move can remain base-scope move availability if it is usable in the parent game after official updates.
- Preserve source-visible duplicate level-up rows when the same move appears at multiple valid levels.
- Treat prior-evolution, move-reminder, event, and transfer sections as separate acquisition concepts; do not mix them into direct level/TM/HM rows unless the schema and learn method are intentionally expanded.
- Store source names and source disagreement notes in seed comments/audit docs, not loaded table values.

### Red / Blue Learnset Source Resolution

The initial Red / Blue direct learnset seed is generated from Bulbapedia raw Generation I learnset pages and cross-checked against Serebii Gen I Pokedex pages and PokemonDB Generation 1 Red / Blue pages. TM/HM rows reference the Red / Blue `reference.move_machines` catalog derived from the same source pass. The generated rows match PokemonDB after normalizing move names and version gates.

### Gold / Silver Learnset Source Resolution

The Gold / Silver learnset seed is generated from Bulbapedia raw Generation II learnset pages for all 251 species. It preserves source-visible duplicate level-up rows when the same move appears at level 1 and again at its original learned level, because those are distinct source acquisition rows. TM/HM rows reference the Gold / Silver `reference.move_machines` catalog. Direct egg rows exclude Crystal-only markers and rows that the raw source lists with no legitimate father to pass the move down, because those are not legitimate Gold / Silver acquisition paths.

### Ruby / Sapphire Learnset Source Resolution

The Ruby / Sapphire learnset seed is generated from Bulbapedia raw Generation III learnset pages for all 386 species. It uses Ruby / Sapphire level rows, direct TM/HM compatibility rows linked to the Ruby / Sapphire `reference.move_machines` catalog, and direct egg move rows for hatchable species. The seed preserves source-visible duplicate level-up rows, excludes FireRed/LeafGreen-only, Emerald-only, tutor, event, transfer, and prior-evolution sections, treats evolved-page egg move rows as prior-evolution acquisition, and excludes Emerald-only Pichu Volt Tackle. Deoxys level-up rows use Normal Forme only because that is the Ruby / Sapphire source section; the shared TM/HM section remains seeded for default Deoxys. The offline audit pins the exact Ruby / Sapphire source fingerprint.

### FireRed / LeafGreen Learnset Source Resolution

The FireRed / LeafGreen learnset seed is generated from Bulbapedia raw Generation III learnset pages for all 386 species. It uses FireRed / LeafGreen level rows, direct TM/HM compatibility rows linked to the FireRed / LeafGreen `reference.move_machines` catalog, direct egg move rows for hatchable species, and FireRed / LeafGreen one-time Move Tutor rows. The seed preserves source-visible duplicate level-up rows, excludes Emerald-only Pichu Volt Tackle, excludes HM08 Dive compatibility rows because HM08 is not legitimately obtainable in FireRed / LeafGreen, excludes Emerald/XD-only tutors, and treats evolved-page egg move rows as prior-evolution acquisition. Deoxys uses Attack and Defense Forme learnset rows instead of default-form rows because those are the FireRed and LeafGreen source sections; game-specific form availability remains the responsibility of availability data and content-scope views. The offline audit pins the exact FireRed / LeafGreen source fingerprint.

### Emerald Learnset Source Resolution

The Emerald learnset seed is generated from Bulbapedia raw Generation III learnset pages for all 386 species. It uses Emerald level rows, direct TM/HM compatibility rows linked to the Emerald `reference.move_machines` catalog, direct egg move rows for hatchable species, and Emerald Move Tutor rows. Emerald uses the full Generation III 50 TM + 8 HM catalog, including HM08 Dive. Tutor rows use `learn_method_id = 6` with a concise condition summary because Emerald includes both one-time Hoenn tutors and Battle Frontier BP tutors. Pichu Volt Tackle is seeded as an Emerald-only Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. Deoxys uses Speed Forme learnset rows instead of default-form rows because that is the Emerald source section; game-specific form availability remains the responsibility of availability data and content-scope views. The offline audit pins the exact Emerald source fingerprint.

### Diamond / Pearl Learnset Source Resolution

The Diamond / Pearl learnset seed is generated from Bulbapedia raw Generation IV learnset pages for all 493 species. It uses Diamond / Pearl level rows, direct TM/HM compatibility rows linked to the Diamond / Pearl `reference.move_machines` catalog, direct egg move rows for hatchable species, and Diamond / Pearl tutor rows only. The seed preserves source-visible duplicate level-up rows, excludes Platinum/HGSS-only rows and non-Diamond/Pearl form sections, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. Deoxys and Wormadam shared TM/HM compatibility rows are duplicated onto their selectable form rows so planner/team surfaces can query those forms directly. The offline audit pins the exact Diamond / Pearl source fingerprint.

### Platinum Learnset Source Resolution

The Platinum learnset seed is generated from Bulbapedia raw Generation IV learnset pages for all 493 species. It uses Platinum level rows, direct TM/HM compatibility rows linked to the Platinum `reference.move_machines` catalog, direct egg move rows for hatchable species, and Platinum tutor rows only. The seed preserves source-visible duplicate level-up rows, excludes HGSS-only rows, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. Shared/default compatibility rows are duplicated onto current selectable Platinum forms where the game/source relationship supports direct form queries, including Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, and Deoxys forms. Wormadam cloak-specific sections are kept source-specific; the previous unsupported Sandy Cloak Rollout tutor row is removed because the source marks it outside Platinum. The offline audit pins the exact Platinum source fingerprint.

### HeartGold / SoulSilver Learnset Source Resolution

The HeartGold / SoulSilver learnset seed is generated from Bulbapedia raw Generation IV learnset pages for all 493 species. It uses HeartGold / SoulSilver level rows, direct TM/HM compatibility rows linked to the HeartGold / SoulSilver `reference.move_machines` catalog including HM05 Whirlpool, direct egg move rows for hatchable species, and HeartGold / SoulSilver tutor rows only. The seed preserves source-visible duplicate level-up rows, excludes DPPt-only rows, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. Shared/default rows are duplicated onto current selectable HeartGold / SoulSilver forms where the source/game relationship supports direct form queries, including Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, and Deoxys forms. Wormadam cloak-specific sections are kept source-specific; the unsupported Sandy Cloak Rollout tutor row is removed because the source marks it outside HeartGold / SoulSilver. The offline audit pins the exact HeartGold / SoulSilver source fingerprint.

### Black / White Learnset Source Resolution

The Black / White learnset seed is generated from Bulbapedia raw Generation V learnset pages for all 649 species. It uses Black / White level rows, direct TM/HM compatibility rows linked to the Black / White `reference.move_machines` catalog, direct egg move rows for hatchable/base species, and Black / White tutor rows only. The seed preserves source-visible duplicate level-up rows, excludes Black 2 / White 2-only rows from split `levelV` and `tutor5` source templates, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. TM95 Snarl remains a machine row with the product-facing Lock Capsule condition because the source exposes compatibility even though the item was not normally obtainable. Shared/default rows are duplicated onto current selectable Black / White forms where the source/game relationship supports direct form queries, including Deoxys forms, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, and Basculin Blue-Striped. Dream World, event, transfer, and Rotom form-change event rows are excluded. The previous Tympole Captivate egg row is removed because it is not present in the Black / White raw source. The offline audit pins the exact Black / White source fingerprint.

### Black 2 / White 2 Learnset Source Resolution

The Black 2 / White 2 learnset seed is generated from Bulbapedia raw Generation V learnset pages for all 649 species. It uses Black 2 / White 2 level rows from split `levelV` templates, direct TM/HM compatibility rows linked to the Black 2 / White 2 `reference.move_machines` catalog, direct egg move rows for hatchable/base species, and Black 2 / White 2 tutor rows only. The seed preserves source-visible duplicate level-up rows, excludes Black / White-only rows from split level and tutor templates, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. TM95 Snarl remains a normal machine row because it is available in Black 2 / White 2 without the Black / White Lock Capsule caveat. Shared/default rows are duplicated onto current selectable Black 2 / White 2 forms where the source/game relationship supports direct form queries, including Deoxys forms, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, Basculin Blue-Striped, Therian forms, and Kyurem White/Black forms. Dream World, event, transfer, and Rotom form-change event rows are excluded. The offline audit pins the exact Black 2 / White 2 source fingerprint.

### X / Y Learnset Source Resolution

The X / Y learnset seed is generated from Bulbapedia raw Generation VI learnset pages for all 721 species. It uses X / Y level rows, including the first column of split `levelVI` templates, direct TM/HM compatibility rows linked to the X / Y `reference.move_machines` catalog, direct egg move rows for hatchable/base species, and X / Y tutor rows only from the first `tutor6` yes/no flag. The seed preserves source-visible duplicate level-up rows, excludes Omega Ruby / Alpha Sapphire-only rows from split level, machine, egg, and tutor source rows, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. TM94 remains Rock Smash for X / Y; ORAS-only TM94 Secret Power and HM06 Rock Smash rows are excluded. Shared/default rows are duplicated onto current selectable X / Y forms only for shared source sections where the source/game relationship supports direct form queries; explicit form sections remain form-specific. Supported forms include Deoxys forms, Wormadam cloaks, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, Basculin Blue-Striped, Therian forms, Kyurem White/Black forms, Meowstic Female, and Pumpkaboo/Gourgeist size forms. Event, transfer, prior-evolution, Rotom form-change event rows, and the non-numeric Floette Light of Ruin row for out-of-scope Eternal Flower Floette are excluded. The offline audit pins the exact X / Y source fingerprint.

### Omega Ruby / Alpha Sapphire Learnset Source Resolution

The Omega Ruby / Alpha Sapphire learnset seed is generated from Bulbapedia raw Generation VI learnset pages for all 721 species. It uses Omega Ruby / Alpha Sapphire level rows, including the second column of split `levelVI` templates, direct TM/HM compatibility rows linked to the Omega Ruby / Alpha Sapphire `reference.move_machines` catalog, direct egg move rows for hatchable/base species, and Omega Ruby / Alpha Sapphire tutor rows only from the second `tutor6` yes/no flag. The seed preserves source-visible duplicate level-up rows, excludes X / Y-only rows from split level, machine, egg, and tutor source rows, treats evolved-page egg move rows as prior-evolution acquisition, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364` and a product-facing condition summary. TM94 is Secret Power in Omega Ruby / Alpha Sapphire, while Rock Smash is HM06 and Dive is HM07; X / Y-only TM94 Rock Smash rows are excluded. Shared/default rows are duplicated onto current selectable Omega Ruby / Alpha Sapphire forms only for shared source sections where the source/game relationship supports direct form queries; explicit form sections remain form-specific. Supported forms include Deoxys forms, Wormadam cloaks, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, Basculin Blue-Striped, Therian forms, Kyurem White/Black forms, Meowstic Female, Pumpkaboo/Gourgeist size forms, and Hoopa Unbound. Event, transfer, prior-evolution, Rotom form-change event rows, and the non-numeric Floette Light of Ruin row for out-of-scope Eternal Flower Floette are excluded. The offline audit pins the exact Omega Ruby / Alpha Sapphire source fingerprint.

### Sun / Moon Learnset Source Resolution

The Sun / Moon learnset seed is generated from Bulbapedia raw Generation VII learnset pages for all 802 species. It uses Sun / Moon level rows, including the first column of split `levelVII` templates, direct TM compatibility rows linked to the Sun / Moon `reference.move_machines` catalog, direct egg rows for hatchable/base and incense-family species/forms, Sun / Moon tutor rows only from the first `tutor7` yes/no flag, and evolution-learned rows from source `Evo.` entries. The seed preserves source-visible duplicate level-up rows, excludes Ultra Sun / Ultra Moon-only rows and forms from the Sun / Moon scope, treats evolved-page egg move rows as prior-evolution acquisition unless the species/form is hatchable in the current breeding model, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364`. Shared/default rows are duplicated onto current selectable Sun / Moon forms only for shared source sections where the source/game relationship supports direct form queries; explicit form sections remain form-specific. When multiple source sections map to one curated Voydex form, such as Mimikyu Disguised/Busted under the current no-battle-forms scope, duplicate natural-key rows are collapsed. Supported forms include Alolan forms, Deoxys forms, Wormadam cloaks, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, Basculin Blue-Striped, Therian forms, Kyurem White/Black forms, Meowstic Female, Pumpkaboo/Gourgeist size forms, Hoopa Unbound, Zygarde 10%, Oricorio styles, and Lycanroc Midnight. Lycanroc Dusk and Necrozma Dusk Mane/Dawn Wings are excluded because they are Ultra Sun / Ultra Moon-only forms. Event, transfer, prior-evolution, and Rotom form-change event rows are excluded. The offline audit pins the exact Sun / Moon source fingerprint.

### Ultra Sun / Ultra Moon Learnset Source Resolution

The Ultra Sun / Ultra Moon learnset seed is generated from Bulbapedia raw Generation VII learnset pages for all 807 species. It uses Ultra Sun / Ultra Moon level rows, including the second column of split `levelVII` templates, direct TM compatibility rows linked to the Ultra Sun / Ultra Moon `reference.move_machines` catalog, direct egg rows for hatchable/base and incense-family species/forms, Ultra Sun / Ultra Moon tutor rows only from the second `tutor7` yes/no flag, and evolution-learned rows from source `Evo.` entries. The seed preserves source-visible duplicate level-up rows, treats evolved-page egg move rows as prior-evolution acquisition unless the species/form is hatchable in the current breeding model, and seeds Pichu Volt Tackle as a Light Ball breeding row with `source_item_id = 364`. Shared/default rows are duplicated onto current selectable Ultra Sun / Ultra Moon forms only for shared source sections where the source/game relationship supports direct form queries; explicit form sections remain form-specific. When multiple source sections map to one curated Voydex form, such as Mimikyu Disguised/Busted under the current no-battle-forms scope, duplicate natural-key rows are collapsed. Supported forms include Alolan forms, Deoxys forms, Wormadam cloaks, Rotom appliance forms, Giratina Origin Forme, Shaymin Sky Forme, Basculin Blue-Striped, Therian forms, Kyurem White/Black forms, Meowstic Female, Pumpkaboo/Gourgeist size forms, Hoopa Unbound, Zygarde 10%, Oricorio styles, Lycanroc Midnight and Dusk, Necrozma Dusk Mane, and Necrozma Dawn Wings. Battle-only Ultra Necrozma rows are excluded under the current form scope. Event, transfer, prior-evolution, and Rotom form-change event rows are excluded. The previous unsupported Silvally Water Pledge and Fire Pledge tutor rows are removed because they are not present in the Ultra Sun / Ultra Moon source rows. The offline audit pins the exact Ultra Sun / Ultra Moon source fingerprint.

### Sword / Shield Learnset Source Resolution

The Sword / Shield learnset seed is being source-audited against Bulbapedia Generation VIII learnset and Move Tutor pages, with Serebii and PokemonDB reserved for row-level cross-checks. Base Sword / Shield keeps base-game acquisition paths, including TMs, TRs, egg moves, level-up moves, and base free tutors such as Pledge, ultimate starter moves, Draco Meteor, and Steel Beam. The Isle of Armor tutor moves are scoped to optional DLC learnset rows because Bulbapedia identifies them as Expansion Pass moves taught at the Master Dojo for Armorite Ore. Rows for Pokémon first available through The Crown Tundra still live in the Isle of Armor learnset scope when the acquisition method is the Isle Move Tutor. The Crown Tundra content scope depends on The Isle of Armor for cumulative learnset resolution because the Sword / Shield Expansion Pass package contains both parts.

A targeted Sw/Sh raw-template pass resolved the current concrete source mismatches: Pichu Volt Tackle is seeded as a Light Ball egg row, Galarian Mr. Mime Hypnosis, Snorlax Belch, and Roselia Synthesis are preserved as direct egg rows, Spritzee level-up rows use Disarming Voice at level 9 and Draining Kiss at level 15, and Pumpkaboo/Gourgeist size forms preserve repeated Trick-or-Treat level rows. Unsupported Silvally Water Pledge and Fire Pledge tutor rows are removed; Grass Pledge, Draco Meteor, and Steel Beam remain. Dragonite Outrage level 41 and Igglybuff Covet remain accepted source-visible game-data quirks. BDSP-only rows visible in shared Generation VIII raw pages are excluded from Sw/Sh. DLC tutor rows are scoped by acquisition method, not Pokémon content ownership: Isle Move Tutor rows live in The Isle of Armor files, including rows for Pokémon first obtainable through The Crown Tundra; Crown inherits them through the content-scope dependency. A follow-up targeted form pass verified Kyurem, Meowstic, Lycanroc, Toxtricity, Indeedee, Urshifu, and Calyrex against the local Sw/Sh rows; the definite bugs were missing direct egg rows for Meowstic Male/Female, Lycanroc Midday/Midnight/Dusk, and Toxtricity Amped/Low Key, now seeded in base Sw/Sh scope.

### Scarlet / Violet Learnset Source Resolution

The Scarlet / Violet learnset seed is generated from Bulbapedia Generation IX raw learnset pages and split by content scope. Base Scarlet / Violet keeps base-game direct acquisition rows: level-up, TM001-TM171, egg, evolution-learned rows, and supported game/form sections. The Teal Mask and The Indigo Disk use cumulative DLC machine-delta seeds instead of repeated full snapshots. Teal Mask rows cover TM172-TM201 for Pokémon/forms compatible with the S/V + Teal effective scope. Indigo Disk rows cover TM202-TM229 for Pokémon/forms compatible with the S/V + Teal + Indigo effective scope, plus TM172-TM201 for forms first available in Indigo Disk. Indigo rows may reference Teal move-machine IDs through content-scope dependency closure. The offline audit pins exact fingerprints for all three scopes.

### Pokémon Legends: Z-A Learnset Source Resolution

The Pokémon Legends: Z-A learnset seed is generated from Bulbapedia Generation IX raw learnset pages and the source-verified ZA/Mega Dimension Pokémon availability scope. Base ZA rows include numeric ZA level-up rows, source `Evo.` rows, and TM001-TM160 compatibility rows for Pokémon/forms available in the base ZA scope. Mega Dimension rows are additive deltas for Pokémon/forms first available in the optional Mega Dimension scope, and may reference base ZA machine IDs through the parent content-scope closure. Lumiose/Hyperspace Pokedex membership remains a coverage cross-check, not proof of availability. Source Move Reminder rows are intentionally excluded until reminder/relearn behavior is explicitly modeled for ZA. The offline audit pins exact fingerprints for both scopes.

### Let's Go Pikachu / Let's Go Eevee Learnset Source Resolution

The Let's Go Pikachu / Let's Go Eevee learnset seed is generated from Bulbapedia raw Generation VII learnset pages. It uses the dedicated LGPE sections for Kanto species and the PE-only pages for Meltan and Melmetal, direct TM compatibility rows linked to the 60-row LGPE `reference.move_machines` catalog, and evolution-learned rows from source `Evo.` entries. The seed preserves source-visible duplicate level-up rows for evolved Pokémon instead of collapsing earlier source levels into level 1 only. Explicit Alolan sections remain form-specific. Partner Pikachu and Partner Eevee duplicate their default-form level/TM rows so form-specific planner/team queries do not need implicit inheritance, then add partner-exclusive tutor rows and Partner Power rows. Partner Power rows use `learn_method_id = 12` (`special`) because they are game-specific special moves, not official event distributions, transfer rows, or standard tutor rows. Egg, event, transfer, prior-evolution, and non-LGPE source sections are excluded. The offline audit pins the exact LGPE source fingerprint.

### Crystal Learnset Source Resolution

The Crystal learnset seed is generated from Bulbapedia raw Generation II learnset pages for all 251 species. It follows the Gold / Silver structure but uses the Crystal level column where the raw source splits levels, includes Crystal-only egg moves, excludes Gold/Silver-only egg moves, and excludes raw egg rows that list no legitimate father to pass down the move. Crystal Move Tutor rows for Flamethrower, Ice Beam, and Thunderbolt use `learn_method_id = 6` with a concise `condition_summary` because the acquisition path has product-facing constraints: Goldenrod Game Corner, after entering the Hall of Fame, Wednesday/Saturday, 4000 coins. Crystal TM/HM rows reference the `reference.move_machines` catalog for the 50 TM + 7 HM Generation II mapping.

### Yellow Learnset Source Resolution

The Yellow learnset seed is generated from Bulbapedia raw Generation I learnset pages, using the Yellow level column and Yellow-specific TM/HM gates. Yellow TM/HM rows reference the Yellow `reference.move_machines` catalog, which uses the same Generation I 50 TM + 5 HM mapping as Red / Blue. The source audit excludes Red / Blue-only rows, Move Reminder, prior-evolution, event, and transfer sections, and pins the exact Yellow source fingerprint in the offline audit.

Known Serebii differences resolved in favor of Bulbapedia/PokemonDB for Red / Blue:

- Missing on Serebii: Nidorina Scratch level 1; Nidoran M and Omastar Horn Drill TM07; Abra, Kadabra, and Alakazam Mega Kick TM05; Onix and Electrode Skull Bash TM40; Voltorb and Electrode Rage TM20; Rhydon Stomp, Tail Whip, and Fury Attack level 1; Mewtwo Pay Day TM16.
- Extra on Serebii: Krabby and Kingler Skull Bash TM40; Kabutops Cut HM01. Bulbapedia marks Kabutops Cut as Yellow-only.
- Different on Serebii: Vaporeon Tail Whip level 31 versus Bulbapedia/PokemonDB Red / Blue level 37.

## Scope Rules

- No leaked or rumored data.
- Official released or announced data only.
- Mainline adventure/playthrough games are the default product scope.
- DLC is optional completion content.
- Pokedex completion is species-level.
- Battle-only forms are not team-builder forms unless the product later expands that scope.

## Cumulative Content Scope Rules

Optional content seeds are cumulative delta rows, not repeated full snapshots.

- Base game scopes seed the audited base/reference compatibility surface for that version group.
- Optional child scopes such as DLC seed only rows introduced, changed, or removed by that content scope.
- `reference.content_scope_dependencies` records canonical ordered dependencies, such as The Indigo Disk requiring The Teal Mask.
- Scoped fact tables use `scope_operation`; normal rows use `add`, while `override` and `remove` are reserved for future source-backed changes.
- App queries should use resolved reference views when they need the effective data for a target content scope.
- Machine learnset rows may reference a machine from the parent/dependency closure where that machine label was introduced. Do not duplicate parent machines in child files only to satisfy child learnsets.
- Pokémon/item availability remains the obtainability source. Learnsets may exist for compatible Pokémon that are not natively obtainable in the same base scope; availability rows decide planning warnings and native/source behavior.

Current file-level closure as of 2026-06-15: the offline audit pins 23 move machine catalog scopes covering 2,060 rows and 26 Pokémon learnset scopes covering 583,348 rows. The audit rejects unexpected unpinned machine or learnset scopes, validates machine labels/methods/ids, verifies machine move availability, enforces machine references from learnsets, validates species/form/move/method/game/content-scope references, and prevents child DLC/content scopes from duplicating parent/dependency rows unless an explicit override/remove scope operation is introduced.

## Audit Requirements

Every reference seed row should eventually be one of:

- Verified against the source hierarchy.
- Fixed.
- Documented as an accepted product decision.
- Documented as a source disagreement.
- Deferred because source data is not stable or available.

Automated checks should verify structural integrity and machine-readable sanity where possible.

Manual/source-comparison checks are still required for curated historic data, especially:

- Game-specific Pokémon availability.
- Learnsets.
- Evolution rules.
- Form rules.
- Pokedex membership.
- Item availability.
- DLC behavior.

## Machine-Readable Checks

PokeAPI and other machine-readable sources can help detect:

- Missing IDs.
- Unexpected IDs.
- Basic name/slug mismatches.
- Learnset row shape differences.
- Version group coverage.

These checks should produce sanity reports, not blindly rewrite curated data.

## Future Location/Encounter Data

Progression-aware planning is in backlog.

The reference design should leave room for future tables such as:

- Locations.
- Sub-locations.
- Encounter methods.
- Encounter slots/rates.
- Story gates.
- Progression windows.

Initial clean schema does not need full encounter/location seed coverage unless the product scope changes.

## Future Platform-Specific Rerelease Data

Platform-specific rerelease differences are in backlog.

Current game availability seeds model original historical game behavior for each game/version group. If an official rerelease, enhanced platform edition, or service release changes availability behavior, that difference should be modeled through explicit platform/content-scope data instead of being mixed into the original historical availability rows.

This is especially relevant for future Switch-era or 2026+ platform behavior where the same named game may have different platform services, connectivity, transfer paths, or release-specific constraints.

A cross-version form-availability consistency pass was run after initial Pokémon availability coverage. Repeat this pass whenever new games, DLC scopes, or item/form systems are added so Arceus Plates, Drives, Memories, masks, fusion items, and similar forms stay modeled consistently across every eligible scope.

## Availability Method Curation

Availability methods are curated reference lookup rows, not loose labels.

Initial method set:

- `native_encounter`
- `static_encounter`
- `starter`
- `gift`
- `in_game_trade`
- `fossil_restoration`
- `evolution`
- `breeding`
- `roaming_encounter`
- `raid_or_special`
- `event`
- `external_trade`
- `transfer_only`

Rules:

- Prefer specific method rows over broad catch-all labels.
- Do not add generic fallback rows unless a real audited source case requires one and is documented.
- Keep method definitions stable because they power Pokedex filters, planning, and availability warnings.
- Store stable lookup `description` text for product-facing method explanations; store row-specific product caveats in fact-table `notes`. Keep source provenance in SQL comments and audit docs, not loaded table columns.
- Record source disagreement or uncertain availability cases in audit documentation instead of hiding them in generic methods.

## Mainline Mechanics Rowset Closure

Mainline mechanics tables are split between stable lookups, identity rows, and generation/version-aware attribute rows.

Rules:

- Product-facing lookup descriptions for item categories, move kinds, evolution methods, availability methods, and learn methods are part of the curated data contract and should not drift without an explicit product decision.
- Type, nature, egg group, ability, and move identities should remain stable ids aligned to source ordering where the seed strategy already requires it.
- Type matchups, ability attributes, and move attributes are mechanics change-point rows. Keep source-specific behavior in these rows and source provenance in comments/docs, not loaded data columns.
- The offline audit pins complete rowsets for mainline mechanics so text, ids, generation boundaries, sort order, and attribute values cannot change silently.

Current file-level closure as of 2026-06-15: the offline audit pins rowset fingerprints for 18 types, 129 type matchup rows, 25 natures, 15 egg groups, 18 item categories, 4 move kinds, 9 evolution methods, 13 availability methods, 12 learn methods, 310 abilities, 382 ability attribute rows, 935 moves, and 1161 move attribute rows. Existing semantic checks continue to verify nature stat pairs, ability generation ranges, ability change-point coverage, move generation/kind counts, Z/Max/G-Max move handling, move attribute ranges, key historic move changes, and type matchup resolution.

## Pokémon Identity, Forms, and Attributes

Pokémon identity rows are curated source data, not generated placeholders.

Rules:

- `reference.pokemon_species` stores National Pokedex species identities. Current seeded scope is the complete Generation I-IX species set through 1025 species; any later officially announced species must be added through an explicit scope-expansion batch.
- `reference.evolution_families` uses the first National Dex member as the family anchor and supports species/form/evolution-family reuse rules in planning and team management.
- `reference.pokemon_forms` stores default forms plus curated non-default forms that matter for out-of-battle team planning, biography, availability, or item-driven identity. Battle-only and cosmetic-only variants remain excluded from the team-selectable scope.
- `reference.pokemon_form_rules` explains form behavior for UI/planning. Default forms use implicit behavior and do not need rule rows.
- `reference.pokemon_form_item_requirements` stores item relationships for held-item, alternative held-item, and form-change-item behavior. These rows describe product mechanics only; source provenance belongs in SQL comments and docs.
- `reference.pokemon_attributes` stores generation change-point mechanics for each supported form: typing, abilities, egg groups, and base stats.
- Primary source review uses Bulbapedia National Pokedex, form-difference, and base-stat pages, with Serebii and PokemonDB as cross-checks. PokeAPI remains a sanity source only.

Current file-level closure as of 2026-06-15: the offline audit pins rowset fingerprints for 541 evolution families, 1025 species, 1185 forms, 160 form rules, 62 form item requirement rows, and 2243 Pokémon attribute rows. Existing semantic checks also verify National Dex id continuity, generation ranges, family anchors, default-form invariants, curated non-default form allowlists/exclusions, item-driven form requirements, and high-risk type/stat/ability change points.

## Pokémon Availability Curation

Pokémon availability is a source-audited obtainability model, not a Pokedex membership model.

Rules:

- `reference.pokedex_entries` answers whether a species belongs to a Pokedex scope and whether it counts by default for completion.
- `reference.pokemon_availability` answers whether a Pokémon form can be obtained or reasonably used from a game/content scope, and by which acquisition method.
- Do not create availability rows only because a species appears in a regional, local, DLC, or National Pokedex.
- Use Pokedex rows as coverage hints and source cross-checks only.
- Final curated availability should seed one row per meaningfully distinct acquisition path: native encounter, static encounter, starter, gift, in-game trade, fossil restoration, evolution, breeding, raid/special encounter, event, external trade, or transfer-only. Initial migration batches may seed one primary method per obtainable form, then add secondary path-detail rows after dedicated source review.
- Use `game_id = NULL` only when the availability applies to every game mapped to the content scope.
- Use `game_id` for version exclusives and game-specific acquisition differences. The row must match `reference.game_content_scopes(game_id, version_group_id)`.
- DLC availability uses the DLC content scope version group, not the base version group.
- Version-exclusive Pokémon from the opposite paired game should use `external_trade`, not native methods, so planning can warn clearly without losing legitimate same-era trade usability.
- `evolution` availability means the target form is obtainable by evolving an available source Pokémon under the audited game/content rules.
- `external_trade` means the Pokémon can enter the game by trading from a compatible same-era game and should trigger a planning warning.
- `transfer_only` means the Pokémon can only enter the game from a different generation, service, or import pipeline and should not be treated as native team-planner availability unless the user enables that kind of planning.
- Optional/National Pokedex scopes can be tracked separately from availability; they do not change whether a Pokémon is native, gift, event, transfer-only, or otherwise obtainable.
- Pokémon Legends: Z-A and Mega Dimension availability must be seeded from method-level obtainability sources. Lumiose and Hyperspace Pokedex rows are coverage inputs and cross-checks, not proof of native availability.
- Model historical game availability first. Platform-specific rerelease behavior, such as later subscription-service or console behavior, should use explicit platform/content-scope modeling instead of changing historical rows.
- Re-run a dedicated cross-version form-availability consistency pass whenever availability rows are added for form families whose source treatment varies by game or DLC scope.

Current file-level closure as of 2026-06-15: the offline audit pins Pokémon availability rows per version group/content scope for all 27 seeded scopes, covering 12,653 source-audited rows. Existing checks also enforce species/form validity, availability method validity, game/content-scope consistency, natural uniqueness for version-group-wide and game-specific rows, evolution-based availability item dependencies, and item-driven form availability item dependencies.

### Pokémon Legends: Z-A Availability Source Resolution

The Pokémon Legends: Z-A and Mega Dimension availability seeds are generated from Bulbapedia individual Pokémon game-location rows, using Lumiose and Hyperspace Pokedex seeds only as coverage checklists. Supported Voydex forms are expanded when the source exposes regional, item-driven, evolution-relevant, or planning-relevant form availability. Cosmetic-only variants remain collapsed to the supported form row.

Method rules for this pass:

- Source rows with both first partner/gift access and later wild access get separate method rows.
- NPC trades use `in_game_trade`; source rows that only say trade for a non-native regional form use `external_trade`.
- Mystery Gift-gated entries use `event`.
- Special Scan-gated Hyperspace rows use `raid_or_special`.
- One-time mission, Mythical, Legendary, and fixed encounters use `static_encounter` unless the source explicitly gates them through Mystery Gift.
- Evolved Pokémon generally use `evolution` when an in-game evolution path exists, even if the source also lists direct encounter access.

The current pass is primary-source generated and offline-audited. Serebii/PokemonDB comparison remains useful during the full row-level audit, especially for one-time mission names, form rows, Special Scan gates, and event-unlock wording.

First seeding pass should migrate legacy rows only after remapping broad legacy `native` context into specific modern methods and source-checking version exclusives.

## Availability Comment and Exception Conventions

Availability row helper comments should describe the row, not repeat the file scope:

- Version-group-wide row: `#0001 Bulbasaur - Starter`.
- Game-specific row: `#0023 Ekans - Red - Native Encounter`.

Accepted availability modeling exceptions:

- Paired-version event/distribution or version-source rows should use `external_trade` for the paired game when the Pokémon can reasonably enter through same-era trading. Do not use game-specific `transfer_only` for these paired-version cases.
- Item-driven forms should keep the acquisition method tied to the actual Pokémon source. The form item/device requirement belongs in `reference.pokemon_form_item_requirements`; source provenance belongs in SQL comments/audit docs. It should not turn a transfer-only Pokémon into an event row only because the form item is available in-game.
- Deoxys FireRed, LeafGreen, and Emerald rows can omit a default-form row when the historical game-specific Deoxys form is the actual event encounter form for that game.
- Genesect Drive forms in Black/White and Black 2/White 2 can be game-specific because Drive access differs by paired version: Burn/Shock in Black-family games and Douse/Chill in White-family games. Paired-version access uses `external_trade` for the Drive item path.
- Ultra Sun/Ultra Moon Genesect Drive forms are `transfer_only`: Drives are available from Colress after becoming Champion, but Genesect itself is not normally obtainable inside USUM.
- Giratina Origin uses `griseous-orb` through older held-item games and `griseous-core` for Legends: Arceus / Scarlet/Violet behavior. Keep both items in form-item requirements and use version-group bounds when a generation boundary is not precise enough.
- Silvally Memory forms can use `evolution` availability with product notes when needed because they require evolving Type: Null and then applying the relevant Memory item. The form-item dependency is represented in `reference.pokemon_form_item_requirements`, not as separate evolution edges for each Memory form.
- Hydrapple is an Indigo Disk Pokedex entry whose evolution path depends on Dipplin from The Teal Mask or a compatible trade/transfer source, plus Dragon Cheer from The Indigo Disk. Keep the cross-DLC dependency explicit in row `notes` if it is useful in product UI; keep source provenance in comments/docs.

## Evolution Edge Curation

Evolution edges are curated source rows, not raw PokeAPI imports.

Rules:

- Use Bulbapedia, Serebii, and PokemonDB to confirm source behavior and naming.
- Use PokeAPI evolution chains only as machine-readable candidate coverage and field-shape sanity checks.
- Store concrete source and target forms for form-sensitive evolutions.
- Use version-group-specific rows for historic behavior differences, such as Pokémon Legends: Arceus item alternatives.
- Keep `evolution_methods` stable and broad. Store combined or rare conditions in dedicated columns and `condition_data` instead of creating one-off method labels.
- Audit high-risk rows explicitly: regional evolutions, item/trade alternatives, gender outcomes, rare form outcomes, known-move/type conditions, and special counters.
- `condition_data` stores product mechanics only. Do not store source/provenance flags such as `source` or `manual-curated` in loaded row values; keep that context in SQL comments and audit docs.
- Alternate form outcomes must carry the same required level as the base outcome when the source evolution is level-gated, so team evolution actions can show the correct level for every selectable target form.

Current high-risk pass as of 2026-06-15: alternate-form evolution outcomes for Burmy/Wormadam, Espurr/Meowstic, Toxel/Toxtricity, Lechonk/Oinkologne, and Tandemaus/Maushold were source-checked and pinned with explicit level requirements. Basculegion female, Sinistea Antique, Dunsparce Three-Segment, Pokémon Legends: Arceus trade-item alternatives, and related rare/form-specific edges were cleaned so `condition_data` contains mechanics instead of provenance markers. Generation I-IX evolution edges are source-verified and pinned in the offline audit for form pair, method, level, item/held item, known move/type, time gate, location, condition data, and scope. Wurmple branching now stores the personality/encryption rule in mechanics-only `condition_data`; Shedinja stores a Generation III row without the Poke Ball requirement and a Generation IV+ row with the regular Poke Ball requirement. Generation IV location-based evolutions now keep only true Gen IV locations in the Gen IV row set; later magnetic/Moss/Ice location variants are stored in their actual introduced generations, with missing ORAS, Alola, and Hisui location variants added. Magnezone, Nosepass, Leafeon, and Glaceon stone alternatives are modeled as Generation VIII condition variants, not Gen IV/Gen VII rows. Generation V adds pinned Chargestone Cave, Pinwheel Forest, and Twist Mountain location evolutions, Feebas Prism Scale trade evolution, Karrablast/Shelmet trade-pair evolution conditions, and 220 friendship thresholds for pre-Generation VIII friendship evolutions. Generation VI pins Kalos starter/standard evolutions, Pancham party-type, Espurr gender outcomes, Spritzee/Swirlix trade-held items, Inkay upside-down evolution, Tyrunt/Amaura time gates, Sliggoo overworld rain, Pumpkaboo size preservation, and Sylveon as affection plus Fairy-type move; the later Sylveon friendship path is modeled as a Generation VIII condition variant. Generation VII pins Alolan regional evolutions, Alola magnetic/Moss/Ice location evolutions, Rockruff form/time/version-family outcomes, Salandit female-only evolution, Tsareena and Poipole known-move evolutions, Type: Null friendship, Cosmoem Sun/Moon-family outcomes, and starter/standard Alola level gates. Generation VIII pins Galar standard/regional evolutions, PLA Linking Cord/direct-item trade alternatives, Hisui-only form outcomes, PLA style/counter evolutions, Basculegion gender outcomes, Sinistea form-specific pots, Kubfu Sw/Sh tower-object outcomes and Scarlet/Violet scroll-item outcomes, and Gen VIII stone alternatives. PLA-only locations and style/item methods are scoped to Pokémon Legends: Arceus; the Scarlet/Violet Hisuian Qwilfish known-move path is modeled as Generation IX. Generation IX pins Paldea standard lines, gender/form outcomes, Dudunsparce and Maushold rare outcomes, Let's Go step evolutions, Union Circle evolution, Gimmighoul Coins, DLC item evolutions, Hydrapple's Dragon Cheer path, and Poltchageist/Sinistcha form-specific teacups. Charjabug's Thunder Stone alternative is Generation VIII onward, while Crabrawler's Ice Stone alternative is Generation IX onward. Batch 7 closure adds `pokemon_evolution_edges_natural_unique`, mirrored by the offline audit. The natural key includes the form pair, nullable version-group scope, introduced generation, method, concrete level/item/held-item/move/type/gender/time/location requirements, and structured `condition_data`; display-only `condition_summary` is intentionally excluded. Deerling/Sawsbuck seasonal source forms remain collapsed to the supported default-form row as an accepted product decision: they are cosmetic/location-season variants and not distinct team-planning choices in the current companion scope. Gimmighoul Roaming Form is also excluded from current team-selectable form scope because it is not natively catchable in core-series play; the default Gimmighoul row represents Chest Form for playthrough tracking. A future HOME/living-dex feature can add these as non-team-selectable or collection-specific forms without changing evolution edge semantics.

## Move Availability Curation

Move availability is a positive usability model for a selected version group or content scope, not a move acquisition model.

Rules:

- Row existence means the move is available/usable in that version group after the selected source audit.
- Learn/acquisition paths belong in `reference.pokemon_learnsets` and `reference.move_machines`; do not add acquisition-method columns to `reference.move_availability` unless the product need changes.
- Current seeded move availability is version-group-wide only. Game-specific rows, remove rows, and override rows require an explicit source-backed decision before seeding.
- DLC/update acquisition can be represented in learnsets, machines, item availability, Pokémon availability, or content-scope views while the move itself remains base-scope available when the patched game engine can use it.

Current file-level closure as of 2026-06-15: the offline audit pins 9,713 move availability rows across 22 version-group/content scopes by exact source-verified move ID sets. It rejects duplicate natural rows, unexpected scopes, game-specific rows, non-add operations, rows before move introduction, and move-kind leakage outside the expected Z-Move, Max Move, and G-Max Move scopes.

## Move Attribute Curation

Move attributes are generation change-point rows for type, power, accuracy, PP, priority, and damage class.

Rules:

- Use Bulbapedia move pages and change notes as the primary source for historical move mechanics.
- Use the Bulbapedia move list, PokemonDB move pages, and PokeAPI snapshots only as cross-checks for row coverage and obvious field mismatches.
- Do not store placeholder power or PP values for Max or G-Max moves. Use null fixed values and `damage_class = variable` when the source derives mechanics from a compatible base move.
- Generic Z-Moves are stored once in `reference.moves`; use `damage_class = variable` instead of duplicating physical and special rows.
- Signature Z-Moves with fixed source values can keep fixed power and physical/special/status class.

## Ability Attribute Curation

Ability attributes are version-group change-point rows for ability mechanics and product-facing effect text.

Rules:

- Do not seed current-only ability descriptions at the ability's introduction version group.
- Seed one row only when the historical version-group or generation-start behavior has been source-verified.
- Use Bulbapedia ability pages and change notes as the primary historical source, with Serebii and PokemonDB as cross-checks.
- Use PokeAPI ability descriptions only for machine-readable sanity checks, not as curated historical authority.
- Keep row text product-facing and concise. The table is for Pokedex/planner/team-detail summaries, not a full competitive simulator rules log.
- If deeper historic mechanics are unavailable or out of product scope, document that source limit instead of inventing unsupported detail.

## Pokedex Curation

Pokedex data is split into stable Pokedex definitions and row-level species membership.

Rules:

- Seed Pokedex definition scopes before entry membership.
- Pokedex completion remains species-level.
- `reference.pokedex_entries.is_source_required_for_completion` stores the source default: source-visible optional entries are not required by default, but a play can opt into counting them with `include_optional_pokedex_entries_in_completion`.
- DLC Pokedexes are separate optional completion scopes.
- National and special post-game Pokedexes are supported optional completion scopes. Seed them with `is_completion_relevant = true` when they are meaningful in-game/post-game systems; completion includes them only when `include_optional_pokedexes_in_completion` is enabled for the play.
- Local subset Pokedexes that duplicate an overall regional Pokedex can be stored for browsing with `is_completion_relevant = false`.
- Alola keeps the overall Alola Pokedex as the completion scope. Island Pokedexes are browse/filter sections because island membership overlaps and aggregate Alola numbering remains available from the regional Pokedex rows.
- Do not store form-only Pokedexes, such as a Mega Evolution Pokedex, in `reference.pokedex_entries` unless the schema is expanded beyond species-level membership.
- Verify Pokedex entries row by row against Bulbapedia regional Pokedex pages, with Serebii and PokemonDB as cross-checks.
- The offline audit pins exact Pokedex definition metadata and per-Pokedex entry row-count/SHA-256 fingerprints, in addition to row-by-row species/order/completion checks.

## Item Catalog Curation

Voydex does not maintain a full item encyclopedia.

Initial item category seeds:

- `poke_ball`
- `held_item`
- `evolution_item`
- `fossil`
- `form_change_item`
- `berry`
- `mega_stone`
- `z_crystal`
- `type_enhancing_item`
- `battle_effect_item`
- `training_item`
- `experience_item`
- `breeding_item`
- `contest_item`
- `species_specific_item`
- `gem`
- `incense`
- `utility_held_item`

Rules:

- Include items held by Pokémon.
- Include Poke Balls for caught-ball biography.
- Include evolution and fossil items where they explain Pokémon origin/evolution history or availability.
- Include form-change items where they affect selectable/displayed forms.
- Exclude medicine, treasures, ingredients, decorations, clothing, mail, generic key items, TMs/HMs/TRs, ability modifiers, nature mints, and unrelated bag items until a product feature needs them.
- Use many-to-many category membership because item categories are usage-based and can overlap.
- Track source comments/audit entries for included items; do not hide uncertain cases in generic categories.

Held item catalog decisions:

- The Serebii held-item index is the coverage baseline for the general held-item pass, cross-checked with Bulbapedia mechanics pages and PokeAPI IDs where available.
- General held items are split into narrower usage categories so future UI filters can distinguish type enhancers, battle effects, training, experience, breeding, contest, species-specific items, gems, incenses, and utility held items.
- Mail remains excluded because the source separates it from held-effect items and it is not meaningful for team planning, Pokémon biography, completion, forms, or battle/training context.
- Exp. Share is cataloged because it was historically a held experience item, but item availability is restricted to Gold/Silver through Black 2/White 2 where it functions as a held item. Later key-item availability is intentionally excluded from held-item availability rows.
- Red Orb and Blue Orb are cataloged as species-specific held items, but key-item-only historical rows are excluded. Availability is restricted to held-item/battle-form era rows.
- Polkadot Bow is cataloged as an official Generation II held item and modeled with `transfer_only` availability in Gold/Silver and Crystal because the source acquisition path is a Pokémon traded from Generation I while holding it.
- Fairy Gem is cataloged as an official held item but has no normal availability rows because source acquisition data does not list normal obtainability.
- Leek uses the current item name for product-facing display. Its machine-readable sanity ID maps to the historical PokeAPI `stick` item ID because the item was renamed.
- Pink Bow, Polkadot Bow, and Berserk Gene have `external_id = NULL` because the machine-readable sanity source does not expose stable matching item IDs.
- Battle-only form-enabling held items such as Mega Stones, Red/Blue Orbs, Rusted Sword, and Rusted Shield are included for item/team biography and future battle-form scope. This does not change the current product rule that battle-only forms are not selectable team-builder forms.

Poke Ball catalog decisions:

- Modern Poke Balls and Legends: Arceus Hisuian ball variants are distinct catalog rows because caught-ball biography needs the visual/history distinction.
- Cherish Ball is included as a caught-ball biography item, but it has no `reference.item_availability` rows because it cannot be obtained as an item in any core-series game.
- Park Ball and Strange Ball are excluded from the current caught-ball catalog because source pages state they cannot be a Pokémon's own registered Poke Ball.
- Legends: Z-A and Mega Dimension item availability belongs in dedicated ZA and Mega Dimension content-scope files instead of being mixed into earlier availability files. Mega Dimension item rows are additive deltas over the base ZA scope.
- Current Poke Ball availability source pass checked 448 rows across 35 source pages with no missing version-group scope tokens, including Pokémon Legends: Z-A and Mega Dimension availability rows. The offline audit now enforces the exact 36-row supported Poke Ball catalog, excludes Park Ball and Strange Ball, keeps Cherish Ball catalog-only, and pins the exact per-version-group Poke Ball availability matrix.
- Pokémon Legends: Z-A evolution/form item availability is modeled from item-level obtainability, not only from Pokémon/form availability. Base ZA includes source-listed stones, trade/evolution items, and Galarica items; Mega Dimension adds its own additive Porygon, Milotic, Charcadet, Galarica, Black Augurite, and Genesect Drive item rows where the optional content introduces or repeats access.

Fossil catalog decisions:

- Fossils are included because they explain Pokémon origin/restoration history and directly support team planning availability.
- Classic fossils, Hoenn fossils, Sinnoh fossils, Unova fossils, Kalos fossils, and Galar fossilized parts are distinct item rows.
- Old Amber is treated as a fossil item for Voydex because it functions as the Aerodactyl restoration source even when source terminology separates it from paired fossils.
- Version-exclusive fossil availability uses `game_id`; shared, choice-based, trainer-ID-dependent, rarity-dependent, or cross-version obtainable fossil sources use the version-group scope with explanatory product notes where useful and source comments/audit entries.
- Current fossil availability source pass added 105 rows across 19 version-group files. Pokémon Legends: Z-A includes Old Amber, Jaw Fossil, and Sail Fossil in the dedicated ZA content-scope file; Mega Dimension inherits base ZA fossil rows unless a later source pass finds additive Mega Dimension fossil access.

Berry catalog decisions:

- Berries are included because they are held items and support Pokémon/team biography, battle-preparation context, and future planning filters.
- Historical Generation II berry items are separate rows from modern Generation III+ berries because they have different names, item identity, and source history.
- The Generation II item named `Berry` is stored as slug `gen2-berry` to avoid colliding with the generic berry category concept and modern berry family naming.
- All seeded berries belong to both `held_item` and `berry` categories.
- Historical Generation II berry availability is seeded for Gold/Silver and Crystal.
- Modern berry availability is seeded from documented location, shopping, Pickup, raid, crafting, wild-held, or game-specific berry-source sections. Description-only and event-distribution-only sections are not treated as normal availability.
- Modern berry availability is split into DLC content scopes where the source row clearly points to DLC-specific locations such as Isle of Armor, Crown Tundra, Kitakami, or Terarium.
- Rare/event-only or externally dependent cases remain excluded until a dedicated event/external-source policy is designed.

Z-Crystal catalog decisions:

- Type Z-Crystals and species-specific Z-Crystals are included because they are held items that affect Pokémon battle biography and future battle-context views.
- Z-Crystal availability is source-seeded for Sun/Moon and Ultra Sun/Ultra Moon where the item exists in the mainline playthrough scope. The offline audit pins the exact 35-item Z-Crystal catalog and the exact 60-row availability matrix: 25 rows for Sun/Moon and 35 rows for Ultra Sun/Ultra Moon.
- Species-specific Z-Crystals are not treated as selectable team-builder forms. They remain held items unless a later battle-history feature needs Z-Move-specific modeling.
- Z-Crystal `external_id` values remain `NULL` where the machine-readable sanity source has no stable item rows.

Mega Stone catalog decisions:

- Mega Stones are included because they are held items with strong Pokémon/team biography value and future battle-form support value.
- Mega Stone availability is source-seeded for X/Y, Omega Ruby/Alpha Sapphire, Sun/Moon, Ultra Sun/Ultra Moon, Let's Go, Pikachu!/Let's Go, Eevee!, Pokémon Legends: Z-A, and Mega Dimension where source pages list acquisition. The catalog now includes all 92 known core-series Mega Stones from the source list; the 45 Pokémon Legends: Z-A/Mega Dimension additions use Voydex internal IDs 458-502 and preserve source item IDs in `external_id`.
- Battle-only Mega forms remain outside current team-builder forms; Mega Stones are cataloged as held items, not as default selectable forms.
- A later game-specific Mega Stone refinement pass can split rows if source pages group paired-version locations too broadly.

### Item Availability Seed Organization

Pokémon availability and item availability are both maintained by version group/content scope. Item files still group rows with section comments such as Plates, Z-Crystals, form items, evolution stones, held/trade evolution items, and special evolution items. This keeps each game scope reviewable as the reduced item catalog grows to Poke Balls, held items, berries, fossils, and other Pokémon-relevant biography/planning items.

Every `reference.item_availability` row should be source-verifiable from nearby SQL comments and audit docs, but inserted database values must only store product/domain information. Use row `notes` for player-facing caveats such as trade-only modeling, one-off acquisition limits, DLC scope, or meaningful planning warnings. Do not load source names or source-provenance sentences into table rows.

Large reference fact seeds should not maintain manual surrogate IDs. `reference.pokemon_evolution_edges`, `reference.pokemon_availability`, `reference.move_availability`, `reference.item_availability`, and `reference.pokemon_learnsets` omit `id` in seed inserts; schema identity columns generate IDs and audit checks enforce the natural/composite uniqueness rules.

Source pass status as of 2026-06-15:

- Checked 3877 current item availability rows across 27 version-group files.
- Checked 148 additional held-item source pages from the Serebii held-item index in the general held-item pass.
- Required every row or row section to be traceable through file comments and audit docs, with version-group or game-specific scope visible outside loaded row values.
- Source names remain in file comments/docs only; loaded row values contain only product-facing notes when needed.
- The `up-grade` seed item was checked against Bulbapedia's `Upgrade` source page because the hyphenated title redirects there.
- Kubfu source modeling is split by actual game mechanic: Sword/Shield Isle of Armor uses non-item tower scroll objects, while Scarlet/Violet has bag/key-item Scroll of Darkness and Scroll of Waters availability through Porto Marinada auctions when the player owns Kubfu.
- Black Augurite availability now includes the Mega Dimension source row, where it is listed from high-star Hyperspace floating Poke Balls with Item Power: Special.
- The offline seed audit rejects persisted source-provenance columns and external source names in inserted item availability row values.
- The offline seed audit now pins each version-group/content-scope item availability row set by count and SHA-256 fingerprint, not just the global row total.
- The offline seed audit cross-checks item-based Pokémon evolution availability against item availability in the same version group/content scope or inherited parent scope, including game-specific item rows when a version-group-wide Pokémon evolution row is satisfiable by version-specific item access.
- The offline seed audit enforces the complete general held-item slug set, all held-item category memberships, and the `fairy-gem` no-normal-availability exception.
- The offline seed audit now enforces source-checked semantic item availability expectations for high-risk evolution/form items, including Deep Sea Tooth/Scale FRLG trade-only rows, BDSP Electirizer/Magmarizer version exclusives, SV Kubfu scroll availability, PLA and Mega Dimension Black Augurite rows, Indigo Disk Metal Alloy rows, SwSh Galarica Cuff/Wreath DLC rows, Polkadot Bow transfer-only rows, held-item-era Red/Blue Orb rows, Exp. Share key-item-era exclusions, and the pinned 92-row Mega Stone catalog with ZA/Mega Dimension availability fingerprints.
- The offline seed audit now enforces the exact source-checked fossil catalog and per-version-group fossil availability matrix, including game-specific fossil rows and the ZA Old Amber/Jaw/Sail availability fix.
- The offline seed audit now enforces the exact source-checked berry catalog and per-version-group/content-scope availability matrix, including explicit exclusions for event-only, transfer-only, service-only, held-item trade-only, and local multiplayer-only berry sources.
- Batch 1 item availability audit closure is complete at file level: non-Z form-change items, evolution items, Z-Crystals, Mega Stones, and general held items are each pinned with category-specific row counts and SHA-256 fingerprints in addition to the per-version-group fingerprints.
- The offline seed audit now pins the exact 502-row reduced item catalog and 1,012 item category membership rows, in addition to the item availability matrices and high-risk item semantic exceptions.
