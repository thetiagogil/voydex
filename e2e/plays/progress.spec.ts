import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openFilters } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";
import { storyDetail } from "../support/story";

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
    await expect(page.getByText("1 of 24 milestones")).toBeVisible();
    await expectAccessible(page);

    /* The next objective's stop opens beside the route, with the main button at its foot. */
    await page.getByRole("button", { name: /^Receive Pokédex/ }).click();
    const sheet = storyDetail(page, "Receive Pokédex");
    await expect(sheet).toContainText("Next objective");
    await expectAccessible(page);

    /* The record shows at once; wait for its save before reloading. */
    const saved = waitForAction(page);
    await sheet.getByRole("button", { name: "Record Receive Pokédex" }).click();

    await expect(page.getByText("2 of 24 milestones")).toBeVisible();
    /* It reads recorded and the route moves on: Boulder Badge is next. */
    await expect(sheet).toContainText("Recorded");
    await expect(
      page.getByRole("button", { name: /^Boulder Badge.*Next objective/ }),
    ).toBeVisible();
    await saved;

    await page.reload();
    await expect(page.getByText("2 of 24 milestones")).toBeVisible();

    await page.goto(`/mainline/plays/${playId}/history`);
    await expect(page.getByText("Receive Pokédex").first()).toBeVisible();
  });

  test("records the ones before it together, then undoes them", async ({
    page,
  }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await expect(page.getByText("1 of 24 milestones")).toBeVisible();

    /* Boulder Badge's stop (its stamp's name goes on with a comma), with Receive Pokédex still open. */
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
      page.getByText("Boulder Badge and the one before it recorded · 3 of 24"),
    ).toBeVisible();
    await expect(page.getByText("3 of 24 milestones")).toBeVisible();

    await page.getByRole("button", { name: "Undo" }).click();
    await saved;
    await expect(
      page.getByText(
        "Boulder Badge and the one before it are no longer recorded",
      ),
    ).toBeVisible(forTheAnswer);
    await page.reload();
    await expect(page.getByText("1 of 24 milestones")).toBeVisible();
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
    await expect(page.getByText("3 of 24 milestones")).toBeVisible();

    const openConfirm = async () => {
      await page.getByRole("button", { name: /^Receive Pokédex/ }).click();
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
    await expect(page.getByText("1 of 24 milestones")).toBeVisible(
      forTheAnswer,
    );
    await page.reload();
    await expect(page.getByText("1 of 24 milestones")).toBeVisible();
  });

  test("opens a milestone from its stamp", async ({ page }) => {
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: /^Thunder Badge.*Open it/ }).click();
    await expect(storyDetail(page, "Thunder Badge")).toBeVisible();
  });

  test("shows the places on the way, with their battles and Pokémon", async ({
    page,
  }) => {
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    const route = page.getByRole("region", { name: "Main game route" });

    /* Each place between Receive Pokédex and Boulder Badge is its own stop. */
    for (const place of ["Route 22", "Route 2", "Viridian Forest"]) {
      await expect(
        route
          .getByRole("button", { name: new RegExp(`^${place}( |$)`) })
          .first(),
      ).toBeVisible();
    }
    /* A milestone stands for its own town. */
    await expect(
      route.getByRole("button", { name: /^Boulder Badge Pewter City/ }),
    ).toBeVisible();

    /*
     * The rival's first fight sits on Route 22, not under Boulder Badge; the
     * route comes back to Route 22 for the fight before the League.
     */
    const route22 = route.getByRole("button", { name: /^Route 22 1 battle/ });
    await expect(route22).toHaveCount(2);
    await route22.first().click();
    const routeDetail = storyDetail(page, "Route 22");
    await expect(routeDetail).toContainText("On the way to Boulder Badge");
    await expect(
      routeDetail.getByRole("button", { name: /^Blue/ }),
    ).toBeVisible();
    await expect(routeDetail).toContainText("Pokémon found here");
    await expect(routeDetail).toContainText("Spearow");
    await expectAccessible(page);

    await route
      .getByRole("button", { name: /^Boulder Badge Pewter City/ })
      .click();
    const badge = storyDetail(page, "Boulder Badge");
    await expect(badge.getByRole("button", { name: /^Brock/ })).toBeVisible();
    await expect(badge.getByRole("button", { name: /^Blue/ })).toHaveCount(0);
  });

  test("opens a place with the Pokémon found there @phone", async ({
    page,
  }, testInfo) => {
    await page.goto(`/mainline/plays/${playId}/progress/story`, {
      waitUntil: "networkidle",
    });
    await page
      .getByRole("button", { exact: true, name: "Viridian Forest" })
      .click();
    const detail = storyDetail(page, "Viridian Forest");
    await expect(detail).toContainText("Pikachu");

    /* On a phone it's a sheet, and Escape closes it. */
    if (testInfo.project.name === "phone") {
      await page.keyboard.press("Escape");
      await expect(detail).toBeHidden();
    }
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
