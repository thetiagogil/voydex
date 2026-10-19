import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";

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
    await expect(page.getByText("1 of 17 milestones")).toBeVisible();
    await expectAccessible(page);

    await page.getByRole("button", { name: "Record Receive Pokedex" }).click();

    await expect(page.getByText("2 of 17 milestones")).toBeVisible();
    await expect(
      page.getByRole("region", { name: "Boulder Badge" }),
    ).toBeVisible();

    await page.reload();
    await expect(page.getByText("2 of 17 milestones")).toBeVisible();

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
    await expect(page.getByText("1 of 17 milestones")).toBeVisible();

    /* Boulder Badge with Receive Pokedex, the one before it, still open. */
    await page
      .getByRole("button", { name: /^Milestone 3.*Boulder Badge/ })
      .click();
    await expect(
      page.getByText("Recording it also records the one before it."),
    ).toBeVisible();
    const saved = page.waitForResponse(
      (response) => response.request().method() === "POST",
    );
    await page.getByRole("button", { name: "Record Boulder Badge" }).click();
    await expect(
      page.getByText("Boulder Badge and the one before it recorded · 3 of 17"),
    ).toBeVisible();
    await expect(page.getByText("3 of 17 milestones")).toBeVisible();
    await saved;

    await page.getByRole("button", { name: "Undo" }).click();
    await expect(
      page.getByText(
        "Boulder Badge and the one before it are no longer recorded",
      ),
    ).toBeVisible();
    await page.reload();
    await expect(page.getByText("1 of 17 milestones")).toBeVisible();
  });

  test("clears the ones after it, and a confirm closes without an answer", async ({
    page,
  }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page
      .getByRole("button", { name: /^Milestone 3.*Boulder Badge/ })
      .click();
    const saved = page.waitForResponse(
      (response) => response.request().method() === "POST",
    );
    await page.getByRole("button", { name: "Record Boulder Badge" }).click();
    await saved;
    await page.reload();
    await expect(page.getByText("3 of 17 milestones")).toBeVisible();

    const openConfirm = async () => {
      await page
        .getByRole("button", { name: /^Milestone 2.*Receive Pokedex/ })
        .click();
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
    await confirm.getByRole("button", { name: "Mark incomplete" }).click();
    await expect(page.getByText("1 of 17 milestones")).toBeVisible();
    await page.reload();
    await expect(page.getByText("1 of 17 milestones")).toBeVisible();
  });

  test("opens a milestone from its stamp", async ({ page }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Thunder Badge.*Open it/ }).click();
    await expect(
      page.getByRole("region", { name: "Thunder Badge" }),
    ).toBeVisible();
  });

  test("marks a Pokémon caught in the Pokédex @phone", async ({ page }) => {
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`);
    await expect(page.getByText("0% complete · 0 of 151")).toBeVisible();
    await expectAccessible(page);

    /* The mark shows at once; wait for its save before reloading. */
    const saved = page.waitForResponse(
      (response) => response.request().method() === "POST",
    );
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
