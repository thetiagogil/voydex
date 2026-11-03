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

  test("reads the open game's Pokédex words, a version each when they differ", async ({
    page,
  }) => {
    await page.goto("/codex/pokemon/swsh/charizard");
    const hero = page.getByRole("region", { name: "Charizard" });
    await expect(hero.getByText("Sword", { exact: true })).toBeVisible();
    await expect(hero.getByText("Shield", { exact: true })).toBeVisible();
    await expect(
      hero.getByText(/It spits fire that is hot enough to melt boulders/),
    ).toBeVisible();

    /* Red and Blue say the same, so one paragraph with no version label. */
    await page.goto("/codex/pokemon/rb/charizard");
    const early = page.getByRole("region", { name: "Charizard" });
    await expect(
      early.getByText(/Spits fire that is hot enough/),
    ).toBeVisible();
    await expect(early.getByText("Red", { exact: true })).toHaveCount(0);
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

  test("a species address with a later form opens where that form is found", async ({
    page,
  }) => {
    const cases = [
      ["arcanine", "hisuian-arcanine", "pla", "Hisuian Arcanine"],
      ["pikachu", "pikachu-partner", "lgpe", "Pikachu (Partner)"],
      /* A battle form has no rows of its own: its generation's first game. */
      ["charizard", "mega-charizard-x", "xy", "Mega Charizard X"],
    ] as const;

    for (const [species, form, group, name] of cases) {
      await page.goto(`/codex/pokemon/${species}?form=${form}`);
      await page.waitForURL(
        `**/codex/pokemon/${group}/${species}?form=${form}`,
      );
      await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();
    }
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
