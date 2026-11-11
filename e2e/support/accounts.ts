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
 * data. Local sign-up needs no email confirmation.
 */
export const newTestEmail = (label: string) =>
  `e2e-${label}-${randomUUID().slice(0, 8)}@voydex.test`;

/* For tests that start signed out. */
export const signedOut = { cookies: [], origins: [] };
