# Codex

This is the Codex part of the [Feature Contract](../feature-contract.md).

## Pokémon Browse And Detail

Codex Pokémon is a public, species-led reference surface. A Pokémon's entry
reads every changing fact (types, persistent forms, artwork, availability,
Pokédex placement, stats, abilities, evolution, matchups, learnsets, and
Mainline intent) in one explicit **version group**: a base group such as Sword
and Shield, its expansions (The Isle of Armor, The Crown Tundra) included. The
route names the group and the entry keeps it visible. V1 does not require an
account preference or database write for this choice.

Pokémon Browse must:

- keep Search, Generation (the introduced generation, as pills), Type, and
  Sort visible; category and version-group availability filters may follow in
  `More filters`;
- search species name, National Pokédex number, and applicable persistent form
  names;
- default to National number, with Name as the alternate sort, in one plain
  grid that Group can split by introduced generation or by primary type;
- show one equal image-led result per species with artwork, National number,
  name, type, and only a concise form cue;
- open the entry in the first version group of the generation the species was
  introduced in, and expose no inline Mainline mutation;
- preserve URL-backed criteria, loaded position, scroll, and useful focus when
  moving between Browse and Detail;
- append small result batches automatically shortly before the user reaches the
  boundary, with a manual compatibility or recovery fallback when automatic
  continuation is unavailable;
- target a compact multi-column grid, three columns on common phone widths;
- use the shared initial Spinner, filtered empty and clear actions, isolated
  incremental retry, and per-result missing-data fallbacks without Skeletons.

Used, unused, planned, targeted, and never-used Browse filters or overlays are
not V1 requirements. They remain personalization follow-ups; personal usage
belongs primarily to Collection.

Pokémon Detail uses the canonical
`/codex/pokemon/[versionGroupSlug]/[speciesSlug]` route (a persistent form as
`?form=`). A game's slug or an expansion's child-group slug redirects
permanently (308) to its base group; an unknown group or species is a 404; a
group from before the species existed redirects to the group it was
introduced in. `/codex/pokemon/[speciesSlug]` opens the first base version
group of the generation the species was introduced in (a legacy `?game=` names
the group instead). It must:

- have an independent semantic `h1` for National number and species identity;
- retain the active version group while switching species and update the
  canonical route when switching group or persistent form;
- offer one pill per generation, always all of them, disabled where the
  species isn't, each other opening that generation's first group the
  species can be found in; the entry reads by
  generation, and only the learnset picks a group, with a game switch that
  shows but disables a group the species can't be found in;
- retain a searchable, contextual species switcher and direct Shiny artwork
  toggle;
- show a form selector only for persistent forms valid or meaningful in the
  current context, excluding temporary battle and cosmetic variants;
- organize reference content as identity/context, overview, evolution/forms,
  selected-game availability, type matchups, learnset, and Pokédex placement;
- omit absent optional facts instead of filling important space with `Unknown`;
- keep learnset mechanics game-correct and use a semantic table on wide screens
  with labelled stacked rows on narrow screens;
- preserve identity and unaffected sections when a secondary read fails;
- use real heading hierarchy, keyboard-operable selectors, visible focus,
  labelled Shiny state, and non-color type and matchup meaning.

As built, a signed-in entry offers `Add to a Play` (a menu of your Plays whose
Pokédex lists this species, each opening its Roster's Add Pokémon on this
species and form; with none, Start a Play) and an `In your Plays` card listing every one of this species on
your rosters. The entry's Training and breeding card shows egg groups where
the game has breeding; its other values, the Pokédex category, flavour text,
height and weight and Favourite are pending data. The accepted handoff below
remains the target.

Authenticated Pokémon Detail exposes one `Use in Mainline` entry with four
branches:

- `Add to Plan`, choosing an eligible Plan or continuing to Create Plan;
- `Add to Play`, choosing an eligible Play and Active or Reserve destination;
- `Check in my Plays`, inspecting availability without writing;
- `View my history`, opening Collection Pokémon Detail.

Creating a Plan is a branch of `Add to Plan`, not a duplicate top-level action.
The handoff preserves the version group, species, persistent form,
availability or content context, and intent through authentication. Mainline owns destination
selection, ownership, roster capacity, reuse policy, form and availability
validation, optional content, plan/play state, warnings, and every mutation.
Codex never writes Plan, Team, Play, or Collection truth directly. Cancellation
and failure return to the same Detail context without partial user data.

## Games Browse, Game Detail, And Game Pokédex

Codex Games is a public, cover-led catalogue of the exact traditional mainline
and Legends-style games supported by Voydex. Games Browse keeps Search and the
kind of game (Core series, Companions and remakes, Legends) in the URL, plus a
newest or oldest order, and one plain grid that can be grouped by generation
or region. It uses one game
card (`GameShelfCard`) with cover, short name, release year, and region,
opening its version group's page with that game picked. The V1 catalogue does
not require pagination, personal overlays, or inline Mainline actions. It
targets compact multi-column density on desktop and two phone columns.

Game Detail explains one base version group at
`/codex/games/[versionGroupSlug]`, with a version switch for its games
(`?version=[gameSlug]`; an unknown version falls back to the group's first
game). A game's slug or an expansion's child-group slug redirects permanently
(308) to the base group, keeping the game it named; an unknown slug is a 404.
The page carries structured identity, base and optional-content scopes, named
Pokédexes, the group's Pokémon, and only trustworthy related releases. `Start a Play` is its clear primary action;
`Create a Plan` and `Add to Game List` are supporting Mainline actions.
Reference links remain distinct from personal mutations. As built, the page
also shows the region the picked game is set in with its first partners
(the leaders are pending data; Legends games leave them out) and the version
exclusives: one column per game of the pair, the picked game first, counting
only what each game gives you itself. Its head has no actions; signed in,
the last section, Your Plays, lists your Plays of these games with `Start a
{Version} Play` and `Plan a team` beside its title. Games Browse stays reference: one
toolbar row (Search, Kind, Group: none by default, or generation or region,
Sort) and no mark
for the games you've played.

Named Pokédexes are listed under the base group (as pills with their counts
in the page's head, the same pills the Pokédex page switches with), its own
first and then its expansions', so seeded DLC scopes are not lost merely because their Pokédex
rows belong to a child version group. `Available species` is shown only when it is a
distinct-species count from the resolved game/content availability model. It
must never reuse the largest listed Pokédex size. Related releases require an
explainable paired or otherwise reference-supported relationship; sharing only
a generation or region is insufficient.

Game Pokédex uses the canonical
`/codex/games/[versionGroupSlug]/pokedexes/[pokedexSlug]` route (an expansion's
Pokédex is read under its base group; old game or child-group addresses
redirect permanently, unknown ones are a 404) and makes the named Pokédex its
prominent page scope. The selector groups Base game and applicable
optional-content Pokédexes, keeps the active name obvious without opening a
menu, and preserves valid URL-backed Search, Type, Sort, and loaded position
when switching.

Game Pokédex defaults to local Pokédex number and supports Search plus Type; an
optional simple Sort may offer Name and National number. Wide screens use a
semantic comparison table for local number, species, National number, types,
abilities, and base stats. Narrow screens use compact labelled species rows or
cards that keep identity and the Pokémon's entry in this version group visible
without requiring horizontal scrolling. Large Pokédexes use explicit `Load
more`, with full-result filtering, isolated retry, and no Skeletons.

Game-origin Mainline actions preserve the picked game, intended action, and
originating Detail route through authentication. `Start a Play` resumes the
accepted Create Play flow with fixed game context and ends at Play Overview.
`Create a Plan` resumes the concise Create Plan flow and ends at one new Draft
Plan Detail. `Add to Game List` edits the existing entry when present or creates
one focused status-and-note intent, then may remain on Game Detail with a link
to Game List. Mainline owns authentication, validation, duplicate prevention,
atomic personal writes, and every success destination; Codex owns no user-data
mutation.

## Codex Browse

Codex browse is the public-readable reference surface, not a required product
funnel.

Current Codex browse views:

- Pokémon.
- Games.

Generations remain useful reference context for filters, grouping, and future
detail pages, but they are not the required path for creating or continuing
plays.
