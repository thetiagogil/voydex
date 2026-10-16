import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { seededAccounts, signedOut } from "../support/accounts";
import { logIn } from "../support/auth";

test.use({ storageState: signedOut });

/* The seeded trainers each earn a different title (database/seeds/90_development). */
test.describe("Statistics", () => {
  test("reads Water Specialist for the specialist account", async ({
    page,
  }) => {
    await logIn(page, seededAccounts.specialist);
    await page.waitForURL("**/mainline");
    await page.goto("/mainline/stats");

    await expect(page.getByText("Water Specialist").first()).toBeVisible();
    await expectAccessible(page);
  });

  test("reads Pokémon Trainer for the trainer account", async ({ page }) => {
    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/mainline");
    await page.goto("/mainline/stats");

    await expect(page.getByText("Pokémon Trainer").first()).toBeVisible();
  });
});
