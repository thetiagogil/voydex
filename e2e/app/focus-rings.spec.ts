import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";
import {
  expectCornerMarksOnTheirSide,
  expectCornerMarksShown,
  expectNoClippedCornerMarks,
  expectNoClippedFocusRings,
} from "../support/clipping";

/*
 * Nothing a card or a control draws outside its box (its keyboard focus ring,
 * its corner marks) is cut off by a parent that clips. Each test starts a
 * Play on its own device, with a partner on the team. See the Design System,
 * Focus rings and Card corners.
 */
/* Each page, and whether it shows cards with corner marks. */
const pages = [
  ["Home", "/mainline", false],
  ["Plays", "/mainline/plays", false],
  ["Plans", "/mainline/plans", false],
  ["Team Planner", "/mainline/plans/new?vg=rb", false],
  ["Library", "/mainline/library", false],
  ["Collection", "/mainline/collection", true],
  /* Its corner marks need a family used across Plays, more than this test makes. */
  ["Statistics", "/mainline/stats", false],
  ["Codex Pokémon", "/codex/pokemon", false],
  ["Codex Pokémon detail", "/codex/pokemon/pikachu", false],
  ["Codex Games", "/codex/games", false],
  ["Settings", "/settings", false],
] as const;

/* A Play's views. */
const playViews = [
  ["Overview", ""],
  ["Team", "/team"],
  ["Team analysis", "/team/analysis"],
  ["Team plan", "/team/plan"],
  ["Pokédex", "/progress/pokedex"],
  ["Story", "/progress/story"],
  ["Collectibles", "/progress/collectibles"],
  ["History", "/history"],
  ["Settings", "/settings"],
] as const;

test.describe("Focus rings and corner marks", () => {
  let playId = "";

  test.beforeEach(async ({ page }) => {
    playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Focus run"),
      partner: "Squirtle",
    });
  });

  for (const [name, path, hasMarks] of pages) {
    test(`${name} cuts nothing off @phone`, async ({ page }) => {
      if (name === "Statistics") {
        /* Statistics draws its board from a second Play. */
        await startPlay(page, {
          game: "Pokémon Blue, 1996",
          name: uniquePlayName("Focus run"),
          partner: "Squirtle",
        });
      }

      await page.goto(path);
      await expect(page.locator("main").first()).toBeVisible();
      if (hasMarks) {
        await expectCornerMarksShown(page);
      }
      await expectNoClippedFocusRings(page);
      await expectNoClippedCornerMarks(page);
      await expectCornerMarksOnTheirSide(page);
    });
  }

  test("a full Plan in the Team Planner cuts nothing off @phone", async ({
    page,
  }) => {
    await page.goto("/mainline/plans/new?vg=rb");
    const random = page.getByRole("menuitem", { name: /^Random team/ });
    /* The menu opens once the page is interactive; click until it does. */
    await expect(async () => {
      await page.getByRole("button", { name: "Random team" }).click();
      await expect(random).toBeVisible({ timeout: 2000 });
    }).toPass();
    await random.click();
    await expect(
      page.getByRole("region", { name: "Your team" }).getByText("6 of 6"),
    ).toBeVisible();
    /* Six slot numbers, top-right, so the checks below have something to read. */
    await expect(
      page
        .getByRole("region", { name: "Your team" })
        .locator('[data-corner="inside-top-right"]'),
    ).toHaveCount(6);
    /* Before the sweep: focusing every control opens their tips. */
    await expectAccessible(page);
    await expectNoClippedFocusRings(page);
    await expectNoClippedCornerMarks(page);
    await expectCornerMarksOnTheirSide(page);
  });

  test("a focused control lifts above its siblings @phone", async ({
    page,
  }) => {
    await page.goto("/mainline/plans/new?vg=rb");
    const random = page.getByRole("button", { name: "Random team" });
    await expect(random).toBeVisible();
    await random.focus();
    await page.keyboard.press("Shift+Tab");
    await page.keyboard.press("Tab");

    const lifted = await random.evaluate((element) => {
      const style = getComputedStyle(element);
      return { position: style.position, zIndex: style.zIndex };
    });
    expect(lifted.zIndex).toBe("20");
    expect(lifted.position).not.toBe("static");
  });

  for (const [name, view] of playViews) {
    test(`a Play's ${name} cuts nothing off @phone`, async ({ page }) => {
      await page.goto(`/mainline/plays/${playId}${view}`, {
        waitUntil: "networkidle",
      });

      if (view === "/progress/pokedex") {
        /* A caught Pokémon is what draws the Pokédex's corner marks. */
        const saved = waitForAction(page);

        await page
          .getByRole("button", { name: "Mark Pidgey as Caught" })
          .click();
        await saved;
      }
      /* Progress and the Team pages open on a sub-view. */
      await page.waitForLoadState("load");
      await expect(page.locator("main").first()).toBeVisible();
      if (view === "/team" || view === "/progress/pokedex") {
        await expectCornerMarksShown(page);
      }
      if (view === "/team") {
        await expectAccessible(page);
      }
      await expectNoClippedFocusRings(page);
      await expectNoClippedCornerMarks(page);
      await expectCornerMarksOnTheirSide(page);
    });
  }
});
