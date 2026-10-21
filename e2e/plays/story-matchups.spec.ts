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
    await expect(report).toContainText("Its moves aren't in Voydex");
    await expect(report).not.toContainText("Their");

    /* The header counts battles won, not optional catches. */
    await expect(page.getByText(/ battles won$/)).not.toContainText("legendar");
    await expectAccessible(page);
  });
});
