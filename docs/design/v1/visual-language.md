# Voydex V1 Visual Language

This document is the canonical art-direction brief for the V1 interface. It
defines the character that should connect the shared shell, Mainline, and
Codex without changing their accepted product responsibilities or flows.

The exact visual treatment remains provisional until one of the three
representative Plays Browse directions is selected. Functional contracts,
responsive behavior, accessibility, and truthful data states remain binding
throughout that exploration.

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

Exact values and contrast pairs are selected only after the representative
direction is chosen. Gold and light blue must not carry small text on light
surfaces, and brown-on-beige combinations require explicit contrast checks.
Pokémon type and game colors remain semantic accents rather than replacements
for the Voydex palette.

## Navigation Metaphor

Navigation and mutation must look meaningfully different.

### Signposts

Major destination links may use a restrained wooden-sign or trail-sign
treatment. Appropriate uses include module destinations, a prominent route to
another major page, or the next important place in a journey.

The treatment should communicate `go there`, not `perform an operation`.
Wood remains an accent material: keep grain, irregularity, depth, and hardware
subtle enough that labels stay crisp and the shell stays lightweight.

### Trail Markers

Tabs, breadcrumbs, compact contextual links, and dense local navigation should
use lighter route-finding cues such as path lines, marker shapes, notches,
underlines, or simple directional icons. They should not all become wooden
planks merely because they change the URL.

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

Use no more than two font families. Body copy and dense data need a highly
readable product face. A complementary display or editorial face may add field
guide or journal character to page titles and selected section headings, but
must not reduce clarity or make the app feel medieval.

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

## Representative Exploration Contract

The first visual checkpoint is the authenticated shared shell plus Mainline
Plays Browse at a `1440 x 1024` desktop viewport. It must preserve the accepted
screen contract:

- Voydex identity and Mainline context;
- Dashboard, Plays, Plans, Collection, and Stats destinations;
- page title, concise supporting text, and one Create Play action;
- visible Search, Status, Game, and Sort controls;
- result count and clear-filter behavior;
- a single-column library of compact Play results;
- game cover, Play name, exact game name, update date, six Active-Team slots,
  overall completion, and one open cue per result;
- realistic occupied, partial, and not-recorded data;
- no extra dashboard metrics or feature-advertising panels.

The three directions should vary composition, material emphasis, navigation
treatment, and typography while preserving that same content and user goal.
Phone and tablet adaptation are evaluated after a desktop direction is chosen;
the selected system must still be capable of the accepted responsive behavior.

## Anti-Goals

- Generic blue-primary SaaS styling.
- Default shadcn Card and Button appearance as the product identity.
- A permanent dashboard made from interchangeable metric cards.
- Wood applied to every link, button, container, or heading.
- Heavy parchment, leather, stitching, or drop shadows on every surface.
- Medieval fantasy, survival-game, theme-park, or toy-like presentation.
- Decorative maps or icons that compete with Pokémon, Play, or progress data.
- Texture used to hide weak hierarchy.
- Dark mode created by simply inverting the light palette.

## Selection And Implementation Gate

Generate exactly three independent directions from this brief. Do not change
production UI until one direction is selected or a revised combination is
approved.

After selection:

1. record the chosen palette, typography, material, and component rules here;
2. translate them into semantic tokens and a small Voydex component language;
3. implement the shared shell and Plays Browse as the first production slice;
4. verify realistic desktop, tablet, and phone states in the browser;
5. carry the accepted system into Dashboard, Play Overview, Team, and Codex one
   bounded view at a time.
