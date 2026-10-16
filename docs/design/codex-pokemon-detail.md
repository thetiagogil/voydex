# Codex Pokemon Detail Direction

This document captures the current product/design direction for the Codex
Pokemon detail page so future chats do not need to reconstruct it from thread
history.

## Current Status

- `/codex/pokemon` is the stable Codex browse view for now.
- `/codex/pokemon/[versionGroupSlug]/[speciesSlug]` is on Soft Clay (v3's
  entry): the head and the hero on the page's band, then quiet section cards
  one a row but the two short ones, the learnset and your Plays last.

## Route And Scope Model

A Pokémon's entry reads by generation (as Pokémon Database does). The address
still names one base version group, its expansions included, which picks the
generation and the game the learnset is read in:

```txt
/codex/pokemon/[versionGroupSlug]/[speciesSlug]?form=[formSlug]
```

The version group determines the generation. Do not add generation or game to
the URL; the group already provides that context.

Important rules:

- A game's slug or an expansion's child-group slug redirects permanently (308)
  to its base group; an unknown group or species is a 404. The route's layout
  settles both before the loading state streams.
- A group from before the species existed, and `/codex/pokemon/[speciesSlug]`,
  open the introduced generation's first base group the species can be found
  in (Legends: Arceus for Wyrdeer, Let's Go for Meltan), as its generation
  pill does. The Pokémon list's cards still open the generation's first base
  group: the list does not read availability.
- Generation pills list every generation, always, so the row never shifts;
  one the species isn't in shows disabled, and each other opens that
  generation's first group the species can be found in. There is no
  version-group switch in the head.
- Where to find, the Pokédex numbers and the form switch cover every base
  group of the generation. Where to find lists each group's games, then its
  expansions (saying "Not in the base game" when only an expansion has it);
  another group counts only where the form is found there.
- The learnset is the one section read per group, since moves differ between
  a generation's games: when the generation has several base groups, a game
  switch sits in the Learnset card's head, on the right, and switches on the
  page (every group's moves are already loaded); a group the species or form
  can't be found in is shown but disabled. Under the head, one line holds the
  move search and the how-it's-learned filter.
- The form switch lists every form found in the generation; a form opens in
  the address's group when it is found there, else in the first group that
  has it (Hisuian Arcanine opens in Legends: Arceus). A non-default form
  carries over when switching generation or group.

## Page Structure

- **Band:** the head and the hero sit on the page's sand band.
- **Head:** the path back to Pokémon ending in the Pokémon's name, which opens
  the searchable species picker, and the generation pills on the right, with
  a quiet line under them (games split by hairlines) naming the generation's games the Pokémon (or this
  form) is in ("In [Legends: Arceus]" for Hisuian Arcanine).
- **Section bar:** once the band scrolls away, a slim bar docks to the top
  (as a Play's does) with the Pokémon and an index of its sections, the one
  you're reading marked; each link jumps there. A section the page leaves out
  has no link.
- **Hero:** centred in the band as one pair, the art on its type tint in a 6px white rim on a lip of its type's
  shade (v3 `.cx-art`), beside the number, the name (the page's `h1`) with
  its type marks, one line of the form switch and the actions as icons that
  name themselves on hover (Your Plays, Favourite as a heart, the shiny
  toggle), a description (pending data), and the one sentence read from
  the data. Signed in, the Your Plays icon ("Your Plays (N)", or "Add to a
  Play" with none) jumps to In your Plays at the page's end, which shows
  where the Pokémon already is before its Add to a Play menu. The game page
  head works the same way: the version switch with the Your Plays icon
  beside it. The Pokédex's entries live per game in Pokédex numbers, not in
  the hero.
- **Sections:** Abilities, Training and Breeding in one row from `xl`, then
  Base stats beside Type matchups (side by side from `lg`; every
  card keeps its place in every game), then one section a row: Evolution,
  Pokédex numbers (each Pokédex's number, with its entry text pending), Where
  to find (each game with its box), Learnset, and In your Plays last.

## Forms And Shiny

Forms are not only visual variants: they can change typing, stats, abilities,
availability, and game validity, and Pokémon like Arceus have many. So:

- A form switch (`SegmentedControl`) in the hero appears only when the species
  has more than one form valid in the group. Each form is its own page
  (`?form=`, omitted for the default form), not a thumbnail rail in the
  portrait.
- Shiny is a direct toggle because it is only a visual alternate of the
  selected form. It swaps only the active form's artwork and resets when the
  form changes.

## Evolution Line

- Hide the section when the evolution line has only one Pokemon.
- Keep simple level evolutions readable; use compact labels and icons for
  non-level requirements, as an arrow over what it takes between two stages.
- Single evolutions run on in a row; where the line branches, the branches sit
  below, each with what it takes over its first stage. This handles mixed
  branch lengths such as Applin -> Flapple/Appletun/Dipplin -> Hydrapple.
- Every stage opens its own entry in the same group. Each stage is the one
  `PokemonCard` the Codex lists use; the Pokémon you're reading wears the
  picked look (`pokemonCardPickedClassName`, `aria-current="page"`).

## Section Direction

Keep each section focused and quiet; lively comes from the art and type
colour only.

- Base stats: v3's bars in the type colour, in tight rows, with Gen I's
  single Special; the best stat reads bold. The total sits in the same
  columns with its own bar in the type's deep shade, full at 120 a stat.
- Type matchups: Weak to, Resists, Immune to (always shown, "None" when
  empty) as type marks with their multiplier (the type's name on hover and
  read out), then how many other types hit normally as one quiet line.
- Abilities, Training and Breeding share one row on wide screens (`xl`),
  Abilities taking more of it the more abilities there are; tablets put
  Abilities on its own row above the other two, phones stack all three.
- Abilities: one mini card per ability (slot, name, effect) side by side, each
  as tall as the card. In a game without abilities the note fills the card
  ("Abilities arrive in:" over "Generation III →", or "No abilities in
  Legends: Arceus", naming the game the page reads); when the Pokémon is in that generation the whole note is the
  link there, its arrow saying so.
- Training (EV yield, catch rate, friendship, base experience, growth rate)
  in two columns; Breeding (egg groups, egg cycles, gender) in one. A game
  without eggs shows the note in Breeding, filling it unless Gender stays
  (Let's Go).
- The note (`PokemonDetailMechanicNoteCard`, an hourglass on the card's
  inset fill, no colour of its own) is a fact about the game, read from the
  reference's `getGameMechanicAbsence`; never the dashed pending marker,
  which means data Voydex doesn't have yet.
- Pokédex numbers: the generation's Pokédexes and the Pokémon's number in
  each.
- Learnset: searchable, filterable moves with method, type, category, power,
  accuracy and PP for the group picked in its game switch.
- Where to find: one row per game of each of the generation's groups, then
  that group's expansions; a game without the Pokémon says "Not in this game"
  (once the generation records it somewhere, so a data gap never reads as
  the game lacking it).

On narrow screens, wide data rows become labelled stacked rows inside the same
section. They must not widen the document or require page-level horizontal
scrolling.

Known next areas:

- Pokédex entries.
- Breeding data.
- Further learnset filtering and presentation polish.
- Richer evolution requirement visuals once item/method images are available.

## Future Authenticated Actions

The detail page can later expose authenticated actions that connect reference
context to the rest of Voydex.

Accepted future actions:

- Add to plan.
- Add to play team.
- Start a plan with this Pokemon.
- Check availability in my play.
- Compare with planned team.
- Mark as target.
- Find where this fits.

Codex should not own those mutations. The page should pass selected reference
context to the owning module, such as Mainline, and that module should validate
and execute the action. Useful context includes species, form, version group,
availability scope, and DLC or transfer requirements.

`Mark as target` is intentionally lighter than adding a planned member. It lets
the user remember a Pokemon for a future play or team idea before committing to
a concrete plan.

## Product Design Note

Product Design image generation helped explore the page direction, but generated
mockups are references only. The implemented app should follow the durable
decisions in this document, real data behavior, and existing app primitives.
