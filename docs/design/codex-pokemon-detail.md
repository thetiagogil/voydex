# Codex Pokemon Detail Direction

This document captures the current product/design direction for the Codex
Pokemon detail page so future chats do not need to reconstruct it from thread
history.

## Current Status

- `codex/pokemon/browse` is considered the stable completed Codex browse view
  for now.
- `codex/pokemon/[gameSlug]/[speciesSlug]` has its section foundation in place
  and should be iterated section by section.
- The top section is a compact selector surface with species selection and
  generation/game navigation.
- The left section has the portrait, optional Forms card, and optional
  Evolution Line card.
- The right section currently has Core Data, Battle Stats, Type Matchups,
  Abilities, Pokedex, Availability, and Learnsets cards.
- Learnsets are the newest section and can continue to iterate.

## Route And Scope Model

Pokemon detail pages should be game-scoped:

```txt
/codex/pokemon/[gameSlug]/[speciesSlug]
```

The `gameSlug` determines the generation. Do not add generation to the URL when
the selected game already provides that context.

Important rules:

- Pokemon cards from `/codex/pokemon` should link to the first supported game in
  the first generation where the species appears.
- Generation controls should list games ordered by seeded `sort_order`.
- Game options are enabled when the selected Pokemon/form has seeded
  availability in that game.
- DLC availability should count as available for the game, but it must be
  visually distinguished with a warning/info state that explains the required
  DLC content scope.
- Forms must be validated against the selected game. A form that appears in the
  generation but not in the selected game must not be selectable for that game.

## Preferred Page Structure

Use a compact header/reference section followed by a two-column detail body.

Header/reference section:

- Left: `#0001 Bulbasaur` style species selector.
- Right: compact generation/game buttons. The selected generation trigger should
  include the selected game name, for example `VIII - Pokemon Sword`.
- Generation menus open game options for that generation.
- Species selector should support search because generation/game Pokemon lists
  can be large.

Body:

- Left column: portrait, forms when applicable, and evolution line when
  applicable.
- Right column: cards for core data, stats, type matchups, abilities, Pokedex,
  availability, learnsets, and later breeding/entry sections.

## Left Section Direction

The left side should be a simple vertical stack of cards. The portrait is its
own card. Forms and evolution line use normal Pokemon detail section cards.

Current intended parts:

- Pokemon portrait.
- Shiny control.
- Form selection.
- Evolution line.

Portrait:

- Use the active form image over the type-themed background.
- Render the shiny toggle in the top-right corner of the portrait.
- The shiny toggle swaps only the active form artwork and resets when the
  selected form changes.

Forms:

- Do not render a Forms section when the Pokemon has no additional forms.
- When forms exist, render a dedicated Forms card below the portrait.
- Show each form as a list option with image, National number, form name, and
  type identity.
- Selection should be represented by the route/query state and a visible
  selected row style.

Evolution line:

- Hide the section when the evolution line has only one Pokemon.
- Keep simple level evolutions readable.
- Use compact labels/icons for non-level requirements.
- Resolve every evolution family into readable path rows. This handles mixed
  branch lengths such as Applin -> Flapple/Appletun/Dipplin -> Hydrapple.
- Highlight the selected node with the Pokemon type-colored selected/hover
  treatment used across detail links.

## Form Selection Decision

Do not keep a vertical rail of many tiny form thumbnails inside the portrait.

Reason:

- Forms are not only visual variants. They can change typing, stats, abilities,
  availability, and game validity.
- Pokemon like Arceus can have many forms, so form selection needs a readable
  option surface.
- Keeping forms outside the portrait keeps the portrait focused on artwork.

Current pattern:

- Shiny remains a small direct toggle because shiny is only a visual alternate
  of the selected form.
- Forms render in a dedicated Forms card when additional forms exist.
- Each form row shows enough context to understand the selection:
  - form image
  - National number
  - form name
  - type identity
- The route query parameter stores selected form state.
- For many-form Pokemon, keep the list readable first. Add search or grouping
  only when the concrete UI need appears.

## Right Section Direction

The right section should stay card-based and readable. Use one card per section
and keep each card focused.

Current cards:

- Core Data: type, height, weight, introduced generation.
- Battle Stats: generation-aware stat rows, including Gen I Special handling.
- Type Matchups: weaknesses, resistances, and immunities with type icons.
- Abilities: slot, ability, and effect rows.
- Pokedex: dex name, number, and future entry text.
- Availability: content, method, and notes rows for the selected game/scope.
- Learnsets: searchable/filterable move table with method, move, type,
  category, power, accuracy, and PP.

Known next areas:

- Pokedex entries.
- Breeding data.
- Further learnset filtering and presentation polish.

## Product Design Note

Product Design image generation helped explore the page direction, but generated
mockups are references only. The implemented app should follow the durable
decisions in this document, real data behavior, and existing app primitives.
