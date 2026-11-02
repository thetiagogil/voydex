import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Collection", () => {
  test("the Games view keeps its place in the address and stamps what you've played", async ({
    page,
  }) => {
    const errors: string[] = [];

    page.on("console", (message) => {
      if (message.type() === "error") errors.push(message.text());
    });
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Collection games"),
      partner: null,
    });

    await page.goto("/mainline/collection", { waitUntil: "networkidle" });
    const views = page.getByRole("navigation", { name: "Collection views" });

    await expect(views.getByRole("link", { name: /^Pokémon/ })).toHaveAttribute(
      "aria-current",
      "page",
    );
    await views.getByRole("link", { name: /^Games/ }).click();
    await expect(page).toHaveURL(/\/mainline\/collection\?view=games$/);
    await expect(views.getByRole("link", { name: /^Games/ })).toHaveAttribute(
      "aria-current",
      "page",
    );

    /* The header's numbers are the stamps' own: one game, one Play. */
    await expect(
      page.getByText(/^You've played 1 of \d+ games, across 1 Play$/),
    ).toBeVisible();
    const stamps = page.getByRole("img", { name: /^\d+ Plays?$/ });

    await expect(stamps).toHaveCount(1);
    await expect(stamps).toHaveAccessibleName("1 Play");

    /* The stamped game opens its Play; the others open the Codex. */
    const red = page.getByRole("link", { name: /^Pokémon Red/ });

    await expect(red).toHaveAttribute("href", `/mainline/plays/${playId}`);
    await expect(red.getByRole("img", { name: "1 Play" })).toBeVisible();
    await expect(
      page.getByRole("link", { name: /^Pokémon Blue/ }),
    ).toHaveAttribute("href", /^\/codex\/games\//);
    await expectAccessible(page);

    /* The way back keeps the Pokémon view's address clean. */
    await views.getByRole("link", { name: /^Pokémon/ }).click();
    await expect(page).toHaveURL(/\/mainline\/collection$/);
    expect(errors).toEqual([]);
  });
});
