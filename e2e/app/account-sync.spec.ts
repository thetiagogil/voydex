import { expect, test, type Page } from "@playwright/test";

import { newTestEmail, signedOut } from "../support/accounts";
import { forTheAnswer } from "../support/actions";
import { logIn, signUp } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/* Each test signs up its own account, so no other test's backups mix in. */
test.use({ storageState: signedOut });

const waitForSync = async (page: Page) => {
  await page.goto("/settings", { waitUntil: "networkidle" });
  await expect(
    page.getByRole("region", { name: "Account" }).getByText(/Synced today/),
  ).toBeVisible(forTheAnswer);
};

test.describe("Account sync: backups that follow you between devices", () => {
  test("a Play made on one device reaches another @phone", async ({
    browser,
    page,
  }) => {
    const email = newTestEmail("sync");
    const name = uniquePlayName("Synced");

    await signUp(page, email);
    await page.getByRole("button", { name: "Skip for now" }).click();
    await page.waitForURL("**/mainline");
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: null,
    });
    await waitForSync(page);

    /* The second device: a new browser, the same account. */
    const other = await browser.newContext({ storageState: signedOut });
    const second = await other.newPage();

    try {
      await logIn(second, email);
      await second.waitForURL("**/mainline**");
      await waitForSync(second);
      await second.goto("/mainline/plays");
      await expect(second.getByText(name)).toBeVisible(forTheAnswer);
    } finally {
      await other.close();
    }
  });
});
