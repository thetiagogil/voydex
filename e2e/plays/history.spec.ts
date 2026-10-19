import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("History", () => {
  test("adds a note and finds it with the Notes filter", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("History run"),
      partner: "Charmander",
    });

    await page.goto(`/mainline/plays/${playId}/history`);
    await page.getByRole("button", { name: "Add a note" }).click();

    const dialog = page.getByRole("dialog", { name: "Add a note" });
    await expect(
      dialog.getByRole("button", { name: "Save note" }),
    ).toBeDisabled();
    await dialog
      .getByRole("textbox", { name: "Note" })
      .fill("Brock took three tries\nCharmander finally learned Ember.");
    await expectAccessible(page);
    await dialog.getByRole("button", { name: "Save note" }).click();
    await expect(dialog).toBeHidden();

    /* History shows the note's first line as its headline. */
    const headline = page.getByText("“Brock took three tries”");
    await expect(headline).toBeVisible();

    const { close, filters } = await openFilters(page);
    await filters.getByRole("button", { name: /^Notes 1/ }).click();
    await close();
    await expect(headline).toBeVisible();
    await expect(page.getByText("Charmander chose you")).toBeHidden();
    await expectAccessible(page);
  });
});
