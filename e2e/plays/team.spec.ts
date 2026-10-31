import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";

/* Pick it on the roster (a sheet on phones), then Edit, once its choices load. */
const openEditor = async (page: Page, name: string) => {
  await page
    .getByRole("button", {
      name: new RegExp(`\\b${name}\\b.*, \\w+ slot \\d$`),
    })
    .click();
  const optionsLoaded = waitForAction(page);
  await page.getByRole("button", { name: `Edit ${name}` }).click();
  await optionsLoaded;
};

test.describe("Team", () => {
  test.beforeEach(async ({ page }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Team run"),
      partner: "Squirtle",
    });

    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/team`, {
      waitUntil: "networkidle",
    });
  });

  test("adds a Pokémon to the team @phone", async ({ page }) => {
    await page.getByRole("button", { name: "Add Pokémon" }).first().click();

    const picker = page.getByRole("dialog", { name: "Which Pokémon?" });
    await picker
      .getByRole("searchbox", { name: "Search Pokémon" })
      .fill("pika");
    await picker.getByRole("button", { name: "Pikachu, #025" }).click();

    const details = page.getByRole("dialog", { name: "Pikachu" });
    await details.getByRole("textbox", { name: "Nickname" }).fill("Sparky");
    await details.getByRole("spinbutton", { name: "Level" }).fill("12");
    await expectAccessible(page);
    await details.getByRole("button", { name: "Add Pikachu" }).click();
    await expect(details).toBeHidden();

    const activeTeam = page.getByRole("region", { name: /^Active team/ });
    /* The sheet closes once it's saved; the team redraws after. */
    await expect(activeTeam.getByRole("heading")).toContainText(
      "2 / 6",
      forTheAnswer,
    );
    const sparky = activeTeam.getByRole("button", {
      name: /^Sparky Lv\. 12.*, Active slot 2$/,
    });
    await expect(sparky).toBeVisible();

    await page.reload();
    await expect(sparky).toBeVisible();
    await expectAccessible(page);
  });

  test("adds a Pokémon to the reserve", async ({ page }) => {
    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("button", { name: "Pidgey, #016" })
      .click();

    const details = page.getByRole("dialog", { name: "Pidgey" });
    await details.getByRole("button", { name: "Reserve" }).click();
    await details.getByRole("button", { name: "Add Pidgey" }).click();
    /* It checks its moves against the game before it saves. */
    await expect(details).toBeHidden(forTheAnswer);

    await expect(
      page
        .getByRole("region", { name: /^Reserve/ })
        .getByRole("button", { name: /\bPidgey\b.*, Reserve slot 1$/ }),
    ).toBeVisible(forTheAnswer);
  });

  test("adds a Pokémon with its moves from More details @phone", async ({
    page,
  }) => {
    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("button", { name: "Pidgey, #016" })
      .click();

    const details = page.getByRole("dialog", { name: "Pidgey" });
    await details.getByRole("button", { name: "More details" }).click();
    /* Red has no natures, abilities or held items: only the moves. */
    await expect(
      details.getByRole("combobox", { name: /^Move 1/ }),
    ).toBeVisible(forTheAnswer);
    await expect(details.getByText("Nature")).toHaveCount(0);

    await details.getByRole("combobox", { name: /^Move 1/ }).click();
    await page.getByRole("combobox", { name: "Search moves" }).fill("gust");
    await page.getByRole("option", { name: /Gust/ }).click();
    await expect(
      details.getByRole("combobox", { name: "Move 1: Gust" }),
    ).toBeVisible();
    await expectAccessible(page);

    await details.getByRole("button", { name: "Back" }).click();
    await details.getByRole("button", { name: "Change details" }).click();
    await expect(
      details.getByRole("combobox", { name: "Move 1: Gust" }),
    ).toBeVisible();
    await details.getByRole("button", { name: "Add Pidgey" }).click();
    await expect(details).toBeHidden();

    await expect(
      page.getByRole("region", { name: /^Active team/ }).getByRole("heading"),
    ).toContainText("2 / 6", forTheAnswer);
    await openEditor(page, "Pidgey");
    await expect(
      page.getByRole("combobox", { name: "Move 1: Gust" }),
    ).toBeVisible();
  });

  test("evolves the partner, then retires it", async ({ page }) => {
    /*
     * The editor loads what it offers through an action of its own (twice
     * in development, where effects run twice); its buttons turn on once
     * the last load lands.
     */
    let optionsLoaded = waitForAction(page);
    await page.getByRole("button", { name: "Edit Squirtle" }).click();
    await optionsLoaded;
    const evolve = page.getByRole("button", { name: "Evolve into Wartortle" });
    await expect(evolve).toBeEnabled();
    const evolved = waitForAction(page);
    await evolve.click();
    await evolved;
    await expect(page.getByText("Squirtle evolved into Wartortle")).toBeVisible(
      forTheAnswer,
    );
    await expect(
      page
        .getByRole("region", { name: /^Active team/ })
        .getByRole("button", { name: /^Wartortle\b.*, Active slot 1$/ }),
    ).toBeVisible();

    optionsLoaded = waitForAction(page);
    await page.getByRole("button", { name: "Edit Wartortle" }).click();
    await optionsLoaded;
    await expect(
      page.getByRole("button", { name: "Evolve into Blastoise" }),
    ).toBeEnabled();
    await page.getByRole("button", { name: "Retire", exact: true }).click();
    const confirm = page.getByRole("alertdialog", {
      name: "Retire Wartortle?",
    });
    const retired = waitForAction(page);
    await confirm.getByRole("button", { name: "Retire Wartortle" }).click();
    await retired;
    await expect(page.getByText("Wartortle retired")).toBeVisible(forTheAnswer);
    await expect(
      page.getByRole("region", { name: /^Active team/ }).getByRole("heading"),
    ).toContainText("0 / 6");
  });
  test("moves Pokémon between slots from the editor @phone", async ({
    page,
  }) => {
    const activeTeam = page.getByRole("region", { name: /^Active team/ });
    const reserve = page.getByRole("region", { name: /^Reserve/ });
    const openSlots = async (name: string) => {
      await openEditor(page, name);

      return page.getByRole("group", { name: `Move ${name} to` });
    };

    /* The team's only Pokémon can't leave it for an open reserve slot. */
    let slots = await openSlots("Squirtle");
    await expect(
      slots.getByRole("button", { name: /^Team slot 1/ }),
    ).toHaveAttribute("aria-pressed", "true");
    await expect(
      slots.getByRole("button", { name: /^Move to Reserve R1/ }),
    ).toBeDisabled();
    const editor = page.getByRole("dialog", { name: "Squirtle" });
    const save = editor.getByRole("button", { name: "Save", exact: true });

    await slots.getByRole("button", { name: "Move to Team slot 3" }).click();
    /* Picking a square only marks it: nothing moves until Save (Cancel shows). */
    await expect(
      slots.getByRole("button", { name: "Move to Team slot 3" }),
    ).toHaveAttribute("aria-pressed", "true");
    await expect(save).toBeEnabled();

    /* Cancel drops it. */
    await editor.getByRole("button", { name: "Cancel" }).click();
    await expect(editor).toBeHidden();
    await expect(
      activeTeam.getByRole("button", {
        name: /\bSquirtle\b.*, Active slot 1$/,
      }),
    ).toBeVisible();

    slots = await openSlots("Squirtle");
    await slots.getByRole("button", { name: "Move to Team slot 3" }).click();
    const moved = waitForAction(page);
    await save.click();
    await moved;
    await expect(page.getByText("Squirtle moved to Team slot 3")).toBeVisible(
      forTheAnswer,
    );
    await expect(
      activeTeam.getByRole("button", {
        name: /\bSquirtle\b.*, Active slot 3$/,
      }),
    ).toBeVisible();

    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("button", { name: "Pidgey, #016" })
      .click();
    const details = page.getByRole("dialog", { name: "Pidgey" });
    await details.getByRole("button", { name: "Reserve" }).click();
    await details.getByRole("button", { name: "Add Pidgey" }).click();
    await expect(
      reserve.getByRole("button", { name: /\bPidgey\b.*, Reserve slot 1$/ }),
    ).toBeVisible(forTheAnswer);

    /* A taken slot swaps the two, across the team and the reserve. */
    slots = await openSlots("Squirtle");
    await slots
      .getByRole("button", {
        name: "Move to Reserve R1, swapping with Pidgey",
      })
      .click();
    await expect(
      page
        .getByRole("group", { name: "Move Squirtle to" })
        .getByRole("button", {
          name: "Move to Reserve R1, swapping with Pidgey",
        }),
    ).toHaveAttribute("aria-pressed", "true");
    const swapped = waitForAction(page);
    await page
      .getByRole("dialog", { name: "Squirtle" })
      .getByRole("button", { name: "Save", exact: true })
      .click();
    await swapped;
    await expect(page.getByText("Squirtle swapped with Pidgey")).toBeVisible(
      forTheAnswer,
    );
    await page.reload();
    await expect(
      activeTeam.getByRole("button", { name: /\bPidgey\b.*, Active slot 3$/ }),
    ).toBeVisible();
    await expect(
      reserve.getByRole("button", { name: /\bSquirtle\b.*, Reserve slot 1$/ }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("saves from a Save button that never takes the nickname @phone", async ({
    page,
  }) => {
    await openEditor(page, "Squirtle");
    const editor = page.getByRole("dialog", { name: "Squirtle" });
    const save = editor.getByRole("button", { name: "Save", exact: true });

    await expect(save).toBeDisabled();
    await editor.getByRole("textbox", { name: "Nickname" }).fill("Squirty");
    await expect(save).toBeEnabled();
    /* The details sit together: build, items and where it was met. */
    await expect(
      editor.getByRole("textbox", { name: "Met location" }),
    ).toBeVisible();
    await expect(
      editor.getByRole("combobox", { name: "Poké Ball" }),
    ).toBeVisible();
    /* Shiny is a checkbox, unticked until it's ticked. */
    const shiny = editor.getByRole("checkbox", { name: "Shiny" });

    await expect(shiny).not.toBeChecked();
    await shiny.click();
    await expect(shiny).toBeChecked();
    await expectAccessible(page);

    const saved = waitForAction(page);
    await save.click();
    await saved;
    await expect(page.getByText("Squirty saved")).toBeVisible(forTheAnswer);
  });

  test("drags a Pokémon onto another slot", async ({ page }) => {
    const activeTeam = page.getByRole("region", { name: /^Active team/ });
    const moved = waitForAction(page);

    /*
     * A real drag: press, travel in steps, let go (`dragTo` is too quick).
     * Along the row, so the page doesn't scroll under the pointer.
     */
    await activeTeam
      .getByRole("button", { name: /\bSquirtle\b.*, Active slot 1$/ })
      .hover();
    await page.mouse.down();
    const target = (await activeTeam
      .getByRole("img", { name: "Empty active slot 3" })
      .boundingBox())!;
    await page.mouse.move(
      target.x + target.width / 2,
      target.y + target.height / 2,
      { steps: 10 },
    );
    await page.mouse.up();
    await moved;
    await expect(page.getByText("Squirtle moved to Team slot 3")).toBeVisible(
      forTheAnswer,
    );

    /* The editor opens on where it sits now: the drag is no change to save. */
    await openEditor(page, "Squirtle");
    const editor = page.getByRole("dialog", { name: "Squirtle" });

    await expect(editor.getByText("No changes yet")).toBeVisible();
    await expect(
      editor.getByRole("button", { name: "Save", exact: true }),
    ).toBeDisabled();
    await page.keyboard.press("Escape");
    await expect(editor).toBeHidden();

    await page.reload();
    await expect(
      activeTeam.getByRole("button", {
        name: /\bSquirtle\b.*, Active slot 3$/,
      }),
    ).toBeVisible();
  });
});
