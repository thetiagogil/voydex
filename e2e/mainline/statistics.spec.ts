import { expect, test } from "../support/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * Statistics reads the Plays on this device: every section always shows,
 * from no Play at all, however small its numbers. One or two Plays earn the plain
 * title; the specialist and hopper titles are covered by the stats model's
 * unit tests.
 */
test.describe("Statistics", () => {
  test("shows every section from no Play at all, then one, then two @phone", async ({
    page,
  }) => {
    const sections = [
      "Most picked",
      "Types you pick",
      "Old friends",
      "Regions you've travelled",
      "Where your time went",
    ];
    const expectEverySection = async () => {
      for (const section of sections) {
        await expect(page.getByRole("region", { name: section })).toBeVisible();
      }
    };

    /* No Play yet: the page is all there, and says how each part fills in. */
    await page.goto("/app/statistics", { waitUntil: "networkidle" });
    await expect(
      page.getByRole("heading", { level: 1, name: "Pokémon Trainer" }),
    ).toBeVisible();
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toBeVisible();
    await expectEverySection();
    await expect(
      page.getByRole("region", { name: "Most picked" }),
    ).toContainText("No favourite yet");
    await expectAccessible(page);

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
    await expectEverySection();
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toHaveCount(0);
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
