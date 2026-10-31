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
      "six typical Pokémon of mixed types, as strong as yours, at Lv. 50 (your levels aren't recorded). The types are shared across your whole team, so every Pokémon counts.",
    );
    await expect(why).toContainText("A full team has 6");
    await expectAccessible(page);
  });

  test.describe("Defensive matchups focus", () => {
    /* A touch screen at desktop width: taps arrive as touches, not hovers. */
    test.use({ hasTouch: true });

    test("picks out a row or a Pokémon by mouse and keyboard, never by a tap", async ({
      page,
    }) => {
      const playId = await startPlay(page, {
        game: "Pokémon Red, 1996",
        name: uniquePlayName("Matchups focus"),
        partner: "Squirtle",
      });

      await page.goto(`/mainline/plays/${playId}/team/analysis`, {
        waitUntil: "networkidle",
      });

      const table = page.getByRole("table", {
        name: "How each attacking type lands on each of your Pokémon",
      });
      const row = (type: string) => table.getByRole("row", { name: type });
      const fireCell = row("Fire").getByRole("cell").first();
      const waterCell = row("Water").getByRole("cell").first();
      const faded = /opacity-40/;

      await row("Fire").getByRole("rowheader").hover();
      await expect(fireCell).not.toHaveClass(faded);
      await expect(waterCell).toHaveClass(faded);

      /* Sorting moves the rows; Fire stays the one picked out. */
      await table.getByRole("button", { name: "Weak" }).click();
      await expect(table.getByRole("row").nth(1)).toContainText("Electric");
      await expect(fireCell).not.toHaveClass(faded);
      await expect(row("Electric").getByRole("cell").first()).toHaveClass(
        faded,
      );
      await table.getByRole("button", { name: "Attacking type" }).click();

      /* A Pokémon's head keeps its whole column. */
      const squirtle = table.getByRole("columnheader", { name: "Squirtle" });
      await squirtle.hover();
      await expect(fireCell).not.toHaveClass(faded);
      await expect(waterCell).not.toHaveClass(faded);
      await expect(row("Water").getByRole("rowheader")).toHaveClass(faded);

      await page.mouse.move(0, 0);
      await expect(table.locator(".opacity-40")).toHaveCount(0);

      /* Tab moves from the first sort head onto the partner's name. */
      await table.getByRole("button", { name: "Attacking type" }).focus();
      await page.keyboard.press("Tab");
      await expect(squirtle.getByText("Squirtle")).toBeFocused();
      await expect(row("Water").getByRole("rowheader")).toHaveClass(faded);
      await page.keyboard.press("Tab");
      await expect(table.locator(".opacity-40")).toHaveCount(0);

      /* A tap is not a hover: nothing stays faded. */
      await row("Fire").getByRole("rowheader").tap();
      await expect(table.locator(".opacity-40")).toHaveCount(0);
    });
  });
});
