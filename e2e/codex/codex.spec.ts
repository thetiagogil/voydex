import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters, openSearchBar } from "../support/filters";
import { signedOut } from "../support/accounts";

test.use({ storageState: signedOut });

test.describe("Codex", () => {
  test("finds a Pokémon and opens its entry @phone", async ({ page }) => {
    await page.goto("/codex/pokemon");
    await openSearchBar(page);
    await expect(page.getByText("Showing all 1,025 Pokémon")).toBeVisible();
    await expectAccessible(page);

    await page
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("chariz");
    await page
      .getByRole("link", { name: /Charizard/ })
      .first()
      .click();

    await page.waitForURL("**/codex/pokemon/rb/charizard");
    await expect(
      page.getByRole("heading", { level: 1, name: "Charizard" }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("shows a battle form only in the games that have it", async ({
    page,
  }) => {
    const menu = page.getByRole("combobox", { name: "Form" });
    const options = page.getByRole("option");

    await page.goto("/codex/pokemon/xy/charizard");
    await menu.click();
    await expect(options).toHaveCount(3);
    await expect(options.nth(1)).toContainText("Mega Charizard X");
    await expect(options.nth(1)).toContainText("Mega Evolution");
    await expect(
      page.getByRole("group", { name: "Battle forms" }),
    ).toBeVisible();
    await options.nth(1).click();
    await expect(
      page.getByRole("heading", { level: 1, name: "Mega Charizard X" }),
    ).toBeVisible();
    await expectAccessible(page);

    await page.goto("/codex/pokemon/swsh/charizard");
    await menu.click();
    await expect(options).toHaveCount(2);
    await expect(options.nth(1)).toContainText("Gigantamax Charizard");
  });

  test("filters Pokémon by type", async ({ page }) => {
    await page.goto("/codex/pokemon");
    const { filters } = await openFilters(page);
    await filters
      .getByRole("group", { name: "Filter by type" })
      .getByRole("button", { name: "Dragon" })
      .click();

    await expect(page.getByRole("link", { name: /Dragonite/ })).toBeVisible();
    await expect(page.getByRole("link", { name: /Bulbasaur/ })).toBeHidden();
  });

  test("opens a game and its Pokédex", async ({ page }) => {
    await page.goto("/codex/games");
    await expectAccessible(page);

    await page.getByRole("link", { name: /^Pokémon Red 1996 · Kanto/ }).click();
    await expect(
      page.getByRole("heading", { level: 1, name: "Pokémon Red and Blue" }),
    ).toBeVisible();
    await expectAccessible(page);

    await page.getByRole("link", { name: "Kanto 151" }).click();
    await expect(
      page.getByRole("heading", { level: 1, name: "Kanto Pokédex" }),
    ).toBeVisible();
    await openSearchBar(page);
    await page
      .getByRole("searchbox", { name: "Search the Kanto Pokédex" })
      .fill("mew");
    await expect(
      page.getByRole("link", { name: /^#\d+ Mew\b.*, in Red and Blue$/ }),
    ).toBeVisible();
    await expectAccessible(page);
  });
});
