import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { seededAccounts, signedOut } from "../support/accounts";
import { logIn } from "../support/auth";
import {
  expectCornerMarksOnTheirSide,
  expectNoClippedCornerMarks,
  expectNoClippedFocusRings,
} from "../support/clipping";

/*
 * Nothing a card or a control draws outside its box (its keyboard focus ring,
 * its corner marks) is cut off by a parent that clips. The seeded fixture
 * account has Plays across every game, with shinies and full teams. See the
 * Design System, Focus rings and Card corners.
 */
const pages = [
  ["Home", "/mainline"],
  ["Plays", "/mainline/plays"],
  ["Plans", "/mainline/plans"],
  ["Team Planner", "/mainline/plans/new?vg=rb"],
  ["Library", "/mainline/library"],
  ["Collection", "/mainline/collection"],
  ["Statistics", "/mainline/stats"],
  ["Codex Pokémon", "/codex/pokemon"],
  ["Codex Pokémon detail", "/codex/pokemon/pikachu"],
  ["Codex Games", "/codex/games"],
  ["Settings", "/settings"],
] as const;

test.use({ storageState: signedOut });

test.describe("Focus rings and corner marks", () => {
  test.beforeEach(async ({ page }) => {
    await logIn(page, seededAccounts.fixture);
    await page.waitForURL("**/mainline");
  });

  for (const [name, path] of pages) {
    test(`${name} cuts nothing off @phone`, async ({ page }) => {
      await page.goto(path);
      await expect(page.locator("main").first()).toBeVisible();
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
    await expectNoClippedFocusRings(page);
    await expectNoClippedCornerMarks(page);
    await expectCornerMarksOnTheirSide(page);
    await expectAccessible(page);
  });

  test("a Play's pages cut nothing off @phone", async ({ page }) => {
    await page.goto("/mainline/plays");
    const play = page
      .getByRole("link", { name: /Crystal - Story Complete/ })
      .first();
    const href = (await play.getAttribute("href")) ?? "";
    const base = href.split("?")[0].replace(/\/(team|progress|history)$/, "");

    for (const view of [
      "",
      "/team",
      "/team/analysis",
      "/team/plan",
      "/progress",
      "/history",
      "/settings",
    ]) {
      await page.goto(`${base}${view}`);
      /* Progress and the Team pages open on a sub-view. */
      await page.waitForLoadState("load");
      await expect(page.locator("main").first()).toBeVisible();
      if (view === "/team") {
        await expect(
          page.locator('[data-corner="inside-top-right"]').first(),
        ).toBeVisible();
        await expectAccessible(page);
      }
      await expectNoClippedFocusRings(page);
      await expectNoClippedCornerMarks(page);
      await expectCornerMarksOnTheirSide(page);
    }
  });
});
