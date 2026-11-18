import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Collection", () => {
  test("the Games view keeps its place in the address, filters like the Pokémon view and stamps what you've played", async ({
    page,
  }) => {
    const errors: string[] = [];

    page.on("console", (message) => {
      if (message.type() === "error") errors.push(message.text());
    });
    const playName = uniquePlayName("Collection games");
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: playName,
      partner: "Charmander",
    });

    await page.goto("/app/collection", { waitUntil: "networkidle" });
    /* On desktop the bar's Collection menu switches views; the title names the one you're in. */
    const collectionMenu = page
      .getByRole("navigation", { name: "Main" })
      .getByRole("button", { name: "Collection" });

    await expect(
      page.getByRole("heading", { level: 1, name: "Your Pokémon" }),
    ).toBeVisible();
    await expect(
      page.getByRole("navigation", { name: "Collection views" }),
    ).toBeHidden();

    /* Each sticker's mark counts its Plays; Generation is a filter. */
    const charmander = page.getByRole("button", { name: /Charmander/ });

    await expect(charmander.getByRole("img", { name: "1 Play" })).toBeVisible();
    const { close, filters } = await openFilters(page);

    await filters
      .getByRole("combobox", { name: "Filter by generation" })
      .click();
    await page
      .getByRole("option", { exact: true, name: "Generation II" })
      .click();
    await close();
    await expect(page.getByText("Nothing matches.")).toBeVisible();
    await page
      .getByRole("button", { name: /^Reset/ })
      .first()
      .click();
    await expect(charmander).toBeVisible();

    await collectionMenu.click();
    await page.getByRole("link", { name: /^Games The games/ }).click();
    await expect(page).toHaveURL(/\/app\/collection\?view=games$/);
    await expect(
      page.getByRole("heading", { level: 1, name: "Your games" }),
    ).toBeVisible();

    /* The header's numbers are the marks' own: one game, one Play. */
    await expect(
      page.getByText(/^You've played 1 of \d+ games, across 1 Play$/),
    ).toBeVisible();
    const stamps = page.getByRole("img", { name: /^\d+ Plays?$/ });

    await expect(stamps).toHaveCount(1);
    await expect(stamps).toHaveAccessibleName("1 Play");

    /* The Pokémon views' toolbar: a generation you haven't played shows none. */
    const gameFilters = await openFilters(page);

    await gameFilters.filters
      .getByRole("combobox", { name: "Filter by generation" })
      .click();
    await page
      .getByRole("option", { exact: true, name: "Generation II" })
      .click();
    await gameFilters.close();
    await expect(page.getByText("Nothing matches.")).toBeVisible();
    await page
      .getByRole("button", { name: /^Reset/ })
      .first()
      .click();

    /* Only the played game is listed; it opens its sheet. */
    const shelf = page.getByRole("region", { name: "Your games" });

    await expect(shelf.getByRole("button")).toHaveCount(1);
    await expect(page.getByRole("link", { name: /^Pokémon Blue/ })).toHaveCount(
      0,
    );
    const red = page.getByRole("button", { name: /^Pokémon Red/ });

    await expect(red.getByRole("img", { name: "1 Play" })).toBeVisible();
    await red.click();
    const sheet = page.getByRole("dialog", { name: "Red" });

    await expect(sheet).toBeVisible();
    await expect(sheet.getByRole("link", { name: playName })).toHaveAttribute(
      "href",
      `/app/plays/play?id=${playId}`,
    );
    await expect(
      sheet.getByRole("link", { name: "Open in Codex" }),
    ).toBeVisible();
    await expectAccessible(page);
    await page.keyboard.press("Escape");
    await expect(sheet).toBeHidden();

    /* The way back keeps the Pokémon view's address clean. */
    await collectionMenu.click();
    await page.getByRole("link", { name: /^Pokémon Every Pokémon/ }).click();
    await expect(page).toHaveURL(/\/app\/collection$/);
    expect(errors).toEqual([]);
  });
});
