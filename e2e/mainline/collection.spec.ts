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
    const playName = uniquePlayName("Collection games");
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: playName,
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

    /* An unplayed game links to the Codex; a played one opens its sheet. */
    await expect(
      page.getByRole("link", { name: /^Pokémon Blue/ }),
    ).toHaveAttribute("href", /^\/codex\/games\//);
    const red = page.getByRole("button", { name: /^Pokémon Red/ });

    await expect(red.getByRole("img", { name: "1 Play" })).toBeVisible();
    await red.click();
    const sheet = page.getByRole("dialog", { name: "Red" });

    await expect(sheet).toBeVisible();
    await expect(sheet.getByRole("link", { name: playName })).toHaveAttribute(
      "href",
      `/mainline/plays/${playId}`,
    );
    await expect(
      sheet.getByRole("link", { name: "Open in Codex" }),
    ).toBeVisible();
    await expectAccessible(page);
    await page.keyboard.press("Escape");
    await expect(sheet).toBeHidden();

    /* The way back keeps the Pokémon view's address clean. */
    await views.getByRole("link", { name: /^Pokémon/ }).click();
    await expect(page).toHaveURL(/\/mainline\/collection$/);
    expect(errors).toEqual([]);
  });
});
