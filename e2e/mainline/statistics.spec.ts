import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * Statistics reads the Plays on this device: the whole board from the first
 * Play on, however small its numbers. One or two Plays earn the plain
 * title; the specialist and hopper titles are covered by the stats model's
 * unit tests.
 */
test.describe("Statistics", () => {
  test("shows the whole page from the first Play, then two @phone", async ({
    page,
  }) => {
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Stats run"),
      partner: "Charmander",
    });
    await page.goto("/app/statistics", { waitUntil: "networkidle" });

    /* One Play: the same page as with many, its numbers small. */
    await expect(
      page.getByRole("heading", { level: 1, name: "Pokémon Trainer" }),
    ).toBeVisible();
    await expect(page.getByText("Pokémon met")).toBeVisible();
    for (const section of [
      "Types you pick",
      "Regions you've travelled",
      "Where your time went",
    ]) {
      await expect(page.getByRole("region", { name: section })).toBeVisible();
    }
    await expectAccessible(page);

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Stats run"),
      partner: "Squirtle",
    });
    await page.goto("/app/statistics", { waitUntil: "networkidle" });

    await expect(
      page.getByRole("heading", { level: 1, name: "Pokémon Trainer" }),
    ).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Regions you've travelled" }),
    ).toContainText("2 Plays");
    await expectAccessible(page);
  });
});
