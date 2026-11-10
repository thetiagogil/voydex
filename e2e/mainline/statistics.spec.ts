import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * Statistics reads the Plays on this device: the board and its title come
 * with a second Play. Two Plays earn the plain title; the specialist and
 * hopper titles are covered by the stats model's unit tests.
 */
test.describe("Statistics", () => {
  test("reads Pokémon Trainer after two Plays", async ({ page }) => {
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Stats run"),
      partner: "Charmander",
    });
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Stats run"),
      partner: "Squirtle",
    });
    await page.goto("/mainline/stats");

    await expect(page.getByText("Pokémon Trainer").first()).toBeVisible();
    await expectAccessible(page);
  });
});
