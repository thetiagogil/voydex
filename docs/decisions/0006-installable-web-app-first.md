# ADR 0006: The Phone Version Starts As An Installable Web App

- Status: Accepted
- Date: 2026-10-13

## Context

Voydex should work well on phones. Store apps cost money every year, need
store review, and need a second codebase. The owner will not publish to the
App Store or Play Store until real demand appears.

## Decision

- The phone version is the existing Next.js app made installable (a PWA): a
  web manifest, app icons, full-screen display and a small offline cache for
  the app shell and reference data.
- No monorepo, Expo app or store listing until demand appears. ADR 0005 keeps
  that later step cheap: shared logic is portable and the backend is
  Supabase, which a native app can call directly.
- If a native app is built later, it uses Expo with Expo Router, NativeWind
  and TanStack Query, shares logic, data access and design tokens through
  workspace packages, and rebuilds screens natively.

## Consequences

- Phone-width layouts are first-class work, not a later pass.
- Push notifications on iPhone only work once the app is installed to the
  Home Screen; offline support is limited to what the cache holds.
