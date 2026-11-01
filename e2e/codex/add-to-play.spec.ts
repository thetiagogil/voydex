import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* Signed in, the Codex adds to your Plays without leaving the entry. */
test.describe("Codex: Add to a Play", () => {
  const entry = "/codex/pokemon/rb/pikachu";
  let playName: string;
  let playId: string;

  test.beforeEach(async ({ page }) => {
    playName = uniquePlayName("Codex add");
    playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: playName,
      partner: "Squirtle",
    });
    await page.goto(entry, { waitUntil: "networkidle" });
  });

  const openAddSheet = async (page: import("@playwright/test").Page) => {
    await page.getByRole("button", { name: "Add to a Play" }).click();
    await page.getByRole("menuitem", { name: new RegExp(playName) }).click();

    return page.getByRole("dialog", { name: "Pikachu" });
  };

  test("adds the Pokémon in place and offers the roster @phone", async ({
    page,
  }) => {
    const sheet = await openAddSheet(page);

    await expect(sheet.getByText("#025")).toBeVisible();
    await expectAccessible(page);
    await sheet.getByRole("button", { name: "Add Pikachu" }).click();
    await expect(sheet).toBeHidden(forTheAnswer);

    /* Still on the entry, now with Pikachu on the Play. */
    await expect(page).toHaveURL(new RegExp(`${entry}$`));
    await expect(
      page.getByRole("link", {
        name: new RegExp(`Open Pikachu in ${playName}`),
      }),
    ).toBeVisible(forTheAnswer);

    await page.getByRole("button", { name: "Open the roster" }).click();
    await page.waitForURL(`**/mainline/plays/${playId}/team`);
    await expect(
      page
        .getByRole("region", { name: /^Active team/ })
        .getByRole("button", { name: /^Pikachu\b/ }),
    ).toBeVisible();
  });

  test("cancelling leaves the entry and the Play as they were", async ({
    page,
  }) => {
    const sheet = await openAddSheet(page);

    await expect(sheet).toBeVisible();
    await page.keyboard.press("Escape");
    await expect(sheet).toBeHidden();
    await expect(page).toHaveURL(new RegExp(`${entry}$`));
    await expect(
      page.getByText("It hasn't joined one of your teams yet."),
    ).toBeVisible();

    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByRole("button", { name: /^Pikachu\b/ })).toHaveCount(
      0,
    );
  });
});
