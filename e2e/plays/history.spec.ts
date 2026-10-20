import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("History", () => {
  test("draws the moments on one line from where the Play starts", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("History run"),
      partner: "Bulbasaur",
    });

    await page.goto(`/mainline/plays/${playId}/history`, {
      waitUntil: "networkidle",
    });
    const line = page.getByRole("list", { name: "Moments" });
    const stops = line.locator(":scope > li");

    /* Newest first: the starting line closes the list. */
    await expect(stops.last()).toContainText("Your Play starts here");
    await expectAccessible(page);

    /*
     * On a wide screen the line runs down the middle: the first moment's card
     * sits left of it, the start's words right of it.
     */
    const lineBox = await line.boundingBox();
    const cardBox = await line
      .locator("[data-slot=card]")
      .first()
      .boundingBox();
    const startBox = await line
      .getByText("Your Play starts here")
      .boundingBox();
    const middle = lineBox ? lineBox.x + lineBox.width / 2 : 0;

    expect(cardBox && cardBox.x + cardBox.width < middle).toBe(true);
    expect(startBox && startBox.x > middle).toBe(true);

    /* Oldest first: the line starts at the top. */
    await page.getByRole("button", { name: "Show search and filters" }).click();
    await page.getByRole("combobox", { name: "Sort History" }).click();
    await page.getByRole("option", { name: "Oldest first" }).click();
    await expect(stops.first()).toContainText("Your Play starts here");

    /* A filter shows part of the story, so the start of it steps away. */
    await page.getByRole("button", { name: /^Story/ }).click();
    await expect(line).not.toContainText("Your Play starts here");
  });
});
