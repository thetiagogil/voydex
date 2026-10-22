import { expect, test } from "@playwright/test";

import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Battle forms", () => {
  test("an opponent's Mega shows in Story matchups", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Omega Ruby, 2014",
      name: uniquePlayName("Hoenn run"),
      partner: "Treecko",
    });

    await page.goto(`/mainline/plays/${playId}/team/analysis?reading=story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Steven/ }).click();

    /* Steven holds Metagrossite, so his ace is read as Mega Metagross. */
    const report = page.getByRole("region", { name: "Steven" });
    await expect(report).toContainText("Mega Metagross", forTheAnswer);
  });

  test("a link can't add a Pokémon in its Mega form", async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon X, 2013",
      name: uniquePlayName("Kalos run"),
      partner: "Froakie",
    });

    await page.goto(
      `/mainline/plays/${playId}/team?add=charizard&form=mega-charizard-x`,
      { waitUntil: "networkidle" },
    );

    /* The Mega isn't a form a Pokémon is kept in: plain Charizard opens. */
    const details = page.getByRole("dialog", { name: "Charizard" });
    await expect(details).toBeVisible(forTheAnswer);
    await expect(details).toContainText("Fire");
    await expect(details).toContainText("Flying");
    await expect(details).not.toContainText("Dragon");
    await expect(page.getByRole("dialog", { name: /Mega/ })).toHaveCount(0);
  });
});
