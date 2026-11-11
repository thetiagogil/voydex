# ADR 0009: The Whole App Is Plain Files

- Status: Accepted
- Date: 2026-11-11

## Context

After [ADR 0008](./0008-user-data-on-the-device.md) every page reads its data
on the device, and Supabase only signs you in and keeps backups. The app still
ran as a Cloudflare Worker (built with OpenNext) for three small jobs: making
pages on request, refreshing the login cookie, and finishing email links. A
Worker counts every request against a daily free limit and a CPU limit per
request, so a busy day could cost money or fail. The owner wants Voydex free
for good, never paying for other people's use.

## Decision

- The app is built with Next.js static export (`output: "export"`): every
  page is a plain file in `out/`, made once at build time, and Cloudflare
  serves the folder as static files (`wrangler.jsonc` has no Worker script).
  Static file requests are free and unlimited.
- Login, sign-up, password resets, email links and account changes call
  Supabase from the browser. The session lives in this browser's storage and
  the Supabase client refreshes it; there is no login cookie and no proxy.
- A page whose id the build can't know takes it from the query:
  `/mainline/plays/play?id=` and `/mainline/plans/plan?id=`.
- The Codex makes one page per Pokémon, base game and Pokédex at build time,
  each with its own title and description, so search engines and shared
  links see a real page. A page draws itself from the Codex's pre-built files
  in the browser, as before.
- React and Next.js routing stay, so page changes are as fast as before. The
  shared link never asks for a full prefetch: on a file host that request
  returns the page's HTML and the click never moves.
- The "Database unavailable" dot and `/api/health` are gone: nothing on the
  page depends on a server being up.

## Consequences

- Nothing runs on a server per visit; the only limits are Cloudflare's file
  count (20,000 per deploy; the build makes about 10,000) and size per file.
- A page that depends on its address shows its loading state for a moment
  while the browser reads the query.
- Old `/mainline/plays/<id>`, `/mainline/plans/<id>` and
  `/codex/pokemon/<game>/<species>` links stop working.
  Nobody else uses the app yet, so nothing redirects them.
- Server Actions, Route Handlers, `cookies()`, `headers()` and the proxy are
  not available. Anything that truly needs a server (account deletion,
  scheduled jobs) goes to a Supabase Edge Function.
- Supabase's Redirect URLs keep `/auth/callback`, which is now a page.
- Vercel stays a fallback host: it serves the same `out/` folder.
