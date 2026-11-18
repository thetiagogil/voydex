# Accounts, Settings And System States

This is the Accounts, Settings And System States part of the [Feature Contract](../feature-contract.md).

## Authentication And Resumption

The app opens without an account: your data lives on this device, and
signing in is only for backups (#248). The front page's Start a Play opens
the app, whose Home asks which game you are playing. Logging in is offered
inside the app and never asked for: Settings' Account card, the account menu
and You each carry Log in while you're signed out. `/login` is Log in only,
and its last line says what you have without an account (your Plays, saved
on this device only), never that it is "the same"; Reset your
password and Choose a new password are their own routes
([Navigation And Routes](../navigation-and-routes.md)). **There is no Sign
up for now** (2026-11-18): Voydex makes no new accounts, so the app has no
Sign up screen, no Check your email and no confirmation email, and Settings'
Account row and the Privacy policy say so. Logging in lands on Home with no
step in between: your name and icon are on the trainer card in Settings, and
New Play asks for the trainer name.

Login is a focused global transition with visible Log in, Recover
account, or Choose a new password identity. Direct Login
lands on Home (`/app`). A user who is already authenticated is
redirected to the validated destination or Home rather than shown
the form again.

When authentication interrupts a Codex action or a backup, Login shows a
compact summary of what will resume. Preserve the exact internal destination,
game, Pokémon/form, content scope, action branch, and public origin when they
apply. Validate all continuation data, reject external or tampered targets, and
revalidate the owning Mainline operation after authentication. Login never
performs or automatically replays the mutation.

Log in uses Email, Password, password visibility and recovery. It offers no
way to create an account.

Password recovery returns the same neutral Check Email response whether or not
an account exists. Recovery links open a focused new-password mode and handle
expired or reused links without losing a safe destination.

Recoverable errors preserve Email and non-sensitive intent, clear passwords,
associate field errors, translate provider messages into stable user-facing
copy, and move focus to the invalid field or summary. Pending state disables
only the submitted action. An expired session explicitly asks the user to log
in again, preserves safe read intent, and never silently replays a write.

## Global Settings

Global Settings is one `/app/settings` page outside product modules, open to
everyone, one readable column: the trainer card, which is the profile form (your
Pokémon icon, display name and default trainer name; the card changes as you
pick or type and Save appears once it has changed), Look and feel, New Play
defaults, Account, Your data and About Voydex (How it works, Privacy, Terms
and the fan-project notice). On phones `/app/you` gathers the trainer card,
Statistics, Collection, Library and Settings, then Log in, or Log out once
you've signed in. Leave the app sits on You and in the account
menu: it returns to the front page, which then shows until you continue
from it, and leaves everything on the device as it is.

Signed out, Account is one row, Back up to an account, with Log in (it
returns to Settings). Signed in, Account shows your email with Change email (confirmed by a link Supabase
sends; the change takes effect once it is opened), Change password, Sync
(when this device last synced with the account, with Sync now, or Choose
while a clash waits) and Log out on this device. When two devices changed
the same thing since they last synced, a dialog, wherever you are, asks
which version to keep: each choice names its device (This Mac, your iPhone)
and when it changed there; Later closes it and nothing syncs until you
answer. Your data offers Save backup (every Play, Plan and
setting as one gzipped file, `voydex-backup-<day>.json.gz`, with "Last backup
N days ago"), Restore (reads a file, says when it was saved and how many
Plays and Plans it holds, and after a confirm replaces everything on this
device in one go; an older file is upgraded first, a broken or newer one is
refused and nothing changes), whether this browser keeps the data (Install
where the browser offers it, Share then Add to Home Screen on an iPhone, and
a warning in an app's own browser), and Delete your account. On Home a quiet
line under the moments says when the data needs a hand: an app's own
browser, Safari on a phone without Voydex on the Home Screen, or 30 days
without a backup. Account deletion requires recent-auth handling when
necessary, a complete consequence summary, typed confirmation, one reviewed
server-owned operation, and no partial success; it removes the Auth identity
and dependent user-owned data, clears the session, and returns to the public
entry. Until that operation exists the action is pending data.

Look and feel and New Play defaults are cards that save on their own from a
footer that appears once they have unsaved changes. Motion (Full or None) is
saved on `public.user_preferences` and applies across the app: Full plays
every animation unless the device asks for reduced motion, and None stills
them all (the root element carries `data-motion="none"`). Search and
filters (Folded or Always open) is saved there too: Folded keeps every list's
search and filter bar under its search button until you open it or a search
or filter is on; Always open shows it on arrival, and the button still folds
it for that visit. Mode and
Colour theme wait on #38 with pending markers; only the light look is
designed. New Play defaults are what a new Play starts tracking: Story on or
off, the Pokédex as caught only or caught and seen, and Collectibles on or
off. New Play opens its Tracking step from them and every other way a Play
starts (Home's offer) uses them too; each Play then keeps its
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
