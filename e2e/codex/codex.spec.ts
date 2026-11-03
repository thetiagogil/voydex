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
    await expect(page.getByText("Flame Pokémon")).toBeVisible();
    await expect(page.getByText("1.7 m tall and 90.5 kg")).toBeVisible();
    await expectAccessible(page);
  });

  test("reads a species' breeding facts in a game with eggs and gender", async ({
    page,
  }) => {
    await page.goto("/codex/pokemon/swsh/charizard");

    const breeding = page.getByRole("region", { name: "Breeding" });
    await expect(breeding.getByText("Egg cycles")).toBeVisible();
    await expect(breeding.getByText("20", { exact: true })).toBeVisible();
    await expect(breeding.getByText("87.5% male")).toBeVisible();
    await expect(
      breeding.getByRole("meter", { name: "Share that is male" }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("reads a form's training values from the open game", async ({
    page,
  }) => {
    await page.goto("/codex/pokemon/swsh/charizard");
    const training = page.getByRole("region", { name: "Training" });
    await expect(training.getByText("EV yield")).toBeVisible();
    await expect(training.getByText("3 Sp. Atk")).toBeVisible();
    await expect(training.getByText("50", { exact: true })).toBeVisible();
    await expect(training.getByText("Medium Slow")).toBeVisible();

    /* Red / Blue counts no EVs and has no friendship; Yellow's Pikachu is harder to catch. */
    await page.goto("/codex/pokemon/yellow/pikachu");
    const early = page.getByRole("region", { name: "Training" });
    await expect(early.getByText("EV yield")).toHaveCount(0);
    await expect(early.getByText("Base friendship")).toHaveCount(0);
    await expect(early.getByText("163", { exact: true })).toBeVisible();
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
    /* The game's words, the region's, and its leaders with the ace of your first battle. */
    await expect(page.getByText(/^The first games: eight Gyms/)).toBeVisible();
    await expect(page.getByText(/^The first region, a compact/)).toBeVisible();
    const leaders = page.getByRole("list", {
      name: "Gym Leaders and Champion",
    });
    await expect(leaders.getByRole("listitem")).toHaveCount(9);
    await expect(leaders.getByRole("listitem").first()).toContainText(
      /Brock[^]*Pewter City[^]*Rock/,
    );
    await expect(leaders.getByRole("listitem").last()).toContainText(
      /Blue[^]*Indigo Plateau/,
    );
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
