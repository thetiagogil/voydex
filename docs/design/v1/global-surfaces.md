# V1 Global Surface Specifications

This document specifies global V1 surfaces shared across or outside product
modules. Product behavior remains canonical in the product contracts; this file
owns design intent, information hierarchy, states, and remaining visual
validation questions.

## G-01 — Landing

**Direction status:** Accepted

**Detailed specification status:** V1 functional contract accepted; visual
validation pending

### Purpose

Give visitors an immediate emotional sense of adventure and a small number of
clear ways into Voydex. The landing page should be a memorable product entry,
not a long-form marketing page or a neutral application dashboard.

### Accepted Experience

- Use a full-viewport scenic background with an adventurous overlook toward a
  distant destination such as a village, settlement, or landmark.
- Use the daylight version of the scene for the light-first V1 experience.
  Retain any night study only as reference material for a deliberately designed
  post-V1 dark theme.
- Preserve enough visual quiet near the center for the brand and actions to
  remain legible without covering the landscape with a large opaque panel.
- Center the Voydex brand name, a short product description, and a compact
  group of quick actions.
- Keep the composition warm, polished, and Pokémon-adjacent without copying
  Pokémon branding or becoming overly game-like.
- The current background concept may be refined or replaced, but its daylight
  adventure premise and layered composition should remain.

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

### Scope Boundary

- Landing contains only the atmospheric scene, Voydex identity, one general
  description, and a compact action group, with at most a very small amount of
  supporting content if later usability testing proves it necessary.
- Its first impression should be emotional and immediate: "this is beautiful"
  followed quickly by an understandable choice.
- Do not place onboarding, feature walkthroughs, module explanations, product
  tours, long value propositions, or account-setup guidance on Landing.
- Users who want explanation or onboarding can deliberately open Intro.

### Action Behavior

**Status: Accepted working set; wording and visual hierarchy may be refined
later**

- `Enter the app` is the primary action. For a signed-out user it starts login;
  for a signed-in user it follows the accepted last-active-module resolver.
- `Browse Codex` lets visitors explore useful public content without creating
  an account.
- `Learn more` opens Intro.
- Retain these three choices for the current V1 design pass. Exact wording,
  ordering, and presentation can be revisited when the complete Landing and
  Intro flow is visually designed.
- Actions must remain native links or buttons with visible labels and keyboard
  focus states.

### Light-First Background Behavior

- V1 uses one deliberate light theme and the daylight scene regardless of the
  browser or operating-system color preference.
- Do not expose System, Light, or Dark choices in V1.
- A later dark mode should be designed as a coherent night expedition across
  the full product, including a matched Landing scene, rather than produced by
  automatically inverting the light theme.
- If that later mode is introduced, switching must avoid disruptive flashes,
  layout shifts, and loss of text contrast.

### Responsive Requirements

- Preserve the sense of approaching a destination at desktop and mobile sizes.
- Define deliberate focal points and crop behavior rather than relying on one
  generic `background-size: cover` result for every aspect ratio.
- Keep the brand, description, and actions away from visually busy areas.
- Stack actions on narrow screens without allowing labels to wrap awkwardly.
- Respect safe areas and short viewport heights.

### Accessibility And Quality

- Keep a real text equivalent for image-based brand lettering.
- Maintain readable contrast in the daylight scene through art direction and a subtle
  overlay; do not solve readability with a heavy generic panel.
- Make every action keyboard accessible with clear focus treatment.
- Optimize the hero assets so the atmospheric background does not make
  first entry feel slow.
- The landing page should remain useful if the decorative background fails to
  load.

### Candidate Shared Patterns

- Light-first scenic background with a future night-theme extension point.
- Layered brand mark and title treatment.
- Compact centered hero action group.
- Public-to-authenticated entry action.

These are candidates until later global and module surfaces demonstrate real
reuse. The landing composition itself should not become a generic page template.

### Data And Database Impact

- Authentication state changes the primary action behavior.
- Last-active-module entry is covered by requirement `DR-001`.
- The fixed V1 daylight scene is presentation behavior, not a database concern.
- No new database gap has been identified by this direction.

### Theme-Control Decision

V1 is intentionally light-only and does not expose a public or authenticated
theme control. A future dark mode and Appearance control require their own
night-expedition design pass before becoming part of the product contract.

## G-02 — Intro

**Direction status:** Accepted

**Detailed specification status:** V1 functional contract accepted; visual
validation pending

### Purpose

Provide the dedicated place for users who choose to understand Voydex, its
modules, and how to begin. Intro owns explanatory and onboarding content so
Landing can remain visually focused and instantly understandable.

### Accepted Boundary

- Intro is reached deliberately from Landing's learn-more action or another
  contextual help entry.
- Intro may explain the product promise, Mainline, Codex, the core V1 loop, and
  the first useful actions.
- General onboarding belongs here rather than on Landing.
- Intro should remain concise and visual even though it can contain more detail
  than Landing.
- Intro is not currently defined as a mandatory first-run gate. Any mandatory
  account setup must be justified separately by an actual user or data need.

### Accepted User Outcome

By the end of Intro, a visitor should understand:

1. **What Voydex is:** a companion for tracking, remembering, and planning
   Pokémon playthroughs.
2. **What problem it solves:** adventures, teams, progress, and memories become
   scattered or disappear inside old save files and disconnected notes.
3. **How it helps:** track a Play, preserve meaningful history, plan future
   adventures, and use reference context while making decisions.
4. **How the app is organized:** Mainline is the private personal workspace;
   Codex is the public encyclopedia and contextual starting point.
5. **Where to begin:** enter the app for personal workflows or browse Codex
   without an account.

The fifth point is the missing conclusion after explaining value: Intro should
leave the visitor ready to take one clear next action.

### Accepted Narrative

**Status: Accepted**

Use one concise, scrollable story rather than a carousel or mandatory stepper:

1. **Promise:** a compact hero stating what Voydex is and why it matters.
2. **Problem and value:** old saves remember data poorly; Voydex preserves the
   useful shape and personal story of a playthrough.
3. **Track, remember, and plan:** three concise pillars with concrete examples,
   not a complete feature list.
4. **Mainline and Codex:** two connected areas, with clear private/public and
   action-ownership differences.
5. **The journey:** a lightweight visual loop from explore to plan, play,
   record, remember, and begin again.
6. **Choose a starting point:** finish with actions to enter Voydex or browse
   Codex.

Keep the page easy to scan in roughly one minute. Prefer short headings, one or
two sentences per idea, useful icons or illustrations, and generous spacing.
Avoid repeating the same value statement in multiple cards.

### Content To Exclude

- Future module roadmap or extensibility messaging.
- Technical architecture and internal module details.
- Exhaustive feature lists or database capabilities.
- Detailed instructions for individual screens.
- Forced account creation before public value is visible.
- A slide-by-slide onboarding flow that hides the overall story.

### Entry-Action Decision

Adapt the final personal-workspace label to authentication state while
preserving destination meaning: signed-out users `Log in to Voydex`; signed-in
users `Open Voydex` through the accepted module resolver. `Browse Codex`
remains public in both states.

## G-03 — Login And Authentication

**Direction status:** Accepted

**Detailed specification status:** V1 functional contract accepted; visual
validation pending

### Purpose

Authenticate a user without losing the protected destination or deliberate
Codex action that brought them here. Login is a focused global transition, not
an onboarding page and not a generic detour into Mainline.

### Current Implementation Review

**Reviewed:** 2026-07-14

**Outcome:** visually coherent foundation; intent, recovery, validation, and
semantic refinement required

The current implementation already provides:

- one attractive scenic authentication card on desktop and mobile;
- labelled email, password, and confirmation fields;
- working Log in and Sign up modes;
- pending labels with localized Spinners;
- safe internal `next` validation that rejects external redirects;
- protected-route redirection with the original pathname and query;
- password mismatch feedback and preserved mode/next state.

The review also found:

- a protected Settings request renders the same generic playthrough copy as a
  direct Login visit, so the user cannot see what will resume;
- the public shell can retain an unrelated Codex module selector while Login is
  acting as a global transition;
- the semantic `h1` is visually hidden and always says `Log in to Voydex`, even
  in Sign up mode;
- a server validation error clears the entered email, moves focus back to the
  document body, and does not associate the summary with one field;
- provider errors are displayed directly rather than translated into stable,
  user-facing messages;
- password recovery, email-confirmation guidance, already-authenticated
  behavior, and an explicit expired-session state are not implemented;
- route-only `next` state exists, but the complete protected Codex action
  preview and resumption contract is not implemented.

### Shell And Information Hierarchy

Use a simplified global shell:

1. Voydex logo with a Home destination.
2. Visible `Log in`, `Sign up`, `Recover account`, or `Choose a new password`
   heading according to the active mode.
3. One concise mode-specific explanation.
4. A compact intent summary when a protected route or Codex action will resume.
5. The focused form.
6. The alternate authentication mode and a safe cancel/return action.

Do not show module view navigation or an unrelated remembered module selector
inside this focused transition. The scenic background may remain because it
connects authentication to Voydex's entry experience, but the form and intent
must remain the visual priority.

### Direct Login

Direct `/login` uses Log in mode and explains that authentication opens the
user's personal Voydex workspace. It contains:

- Email.
- Password with an accessible show/hide control.
- `Forgot password?`.
- Primary `Log in`.
- Secondary `Create an account`.

When no explicit destination or action exists, success follows the accepted
last-active-module resolver. A user who is already authenticated is redirected
to the validated destination or normal app entry rather than seeing the Login
form again.

### Sign Up

Sign up remains a mode of the same focused surface. It contains:

- Email.
- Password with visible concise requirements.
- Confirm password.
- Primary `Create account`.
- Secondary `Log in`.

Do not collect display name, avatar, preferences, game choices, or onboarding
answers during account creation. Those either belong to Settings or remain
optional after entry.

If email confirmation is required, success becomes a clear `Check your email`
state that names the address, explains the next step, offers resend with an
appropriate cooldown, and preserves the intended destination. Do not redirect
an unauthenticated user into a protected loop.

### Intent Preview And Resumption

Show a compact preview only when Login interrupted a meaningful task:

- a protected route uses language such as `Log in to open Settings` or
  `Log in to continue to your Plays`;
- a Game-origin action identifies the exact game and Start Play, Create Plan,
  or Game List intent;
- a Pokémon-origin action identifies the exact game, species/form, and selected
  Mainline branch.

The preview is informational. Login never performs the mutation. After success,
the protected destination revalidates the complete context, ownership, current
capacity, availability, and stale state before continuing.

Use only validated internal destinations. Reject external, protocol-relative,
expired, malformed, unsupported, or tampered continuation data. When an intent
cannot resume, explain that it expired and offer the nearest safe destination
instead of silently dropping the user on an unrelated page.

`Cancel` returns to the exact public origin when one exists. A direct Login has
`Back to home` rather than a misleading task cancellation.

### Password Recovery

`Forgot password?` opens a focused recovery mode within the authentication
route family. It requests Email and always returns a neutral `Check your email`
response that does not reveal whether an account exists. Rate-limit and provider
failures use stable, non-technical language.

A valid recovery link returns through the existing auth callback and opens a
`Choose a new password` mode with Password and Confirm password. Success
invalidates the recovery intent, confirms the password change, and continues to
the validated destination or Settings Account. Expired or reused links offer a
new recovery request without losing a safe destination.

### Expired Session

An expired authenticated session reuses Login with an explicit message:
`Your session expired. Log in again to continue.` Preserve a validated read
destination and non-sensitive action context. Never replay a mutation
automatically after authentication; the owning flow must show its confirmation
and validate again.

Sensitive fields are never persisted. A non-sensitive form draft may be kept
in current-browser memory only when its owning workflow can restore and
revalidate it safely. Otherwise say clearly that the user will need to review
the form again.

### Validation, Errors, Pending, And Success

- Perform field validation before provider submission where possible.
- Preserve Email and non-sensitive mode/context after a recoverable error; clear
  passwords.
- Associate field errors with their inputs and move focus to the first invalid
  field or an error summary when several fields fail.
- Translate provider errors into stable messages without exposing internal
  service wording or confirming whether an account exists.
- Disable only the submitted action while pending and announce the pending
  label without replacing the form.
- Prevent duplicate submissions.
- Successful navigation moves focus to the destination heading. A non-
  navigational Check Email state moves focus to its heading.

### Responsive And Accessibility Requirements

- The card fits common phone widths and short viewport heights without
  horizontal scrolling or hiding the submit action.
- The visible heading is the semantic `h1`; card styling does not replace
  heading structure.
- Every input keeps a persistent visible label, purpose-appropriate
  autocomplete value, and useful error association.
- Password visibility controls have stable accessible names and do not move
  focus unexpectedly.
- Intent, error, pending, and confirmation meaning never depends on color.
- Background artwork remains decorative and cannot reduce text or focus
  contrast.

### Data And Database Impact

- Authentication identity and password recovery remain owned by Supabase Auth.
- `public.profiles` and `public.user_preferences` are already created after
  signup through the existing private trigger.
- The current safe route redirect is application state, not user-owned
  persistence.
- Protected action resumption requires validated application intent but no new
  V1 database table.
- Recovery, confirmation, intent preview, and error/focus corrections are
  application/auth workflow work rather than a new database-schema requirement.
- See requirement `DR-044`.

## G-04 — Global Settings

**Direction status:** Accepted

**Detailed specification status:** V1 functional contract accepted; visual
validation pending

### Purpose

Give an authenticated user one calm place to manage their Voydex identity,
global behavior, and account. Global Settings never owns Play-
specific completion, content, Rules, Tags, or lifecycle choices.

### Current Implementation Review

The current protected Settings route could not be visually audited from the
anonymous browser session. Code inspection confirms a simple centered page with
an Account card showing disabled Email and an Appearance card for System,
Light, or Dark theme. The Appearance control is implementation drift from the
light-first V1 direction and is not a target to preserve. Profile editing, reuse
preferences, recovery, sign-out, and account deletion are not present on the
page.

Treat the current narrow, single-column composition as a useful structural
reference, not a validated final layout.

### Route And Page Structure

- Canonical route: `/settings`.
- Settings requires authentication and lives outside Mainline and Codex module
  navigation.
- Use one readable vertical column with three stable sections: Profile,
  Preferences, and Account.
- Three sections do not justify V1 tabs, nested routes, or a permanent side rail.
  A compact in-page contents control may be tested later only if realistic
  composition becomes difficult to scan.
- Each editable responsibility saves independently. Do not add one global Save
  button for unrelated sections.

### Profile

Profile contains:

- optional Display name, saved as trimmed text or no display name;
- a read-only account Email summary or a direct reference to Account;
- the current initials-based avatar presentation.

Display name is the only V1 profile mutation. Validate the existing 100-
character limit and preserve the last saved value on failure. Avatar upload,
cropping, and remote-image management remain deferred even though the profile
model can hold an avatar URL.

### Preferences — Pokémon Reuse

Global reuse preferences help users avoid accidental repetition while
preserving creative freedom. Separate two questions:

1. **What counts as reuse?** Off, same form, same species, or any member of the
   evolution family.
2. **How should Voydex respond?** Warn me, or hide/de-emphasize matching
   candidates by default with an explicit `Show used Pokémon` override.

When reuse checking is Off, the response control is disabled and explained.
V1 does not expose the database-supported `block` behavior. A global preference
must never prevent a user from adding a valid Pokémon, changing a Plan, or
continuing a Play.

The preference applies to Mainline Pokémon selectors, Plan checks, and reuse
warnings. It does not alter public Codex results, rewrite existing Teams or
Plans, change Collection evidence, or establish a favorite.

### Deferred Appearance

V1 uses the canonical light-first presentation and does not show an Appearance
section. A later dark mode should arrive with a purpose-designed night
expedition theme, an explicit control contract, and full public/authenticated
surface validation. The current browser-local System, Light, and Dark control
is not part of the accepted V1 experience.

### Account

Account contains:

- read-only Email;
- `Send password reset link` or equivalent password-management action;
- `Sign out`;
- a visually separated Danger zone with `Delete account`.

V1 does not require changing the account email. Password management reuses the
neutral recovery flow and does not reveal provider internals.

Deleting the account requires recent authentication when the provider requires
it, a focused consequence summary, and an explicit typed confirmation. Explain
that Plays, Plans, Team history, Progress, Collection evidence, Game List,
preferences, Rules, Tags, and the profile will be permanently removed. Do not
offer Archive as if it were equivalent to account deletion.

Deletion must remove the Auth identity and dependent owner-scoped application
data as one reviewed operation. Failure leaves the account usable and reports
no false success. Success clears the session, returns to the public entry, and
does not expose deleted personal data through stale navigation.

### Save, Conflict, And Recovery Behavior

- Profile and Preferences use section-scoped `Save changes` and `Cancel` only
  while dirty.
- Account actions each own their confirmation and pending state.
- Keep valid current content visible during a save and place the Spinner on the
  responsible action.
- On stale profile or preference state, explain that newer settings exist and
  offer to reload before overwriting.
- Navigation away from dirty Profile or Preferences requires a standard unsaved
  changes warning.
- A section failure never disables unrelated settings.

### Responsive And Accessibility Requirements

- Keep the single-column reading order on desktop and mobile.
- Do not compress the three sections into horizontal tabs on narrow screens.
- Form controls use visible labels, help text only where behavior is not
  obvious, and error association.
- Reuse scope and response remain understandable without color or icons.
- Destructive Account actions are separated through hierarchy and consequence,
  not only red styling.
- After save or failure, focus moves to the relevant confirmation, summary, or
  invalid field without returning to the page top unnecessarily.

### Data And Database Impact

- `public.profiles.display_name` already supports the V1 Profile field.
- `public.user_preferences` already supports reuse scope and warn/filter
  behavior. V1 deliberately does not expose `block`.
- V1 has no user-owned theme state; later Appearance behavior remains deferred.
- Email and password remain Supabase Auth identity.
- Current ownership policies and cascades cover profile, preferences, Tags,
  Plays, Game List, Rules, and Plans, but no reviewed owner-callable account-
  deletion workflow exists. This is a genuine V1 backend gap because partial or
  client-side Auth deletion is unsafe.
- See requirements `DR-045`, `DR-046`, and gap `DG-023`.

## G-05 — Shared System States

**Direction status:** Accepted

**Detailed specification status:** V1 functional contract accepted; visual
validation pending

### Purpose

Give every Voydex surface a consistent, honest response to waiting, absence,
partial data, failure, access loss, and success. These states should help the
user recover without replacing useful content or exposing implementation
details.

### State Hierarchy

Use the smallest state that truthfully represents the problem:

1. local pending or local error for one action or section;
2. partial/unavailable state when the rest of the page remains useful;
3. page-level loading, empty, not-found, permission, or error when the primary
   task cannot render;
4. global service status only when several independent surfaces are affected.

Do not turn every recoverable condition into a full-page interruption or toast.

### Initial Loading

- Keep the persistent shell visible.
- Center one accessible page-level Spinner in the content region with a concise
  label such as `Loading Plays`.
- Never use Skeletons in V1.
- If the shell itself is still resolving, preserve a stable background and
  brand region rather than showing a white flash.

### In-Place Pending And Success

- Preserve valid content while an action runs.
- Place a localized Spinner and pending label on the responsible action or
  section; disable only the controls that could conflict.
- Prevent duplicate submissions.
- Use a short toast for low-consequence background confirmation, inline success
  for a form that remains visible, and destination-heading focus after
  successful navigation.
- High-consequence outcomes such as account deletion or Play deletion require a
  durable confirmation/destination, not only a disappearing toast.

### Empty And Filtered Empty

- A true empty state explains what is absent, why the surface is useful, and
  offers the owning primary action.
- A filtered empty state names or summarizes the active criteria and offers
  `Clear filters`; it does not pretend the underlying library is empty.
- An unavailable or unrecorded fact is not zero and is not an empty library.
- Do not duplicate a page-heading primary action inside a normal supporting
  empty section unless that state has replaced the page's ordinary action
  hierarchy.

### Partial And Section Failure

- Keep identity, navigation, and unaffected sections visible.
- Mark only the unavailable area and provide local retry when meaningful.
- Preserve validated filters, selections, unsaved non-sensitive input, and
  useful scroll/focus state.
- Do not replace a complete page with an error because one optional count,
  image, or supporting analysis failed.

### Page Error

- Use one semantic heading, a concise explanation, `Try again`, and one safe
  destination appropriate to the current module or global surface.
- Avoid generic `workspace` copy and fixed Mainline exits on Settings or Codex
  errors.
- Show an opaque error reference only when it can help support; never expose a
  stack trace, provider message, schema name, or database term.
- Retry re-runs the failed read without discarding validated route state.

### Not Found

Public not-found uses the public shell, one `Page not found` heading, a short
explanation, and clear routes to Home and Codex. `Enter the app` is useful only
when the missing URL was part of a protected or app-entry journey; it should
not become the universal primary action.

Protected resource routes use `This page is unavailable` when existence and
permission cannot safely be distinguished. Offer the nearest owning library or
module home. Do not claim that a private resource exists, or route every
protected failure to Mainline Plays regardless of its owner.

### Permission And Locked Modules

- Signed-out access to a released protected module explains that Login is
  required and preserves the intended destination.
- Signed-in permission failure says the user does not have access and offers a
  safe exit; repeated Retry is not the primary action.
- A disabled control or unreleased capability explains why it is unavailable
  without relying on a hover-only tooltip.
- Permission, not found, disabled, and service failure remain distinct states.

### Expired Session

Use the explicit Login mode defined by G-03. Preserve safe read destinations
and non-sensitive intent, never auto-replay a mutation, and explain whether a
form must be reviewed again. Clear invalid session cookies before retrying so
the user cannot become trapped in a refresh loop.

### Offline Or Service Unavailable

Use user-facing language such as `Voydex is having trouble connecting`, not
`Database unavailable`. When several surfaces are affected, show a persistent
status banner below the shell navigation with a concise impact statement and
`Try again`; do not rely on a small floating icon and hover tooltip.

If current data remains trustworthy, keep it visible and identify which actions
are temporarily unavailable. If the primary read has no usable result, show the
normal page-error pattern. Remove the global banner and announce recovery when
the service becomes healthy.

### Responsive And Accessibility Requirements

- Every page-level state has a semantic heading and logical reading order.
- Loading and non-urgent status changes use appropriate status announcements;
  blocking failures use alerts without repeatedly announcing the same message.
- Recovery actions have visible focus and useful labels.
- Focus moves to a new page-state heading after navigation or replacement and
  stays near local feedback for section changes.
- Icons and color support meaning but never carry it alone.
- Mobile states fit without horizontal scrolling, obscured controls, or fixed
  banners covering the primary action.
- Motion respects reduced-motion preferences.

### Data And Database Impact

- Most shared states are presentation and application-orchestration concerns.
- Health monitoring may read the existing health endpoint; it does not create
  user-owned state.
- Expired-session recovery reuses auth/session infrastructure.
- No new V1 database schema is required for loading, empty, partial, not-found,
  permission, service-status, or success presentation.
- See requirement `DR-047`.
