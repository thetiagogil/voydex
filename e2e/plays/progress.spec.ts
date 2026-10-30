import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";

test.describe("Progress", () => {
  let playId: string;

  test.beforeEach(async ({ page }) => {
    playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Progress run"),
      partner: "Bulbasaur",
    });
  });

  test("records the next Story milestone", async ({ page }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByText("1 of 21 milestones")).toBeVisible();
    await expectAccessible(page);

    /* The next objective's stop opens its sheet, with the main button in its foot. */
    await page.getByRole("button", { name: /^Receive Pokedex/ }).click();
    const sheet = page.getByRole("dialog", { name: "Receive Pokedex" });
    await expect(sheet).toContainText("Next objective");
    await expectAccessible(page);

    /* The record shows at once; wait for its save before reloading. */
    const saved = waitForAction(page);
    await sheet.getByRole("button", { name: "Record Receive Pokedex" }).click();

    await expect(page.getByText("2 of 21 milestones")).toBeVisible();
    /* The sheet closes and the route moves on: Boulder Badge is next. */
    await expect(sheet).toBeHidden();
    await expect(
      page.getByRole("button", { name: /^Boulder Badge.*Next objective/ }),
    ).toBeVisible();
    await saved;

    await page.reload();
    await expect(page.getByText("2 of 21 milestones")).toBeVisible();

    await page.goto(`/mainline/plays/${playId}/history`);
    await expect(page.getByText("Receive Pokedex").first()).toBeVisible();
  });

  test("records the ones before it together, then undoes them", async ({
    page,
  }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByText("1 of 21 milestones")).toBeVisible();

    /* Boulder Badge's stop (its stamp's name goes on with a comma), with Receive Pokedex still open. */
    await page.getByRole("button", { name: /^Boulder Badge(?!,)/ }).click();
    await expect(
      page.getByText("Recording it also records the one before it."),
    ).toBeVisible();
    /*
     * Undo waits for the record's save itself, so tap it while its toast
     * shows, then wait for both saves: the record and its Undo.
     */
    const saved = waitForAction(page, 2);
    await page.getByRole("button", { name: "Record Boulder Badge" }).click();
    await expect(
      page.getByText("Boulder Badge and the one before it recorded · 3 of 21"),
    ).toBeVisible();
    await expect(page.getByText("3 of 21 milestones")).toBeVisible();

    await page.getByRole("button", { name: "Undo" }).click();
    await saved;
    await expect(
      page.getByText(
        "Boulder Badge and the one before it are no longer recorded",
      ),
    ).toBeVisible(forTheAnswer);
    await page.reload();
    await expect(page.getByText("1 of 21 milestones")).toBeVisible();
  });

  test("clears the ones after it, and a confirm closes without an answer", async ({
    page,
  }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Boulder Badge(?!,)/ }).click();
    const saved = waitForAction(page);
    await page.getByRole("button", { name: "Record Boulder Badge" }).click();
    await saved;
    await page.reload();
    await expect(page.getByText("3 of 21 milestones")).toBeVisible();

    const openConfirm = async () => {
      await page.getByRole("button", { name: /^Receive Pokedex/ }).click();
      await page.getByRole("button", { name: "Edit" }).click();
      await page.getByRole("menuitem", { name: "Mark incomplete" }).click();
      return page.getByRole("alertdialog", {
        name: "Mark milestone incomplete",
      });
    };

    /* The corner button and a tap outside both mean "no". */
    let confirm = await openConfirm();
    await confirm.getByRole("button", { name: "Close" }).click();
    await expect(confirm).toBeHidden();
    confirm = await openConfirm();
    await page.mouse.click(4, 4);
    await expect(confirm).toBeHidden();

    confirm = await openConfirm();
    await expect(
      confirm.getByRole("checkbox", { name: "Also clear the one after it" }),
    ).toBeChecked();
    await expectAccessible(page);
    const cleared = waitForAction(page);
    await confirm.getByRole("button", { name: "Mark incomplete" }).click();
    await cleared;
    await expect(page.getByText("1 of 21 milestones")).toBeVisible(
      forTheAnswer,
    );
    await page.reload();
    await expect(page.getByText("1 of 21 milestones")).toBeVisible();
  });

  test("opens a milestone from its stamp", async ({ page }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Thunder Badge.*Open it/ }).click();
    await expect(
      page.getByRole("dialog", { name: "Thunder Badge" }),
    ).toBeVisible();
  });

  test("marks a Pokémon caught in the Pokédex @phone", async ({ page }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByText("0% complete · 0 of 151")).toBeVisible();
    await expectAccessible(page);

    /* The mark shows at once; wait for its save before reloading. */
    const saved = waitForAction(page);
    await page.getByRole("button", { name: "Mark Pidgey as Caught" }).click();
    await expect(page.getByText("1% complete · 1 of 151")).toBeVisible();
    await saved;

    await page.reload();
    await expect(page.getByText("1% complete · 1 of 151")).toBeVisible();
    const { close, filters } = await openFilters(page);
    await filters.getByRole("button", { name: "Caught 1" }).click();
    await close();
    await expect(page.getByText("Showing 1 of 151 Pokémon")).toBeVisible();
  });
});
