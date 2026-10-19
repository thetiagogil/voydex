# Voydex redesign brief: Soft Clay, loud in the right places

Draft 2 for review, 2026-10-12. Keeps the direction of `Voydex Redesign v3` and replaces its single study file as the thing we build from. v3 stays as the reference; nothing here edits it.

**This brief is a diff on v3.** Anything it doesn't change stays exactly as v3 draws it. The screen map (§4) says what is loud on each screen; it doesn't demote what it leaves out. Every real change from v3 is listed in §6.

Draft 1 was checked against v3's code (`index.html`) and decision log. Read literally, it would have changed 38 of v3's 41 screens and reversed about nine of your dated decisions. This draft keeps v3's look on every screen and moves only chrome: the main button's font, secondary buttons, dialog and menu edges, a thinner card edge, and about 15 game-colour fills on controls.

## 1. The idea in one line

**Voydex is quiet where you work and loud where you remember.** Your team, what you caught, what you earned and where you started stay alive and Pokémon-specific. The chrome around them (buttons, filters, menus, form controls) gets calmer, so the loud parts mean more.

## 2. The loudness budget

| Level      | What it's for                                                                                                 | What it may use                                                                                                                                                                                                                                                                           |
| ---------- | ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Loud**   | Identity and reward: who this Play is, what you own, what you earned, a moment being recorded, the front door | Game colour fill, stickers, tilt (stamps only), the coloured lip, gold, motion (slap, pop), dotted texture (header only), the meadow                                                                                                                                                      |
| **Lively** | Pokémon themselves, wherever they appear                                                                      | Type colours, Pokémon art on its type-tint circle, type dots and chips                                                                                                                                                                                                                    |
| **Quiet**  | Everything you operate, and the chrome around content                                                         | Cream surfaces with v3's neutral clay edge on section cards, ink, Fredoka for headings, Nunito for everything you operate, the one action green, the soft selected tint of the context colour, space between rows, meaning colours as small marks. No tilt, no coloured lip, no game fill |

Fredoka headings are the app's voice, not a loud treatment, so they don't use up a section's budget.

## 3. Rules

1. **One loud kind per section.** A section may repeat one loud treatment across the things it holds (a row of team stickers, a stamp grid, a strip of medallions, gold found tokens), plus the page's main button. Chrome is never the loud thing: card edges, secondary buttons, selection and game-filled controls stay quiet. When two earned things share a section (Story's next row and its medallions), both keep their look. The Play header with its docked bar is exempt, and a meadow is its page's one loud thing.

2. **Loud must be earned or be identity.** Owned Pokémon, badges, milestones, the Play header, a Play's cover, the front door, first-run and recording moments. Never a control.

3. **Game colour is a Play's identity, never a theme.** Paused 2026-10-17: the whole app wears one palette for now, so a Play no longer takes its game's colour (see the Design System's Colour Rules).
   - **Fill** (soft or solid) only on: the Play header and its docked bar; the active Play tab; and places where one Play or game is the subject: Home's meadow band, a Play's cover tile on the Plays list, the New Play scene once a game is picked, the sign-up intent card, a Play shown on the public pages, and History's "The journey began" medallion (its card goes flat).
   - **Accent** everywhere else inside a Play: progress bars, the next-milestone border, selection borders on tiles and rows, eyebrows and small labels. Never the background of a card, row, section or input. An edited field shows a ring, not a wash.
   - **Selected controls** (filters, pills, segments, chips) have one style everywhere: the soft tint of the context colour with deep ink (the game inside a Play, green elsewhere). Solid game colour is kept for the active tab.
   - **Codex:** no game-colour surfaces. The game header, Pokédex head and Games list stay cream; the cover carries the game. Version colour stays as information (the Sword/Shield dot, "Shield only").
   - **Focus** stays action green, as in v3.
   - Pages without a Play are already green in v3 (fixed 2026-09-28). This rule keeps that.

4. **Fredoka for titles and names, Nunito for the work.** Fredoka (600) stays on v3's headings at 20px and up: page, section, card, sheet and dialog titles, and list group headings such as History months and Story chapters. It also stays on the Play name, the trainer name, the names of Pokémon you own on team and roster stickers, the battle report's section titles (your call, 2026-09-30), and figures of 24px and up. Everything you operate is Nunito (700 to 800): every button including the main one (v3's base size, 16px and 52px tall), tabs, pills, chips, form and step labels, table and matrix headers, and titles on reference cards (Codex games, evolutions). Nothing below 16px is Fredoka.

5. **Tilt, stickers, texture.** Tilt at rest only on badge stamps. A cover may tilt up to 3° while picked up on hover on the cover shelves (the Homes, Start a Play, New Play, the Codex Games list); nothing else tilts. In the Codex, badges are shown, not earned: no gold, no slap. Stickers only on Pokémon you own, active or reserve. Planned, reference and choose-one Pokémon are plain cards or dashed silhouettes, except the partner you pick, which becomes yours. Dotted texture only on the Play header.

6. **Edges.** v3 has two kinds; keep both, each in its place.
   - **Coloured lip (loud).** Only on: the main button (5px action-green lip that presses down); the Play header and its docked bar (5px game lip); Story's next-milestone row; and things you own (team and reserve stickers, roster tiles, caught Pokémon cards, stamps, found collectibles in gold, a Play's cover tile, the trainer card), plus the small lip under medallions.
   - **Clay edge (quiet material).** A section card on the page ground keeps v3's neutral edge (`--card-shadow`), at 3px instead of 4px so owned things stand further apart. Test it against v3's 4px in the first slice. It never moves when pressed and never takes game, type or gold colour. It is dropped when a card sits inside another card, a sheet or a dialog, and on grid items you don't own (seen Pokémon cards, Codex Pokémon and game cards), which get a 1px line instead.
   - **Flat.** Secondary buttons (cream on the page, inset fill on cards, with a 1.5px line so they still read as buttons, and no press); dialogs, sheets and menus (overlay shadow only); pills, chips, arrows, flags and pickers; the Codex hero art and game header.

7. **Motion is a reward.** Hover lifts and the Pokémon hop are fine on things you can open. Slap and pop play at the moment something is recorded or marked (a badge, a milestone, a catch, a found item, the partner you pick), never on page load or redraw. The meadow's Pokémon pop in once per visit. Controls and toasts don't bounce, and nothing loops. Respect reduced motion and the Motion setting.

8. **Tools are quiet in their chrome, not in their data.** Tables, matrices and forms sit on quiet cards with no coloured lip and no game fill. Their data keeps its colour: matchup cells keep their ok and danger tints, type chips and dots keep type colour, your Pokémon keep their small stickers, and "Pressure" stays a small red tag. A verdict is a small mark (v3's pill, or an icon and a word), never a filled banner. In forms the only colour is action green (Save, switches, the selected segment); unsaved changes show in the section footer and the field's label, not as a game-colour lip.

## 4. Screen map

What is loud on each screen. Anything not mentioned stays as v3 draws it.

| Screen             | Loud                                                                                                                   | Lively                                                         | Notes                                                                                                                                                                  |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Site home, Intro   | Hero, partners standing on the meadow                                                                                  | Partner art                                                    | The meadow, per the rule below                                                                                                                                         |
| Log in, Sign up    | None                                                                                                                   | Partners peeking over the card                                 | A form: quiet                                                                                                                                                          |
| Mainline home      | The meadow band in the chosen Play's colour: cover shelf, the team on the grass, Continue                              | The team                                                       | Latest moments: a quiet card with the medallion strip. A new screen (the app only redirects to Plays today)                                                            |
| Plays list         | Each Play's cover on its soft game tile                                                                                | The team sprites                                               | Card itself quiet; progress bars in the game colour                                                                                                                    |
| Play header + tabs | Header card in game colour, dotted texture, Play name in Fredoka, the cover; the same card condensed as the docked bar | None                                                           | The loudest thing in the app, on purpose                                                                                                                               |
| Play Overview      | Team stickers; badge stamp card                                                                                        | Pokémon art                                                    | Next objective card quiet (Fredoka title, main Record button); progress and recent moments quiet                                                                       |
| Team roster        | Active and reserve stickers                                                                                            | Profile art                                                    | Detail panel quiet; editing is a form                                                                                                                                  |
| Team Plan          | None                                                                                                                   | Planned targets (stickers if found, dashed silhouettes if not) | A comparison: quiet                                                                                                                                                    |
| Team Analysis      | None                                                                                                                   | Pokémon in the matrix and the report                           | Four cards (your call, 2026-09-29), Team health first; verdict as v3's pill; matrix chrome quiet, cells keep their meaning tints; Overall / Story matchups switch kept |
| Play History       | Milestone and badge medallions                                                                                         | Pokémon medallions                                             | Rows in one card, separated by space (a change from v3, see §6)                                                                                                        |
| Story              | Next milestone row; the stamp card; the stamp when recording                                                           | "Your team then"                                               | Done rows keep their medallions, without the game wash; Next objective card quiet                                                                                      |
| Pokédex            | Caught stickers                                                                                                        | Seen cards                                                     | Missing = dashed silhouette; toolbar quiet                                                                                                                             |
| Collectibles       | Found items and the hero in gold                                                                                       | The collectible's art                                          | Checklist chrome quiet                                                                                                                                                 |
| Account settings   | The trainer card that leads it                                                                                         | Its Pokémon                                                    | Everything else quiet                                                                                                                                                  |
| Play settings      | None                                                                                                                   | None                                                           | A Play tab; quiet form. A new screen for the app                                                                                                                       |
| Codex (all pages)  | None                                                                                                                   | Pokémon art and type colour                                    | Reference: quiet. Covers show the game; version marks stay; the Pokémon entry keeps "In your Plays"                                                                    |

**Meadow** (v3 rule, 2026-09-27): for front doors and choosing a game only: the public Home, Start a Play, the signed-in Homes (your Play's team standing on it, in its game's colour) and New Play. Never inside a Play. One meadow per page. The Intro's closing meadow is the first to go if it starts to feel like one too many. EmptyState keeps its small patch of grass under one Pokémon; that is not the meadow.

## 5. Kept from v3 unchanged

- The palette, ink steps, action green `#3B8360`, meaning colours, gold, and their contrast fixes (v3 `REDESIGN.md` §2, _Tokens_).
- The game colour table and tint strengths (`GAME_COLOURS` in v3 `index.html`).
- Type colour rules (white labels, the four palest types deepened in chips).
- The Play header card: soft game fill, dotted texture, Fredoka Play name, the cover, the solid active tab, the docked bar.
- Stickers for owned Pokémon: type tint, 4px white border, tinted lip.
- Pokédex states (caught, seen, missing) and the one Pokémon card.
- The badge stamp card with tilted stamps and gold League stamps.
- Moments as one record with one medallion (white ring, small lip, gym badges in type colour, other milestones gold).
- Progress bars in the game colour.
- Fredoka as the heading font.
- The meadow on the front doors, with your team standing on it.
- Team analysis's four cards, each with a specific line and the reason in a tooltip.
- Copy rules and words (Play, Plan, Missing, Start a Play, dates month first, no em dashes in UI).
- The "one sentence" rule where a page reads data for you.
- Global pages in Voydex green.
- Reduced-motion support.

## 6. Changed from v3

| v3                                                                                                                         | Now                                                                                                                                                                                                      | Why                                                                                                                                 |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Fredoka on the main button and on some labels under 16px                                                                   | Every button and anything under 16px in Nunito; headings, the Play name, owned-sticker names and big figures keep Fredoka                                                                                | The main button was the only control in Fredoka. Small rounded display type is the likeliest toy signal; the first slice tests that |
| Lips on secondary buttons, every card, dialogs, menus, pickers                                                             | Coloured lip only on the main button, owned things and the Play's identity; section cards keep a thinner (3px) neutral clay edge; secondary buttons, dialogs, menus and grid cards you don't own go flat | Fewer coloured edges make owned things read as special, without turning cards back into v1's flat look                              |
| Game colour as solid fills on pills, segments, pickers and markers, and as washes on rows, fields and the Team health card | Fill only on the Play's identity (header, docked bar, active tab, cover tiles, Home band, New Play); accent elsewhere; one soft selected style                                                           | Keeps tools from competing with the header                                                                                          |
| Team analysis: Team health filled in the game colour; the battle report's verdict as a filled banner                       | Four cards kept with the clay edge; Team health on the inset fill; the battle report's banner becomes v3's small pill                                                                                    | Analysis is a tool. The Overall verdict was already a small mark                                                                    |
| History: each record on its own card                                                                                       | Rows in one card, separated by space                                                                                                                                                                     | Lets the medallions carry the page                                                                                                  |
| Seen Pokémon and Codex cards with the card edge                                                                            | Flat with a 1px line                                                                                                                                                                                     | Caught stickers stand out                                                                                                           |
| Codex: game-tinted version-group header; Champion as a gold earned stamp                                                   | Cream header, cover carries the game; Codex badges shown without gold or slap                                                                                                                            | Gold is for what you earned                                                                                                         |
| Stickers on starter choices, planned Pokémon and the Planner dock                                                          | Plain cards or dashed silhouettes until you own them                                                                                                                                                     | v3's own rule: stickers for what you own                                                                                            |
| Stamp slap replays on every redraw; gym badges never slap; Planner wiggle loops                                            | Slap and pop only at the moment of recording; nothing loops; controls don't bounce                                                                                                                       | Motion as a reward (a code fix more than a design change)                                                                           |
| Mockups first, in one HTML file                                                                                            | Tokens and components in the repo, screens built against real data                                                                                                                                       | The study was outgrowing what the app can absorb                                                                                    |

**Scope (order of work, not design):**

| Screens                                                                                               | When                                                                                                                                                                           | Why                                                                                                 |
| ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------- |
| Team Planner and My Plans, Statistics, Collection, Welcome, You (phones)                              | After the core screens, from v3's mockups, under these rules                                                                                                                   | They need data the app doesn't have yet, and Statistics and Collection still need one counting unit |
| Story matchups                                                                                        | Not parked. Team analysis keeps its Overall / Story matchups switch; the reading ships when encounter data exists, shown as not available until then, as production does today | It is part of a screen the app already has                                                          |
| Mainline home, Play settings, New Play, Start a Play, Forgot password, New password, Check your email | New screens for the app. New Play with Plays, the auth screens with Login, Mainline home and Play settings after the core Play screens                                         | The app has none of them today                                                                      |
| Links to parked screens (desktop nav, the Planner tab, You rows, "Plan a team")                       | Keep v3's nav layout; hide or disable each link until its screen ships                                                                                                         | No dead ends in the meantime                                                                        |

## 7. Components to build first

Restyled shadcn primitives (Button, Dialog, Sheet, Menu, Select, Tooltip, Input, Switch) plus Voydex components:

1. **PlayHeader** and its docked bar (game colour, texture, Fredoka name, cover, 5px game lip) and Play tabs
2. **PokemonCard** with caught, seen and missing states
3. **Sticker / TeamTile** (owned, with lip)
4. **TypeChip / TypeDot**
5. **Medallion** and **RecordRow** (moments)
6. **Stamp** (badge, tilted) and the stamp card
7. **ProgressBar** (game accent)
8. **PlayToken** (a Play's cover on its game tile)
9. **TrainerCard**
10. **HealthCards**
11. **EmptyState** (one Pokémon on grass, one sentence, two actions)

## 8. Build order

1. **Tokens and fonts** on a redesign branch: swap DM Sans + Lora for Nunito + Fredoka, add v3's tokens as CSS variables, remove the journal textures. Light mode only for now, but tokens named so dark mode is a second set of values.
2. **Components** above.
3. **First slice: Play header + Overview** (the loudest screen) and **Pokédex** (dense and mostly quiet), on desktop and phone, side by side with v3. Two things to settle there: card edge at 3px or v3's 4px, and whether Nunito on the main button removes the toy feel without losing warmth.
4. Then Team, Story, History, Analysis, Plan, Collectibles, Account settings, Plays.
5. Then the new screens the core loop needs (New Play, Start a Play, Mainline home, Play settings, auth screens), the Codex and the public site.
6. Only then the parked screens, with v3's data gaps log (§7).

## 9. Decided

1. **Dark mode** (Tiago, 2026-10-12): added later, whenever we're ready. It isn't scheduled in the build order. The tokens are still named by role so dark mode can be a second set of values without renaming anything.
2. **Logo** (Tiago, 2026-10-12): the "V" tile stays a placeholder for now.

Still to settle in the first slice: card edge at 3px or v3's 4px, and the main button in Nunito (§8 step 3).
