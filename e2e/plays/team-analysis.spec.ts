import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Team analysis", () => {
  test("reads the team against the next leader's levels @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Analysis run"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline/plays/${playId}/team/analysis`, {
      waitUntil: "networkidle",
    });

    for (const title of [
      "Team health",
      "Threat response",
      "Move coverage",
      "Weakness control",
    ]) {
      /* Each card says why it reads the way it does. */
      await expect(
        page.getByRole("button", { name: new RegExp(`^Why ${title} reads`) }),
      ).toBeVisible(forTheAnswer);
    }

    /* The partner joins without a level or moves, so it reads at Brock's ace by type. */
    await expect(
      page.getByText(
        "A rough read: 1 of yours has no level and 1 has no damaging move recorded.",
      ),
    ).toBeVisible();

    await page.getByRole("button", { name: /^Why Team health reads/ }).click();
    const why = page.getByRole("dialog");
    await expect(why).toContainText(
      "at the levels of Brock's 2 (Lv. 12–14), your next leader battle.",
    );
    await expect(why).toContainText("You bring 1 to their 2.");
    await expectAccessible(page);
  });
});
