import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
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

  test("puts the Play you touched last on top, even for a team change", async ({
    page,
  }) => {
    const label = uniquePlayName("Recent list");
    const older = `${label} older`;
    const newer = `${label} newer`;

    await page.goto("/mainline/plays");
    const olderId = await startPlay(page, {
      game: "Pokémon Gold, 1999",
      name: older,
      partner: null,
    });
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: newer,
      partner: null,
    });

    await page.goto(`/mainline/plays?q=${encodeURIComponent(label)}`);
    const titles = page
      .getByRole("region", { name: "Play library" })
      .getByRole("heading", { level: 3 });
    await expect(titles).toHaveText([newer, older], forTheAnswer);

    await page.goto(`/mainline/plays/${olderId}`, { waitUntil: "networkidle" });
    const partnerChoice = page.getByRole("region", {
      name: "Which Pokémon did you choose?",
    });
    await partnerChoice
      .getByRole("button", { name: "Totodile is my partner" })
      .click();
    const saved = waitForAction(page);
    await partnerChoice
      .getByRole("button", { name: "Choose Totodile" })
      .click();
    await saved;

    await page.goto(`/mainline/plays?q=${encodeURIComponent(label)}`);
    await expect(titles).toHaveText([older, newer], forTheAnswer);
  });

  test("filters by tag and shows the Plays as a grid @phone", async ({
    page,
  }) => {
    const label = uniquePlayName("Tag grid");
    const tagged = `${label} tagged`;
    const plain = `${label} plain`;
    /* Names no other run shares, as both browsers use one trainer. */
    const tagName = `Grid tag ${Math.random().toString(36).slice(2, 7)}`;

    const taggedId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: tagged,
      partner: null,
    });
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: plain,
      partner: null,
    });

    await page.goto(`/mainline/plays/${taggedId}/settings`, {
      waitUntil: "networkidle",
    });
    const tags = page.getByRole("region", { name: "Tags" });

    await tags.getByRole("combobox", { name: "Add tag" }).click();
    await page
      .getByRole("combobox", { name: "Search or name a new tag" })
      .fill(tagName);
    const created = waitForAction(page);
    await page.getByRole("option", { name: `Create “${tagName}”` }).click();
    await created;
    const saved = waitForAction(page);
    await tags.getByRole("button", { name: "Save" }).click();
    await saved;

    await page.goto(`/mainline/plays?q=${encodeURIComponent(label)}`);
    const library = page.getByRole("region", { name: "Play library" });

    await expect(library.getByRole("link")).toHaveCount(2, forTheAnswer);

    const { filters, close } = await openFilters(page);
    await filters
      .getByRole("combobox", { name: "Filter Plays by tag" })
      .click();
    await page.getByRole("option", { name: tagName, exact: true }).click();
    await close();

    await expect(library.getByRole("link")).toHaveCount(1, forTheAnswer);
    await expect(
      library.getByRole("link", { name: new RegExp(tagged) }),
    ).toBeVisible();
    await expect(page).toHaveURL(/tag=grid-tag-/);

    /* On a wide screen the whole toolbar stays on one line, a long tag too. */
    if ((page.viewportSize()?.width ?? 0) >= 1280) {
      const tagBox = await page
        .getByRole("combobox", { name: "Filter Plays by tag" })
        .boundingBox();
      const displayBox = await page
        .getByRole("group", { name: "Plays display" })
        .boundingBox();

      expect(Math.abs((tagBox?.y ?? 0) - (displayBox?.y ?? 99))).toBeLessThan(
        20,
      );
    }

    /* The grid keeps the filter and shows one bar per Play. */
    const display = await openFilters(page);
    await display.filters
      .getByRole("group", { name: "Plays display" })
      .getByRole("button", { name: "Grid" })
      .click();
    await display.close();

    await expect(page).toHaveURL(/display=grid/);
    await expect(library.getByRole("link")).toHaveCount(1, forTheAnswer);
    await expect(library.getByRole("progressbar")).toHaveCount(1);
    await expectAccessible(page);

    /* Clear filters resets the tag and keeps the grid. */
    await page.getByRole("button", { name: "Reset" }).click();
    await expect(page).not.toHaveURL(/tag=/);
    await expect(page).toHaveURL(/display=grid/);
  });
});
