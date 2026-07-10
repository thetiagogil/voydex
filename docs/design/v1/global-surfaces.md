# V1 Global Surface Specifications

This document specifies global V1 surfaces shared across or outside product
modules. Product behavior remains canonical in the product contracts; this file
owns design intent, information hierarchy, states, and open design questions.

## G-01 — Landing

**Direction status:** Accepted  
**Detailed specification status:** Provisional

### Purpose

Give visitors an immediate emotional sense of adventure and a small number of
clear ways into Voydex. The landing page should be a memorable product entry,
not a long-form marketing page or a neutral application dashboard.

### Accepted Experience

- Use a full-viewport scenic background with an adventurous overlook toward a
  distant destination such as a village, settlement, or landmark.
- Provide paired day and night versions of the same scene. Light theme shows
  day; dark theme shows night.
- Preserve enough visual quiet near the center for the brand and actions to
  remain legible without covering the landscape with a large opaque panel.
- Center the Voydex brand name, a short product description, and a compact
  group of quick actions.
- Keep the composition warm, polished, and Pokémon-adjacent without copying
  Pokémon branding or becoming overly game-like.
- The current background concept may be refined or replaced, but its emotional
  direction and day/night relationship should remain.

### Current Composition To Preserve

The existing implementation already establishes the intended structure:

1. scenic layered background;
2. separate brand mark;
3. separate Voydex title;
4. native text description;
5. native interactive actions.

This separation keeps brand assets crisp while preserving responsive layout,
accessible text, and real controls.

### Content Hierarchy

1. Voydex identity.
2. One concise sentence explaining the product promise.
3. One primary entry action.
4. A small set of secondary discovery actions.

Avoid feature grids, product statistics, screenshots, or long explanatory
sections on the hero. Deeper explanation belongs on Intro or contextual module
surfaces.

### Action Behavior

**Status: Current behavior is provisional pending action-label review**

- The primary action enters Voydex. For a signed-out user it starts login; for
  a signed-in user it follows the accepted last-active-module resolver.
- A public Codex action lets visitors explore useful content without creating
  an account.
- A secondary learn-more action may open Intro if Intro remains a distinct V1
  surface.
- Actions must remain native links or buttons with visible labels and keyboard
  focus states.

### Theme And Background Behavior

- The initial theme follows the user's system preference.
- Light theme selects the day scene; dark theme selects the matched night scene.
- If Voydex later supports an explicit saved theme choice, the resolved app
  theme should control the scene rather than system preference overriding the
  user's selection.
- Theme switching should not cause a disruptive flash, layout shift, or loss of
  text contrast.
- Day and night assets should share composition and focal points so the layout
  remains stable across themes.

### Responsive Requirements

- Preserve the sense of approaching a destination at desktop and mobile sizes.
- Define deliberate focal points and crop behavior rather than relying on one
  generic `background-size: cover` result for every aspect ratio.
- Keep the brand, description, and actions away from visually busy areas.
- Stack actions on narrow screens without allowing labels to wrap awkwardly.
- Respect safe areas and short viewport heights.

### Accessibility And Quality

- Keep a real text equivalent for image-based brand lettering.
- Maintain readable contrast in both scenes through art direction and a subtle
  overlay; do not solve readability with a heavy generic panel.
- Make every action keyboard accessible with clear focus treatment.
- Optimize the paired hero assets so the atmospheric background does not make
  first entry feel slow.
- The landing page should remain useful if the decorative background fails to
  load.

### Candidate Shared Patterns

- Theme-aware paired scenic background.
- Layered brand mark and title treatment.
- Compact centered hero action group.
- Public-to-authenticated entry action.

These are candidates until later global and module surfaces demonstrate real
reuse. The landing composition itself should not become a generic page template.

### Data And Database Impact

- Authentication state changes the primary action behavior.
- Last-active-module entry is covered by requirement `DR-001`.
- Day/night scene selection is presentation behavior, not a database concern.
- No new database gap has been identified by this direction.

### Open Questions

- What exact primary and secondary action labels best communicate entry,
  public Codex access, and product explanation?
- Does Intro remain a distinct V1 surface, or should its essential explanation
  be available elsewhere?
- Should the landing expose a manual theme control, or only reflect the resolved
  app theme?
