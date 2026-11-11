import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* Signed in, the Codex adds to your Plays without leaving the entry. */
test.describe("Codex: Add to a Play", () => {
  const entry = "/codex/pokemon/pikachu?game=rb";
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

  /* Pikachu on this test's Play; other tests share the account, so never read the whole card. */
  const onThisPlay = (page: Page) =>
    page.getByRole("link", { name: new RegExp(`Open Pikachu in ${playName}`) });

  const openAddSheet = async (page: Page) => {
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
    await expect(page).toHaveURL(entry);
    await expect(
      page.getByRole("link", {
        name: new RegExp(`Open Pikachu in ${playName}`),
      }),
    ).toBeVisible(forTheAnswer);

    await page.getByRole("button", { name: "Open the roster" }).click();
    await page.waitForURL(`**/mainline/plays/play/team?id=${playId}`);
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
    await expect(page).toHaveURL(entry);
    await expect(
      page.getByRole("button", { name: "Add to a Play" }),
    ).toBeFocused();
    await expect(onThisPlay(page)).toHaveCount(0);

    await page.goto(`/mainline/plays/play/team?id=${playId}`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByRole("button", { name: /^Pikachu\b/ })).toHaveCount(
      0,
    );
  });

  test("Undo takes the Pokémon off again, right from the entry", async ({
    page,
  }) => {
    const sheet = await openAddSheet(page);

    await sheet.getByRole("button", { name: "Add Pikachu" }).click();
    await expect(sheet).toBeHidden(forTheAnswer);
    await page.getByRole("button", { name: "Undo" }).click();
    await expect(page.getByText("Taken off again")).toBeVisible(forTheAnswer);
    await expect(page).toHaveURL(entry);
    await expect(onThisPlay(page)).toHaveCount(0, forTheAnswer);
  });

  test("picking another Play reads its own roster", async ({ page }) => {
    const sheet = await openAddSheet(page);

    await expect(sheet.getByText(/open slots/)).toContainText("5 open slots");
    await sheet.getByRole("button", { name: "Add Pikachu" }).click();
    await expect(sheet).toBeHidden(forTheAnswer);

    /* The second pick of the same Play opens afresh, with Pikachu already counted. */
    await page.getByRole("button", { name: "Add to a Play" }).click();
    await page.getByRole("menuitem", { name: new RegExp(playName) }).click();
    await expect(
      page.getByRole("dialog", { name: "Pikachu" }).getByText(/open slots/),
    ).toContainText("4 open slots");
  });
});
