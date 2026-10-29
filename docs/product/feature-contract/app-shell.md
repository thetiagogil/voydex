# Accounts, Settings And System States

This is the Accounts, Settings And System States part of the [Feature Contract](../feature-contract.md).

## Authentication And Resumption

Start a Play (`/start`) lets a visitor pick a game and partner before having
an account; the pick travels through Sign up and Log in and waits on the
account until Mainline starts the Play. Log in and Sign up share `/login`;
Reset your password, Choose a new password and Check your email are their own
routes ([Navigation And Routes](../navigation-and-routes.md)). Sign up has one
password with Show and no confirmation field (v3), then Welcome (`/welcome`):
your name and a Pokémon icon on the trainer card, before your first Play.
Welcome shows once: Continue saves them and Skip saves nothing, and either one
marks Welcome done, after which `/welcome` just moves on (`profiles.welcome_completed_at`).

Login is a focused global transition with visible Log in, Sign up, Recover
account, Check your email, or Choose a new password identity. Direct Login uses
the normal last-active-module resolver. A user who is already authenticated is
redirected to the validated destination or normal app entry rather than shown
the form again.

When authentication interrupts a protected route or Codex action, Login shows
a compact summary of what will resume. Preserve the exact internal destination,
game, Pokémon/form, content scope, action branch, and public origin when they
apply. Validate all continuation data, reject external or tampered targets, and
revalidate the owning Mainline operation after authentication. Login never
performs or automatically replays the mutation.

Log in uses Email, Password, password visibility, recovery, and an alternate
Create account action. Sign up uses Email, Password with visible requirements
and visibility, and an alternate Log in action. Do not add Profile,
preferences, game selection, or onboarding fields to account creation.

Password recovery returns the same neutral Check Email response whether or not
an account exists. Recovery links open a focused new-password mode and handle
expired or reused links without losing a safe destination. When email
confirmation is required after Sign up, show a clear Check Email state instead
of redirecting into a protected loop.

Recoverable errors preserve Email and non-sensitive intent, clear passwords,
associate field errors, translate provider messages into stable user-facing
copy, and move focus to the invalid field or summary. Pending state disables
only the submitted action. An expired session explicitly asks the user to log
in again, preserves safe read intent, and never silently replays a write.

## Global Settings

Global Settings is one authenticated `/settings` page outside product modules,
one readable column: the trainer card, which is the profile form (your
Pokémon icon, display name and default trainer name; the card changes as you
pick or type and Save appears once it has changed), Look and feel, New Play defaults, Account and Your data. On phones
`/you` gathers the trainer card, Statistics, Collection and Settings.

Account shows your email with Change email (confirmed by a link Supabase
sends; the change takes effect once it is opened), Change password, and Log
out on this device. Your data offers Delete your account; there is no
download or import of your data for now (a Plan's share link is the one
import). Account deletion requires recent-auth handling when
necessary, a complete consequence summary, typed confirmation, one reviewed
server-owned operation, and no partial success; it removes the Auth identity
and dependent user-owned data, clears the session, and returns to the public
entry. Until that operation exists the action is pending data.

Look and feel and New Play defaults are cards that save on their own from a
footer that appears once they have unsaved changes. Motion (Follow device,
Full or Reduced) is saved on `public.user_preferences` and applies across the
app: Follow device lets the device's own reduced-motion setting decide, Full
and Reduced override it (the root element carries `data-motion`). Mode and
Colour theme wait on #38 with pending markers; only the light look is
designed. New Play defaults are what a new Play starts tracking: Story on or
off, the Pokédex as caught only or caught and seen, and Collectibles on or
off. New Play opens its Tracking step from them and every other way a Play
starts (Home's offer, Start a Play) uses them too; each Play then keeps its
own switches (Play Settings), so changing a default never touches an existing
Play. Pokémon reuse is a Play's No Pokémon reuse rule, not a setting.

Your icon is one of the starters that have a Legends: Z-A icon (`profileIconSlugs`
in `src/config/profile-icons.ts`; the pictures are `pokemon/icons/<slug>.webp` on
the assets site): the Gen 1, Gen 3 and Gen 6 trios, Chikorita, Totodile, Tepig,
Pikachu and Eevee. Each sits on a pale wash of its type and fills its disc. Tapping the picked icon again puts back your initial. It shows
on the trainer card, the account menu and the tab bar, and replaces the initial
everywhere. The default trainer name is what New Play and the Play started from
Home's offer fill in; left empty they use your display name. Both are only a
start: each Play keeps its own trainer name.

Play-specific completion choices, optional content, Pokédex and Collectible
scope, Rules, Tags, lifecycle, and metadata remain inside the owning Play or
Plan workflows rather than Global Settings.

## Shared System States

Use the smallest honest state: local pending/error for one operation,
partial/unavailable state when the page remains useful, page state when the
primary task cannot render, and global service status only when several
surfaces are affected.

Initial reads keep the shell and use one accessible page-level Spinner with a
concise label. V1 uses no Skeletons. In-place work preserves content and uses a
localized Spinner on the responsible control or section.

True empty, filtered empty, unrecorded, unavailable, and zero are distinct.
Filtered empty offers Reset. Partial failures retain identity,
navigation, validated criteria, and unaffected sections with local retry.

Page error uses a semantic heading, concise explanation, Try again, and one
safe owner-appropriate destination. It does not expose provider, database, or
stack details. Public Not Found routes to Home and Codex; protected resource
states avoid leaking existence and route to the nearest owning library rather
than always Mainline Plays.

Permission, locked-module, expired-session, disabled, and service-unavailable
states remain distinct. A broad connection problem uses a persistent
user-facing status banner with impact and retry, not a small tooltip-only
database icon. Success uses a toast, inline confirmation, or destination focus
according to consequence and navigation.
