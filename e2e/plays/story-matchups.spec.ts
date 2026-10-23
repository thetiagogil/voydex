import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Story matchups", () => {
  test("reads a legendary as one Pokémon, apart from the battles won", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Gold, 1999",
      name: uniquePlayName("Johto run"),
      partner: "Totodile",
    });

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });

    /* Roaming Raikou is optional Side Content: a legendary, not a Boss. */
    const sideContent = page.getByRole("region", { name: /^Side Content/ });
    await expect(sideContent).toContainText("0 of 5 done", forTheAnswer);

    const raikou = sideContent.getByRole("button", { name: /^Raikou/ });
    await expect(raikou).toContainText("Legendary");
    await expect(raikou).not.toContainText("Boss");
    await raikou.click();

    const report = page.getByRole("region", { name: "Raikou" });
    await expect(report).toContainText("Legendary · Optional");
    await expect(
      report.getByRole("heading", { name: "The Pokémon" }),
    ).toBeVisible();
    /* Gold's own data gives Raikou its moves for its level. */
    await expect(report).toContainText(
      "This reads its moves against your team",
    );
    await expect(report).not.toContainText("Their");

    /* The header counts battles won, not optional catches. */
    await expect(page.getByText(/ battles won$/)).not.toContainText("legendar");
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

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });

    /* Ranks Y to V come before Mega Evolution, F to B after it. */
    const royale = page.getByRole("region", { name: /^Z-A Royale/ });
    await expect(
      royale.getByRole("button", { name: /^(Zach|Yvon|Xavi|Rintaro)\b/ }),
    ).toHaveCount(4, forTheAnswer);

    const megaChapter = page.getByRole("region", {
      name: /^Rogue Mega Evolution/,
    });
    const megaBattles = megaChapter.getByRole("button");
    await expect(megaBattles.first()).toBeVisible();
    const names = (await megaBattles.allTextContents()).map(
      (text) => text.match(/^[A-Z][a-z]+/)?.[0],
    );
    expect(names).toEqual(
      expect.arrayContaining([
        "Vinnie",
        "Canari",
        "Ivor",
        "Corbeau",
        "Jacinthe",
      ]),
    );
    /* Jacinthe's tournament: Canari, Ivor and Corbeau again, then the final. */
    expect(names.lastIndexOf("Canari")).toBeLessThan(names.indexOf("Jacinthe"));

    const jacinthe = megaChapter.getByRole("button", { name: /^Jacinthe/ });
    await expect(jacinthe).toContainText("Z-A Royale");
    await jacinthe.click();

    const report = page.getByRole("region", { name: "Jacinthe" });
    await expect(report).toContainText("Z-A Royale");
    await expect(report).toContainText("Clefable");
    await expect(report).toContainText("Hotel Richissime");

    /* Rank A is the Finale's, after Lysandre Labs. */
    await expect(
      page
        .getByRole("region", { name: /^Finale/ })
        .getByRole("button", { name: /^Grisham/ }),
    ).toBeVisible();
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

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });

    /* Geeta's Glimmora Terastallizes into Rock. */
    const geeta = page.getByRole("button", { name: /^Geeta/ });
    await expect(geeta).toBeVisible(forTheAnswer);
    await geeta.click();

    const report = page.getByRole("region", { name: "Geeta" });
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

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });

    const brock = page.getByRole("button", { name: /^Brock/ });
    await expect(brock).toBeVisible(forTheAnswer);
    await brock.click();

    const report = page.getByRole("region", { name: "Brock" });
    await expect(report).toContainText(
      "This reads their moves against your team.",
    );

    /* Onix's Gym Leader move, Bide, in its third slot. */
    const onix = report.getByRole("button", { name: /Onix/ });
    await expect(onix).toHaveAccessibleName(/knows Tackle, Screech, Bide/);
    await onix.hover();
    const tip = page.getByRole("dialog").filter({ hasText: "Onix · Lv. 14" });
    await expect(tip).toContainText("Bide");

    await page.mouse.move(0, 0);
    await expect(tip).toBeHidden();

    /* From the keyboard: Enter pins it and Escape closes it. */
    await onix.focus();
    await page.keyboard.press("Enter");
    await expect(tip).toBeVisible();
    await page.keyboard.press("Escape");
    await expect(tip).toBeHidden();
    await expectAccessible(page);
  });
});
