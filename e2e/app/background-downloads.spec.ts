import { expect, test, type Page } from "@playwright/test";

import { signedOut } from "../support/accounts";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * The games a device should have download on their own, a few seconds after
 * the app opens or a save lands, with nothing on screen. Learnsets that
 * didn't download with their game are the case a test can make: a Play's
 * learnsets download is cut off, then the app picks it up by itself.
 */

const learnsets = "**/game-data/*-learnsets.*.json.gz";

/* Every learnsets file the page asks for, and how it went. */
const watchLearnsets = (page: Page) => {
  const asked: { ok: boolean; url: string }[] = [];

  page.on("requestfinished", (request) => {
    if (request.url().includes("-learnsets.")) {
      asked.push({ ok: true, url: request.url() });
    }
  });
  page.on("requestfailed", (request) => {
    if (request.url().includes("-learnsets.")) {
      asked.push({ ok: false, url: request.url() });
    }
  });

  return asked;
};

test.describe("Background game downloads", () => {
  test.use({ storageState: signedOut });

  test("pick up a game's learnsets that didn't download, then leave it be", async ({
    page,
  }) => {
    const asked = watchLearnsets(page);

    await page.route(learnsets, (route) => route.abort());
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Background"),
      partner: null,
    });

    /* New Play's try, then the background's after the save. */
    await expect
      .poll(() => asked.length, { timeout: 20_000 })
      .toBeGreaterThanOrEqual(2);
    expect(asked.every((item) => !item.ok)).toBe(true);

    await page.unroute(learnsets);
    asked.length = 0;
    await page.reload();

    /* Nothing waits on it: the Play is there before the download starts. */
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await expect
      .poll(() => asked.filter((item) => item.ok).length, { timeout: 20_000 })
      .toBe(1);

    asked.length = 0;
    await page.reload();
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    /* Past the background's start: it found nothing missing. */
    await page.waitForTimeout(6000);
    expect(asked).toEqual([]);
  });
});
