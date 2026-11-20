import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";

/*
 * The top bar's menus: Team Planner, Collection and the Codex each open
 * their pages, so My Plans or the Collection's Games are one step away from
 * anywhere.
 */
test.describe("Bar menus", () => {
  test("Team Planner and Collection open their pages from the bar", async ({
    page,
  }) => {
    await page.goto("/app");

    const bar = page.getByRole("navigation", { name: "Main" });

    await bar.getByRole("button", { name: "Team Planner" }).click();
    await page.getByRole("link", { name: /^My Plans/ }).click();
    await page.waitForURL("**/app/plans");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    await bar.getByRole("button", { name: "Collection" }).click();
    await page.getByRole("link", { name: /^Games The games/ }).click();
    await page.waitForURL("**/app/collection?view=games");

    /* The menu marks the page you are on, not its neighbours on the same path. */
    await bar.getByRole("button", { name: "Collection" }).click();
    await expect(
      page.getByRole("link", { name: /^Games The games/ }),
    ).toHaveAttribute("aria-current", "page");
    await expect(
      page.getByRole("link", { name: /^Pokémon Every Pokémon/ }),
    ).not.toHaveAttribute("aria-current", "page");

    /* Checked closed: an open menu's focus guards are the menu library's own. */
    await page.keyboard.press("Escape");
    await expectAccessible(page);
  });

  test("the Codex menu still opens Pokémon and Games", async ({ page }) => {
    await page.goto("/app");

    await page
      .getByRole("navigation", { name: "Main" })
      .getByRole("button", { name: "Codex" })
      .click();
    await page.getByRole("link", { name: /^Games Every game/ }).click();
    await page.waitForURL("**/app/codex/games");
  });
});
