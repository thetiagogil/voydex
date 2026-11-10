import { expect, test, type Page } from "@playwright/test";

import { newTestEmail, signedOut } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { expectAccessible } from "../support/accessibility";
import { logIn, signUp } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/* Each test signs up its own account, so no other test's backups mix in. */
test.use({ storageState: signedOut });

const rename = async (page: Page, name: string) => {
  await page.goto("/settings", { waitUntil: "networkidle" });
  await page.getByRole("textbox", { name: "Display name" }).fill(name);

  const saved = waitForAction(page);

  await page.getByRole("button", { name: "Save" }).first().click();
  await saved;
};

/* The account's side of Supabase (data and files), not the app or login. */
const accountRequests = /127\.0\.0\.1:54621\/(rest|storage)\//;

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

  test("asks which version to keep when both devices changed the same thing", async ({
    browser,
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("clash");

    await signUp(page, email);
    await page.getByRole("button", { name: "Skip for now" }).click();
    await page.waitForURL("**/mainline");
    await waitForSync(page);

    const other = await browser.newContext({ storageState: signedOut });
    const laptop = await other.newPage();

    try {
      await logIn(laptop, email);
      await laptop.waitForURL("**/mainline**");
      await waitForSync(laptop);

      /* The laptop is cut off from the account while both change the name. */
      await other.route(accountRequests, (route) => route.abort());
      await rename(laptop, "Laptop Red");
      await rename(page, "Phone Red");
      /* The phone's change reaches the account first. */
      await page
        .getByRole("region", { name: "Account" })
        .getByRole("button", { name: "Sync now" })
        .click();
      await expect(
        page
          .getByRole("region", { name: "Account" })
          .getByRole("button", { name: "Sync now" }),
      ).toBeEnabled(forTheAnswer);
      await other.unroute(accountRequests);
      await laptop.goto("/settings", { waitUntil: "networkidle" });

      const dialog = laptop.getByRole("dialog", {
        name: "Which version to keep?",
      });

      await expect(dialog).toBeVisible(forTheAnswer);
      await expect(dialog).toContainText("Profile · Display name");
      await expectAccessible(laptop);

      const keep = dialog.getByRole("button", { name: "Keep these" });

      await expect(keep).toBeDisabled();
      await dialog.getByText("Phone Red").click();
      await expect(dialog.getByRole("radio").nth(1)).toBeChecked();
      await keep.click();
      await expect(dialog).toBeHidden();
      await expect(
        laptop.getByRole("textbox", { name: "Display name" }),
      ).toHaveValue("Phone Red", { timeout: 20_000 });
    } finally {
      await other.close();
    }
  });
});
