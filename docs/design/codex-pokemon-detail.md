# Codex Pokemon Detail Direction

This document captures the current product/design direction for the Codex
Pokemon detail page so future chats do not need to reconstruct it from thread
history.

## Current Status

- `/codex/pokemon` is the stable Codex browse view for now.
- `/codex/pokemon/[versionGroupSlug]/[speciesSlug]` is on Soft Clay (v3's
  entry): the head, the hero, then quiet section cards. Iterate section by
  section without reorganizing that foundation.

## Route And Scope Model

A Pokémon's entry is read in one base version group, its expansions included:

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
- Generation pills list the generations the species exists in; each opens that
  generation's first group the species can be found in. When a generation has
  several base groups (Ruby and Sapphire, Emerald, FireRed and LeafGreen), a
  version-group switch sits under the pills; a group the species can't be
  found in is shown but disabled.
- Expansion availability counts for the group, but Where to find lists each
  expansion separately (and says "Not in the base game" when only an
  expansion has it).
- Forms must be validated against the selected group. A form that appears in
  the generation but not in the group must not be selectable there. A
  non-default form carries over when switching generation or group.

## Page Structure

- **Head:** the Codex crumb ending in the Pokémon's name, which opens the
  searchable species picker, and the generation pills (with the version-group
  switch) on the right.
- **Hero:** the art on its type tint beside the number, the name (the page's
  `h1`), the form switch, the types, one sentence read from the data, and the
  Shiny toggle.
- **Sections:** Battle stats beside Type matchups, Abilities beside Pokédex
  numbers (one alone takes the row), then Evolution, Learnset and Where to
  find. An absent section is left out.

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
- Every stage opens its own entry in the same group. Stages are flat on the
  inset fill; the Pokémon you're reading sits on its type tint
  (`aria-current="page"`).

## Section Direction

Keep each section focused and quiet; lively comes from the art and type
colour only. Preserve the section order; visual iterations happen inside a
section rather than moving sections around.

- Battle stats: generation-aware stat rows, including Gen I Special.
- Type matchups: the all-type effectiveness grid, explained per attacking type
  against the current typing.
- Abilities: slot, ability and effect, only where the group has abilities.
- Pokédex numbers: the group's Pokédexes and the Pokémon's number in each.
- Learnset: searchable, filterable moves with method, type, category, power,
  accuracy and PP for the group.
- Where to find: one row per game in the group, then its expansions.

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
