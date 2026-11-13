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

    await page.waitForURL("**/codex/pokemon/charizard?game=rb");
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
    await page.goto("/codex/pokemon/charizard?game=swsh");

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
    await page.goto("/codex/pokemon/charizard?game=swsh");
    const training = page.getByRole("region", { name: "Training" });
    await expect(training.getByText("EV yield")).toBeVisible();
    await expect(training.getByText("3 Sp. Atk")).toBeVisible();
    await expect(training.getByText("50", { exact: true })).toBeVisible();
    await expect(training.getByText("Medium Slow")).toBeVisible();

    /* Red / Blue counts no EVs and has no friendship; Yellow's Pikachu is harder to catch. */
    await page.goto("/codex/pokemon/pikachu?game=yellow");
    const early = page.getByRole("region", { name: "Training" });
    await expect(early.getByText("EV yield")).toHaveCount(0);
    await expect(early.getByText("Base friendship")).toHaveCount(0);
    await expect(early.getByText("163", { exact: true })).toBeVisible();
    await expectAccessible(page);
  });

  test("reads the open game's Pokédex words, a version each when they differ", async ({
    page,
  }) => {
    await page.goto("/codex/pokemon/charizard?game=swsh");
    const hero = page.getByRole("region", { name: "Charizard" });
    await expect(hero.getByText("Sword", { exact: true })).toBeVisible();
    await expect(hero.getByText("Shield", { exact: true })).toBeVisible();
    await expect(
      hero.getByText(/It spits fire that is hot enough to melt boulders/),
    ).toBeVisible();

    /* Red and Blue say the same, so one paragraph with no version label. */
    await page.goto("/codex/pokemon/charizard?game=rb");
    const early = page.getByRole("region", { name: "Charizard" });
    await expect(
      early.getByText(/Spits fire that is hot enough/),
    ).toBeVisible();
    await expect(early.getByText("Red", { exact: true })).toHaveCount(0);
    await expectAccessible(page);
  });

  test("names the rod a fished Pokémon takes, and when it bites", async ({
    page,
  }) => {
    await page.goto("/codex/pokemon/whiscash?game=hgss");
    const whereToFind = page.getByRole("region", { name: "Where to find" });
    /* Violet City's Whiscash bites on every rod, but only during a swarm. */
    await expect(
      whereToFind.getByText(
        "Old Rod, Lv 10 (during a swarm) · Good Rod, Lv 20 (during a swarm) · Super Rod, Lv 40 (during a swarm)",
      ),
    ).toHaveCount(2);
    /* Platinum's Route 210 takes the Good Rod and the Super Rod, each at its own levels. */
    await expect(
      whereToFind.getByText("Good Rod, Lv 25–35 · Super Rod, Lv 30–55").first(),
    ).toBeVisible();
    await expect(whereToFind.getByText(/Fishing/)).toHaveCount(0);
    await expectAccessible(page);
  });

  test("shows a battle form only in the games that have it", async ({
    page,
  }) => {
    const menu = page.getByRole("combobox", { name: "Form" });
    const options = page.getByRole("option");

    await page.goto("/codex/pokemon/charizard?game=xy");
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

    await page.goto("/codex/pokemon/charizard?game=swsh");
    await menu.click();
    await expect(options).toHaveCount(2);
    await expect(options.nth(1)).toContainText("Gigantamax Charizard");
  });

  test("a species address with a later form opens where that form is found", async ({
    page,
  }) => {
    /* The form's name only shows in a game that has it; the address stays. */
    const cases = [
      ["arcanine", "hisuian-arcanine", "Hisuian Arcanine"],
      ["pikachu", "pikachu-partner", "Pikachu (Partner)"],
      /* A battle form has no rows of its own: its generation's first game. */
      ["charizard", "mega-charizard-x", "Mega Charizard X"],
    ] as const;

    for (const [species, form, name] of cases) {
      const address = `/codex/pokemon/${species}?form=${form}`;
      await page.goto(address);
      await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();
      await expect(page).toHaveURL(address);
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
    /* Brock's portrait, with his ace on its corner. */
    await expect(
      leaders
        .getByRole("listitem")
        .first()
        .locator('img[src$="/trainers/brock.webp"]'),
    ).toHaveCount(1);
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
