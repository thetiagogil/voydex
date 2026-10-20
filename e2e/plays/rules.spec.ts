import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/* Picks one of the rules a picker offers by its name. */
const pickRule = async (page: Page, name: string) => {
  await page
    .getByRole("combobox", { name: "Search or name a new rule" })
    .fill(name);
  await page.getByRole("option", { name, exact: true }).click();
};

/* Picks a type in an open rule's options and closes them. */
const pickType = async (page: Page, rule: string, type: string) => {
  const options = page.getByRole("dialog", { name: rule });

  await options.getByRole("combobox", { name: "Type" }).click();
  await page.getByRole("option", { name: type, exact: true }).click();
  await options.getByRole("button", { name: "Done" }).click();
  await expect(options).toBeHidden();
};

test.describe("Challenge rules", () => {
  test("a new Play starts with Voydex's rules and their options @phone", async ({
    page,
  }) => {
    const name = uniquePlayName("Mono run");

    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();
    await dialog.getByRole("textbox", { name: "Play name" }).fill(name);
    const rules = dialog.getByRole("group", { name: "Challenge rules" });

    /* Monotype asks for its type at once, from the types Red has. */
    await rules.getByRole("combobox", { name: "Add rule" }).click();
    await pickRule(page, "Monotype");
    const monotype = page.getByRole("dialog", { name: "Monotype" });

    await expect(monotype).toBeVisible();
    await monotype.getByRole("combobox", { name: "Type" }).click();
    await expect(
      page.getByRole("option", { name: "Water", exact: true }),
    ).toBeVisible();
    await expect(
      page.getByRole("option", { name: "Fairy", exact: true }),
    ).toBeHidden();
    await expect(
      page.getByRole("option", { name: "Dark", exact: true }),
    ).toBeHidden();
    await page.keyboard.press("Escape");
    await expectAccessible(page);
    await pickType(page, "Monotype", "Water");
    await expect(rules.getByText("Monotype · Water")).toBeVisible();

    /* First catch per area offers its shiny exception. */
    await rules.getByRole("combobox", { name: "Add rule" }).click();
    await pickRule(page, "First catch per area");
    const firstCatch = page.getByRole("dialog", {
      name: "First catch per area",
    });

    await firstCatch
      .getByRole("checkbox", { name: "Shinies can always be caught" })
      .check();
    await firstCatch.getByRole("button", { name: "Done" }).click();
    await expect(
      rules.getByText("First catch per area · except shinies"),
    ).toBeVisible();

    await dialog.getByRole("button", { name: /^Start/ }).click();
    await page.waitForURL(/\/mainline\/plays\/[0-9a-f-]{36}$/);
    await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();

    await page.getByRole("button", { name: "Play details" }).click();
    const kept = page.getByRole("list", { name: "Rules" });

    await expect(kept.getByText("Monotype · Water")).toBeVisible();
    await expect(
      kept.getByText("First catch per area · except shinies"),
    ).toBeVisible();
  });

  test("Play settings keeps Monotype's type and asks for it first", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon X, 2013",
      name: uniquePlayName("Kalos run"),
      partner: null,
    });

    await page.goto(`/mainline/plays/${playId}/settings`, {
      waitUntil: "networkidle",
    });
    const rules = page.getByRole("region", { name: "Challenge rules" });

    /* Closing without a type leaves it waiting, and Save says so. */
    await rules.getByRole("combobox", { name: "Add rule" }).click();
    await pickRule(page, "Monotype");
    await page
      .getByRole("dialog", { name: "Monotype" })
      .getByRole("button", { name: "Done" })
      .click();
    await expect(rules.getByText("Monotype · Pick a type")).toBeVisible();
    await rules.getByRole("button", { name: "Save" }).click();
    await expect(rules.getByText("Pick a type for Monotype.")).toBeVisible();

    /* Fairy is there in a Generation VI game. */
    await rules
      .getByRole("button", { name: "Monotype · Pick a type: change options" })
      .click();
    await pickType(page, "Monotype", "Fairy");
    await expectAccessible(page);
    const saved = waitForAction(page);
    await rules.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(rules.getByText("Unsaved changes")).toBeHidden(forTheAnswer);

    await page.reload();
    await expect(
      page
        .getByRole("region", { name: "Challenge rules" })
        .getByText("Monotype · Fairy"),
    ).toBeVisible();

    /* No Pokémon reuse counts species until a Play says otherwise. */
    const kept = page.getByRole("region", { name: "Challenge rules" });

    await kept.getByRole("combobox", { name: "Add rule" }).click();
    await pickRule(page, "No Pokémon reuse");
    const reuse = page.getByRole("dialog", { name: "No Pokémon reuse" });

    await reuse
      .getByRole("combobox", { name: "Counts as the same Pokémon" })
      .click();
    await page
      .getByRole("option", { name: "Its whole evolution family" })
      .click();
    await reuse.getByRole("button", { name: "Done" }).click();
    await expect(
      kept.getByText("No Pokémon reuse · by evolution family"),
    ).toBeVisible();
    const reuseSaved = waitForAction(page);
    await kept.getByRole("button", { name: "Save" }).click();
    await reuseSaved;
    await page.reload();
    await expect(
      page
        .getByRole("region", { name: "Challenge rules" })
        .getByText("No Pokémon reuse · by evolution family"),
    ).toBeVisible();
  });

  test("the Library shows Voydex's rules locked, in full and apart from yours", async ({
    page,
  }) => {
    await page.goto("/mainline/library?tab=rules", {
      waitUntil: "networkidle",
    });
    const card = page.getByRole("listitem").filter({
      has: page.getByRole("heading", { name: "No Pokémon reuse" }),
    });

    /* Locked: a Voydex mark, and no ⋯ to edit or delete it. */
    await expect(card.getByText("Voydex", { exact: true })).toBeVisible();
    await expect(
      card.getByRole("button", { name: /more actions/ }),
    ).toHaveCount(0);

    /* Tapping it opens it in full, with the options each Play sets. */
    await card.getByRole("button", { name: /^No Pokémon reuse, / }).click();
    const details = page.getByRole("dialog", { name: "No Pokémon reuse" });

    await expect(
      details.getByText(
        "Don't use a Pokémon you've already used in another Play.",
      ),
    ).toBeVisible();
    await expect(
      details.getByText(/Each Play picks what counts as the same Pokémon/),
    ).toBeVisible();
    await expect(details.getByRole("button", { name: "Edit" })).toHaveCount(0);
    await expectAccessible(page);
    await page.keyboard.press("Escape");
    await expect(details).toBeHidden();

    /* Made by: Yours leaves Voydex's rules out. */
    await page
      .getByRole("button", { name: /search/i })
      .first()
      .click();
    await page
      .getByRole("combobox", { name: "Filter rules by who made them" })
      .click();
    await page.getByRole("option", { name: "Yours", exact: true }).click();
    await expect(
      page.getByRole("heading", { name: "No Pokémon reuse" }),
    ).toBeHidden();
  });
});
