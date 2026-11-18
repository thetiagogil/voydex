import { randomUUID } from "node:crypto";

/*
 * The accounts the local development seed creates
 * (database/seeds/90_development). Tests only read their data.
 */
export const seededAccounts = {
  fixture: "fixture@voydex.test",
  specialist: "specialist@voydex.test",
  trainer: "trainer@voydex.test",
} as const;

/* Every seeded account and every throwaway account shares it. */
export const testPassword = "123456";

/*
 * A new account for each run, so tests that write never touch the seeded
 * data. `logInToNewAccount` makes it on the local Supabase, which needs no
 * email confirmation.
 */
export const newTestEmail = (label: string) =>
  `e2e-${label}-${randomUUID().slice(0, 8)}@voydex.test`;

/* A device that has never opened Voydex: the front page shows, the Dex boots. */
export const newDevice = { cookies: [], origins: [] };

/*
 * For tests that start signed out, on a device already in the app: entering
 * the app holds the start screen for two seconds, which a test about
 * anything else shouldn't wait for.
 */
export const signedOut = {
  cookies: [],
  origins: [
    {
      localStorage: [{ name: "voydex-app-entered", value: "1" }],
      origin: `http://localhost:${process.env.E2E_PORT ?? 3000}`,
    },
  ],
};
