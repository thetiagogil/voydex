import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newTestEmail, seededAccounts, signedOut } from "../support/accounts";
import { logIn, logInToNewAccount } from "../support/auth";

test.use({ storageState: signedOut });

test.describe("Log in", () => {
  test("a new account logs in and lands on Home, with no step in between @phone", async ({
    page,
  }) => {
    await logInToNewAccount(page, newTestEmail("new"));
    await expect(
      page.getByRole("region", { name: "Welcome" }).getByRole("listbox", {
        name: "Games",
      }),
    ).toBeVisible();
  });

  test("there is no Sign up, and its old address shows Log in", async ({
    page,
  }) => {
    await page.goto("/login?mode=sign-up");

    await expect(
      page.getByRole("heading", { level: 1, name: "Welcome back" }),
    ).toBeVisible();
    await expect(page.getByText("Sign up")).toHaveCount(0);
    await expect(
      page.getByRole("button", { name: "Create account" }),
    ).toHaveCount(0);
  });

  test("logs in, then logs out from Settings", async ({ page }) => {
    await page.goto("/login");
    await expectAccessible(page);

    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/app");

    await page.goto("/app/settings");
    await page.getByRole("button", { name: "Log out" }).click();
    await page.waitForURL((url) => !url.pathname.startsWith("/app/settings"));

    /* Signed out, the app still opens: signing in is only for backups. */
    await page.goto("/app/settings");
    await expect(page.getByRole("heading", { level: 1 })).toHaveText(
      "Settings",
    );
    await expect(page.getByRole("button", { name: "Log out" })).toBeHidden();
  });

  test("says when the password is wrong", async ({ page }) => {
    await logIn(page, seededAccounts.trainer, "not-the-password");

    await expect(page.getByText("That didn't work")).toBeVisible();
    await expect(page.getByRole("textbox", { name: "Email" })).toHaveValue(
      seededAccounts.trainer,
    );
    await expectAccessible(page);
  });

  test("opens the app without signing in", async ({ page }) => {
    await page.goto("/app/plays");

    await expect(page.getByRole("heading", { level: 1 })).toHaveText("Plays");
    expect(new URL(page.url()).pathname).toBe("/app/plays");
  });

  test("logs in and comes back to the page asked for", async ({ page }) => {
    await page.goto("/login?next=%2Fapp%2Fplays");
    await page
      .getByRole("textbox", { name: "Email" })
      .fill(seededAccounts.trainer);
    await page.getByRole("textbox", { name: "Password" }).fill("123456");
    await page.getByRole("button", { name: "Log in" }).click();

    await page.waitForURL("**/app/plays");
    await expect(page.getByRole("heading", { level: 1 })).toHaveText("Plays");
  });
});
