import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Team analysis", () => {
  test("reads the team against a full six at its own level @phone", async ({
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
      "Knockout power",
      "Weakness control",
    ]) {
      /* Each card says why it reads the way it does. */
      await expect(
        page.getByRole("button", { name: new RegExp(`^Why ${title} reads`) }),
      ).toBeVisible(forTheAnswer);
    }

    /* The partner joins without a level or moves, so it reads at Lv. 50 by type. */
    await expect(
      page.getByText(
        "A rough read: 1 of yours has no level and 1 has no damaging move recorded.",
      ),
    ).toBeVisible();

    await page.getByRole("button", { name: /^Why Team health reads/ }).click();
    const why = page.getByRole("dialog");
    await expect(why).toContainText(
      "Your team against a full team of six, Pokémon of each type as strong as yours, at Lv. 50, as your levels aren't recorded.",
    );
    await expect(why).toContainText("You bring 1 to their 6.");
    await expectAccessible(page);
  });
});
