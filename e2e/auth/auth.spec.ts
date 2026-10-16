import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newTestEmail, seededAccounts, signedOut } from "../support/accounts";
import { logIn, signUp } from "../support/auth";

test.use({ storageState: signedOut });

test.describe("Sign up and log in", () => {
  test("signs up, names the trainer on Welcome and reaches Home @phone", async ({
    page,
  }) => {
    await page.goto("/login?mode=sign-up");
    await expectAccessible(page);

    await signUp(page, newTestEmail("welcome"));
    await expectAccessible(page);

    const aboutYou = page.getByRole("form", { name: "About you" });
    await aboutYou
      .getByRole("textbox", { name: "What should we call you?" })
      .fill("Red");
    await aboutYou.getByRole("button", { name: "Continue" }).click();

    await page.waitForURL("**/mainline");
    await expect(
      page.getByRole("region", { name: "Welcome" }).getByRole("listbox", {
        name: "Games",
      }),
    ).toBeVisible();
  });

  test("logs in, then logs out from Settings", async ({ page }) => {
    await page.goto("/login");
    await expectAccessible(page);

    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/mainline");

    await page.goto("/settings");
    await page.getByRole("button", { name: "Log out" }).click();
    await page.waitForURL((url) => !url.pathname.startsWith("/settings"));

    await page.goto("/mainline/plays");
    await page.waitForURL("**/login**");
  });

  test("says when the password is wrong", async ({ page }) => {
    await logIn(page, seededAccounts.trainer, "not-the-password");

    await expect(page.getByText("That didn't work")).toBeVisible();
    await expect(page.getByRole("textbox", { name: "Email" })).toHaveValue(
      seededAccounts.trainer,
    );
    await expectAccessible(page);
  });

  test("sends a signed-out visitor to Log in and back", async ({ page }) => {
    await page.goto("/mainline/plays");
    await page.waitForURL("**/login**");

    await page
      .getByRole("textbox", { name: "Email" })
      .fill(seededAccounts.trainer);
    await page.getByRole("textbox", { name: "Password" }).fill("123456");
    await page.getByRole("button", { name: "Log in" }).click();

    await page.waitForURL("**/mainline/plays");
    await expect(page.getByRole("heading", { level: 1 })).toHaveText("Plays");
  });
});
