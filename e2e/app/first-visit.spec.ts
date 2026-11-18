import { expect, test, type Page } from "@playwright/test";

import { startPlay, uniquePlayName } from "../support/plays";

/*
 * The once-per-visit reveal (Statistics' title) plays through once in a
 * fresh tab, and a reload in that tab doesn't start it.
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

test.describe("Statistics' title", () => {
  /*
   * Each test starts two Plays first (so Statistics has a title to show), in a
   * fresh tab that has seen no reveal.
   */

  test("rises in once in a fresh tab, and stays still on a reload", async ({
    page,
  }) => {
    const title = page.getByRole("heading", { name: "Pokémon Trainer" });

    /* The board, and its title, come with a second Play. */
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Reveal run"),
      partner: "Charmander",
    });
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Reveal run"),
      partner: "Squirtle",
    });
    await recordAnimations(page);
    await page.goto("/app/statistics");
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

    /* The board, and its title, come with a second Play. */
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Reveal run"),
      partner: "Charmander",
    });
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Reveal run"),
      partner: "Squirtle",
    });
    await recordAnimations(page);
    await page.goto("/app");
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
    await page.waitForURL("**/app");
    await bar.getByRole("link", { name: "Statistics" }).click();
    await expect(title).toBeVisible();
    await expectStill(page, "title-rise");
  });
});
