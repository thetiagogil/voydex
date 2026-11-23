import { expect, test } from "../support/test";

import { expectAccessible } from "../support/accessibility";
import { newTestEmail, seededAccounts, signedOut } from "../support/accounts";
import { watchForStartScreen } from "../support/actions";
import { logIn, logInToNewAccount } from "../support/auth";

test.use({ storageState: signedOut });

test.describe("Log in", () => {
  test("a new account logs in and lands on Home, with no step in between @phone", async ({
    page,
  }) => {
    await logInToNewAccount(page, newTestEmail("new"));
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
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
    /* Log out asks first: the account's Plays leave this device. */
    await page
      .getByRole("dialog", { name: "Log out?" })
      .getByRole("button", { name: "Log out" })
      .click();
    await page.waitForURL((url) => !url.pathname.startsWith("/app/settings"));

    /* Signed out, the app still opens: signing in is only for backups. */
    await page.goto("/app/settings");
    await expect(page.getByRole("heading", { level: 1 })).toHaveText(
      "Settings",
    );
    await expect(page.getByRole("button", { name: "Log out" })).toBeHidden();
  });

  test("logged in, the front page offers the app instead of Log in", async ({
    page,
  }) => {
    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/app");
    /* Home has synced Plays or none: the bar is there either way. */
    await expect(page.getByRole("navigation", { name: "Main" })).toBeVisible();

    /* Leaving the app isn't logging out. */
    await page.getByRole("link", { name: "Voydex home" }).click();
    await expect(
      page.getByRole("link", { name: "Open the app" }),
    ).toBeVisible();
    await expect(page.getByRole("link", { name: "Log in" })).toHaveCount(0);

    /* Back in, in the same visit: the app shows at once, no start screen. */
    const sawStartScreen = await watchForStartScreen(page);

    await page.getByRole("link", { name: "Open the app" }).click();
    await page.waitForURL("**/app");
    await expect(page.getByRole("navigation", { name: "Main" })).toBeVisible();
    expect(await sawStartScreen()).toBe(false);

    /* Log in itself has nothing to ask: it goes on to the app. */
    await page.goto("/login");
    await page.waitForURL("**/app");
  });

  test("a big account opens on a finished Home, after its games download", async ({
    page,
  }) => {
    test.setTimeout(180_000);
    await logIn(page, seededAccounts.fixture);

    /* The step says how far it has got while the games come down. */
    await expect(
      page.getByText("Step 3 of 5: Downloading game data"),
    ).toBeVisible({ timeout: 60_000 });
    await expect(page.getByText(/^\d+ of \d+ games$/)).toBeVisible();

    /* The moment the app shows, Home is already filled: no empty state first. */
    await expect(page.getByRole("navigation").first()).toBeVisible({
      timeout: 120_000,
    });
    await expect(page.getByRole("link", { name: /Continue/ })).toBeVisible({
      timeout: 1_000,
    });
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toHaveCount(0);
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
