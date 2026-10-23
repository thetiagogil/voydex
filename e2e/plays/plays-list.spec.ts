import { expect, test } from "@playwright/test";

import { openFilters, openSearchBar } from "../support/filters";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Plays list", () => {
  test("is one list, and the Status filter picks out what you're playing @phone", async ({
    page,
  }) => {
    const label = uniquePlayName("Status list");
    const playing = `${label} playing`;
    const paused = `${label} paused`;

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: playing,
      partner: null,
    });
    const pausedId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: paused,
      partner: null,
    });

    await page.goto(`/mainline/plays/${pausedId}/settings`, {
      waitUntil: "networkidle",
    });
    const saved = waitForAction(page);
    await page
      .getByRole("region", { name: "General" })
      .getByRole("group", { name: "Status" })
      .getByRole("button", { name: "Paused" })
      .click();
    await page
      .getByRole("region", { name: "General" })
      .getByRole("button", { name: "Save" })
      .click();
    await saved;

    await page.goto(`/mainline/plays?q=${encodeURIComponent(label)}`);
    const library = page.getByRole("region", { name: "Play library" });

    await expect(library.getByRole("link")).toHaveCount(2, forTheAnswer);
    /* One list under one heading: no status groups. */
    await expect(library.getByRole("heading", { level: 2 })).toHaveCount(1);
    await expect(
      library.getByRole("heading", { level: 2, name: "Your Plays" }),
    ).toBeAttached();
    await expect(library.getByText("Paused", { exact: true })).toBeVisible();

    await openSearchBar(page);
    const { filters, close } = await openFilters(page);
    await filters
      .getByRole("combobox", { name: "Filter Plays by status" })
      .click();
    await page.getByRole("option", { name: "Paused", exact: true }).click();
    await close();

    await expect(library.getByRole("link")).toHaveCount(1, forTheAnswer);
    await expect(
      library.getByRole("link", { name: new RegExp(paused) }),
    ).toBeVisible();
    await expect(page).toHaveURL(/status=paused/);

    await page.goto(
      `/mainline/plays?q=${encodeURIComponent(label)}&status=paused`,
    );
    await expect(library.getByRole("link")).toHaveCount(1, forTheAnswer);
  });
});
