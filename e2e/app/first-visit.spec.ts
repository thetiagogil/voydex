import { expect, test, type Page } from "@playwright/test";

import { seededAccounts, signedOut } from "../support/accounts";
import { logIn } from "../support/auth";

/*
 * The once-per-visit reveals (the meadow's partners, Statistics' title) play
 * through once in a fresh tab, and a reload in that tab doesn't start them.
 * A reveal the page cuts off part-way, once it hydrates, is the bug these
 * guard against.
 */

/* Counts each reveal's animations from the first byte of every load. */
const recordAnimations = (page: Page) =>
  page.addInitScript(() => {
    const counts: Record<string, number> = {};
    Object.assign(window, { revealCounts: counts });

    for (const type of ["animationstart", "animationend", "animationcancel"]) {
      document.addEventListener(
        type,
        (event) => {
          const key = `${type}:${(event as AnimationEvent).animationName}`;
          counts[key] = (counts[key] ?? 0) + 1;
        },
        true,
      );
    }
  });

const readCounts = (page: Page, animationName: string) =>
  page.evaluate((name) => {
    const { revealCounts } = window as unknown as {
      revealCounts: Record<string, number>;
    };

    return {
      cancelled: revealCounts[`animationcancel:${name}`] ?? 0,
      ended: revealCounts[`animationend:${name}`] ?? 0,
      started: revealCounts[`animationstart:${name}`] ?? 0,
    };
  }, animationName);

/* Every part of the reveal plays to its end; none is cut off. */
const expectPlayedThrough = async (page: Page, animationName: string) => {
  await expect
    .poll(async () => {
      const { cancelled, ended, started } = await readCounts(
        page,
        animationName,
      );

      return started > 0 && ended + cancelled === started;
    })
    .toBe(true);
  expect(await readCounts(page, animationName)).toMatchObject({
    cancelled: 0,
  });
};

/* Nothing starts, through hydration (the reveal's attribute is gone after it). */
const expectStill = async (page: Page, animationName: string) => {
  await expect(page.locator("[data-first-visit]")).toHaveCount(0);
  expect(await readCounts(page, animationName)).toEqual({
    cancelled: 0,
    ended: 0,
    started: 0,
  });
};

test.describe("The meadow's partners", () => {
  test.use({ storageState: signedOut });

  test("pop in once in a fresh tab, and stay still on a reload", async ({
    page,
  }) => {
    await recordAnimations(page);
    await page.goto("/");
    await expectPlayedThrough(page, "meadow-pop");

    await page.reload();
    await expectStill(page, "meadow-pop");
  });
});

test.describe("Statistics' title", () => {
  /*
   * Each test logs in as the seeded trainer, who has Plays (so Statistics has
   * a title to show), in a fresh tab that has seen no reveal.
   */
  test.use({ storageState: signedOut });

  test("rises in once in a fresh tab, and stays still on a reload", async ({
    page,
  }) => {
    const title = page.getByRole("heading", { name: "Pokémon Trainer" });

    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/mainline");
    await recordAnimations(page);
    await page.goto("/mainline/stats");
    await expect(title).toBeVisible();
    await expectPlayedThrough(page, "title-rise");

    await page.reload();
    await expect(title).toBeVisible();
    await expectStill(page, "title-rise");
  });

  test("plays once when arriving inside the app, not on coming back", async ({
    page,
  }) => {
    const title = page.getByRole("heading", { name: "Pokémon Trainer" });
    const bar = page.getByRole("navigation").first();

    await logIn(page, seededAccounts.trainer);
    await page.waitForURL("**/mainline");
    await recordAnimations(page);
    await page.reload();
    await bar.getByRole("link", { name: "Statistics" }).click();
    await expect(title).toBeVisible();
    await expectPlayedThrough(page, "title-rise");

    /* Start counting afresh; the recorder keeps writing to the same object. */
    await page.evaluate(() => {
      const { revealCounts } = window as unknown as {
        revealCounts: Record<string, number>;
      };

      for (const key of Object.keys(revealCounts)) delete revealCounts[key];
    });
    await bar.getByRole("link", { name: "Home" }).click();
    await page.waitForURL("**/mainline");
    await bar.getByRole("link", { name: "Statistics" }).click();
    await expect(title).toBeVisible();
    await expectStill(page, "title-rise");
  });
});
