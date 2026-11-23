import { expect, test, type Page, type Route } from "@playwright/test";

import { signedOut } from "../support/accounts";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * The games a device should have download on their own, a few seconds after
 * the app opens or a save lands, with nothing on screen: every game and
 * every game's learnsets. Learnsets that didn't download with their game
 * are the case a test can make: a Play's learnsets download is cut off,
 * then the app picks it up by itself.
 */

/* A game's own file, such as `/game-data/sv.4f1c….json.gz`. */
const gameFile = /\/game-data\/([a-z0-9]+)\.[0-9a-f]+\.json\.gz$/;

/* Each game the page downloaded, by its file's slug. */
const watchGames = (page: Page) => {
  const fetched = new Set<string>();

  page.on("requestfinished", (request) => {
    const slug = gameFile.exec(new URL(request.url()).pathname)?.[1];

    if (slug && slug !== "base") fetched.add(slug);
  });

  return fetched;
};

/* Waits for the background's next files to be kept on the device. */
const waitForDownloadsWritten = (page: Page) =>
  page.waitForFunction(
    () => Number(document.documentElement.dataset.downloadsWritten ?? 0) > 0,
    undefined,
    { timeout: 45_000 },
  );

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

  test("bring every game and its learnsets, so New Play starts one never opened without downloading anything", async ({
    page,
  }) => {
    const fetched = watchGames(page);
    const asked = watchLearnsets(page);
    const versions = (await (
      await page.request.get("/game-data/versions.json")
    ).json()) as { games: { slug: string }[] };

    await page.goto("/app");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await waitForDownloadsWritten(page);

    const slugs = versions.games.map((game) => game.slug).sort();

    expect([...fetched].sort()).toEqual(slugs);
    expect(asked.every((item) => item.ok)).toBe(true);
    expect(
      asked
        .map(
          (item) => /\/game-data\/([a-z0-9]+)-learnsets\./.exec(item.url)?.[1],
        )
        .sort(),
    ).toEqual(slugs);

    /* The bar says so, and its dialog counts every part, pictures too. */
    const status = page.getByRole("button", { name: "Offline data: ready" });

    await expect(status).toBeVisible({ timeout: 30_000 });
    await status.click();

    const dialog = page.getByRole("dialog", { name: "Offline data" });

    await expect(
      dialog.getByText("Everything is on this device."),
    ).toBeVisible();
    await expect(
      dialog.getByText(`${slugs.length} of ${slugs.length}`),
    ).toHaveCount(2);
    /* The images stand-in lists three pictures. */
    await expect(dialog.getByText(/^3 of 3/)).toBeVisible();
    await page.keyboard.press("Escape");

    /* Nothing downloads any more: Scarlet starts from the device. */
    let refused = 0;
    const refuse = (route: Route) => {
      refused += 1;

      return route.abort();
    };

    await page.route(gameFile, refuse);
    await page.route(learnsets, refuse);
    await startPlay(page, {
      game: "Pokémon Scarlet, 2022",
      name: uniquePlayName("Every game"),
      partner: null,
    });
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    expect(refused).toBe(0);
  });

  test("pick up a game's learnsets that didn't download, then leave it be", async ({
    page,
  }) => {
    const asked = watchLearnsets(page);

    /*
     * On mobile data, so only the games in use download: the run is this
     * Play's learnsets alone, not every other game's too.
     */
    await page.addInitScript(() => {
      Object.defineProperty(navigator, "connection", {
        value: { type: "cellular" },
      });
    });
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
    /* Kept on the device before the next reload, not only fetched. */
    await waitForDownloadsWritten(page);

    asked.length = 0;
    await page.reload();
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    /* Past the background's start: it found nothing missing. */
    await page.waitForTimeout(6000);
    expect(asked).toEqual([]);
  });
});
