import { expect, type Page } from "@playwright/test";

import { testPassword } from "./accounts";

const localHosts = new Set(["127.0.0.1", "localhost"]);

/*
 * Makes an account straight on the local Supabase, since Voydex has no
 * Sign up. Only ever on this machine: a test must never make accounts on
 * the hosted project.
 */
export const createAccount = async (email: string) => {
  const url = URL.parse(process.env.NEXT_PUBLIC_SUPABASE_URL ?? "");
  const key = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;

  if (!url || !key || !localHosts.has(url.hostname)) {
    throw new Error(
      "Test accounts are only made on the local Supabase (see .env.local).",
    );
  }

  const response = await fetch(new URL("/auth/v1/signup", url), {
    body: JSON.stringify({ email, password: testPassword }),
    headers: { apikey: key, "Content-Type": "application/json" },
    method: "POST",
  });

  if (!response.ok) {
    throw new Error(`Could not make ${email}: ${response.status}`);
  }
};

export const logIn = async (
  page: Page,
  email: string,
  password = testPassword,
) => {
  await page.goto("/login");
  await page.getByRole("textbox", { name: "Email" }).fill(email);
  await page.getByRole("textbox", { name: "Password" }).fill(password);
  await page.getByRole("button", { name: "Log in" }).click();
};

/*
 * A new account has no trainer yet: the trainer step gives it one, and
 * that change backs up a few seconds later. Wait for it, so the test's
 * next page load never cuts that first backup short (the device would
 * then take its own backup for another device's). Ends on Settings.
 */
export const waitForFirstBackup = async (page: Page) => {
  await page.goto("/app/settings");
  await expect(
    page
      .getByRole("region", { name: "Your data" })
      .getByText(/Backed up today/),
  ).toBeVisible({ timeout: 30_000 });
};

/* A new account of the test's own, logged in; it lands in the app, on Home. */
export const logInToNewAccount = async (page: Page, email: string) => {
  await createAccount(email);
  await logIn(page, email);
  /* Logging in can take a while under load; wait for its page. */
  await page.waitForURL("**/app");
  await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

  await waitForFirstBackup(page);
  await page.goto("/app");
  await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
};
