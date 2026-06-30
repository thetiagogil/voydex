# Codex Pokemon Detail Direction

This document captures the current product/design direction for the Codex
Pokemon detail page so future chats do not need to reconstruct it from thread
history.

## Current Status

- `codex/pokemon/browse` is considered the stable completed Codex browse view
  for now.
- `codex/pokemon/[gameSlug]/[speciesSlug]` is ongoing work.
- The top reference section is the most mature part of the detail page:
  species selector, generation/game navigation, and game-scoped URL state.
- The lower detail content is being rebuilt section by section.
- The left section currently has a portrait area and evolution-line work, but
  the form selector treatment is not settled.

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
- Right: compact generation buttons.
- Generation menus open game options for that generation.
- Species selector should support search because generation/game Pokemon lists
  can be large.

Body:

- Left column: portrait and evolution line.
- Right column: core data, stats, abilities, game availability, Pokedex entries,
  breeding data, and later moves.

The right column should be built after the left column stabilizes.

## Left Section Direction

The left side should feel like one coherent surface, not disconnected cards.

Current intended parts:

- Pokemon portrait.
- Shiny control.
- Form selection.
- Evolution line.

Evolution line:

- Hide the section when the evolution line has only one Pokemon.
- Keep simple level evolutions readable without tooltips.
- Use compact labels/icons for non-level requirements, with tooltips only when
  the method is not obvious.
- For branching evolutions, repeat the source Pokemon per row for now. This is
  more readable than one compressed tree for cases like Eevee and Slowpoke.
- Use only two arrow treatments:
  - Normal compact arrow for three-stage lines.
  - Longer stretched arrow for two-stage lines.

## Form Selection Decision

Do not keep a vertical rail of many tiny form thumbnails inside the portrait as
the final pattern.

Reason:

- Forms are not only visual variants. They can change typing, stats, abilities,
  availability, and game validity.
- Pokemon like Arceus can have many forms, so a tiny portrait rail becomes
  cramped, hard to scan, and visually fragile.
- The thumbnail rail caused visual artifacts and layout problems that were not
  resolved by changing from links to buttons.

Recommended pattern:

- Keep Shiny as a small direct toggle because shiny is only a visual alternate
  of the current selected form.
- Treat form as a real selector, not a tiny inline rail.
- Portrait footer should use a compact pair of controls:

```txt
[Shiny]  [Form: Normal]
```

- On desktop, the form control should open a popover or command-style selector.
- On mobile, the form control should open a sheet.
- The selector should show enough context per form:
  - Form image.
  - Form name.
  - Type icons/badges.
  - Availability/disabled state for the selected game when needed.

For many-form Pokemon such as Arceus, the selector can use a searchable compact
grid or grouped list. Avoid scrollbars inside the portrait itself.

## Known Current Issue

The current experimental form option thumbnail still shows a square-looking
artifact around some form images. This persisted after removing the `Link`
wrapper and using button-based routing.

Likely causes:

- Sprite/image source artifacts.
- Image optimization/downsampling of tiny external sprites.
- The current visual pattern being too constrained for many-form Pokemon.

Best next diagnostic if the thumbnail pattern is still being considered:

1. Render the same image in both the Shiny control and the other-form control.
2. If the artifact follows the image, the source image or image pipeline is the
   cause.
3. If it follows the container, inspect parent/overflow/background styling.

The stronger product recommendation is to move to the form selector pattern
above rather than continuing to perfect the tiny rail.

## Product Design Note

A Product Design image generation attempt was started for the Arceus many-form
selector, but the generated results did not follow the UI brief. Do not treat
those generated images as selected design references unless the user explicitly
adds a usable image to `docs/design`.
