import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* Opens a milestone's stop on the route, then one of its battles' reports. */
const openBattle = async (
  page: Page,
  playId: string,
  stop: RegExp,
  battle: RegExp,
  reportName: string,
) => {
  await page.goto(`/mainline/plays/${playId}/progress/story`, {
    waitUntil: "networkidle",
  });
  const stopButton = page.getByRole("button", { name: stop }).first();
  await expect(stopButton).toBeVisible(forTheAnswer);
  await stopButton.click();
  const sheet = page.getByRole("dialog");
  const row = sheet.getByRole("button", { name: battle }).first();
  await expect(row).toBeVisible(forTheAnswer);
  await row.click();

  return {
    report: sheet.getByRole("region", { name: reportName }),
    row,
    sheet,
  };
};

test.describe("Story battles", () => {
  test("reads a legendary as one Pokémon, apart from the battles won", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Gold, 1999",
      name: uniquePlayName("Johto run"),
      partner: "Totodile",
    });

    /* Roaming Raikou is optional Side Content: a legendary, not a Boss. */
    const { report, sheet } = await openBattle(
      page,
      playId,
      /^Roaming Raikou/,
      /^Raikou/,
      "Raikou",
    );
    await expect(report).toContainText("Legendary · Optional");
    await expect(report).not.toContainText("Boss");
    await expect(
      report.getByRole("heading", { name: "The Pokémon" }),
    ).toBeVisible();
    /* Gold's own data gives Raikou its moves for its level. */
    await expect(report).toContainText(
      "This reads its moves against your team",
    );
    await expect(report).not.toContainText("Their");
    await expectAccessible(page);

    /* Back to the milestone, where it sits as side content after the Burned Tower. */
    await sheet
      .getByRole("button", { name: /^Back to Roaming Raikou/ })
      .click();
    await expect(sheet).toContainText("Opens after Burned Tower");
  });

  test("reads a Gen 5 legendary's moves from its encounter", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Black, 2010",
      name: uniquePlayName("Unova run"),
      partner: "Snivy",
    });

    const { report } = await openBattle(
      page,
      playId,
      /^Giant Chasm/,
      /^Kyurem/,
      "Kyurem",
    );

    /* The Giant Chasm Kyurem knows Glaciate at Lv. 75. */
    await expect(report).toContainText(
      "This reads its moves against your team",
    );
    await report.getByRole("button", { name: "Show moves" }).click();
    await expect(
      report.getByRole("listitem").filter({ hasText: /^Glaciate$/ }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("lists Legends: Z-A's promotion matches in the game's order", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Legends: Z-A, 2025",
      name: uniquePlayName("Royale run"),
      partner: "Chikorita",
    });

    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });

    /* Ranks Y to V come before Mega Evolution, F to B after it, A in the Finale. */
    const route = page.getByRole("region", { name: "Main game route" });
    const stopNames = await route
      .getByRole("button", { name: /^Reach Rank/ })
      .allTextContents();
    expect(
      /* A stop's text opens with its marker's number, then its name. */
      stopNames.map((text) => text.match(/Reach Rank [A-Z]/)?.[0]),
    ).toEqual([
      "Reach Rank Y",
      "Reach Rank X",
      "Reach Rank W",
      "Reach Rank V",
      "Reach Rank F",
      "Reach Rank E",
      "Reach Rank D",
      "Reach Rank C",
      "Reach Rank B",
      "Reach Rank A",
    ]);

    /* Jacinthe's tournament: Canari, Ivor and Corbeau again, then the final. */
    const { report, sheet } = await openBattle(
      page,
      playId,
      /^Reach Rank B/,
      /^Jacinthe/,
      "Jacinthe",
    );
    await expect(report).toContainText("Z-A Royale");
    await expect(report).toContainText("Clefable");
    await expect(report).toContainText("Hotel Richissime");
    await sheet.getByRole("button", { name: /^Back to Reach Rank B/ }).click();
    const battleNames = (
      await sheet.getByRole("list").last().getByRole("button").allTextContents()
    ).map((text) => text.match(/^[A-Z][a-z]+/)?.[0]);
    expect(battleNames).toEqual([
      "Canari",
      "Ivor",
      "Corbeau",
      "Zygarde",
      "Jacinthe",
    ]);
    await expectAccessible(page);
  });

  test("marks how their Pokémon power up and what they hold", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Scarlet, 2022",
      name: uniquePlayName("Paldea run"),
      partner: "Sprigatito",
    });

    /* Geeta's Glimmora Terastallizes into Rock. */
    const { report } = await openBattle(
      page,
      playId,
      /^Champion Geeta/,
      /^Geeta/,
      "Geeta",
    );
    const glimmora = report.getByRole("listitem").filter({
      hasText: "Glimmora",
    });
    await expect(
      glimmora.getByRole("img", { name: "Tera Rock" }),
    ).toBeVisible();
    await expect(report).toContainText("Glimmora Terastallizes into Rock.");
    await expectAccessible(page);
  });

  test("shows what their Pokémon know and reads their moves", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Kanto run"),
      partner: "Squirtle",
    });

    const { report } = await openBattle(
      page,
      playId,
      /^Boulder Badge/,
      /^Brock/,
      "Brock",
    );
    await expect(report).toContainText(
      "This reads their moves against your team.",
    );

    /* Show moves turns each card over; Onix's Gym Leader move is Bide. */
    const bide = report.getByRole("listitem").filter({ hasText: /^Bide$/ });
    await expect(bide).toHaveCount(0);
    const showMoves = report.getByRole("button", { name: "Show moves" });
    await showMoves.click();
    await expect(showMoves).toHaveAttribute("aria-pressed", "true");
    await expect(bide).toBeVisible();
    /* Geodude and Onix both know Tackle. */
    await expect(
      report.getByRole("listitem").filter({ hasText: /^Tackle$/ }),
    ).toHaveCount(2);
    await showMoves.click();
    await expect(bide).toHaveCount(0);
    await expectAccessible(page);
  });

  test("shows which move a held Z-Crystal turns into a Z-Move", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Ultra Sun, 2017",
      name: uniquePlayName("Alola Z-Moves"),
      partner: "Rowlet",
    });

    const { report } = await openBattle(
      page,
      playId,
      /^Lana Trial/,
      /^Hau/,
      "Hau",
    );

    /* Hau's Brionne holds Normalium Z: the sentence names the Z-Move. */
    await expect(report).toContainText(
      "Brionne holds Normalium Z: its Pound becomes Breakneck Blitz.",
    );
    await expect(
      report.getByRole("img", { name: "Holds Normalium Z" }),
    ).toBeVisible();

    /* Show moves puts the crystal on the move it upgrades, and only that one. */
    await report.getByRole("button", { name: "Show moves" }).click();
    await expect(
      report.getByRole("listitem").filter({ hasText: /^Pound$/ }),
    ).toBeVisible();
    await expect(
      report.getByRole("img", {
        name: "Becomes Breakneck Blitz with Normalium Z",
      }),
    ).toHaveCount(1);
    await expectAccessible(page);
  });

  test("reads your Pokémon by type while their moves aren't recorded", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Kanto types"),
      partner: "Squirtle",
    });

    const { report } = await openBattle(
      page,
      playId,
      /^Boulder Badge/,
      /^Brock/,
      "Brock",
    );

    /* A new partner has no moves recorded, so Squirtle hits with Water. */
    await expect(report.getByRole("status")).toContainText(
      "By type, you have an answer to each of Brock's two Pokémon",
    );
    const squirtle = report.getByRole("row", { name: /Squirtle/ });
    await expect(squirtle).toContainText("Advantage");
    await expect(squirtle).toContainText(/Water type, 4× on (Geodude|Onix)/);
    await expectAccessible(page);
  });
});
