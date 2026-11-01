import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openSearchBar } from "../support/filters";
import { uniquePlayName } from "../support/plays";

const gamePage = "/codex/games/rb";

/* Opens the Planner over the game page, on its game. */
const openPlanner = async (page: Page) => {
  await page.goto(gamePage, { waitUntil: "networkidle" });
  await page.getByRole("button", { name: "Plan a team" }).click();

  return page.getByRole("dialog", { name: "Plan a team" });
};

/* Signed in, the Codex plans a team without leaving the game page. */
test.describe("Codex: Plan a team", () => {
  test("opens the Planner on this game and closes back to the page @phone", async ({
    page,
  }) => {
    const planner = await openPlanner(page);

    await expect(
      planner.getByRole("combobox", { name: /^Game:/ }),
    ).toContainText("Red / Blue");
    await expect(planner.getByRole("link", { name: /My Plans/ })).toHaveCount(
      0,
    );
    await expectAccessible(page);

    await planner.getByRole("button", { name: "Close" }).click();
    await expect(planner).toBeHidden();
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
    await expect(
      page.getByRole("button", { name: "Plan a team" }),
    ).toBeFocused();

    /* Escape leaves it too, and nothing was saved along the way. */
    await page.getByRole("button", { name: "Plan a team" }).click();
    await expect(planner).toBeVisible();
    await page.keyboard.press("Escape");
    await expect(planner).toBeHidden();
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
  });

  test("builds a team and leaves the Codex only once the Plan is saved", async ({
    page,
  }) => {
    const planner = await openPlanner(page);
    const picker = planner.getByRole("region", { name: "Pick your Pokémon" });

    await openSearchBar(page);
    for (const member of ["Charizard", "Pikachu"]) {
      await picker.getByRole("searchbox").fill(member);
      await picker
        .getByRole("button", { name: new RegExp(`^#\\d+ ${member}\\b`) })
        .click();
    }
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));

    const name = uniquePlayName("Codex plan");

    await planner.getByRole("button", { name: "Save Plan" }).click();
    const details = page.getByRole("dialog", { name: "Save Plan" });

    await details.getByRole("textbox", { name: "Plan name" }).fill(name);
    await details.getByRole("button", { name: "Save Plan" }).click();
    await page.waitForURL(/\/mainline\/plans\/[0-9a-f-]{36}/);
    await expect(
      page.getByRole("heading", { level: 1, name: new RegExp(name) }),
    ).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Your team" }).getByText("2 of 6"),
    ).toBeVisible();

    /* The saved Plan is a step forward: Back returns to the game page. */
    await page.goBack();
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
  });

  test("switches game in place, keeping the Codex page", async ({ page }) => {
    const planner = await openPlanner(page);

    await planner.getByRole("combobox", { name: /^Game:/ }).click();
    await page.getByRole("option", { name: /^Sun \/ Moon/ }).click();

    await expect(
      planner.getByRole("combobox", { name: /^Game:/ }),
    ).toContainText("Sun / Moon");
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
    await expect(planner).toBeVisible();
  });

  test("carries the team to another game in place", async ({ page }) => {
    const planner = await openPlanner(page);
    const picker = planner.getByRole("region", { name: "Pick your Pokémon" });

    await openSearchBar(page);
    await picker.getByRole("searchbox").fill("Pikachu");
    await picker.getByRole("button", { name: /^#\d+ Pikachu\b/ }).click();

    await planner.getByRole("combobox", { name: /^Game:/ }).click();
    await page.getByRole("option", { name: /^Sun \/ Moon/ }).click();
    await page
      .getByRole("alertdialog", { name: "Switch game?" })
      .getByRole("button", { name: "Switch game" })
      .click();

    await expect(
      planner.getByRole("combobox", { name: /^Game:/ }),
    ).toContainText("Sun / Moon");
    await expect(
      planner.getByRole("region", { name: "Your team" }).getByText("1 of 6"),
    ).toBeVisible();
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
  });

  test("continues an unsaved Plan of another game without leaving", async ({
    page,
  }) => {
    /* A draft of a Sun / Moon Plan, kept by the Planner's own page. */
    await page.goto("/mainline/plans/new?vg=sm", { waitUntil: "networkidle" });
    await openSearchBar(page);
    const standalone = page.getByRole("region", { name: "Pick your Pokémon" });

    await standalone.getByRole("searchbox").fill("Pikachu");
    await standalone.getByRole("button", { name: /^#\d+ Pikachu\b/ }).click();
    await expect(
      page.getByRole("region", { name: "Your team" }).getByText("1 of 6"),
    ).toBeVisible();

    const planner = await openPlanner(page);
    const offer = planner.getByRole("region", { name: "Unsaved Plan" });

    await offer.getByRole("button", { name: "Continue" }).click();

    await expect(
      planner.getByRole("combobox", { name: /^Game:/ }),
    ).toContainText("Sun / Moon");
    await expect(
      planner.getByRole("region", { name: "Your team" }).getByText("1 of 6"),
    ).toBeVisible();
    await expect(page).toHaveURL(new RegExp(`${gamePage}$`));
  });
});
