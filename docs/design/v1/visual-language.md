# Voydex V1 Visual Language

This document is the canonical art-direction brief for the V1 interface. It
defines the character that should connect the shared shell, Mainline, and
Codex without changing their accepted product responsibilities or flows.

The selected V1 treatment combines disciplined field-guide organization with
one warm, lightly textured journal page that holds both context and operational
content. V1-D115, V1-D118, V1-D119, V1-D120, and V1-D123 own the current shell,
navbar, surface, and Plays header behavior shown in production.
Functional contracts, responsive behavior, accessibility, truthful data
states, and mounted routes remain binding when applying it to later views.

## Product Expression

Voydex combines **voyage** and **Pokédex**. The interface should therefore feel
like a modern companion carried through a Pokémon adventure: part field guide,
part travel journal, and part route-finding tool.

The target is a **clean explorer's field guide**, not a generic dashboard with
adventure decoration added afterward.

The experience should feel:

- optimistic, outdoors-oriented, and ready for a journey;
- personal enough for remembered teams and playthroughs;
- clear enough for repeated tracking and reference work;
- tactile in selected moments without becoming visually heavy;
- Pokémon-adjacent without copying official Pokémon interface chrome.

## Core Tension

Voydex should be **clean first and adventurous second**. Adventure character
comes from a coherent combination of color, silhouettes, navigation,
materials, imagery, typography, and language. It does not come from applying a
texture to every surface.

Every expressive treatment must preserve:

- fast scanning;
- readable text and data;
- familiar control behavior;
- responsive composition;
- visible focus and non-color meaning;
- honest loading, empty, partial, error, and unavailable states.

## V1 Theme Direction

V1 is designed light-first. Daylight naturally supports the intended sense of
open-air adventure, legibility, and optimism.

Dark mode is a later design phase rather than a mechanical inversion of the
light tokens. When it is designed, it should feel like the same expedition
after sunset: deep night-sky blue, moonlit neutrals, muted forest tones, and
restrained warm light.

Do not let future dark-mode compatibility flatten the V1 light direction.
Keep semantic token roles durable so a later night palette can be designed
without rewriting component behavior.

## Color Roles

Green and brown form the core Voydex identity. Supporting colors describe the
world around that identity rather than competing with it.

| Color family                      | Intended role                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------- |
| Forest and field greens           | Brand identity, active navigation, important actions, journey progress              |
| Leather and earth browns          | Secondary identity, destination framing, gear-inspired details, structural accents  |
| Parchment, canvas, and warm beige | Primary page and reading surfaces, quiet grouping, field-guide warmth               |
| Sky and light blues               | Atmosphere, open-space imagery, informational context, restrained secondary accents |
| Sunlight and muted gold           | Discoveries, milestones, selected highlights, achievement moments                   |
| Ink, stone, white, and warm gray  | Text hierarchy, controls, borders, disabled and neutral states                      |
| Deep navy and moonlight neutrals  | Reserved foundation for a later night theme                                         |

The production tokens in `src/app/globals.css` and
`src/shared/styles/app-tokens.css` are the source of truth for exact values.
Gold and light blue do not carry small text on light surfaces, and
brown-on-beige combinations require explicit contrast checks. Pokémon type and
game colors remain semantic accents rather than replacements for the Voydex
palette.

## Navigation Metaphor

Navigation and mutation must look meaningfully different.

### Destination Buttons

Primary module-view destinations use familiar compact buttons with an icon and
label. Inactive destinations use the shared outline variant; the active
destination uses the primary variant and an explicit current-page state. Do not
use wooden-plank imagery, bespoke masks, or decorative texture in the navbar.

### Trail Markers

Tabs, breadcrumbs, compact contextual links, and dense local navigation should
use lighter route-finding cues such as path lines, marker shapes, notches,
underlines, or simple directional icons. They should not all become prominent
buttons merely because they change the URL.

### Tools

Actions such as Add, Save, Edit, Filter, Sort, Retry, Restore, or Delete use
clean product controls. Their hierarchy, state, and risk matter more than the
adventure metaphor. They may inherit Voydex color, shape, or small gear-like
details, but should remain recognizable buttons and inputs.

## Surface Families

Avoid exposing default shadcn Cards as the app's primary visual language.
Continue using the primitives for behavior and accessibility, then compose
Voydex-owned product surfaces.

- **Field-guide surfaces:** information-rich Codex content, indexed facts,
  species and game context, and reference-led detail.
- **Journey-log surfaces:** Mainline Plays, Progress, History, and personal
  records, with restrained paper, page, route, or entry cues.
- **Map surfaces:** planning, progress paths, filters, and spatial or scoped
  relationships. Use contour lines, trails, pins, and regions sparingly.
- **Pack and gear surfaces:** Team, Rules, Tags, and selected utilities where a
  compact equipment or inventory association improves recognition.
- **Plain operational surfaces:** forms, destructive confirmations, dense
  settings, and recovery states that benefit from minimal decoration.

Use spacing and typography before tint, borders, texture, or shadow. Do not put
paper panels inside leather panels inside wooden frames.

## Module Character

The shared shell should make the product feel whole while allowing each module
to emphasize a different part of the same adventure.

- **Codex is the field guide.** It is indexed, reference-led, image-aware, and
  information-rich. Book, specimen, catalog, and annotation cues may support
  its hierarchy.
- **Mainline is the expedition journal.** It is personal, chronological, and
  action-oriented. Route, logbook, milestone, team, and memory cues may support
  its hierarchy.
- **Plans are route preparation.** They may emphasize maps, destinations,
  alternatives, and readiness without pretending authored intent is current
  Team truth.
- **Collection and Stats are the expedition archive.** They should feel
  evidence-backed and reflective rather than like trophy cabinets or score
  dashboards.

## Typography And Iconography

Use **DM Sans** for body copy, controls, navigation, and dense data. Use **Lora**
for page titles and selected editorial headings. Do not introduce a third
family or extend the serif face into dense operational copy.

Use familiar interface icons for ordinary actions. Use compass, trail marker,
flag, map, pin, backpack, binocular, book, journal, sun, and route imagery for
product concepts where those metaphors improve recognition. Do not replace
clear labels with decorative icons or mix unrelated illustration styles.

## Imagery And Material

Scenic daylight imagery can create a sense of place, especially in gutters,
page introductions, and selected hero or empty states. It should not reduce
contrast behind working content or make every page compete with a background.

Map paper, canvas, leather, wood, stitching, stamps, and ink are supporting
materials. Prefer simplified silhouettes, edge treatments, subtle texture,
and purposeful illustration over photorealistic imitation.

Use real, purpose-fit assets. Do not fake visible wood, maps, compass art, or
other signature imagery with ad hoc CSS drawings or placeholder decoration.

## Selected Composition

The shared shell and Mainline Plays Browse establish the production grammar:

- an opening navbar in normal document flow as the first section of the journal
  surface, transparent over the paper rather than a separate opaque slab, with
  only a subtle warm lower rule to distinguish navigation from page content;
- the opening navbar scrolls away with the document and is not replaced by a
  sticky, fixed, or floating navigation surface;
- the compact Voydex mark, a clear module switcher, and familiar compact
  destination buttons whose active state remains readable without relying only
  on color;
- one full-height, warm, lightly textured journal column up to approximately
  1376 pixels wide, with quiet inline edges, a restrained centered shadow, and
  ambient daylight landscape visible in the two outer gutters;
- no top or bottom gap around the journal surface: it starts at the top of the
  viewport, contains the navbar and page content, fills at least the dynamic
  viewport height, and grows with long content;
- one shared refined daylight-valley backdrop at
  `public/backgrounds/bg-day.webp` across the whole app, with distant
  mountains, green terrain, village, sky, and foreground flowers; route-specific
  overlays may quiet it behind working content without replacing the artwork;
- a compact text-only page introduction followed by controls, result context,
  and rows on the same continuous paper surface, separated with spacing and
  thin rules rather than another framed panel;
- Search, Status, Game, and Sort as familiar product controls with persistent
  labels, compact equal 40-pixel heights, and clearly separated current values;
- compact one-column journey-log rows that use thin rules, warm paper, and
  whitespace instead of nested Cards or heavy material frames;
- responsive reflow at tablet and phone widths without horizontal page scroll;
- only real, mounted destinations and actions. A design reference may show
  future routes, but production does not expose inert navigation or a broken
  Create Play control.

The journal page is a calm working surface rather than a theatrical prop. Its
texture, inline edges, and centered shadow stay quiet enough for scenery,
typography, game art, and journey data to provide the adventure character. Do
not restore a literal clipboard, leather binding, clipped inset sheet, or
decorative hardware. The browser owns vertical scrolling, and the page grows to
its true content end without an inner vertical scroller. Narrow screens reduce
the scenic gutters and content padding while preserving useful working space.

## Anti-Goals

- Generic blue-primary SaaS styling.
- Default shadcn Card and Button appearance as the product identity.
- A permanent dashboard made from interchangeable metric cards.
- Wood applied to every link, button, container, or heading.
- Literal office stationery, clipboard hardware, or nested paper props.
- Heavy parchment, leather, stitching, or drop shadows on every surface.
- Medieval fantasy, survival-game, theme-park, or toy-like presentation.
- Decorative maps or icons that compete with Pokémon, Play, or progress data.
- Texture used to hide weak hierarchy.
- Dark mode created by simply inverting the light palette.

## Implementation Checkpoint

The shared shell, Plays Browse, Play Overview, Play Team, linked Team Plan
comparison, and current Codex views now use this production language. The
refined daylight scenery, single background-blended navbar, compact destination
buttons, single journal page, compact text-led header, and white-focused cards
are shared composition patterns. Carry this grammar into Plan acquisition and
standalone Plan authoring one bounded view at a time; preserve each view's
product contract and validate it at desktop, tablet, and phone widths before
calling that slice complete.
