import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";

test.describe("Presets", () => {
  test("Voydex's Nuzlocke reads in full, locked", async ({ page }) => {
    await page.goto("/mainline/library?tab=presets", {
      waitUntil: "networkidle",
    });
    const presets = page.getByRole("region", { name: "Presets" });

    await presets.getByRole("button", { name: "Nuzlocke, 4 rules" }).click();
    const details = page.getByRole("dialog", { name: "Nuzlocke" });

    await expect(details.getByText("Preset · Made by Voydex")).toBeVisible();
    await expect(
      details.getByText("First catch per area", { exact: true }),
    ).toBeVisible();
    await expect(
      details.getByText("Whiteout ends the run", { exact: true }),
    ).toBeVisible();
    await expect(details.getByRole("button", { name: "Save" })).toHaveCount(0);
    await expectAccessible(page);
  });

  test("a preset of yours is built on the board, by tap and by drag", async ({
    page,
  }) => {
    const name = `My run ${Math.random().toString(36).slice(2, 7)}`;

    await page.goto("/mainline/library?tab=presets", {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: "New preset" }).click();
    const board = page.getByRole("dialog", { name: "New preset" });

    await board.getByRole("textbox", { name: "Preset name" }).fill(name);
    /* Tap: add two rules. */
    await board.getByRole("button", { name: "Add Level caps" }).click();
    await board.getByRole("button", { name: "Add Shiny only" }).click();
    /* Drag: a third rule (the first left to add, so both are in view) in. */
    const inPreset = board.getByRole("region", { name: /^In this preset/ });

    /* A real drag: press, travel in steps, let go (`dragTo` is too quick). */
    await board
      .getByRole("region", { name: /^Add rules/ })
      .getByText("First catch per area", { exact: true })
      .hover();
    await page.mouse.down();
    const target = (await inPreset.boundingBox())!;

    await page.mouse.move(
      target.x + target.width / 2,
      target.y + target.height - 8,
      { steps: 10 },
    );
    await page.mouse.up();
    /* Shown by kind (Catching, then Battles), then by name. */
    await expect(inPreset.getByRole("listitem")).toHaveText([
      /First catch per area/,
      /Shiny only/,
      /Level caps/,
    ]);
    await expectAccessible(page);
    const saved = waitForAction(page);
    await board.getByRole("button", { name: "Add preset" }).click();
    await saved;

    const card = page
      .getByRole("region", { name: "Presets" })
      .getByRole("button", { name: `${name}, 3 rules` });

    await expect(card).toBeVisible(forTheAnswer);

    /* It opens as yours, and deletes for good. */
    await card.click();
    const details = page.getByRole("dialog", { name });

    await expect(details.getByText("Preset · Made by you")).toBeVisible();
    await details.getByRole("button", { name: "Delete" }).click();
    const deleted = waitForAction(page);
    await page
      .getByRole("alertdialog", { name: `Delete ${name}?` })
      .getByRole("button", { name: /Delete/ })
      .click();
    await deleted;
    await expect(card).toBeHidden(forTheAnswer);
  });

  test("New Play takes a preset's rules in one tap @phone", async ({
    page,
  }) => {
    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Red, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();
    const rules = dialog.getByRole("group", { name: "Challenge rules" });

    await rules.getByRole("combobox", { name: "Add rule" }).click();
    /* Presets first, then rules, each under its own label. */
    const list = page.getByRole("listbox");
    const search = page.getByRole("combobox", {
      name: "Search or name a new rule",
    });

    await expect(
      list
        .getByRole("group", { name: "Presets" })
        .getByRole("option", { name: "Nuzlocke", exact: true }),
    ).toBeVisible();
    await expect(
      list
        .getByRole("group", { name: "Rules" })
        .getByRole("option", { name: "Monotype", exact: true }),
    ).toBeAttached();
    /* A group nothing matches leaves the list. */
    await search.fill("Monotype");
    await expect(list.getByRole("group", { name: "Presets" })).toHaveCount(0);
    await search.fill("Hardcore");
    await page.getByRole("option", { name: "Hardcore Nuzlocke" }).click();

    for (const rule of [
      "First catch per area",
      "Release on faint",
      "Nickname everything",
      "Whiteout ends the run",
      "Level caps",
      "No battle items",
      "Set battle mode",
    ]) {
      await expect(
        rules.getByRole("button", { name: `Remove ${rule}` }),
      ).toBeAttached();
    }
  });
});
