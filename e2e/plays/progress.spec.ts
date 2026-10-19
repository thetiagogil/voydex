import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Progress", () => {
  let playId: string;

  test.beforeEach(async ({ page }) => {
    playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Progress run"),
      partner: "Bulbasaur",
    });
  });

  test("records the next Story milestone", async ({ page }) => {
    await page.goto(`/mainline/plays/${playId}/progress/story`);
    await expect(page.getByText("1 of 16 milestones")).toBeVisible();
    await expectAccessible(page);

    await page.getByRole("button", { name: "Record Receive Pokedex" }).click();

    await expect(page.getByText("2 of 16 milestones")).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Boulder Badge" }),
    ).toBeVisible();

    await page.reload();
    await expect(page.getByText("2 of 16 milestones")).toBeVisible();

    await page.goto(`/mainline/plays/${playId}/history`);
    await expect(page.getByText("Receive Pokedex").first()).toBeVisible();
  });

  test("marks a Pokémon caught in the Pokédex @phone", async ({ page }) => {
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`);
    await expect(page.getByText("0% complete · 0 of 151")).toBeVisible();
    await expectAccessible(page);

    /* The mark shows at once; wait for its save before reloading. */
    const saved = page.waitForResponse(
      (response) => response.request().method() === "POST",
    );
    await page.getByRole("button", { name: "Mark Pidgey as Caught" }).click();
    await expect(page.getByText("1% complete · 1 of 151")).toBeVisible();
    await saved;

    await page.reload();
    await expect(page.getByText("1% complete · 1 of 151")).toBeVisible();
    const { close, filters } = await openFilters(page);
    await filters.getByRole("button", { name: "Caught 1" }).click();
    await close();
    await expect(page.getByText("Showing 1 of 151 Pokémon")).toBeVisible();
  });
});
