import { expect, test, type Page } from "@playwright/test";

import { signedOut } from "../support/accounts";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * After one online visit the app opens with no connection (#274): its pages
 * and scripts come from the service worker's copy, and your data and
 * installed games from the device database. Only the built app has a
 * service worker, so these run against `npm run build` then `npm run start`
 * (GitHub does); `next dev` skips them.
 */

test.use({ serviceWorkers: "allow", storageState: signedOut });

test.beforeEach(async ({ request }) => {
  const worker = await request.get("/sw.js");

  test.skip(
    !worker.ok(),
    "Only the built app has a service worker: npm run build, then npm run start.",
  );
});

/* Waits until the worker has kept the whole release and runs this page. */
const waitForOfflineCopy = (page: Page) =>
  page.evaluate(async () => {
    await navigator.serviceWorker.ready;

    if (!navigator.serviceWorker.controller) {
      await new Promise((resolve) =>
        navigator.serviceWorker.addEventListener("controllerchange", resolve, {
          once: true,
        }),
      );
    }
  });

const pageHeading = (page: Page) =>
  page.getByRole("heading", { level: 1 }).first();

/* The offline page's own words (the device's offline screen has the same title). */
const notKept = (page: Page) =>
  page.getByText("This page hasn't been opened on this device yet");

test.describe("Offline", () => {
  test("a Play and the app's pages open with no connection", async ({
    context,
    page,
  }) => {
    test.slow();

    const name = uniquePlayName("Offline run");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: "Squirtle",
    });
    const playUrl = page.url();

    await waitForOfflineCopy(page);
    await context.setOffline(true);

    await page.reload();
    await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();

    /* Moving between a Play's views reads their kept data files. */
    await page
      .getByRole("navigation", { name: "Play sections" })
      .getByRole("link", { name: "History" })
      .click();
    await expect(page).toHaveURL(/\/mainline\/plays\/play\/history\?id=/);
    await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();

    for (const path of [
      "/mainline",
      "/mainline/plays",
      "/mainline/plans",
      "/mainline/library",
      "/mainline/collection",
      "/settings",
      "/codex/pokemon",
    ]) {
      await page.goto(path);
      await expect(pageHeading(page), path).toBeVisible();
      await expect(
        page.getByRole("heading", { level: 1, name: "You're offline" }),
        path,
      ).toBeHidden();
    }

    await page.goto(playUrl);
    await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();
  });

  test("a page never opened says it isn't saved, and one opened before opens", async ({
    context,
    page,
  }) => {
    await page.goto("/codex/pokemon/pikachu");
    await expect(
      page.getByRole("heading", { level: 1, name: "Pikachu" }),
    ).toBeVisible();
    await waitForOfflineCopy(page);
    /* Kept once the worker runs the page: open it again online. */
    await page.reload();
    await expect(
      page.getByRole("heading", { level: 1, name: "Pikachu" }),
    ).toBeVisible();

    await context.setOffline(true);

    await page.goto("/codex/pokemon/mewtwo");
    await expect(
      page.getByRole("heading", { level: 1, name: "You're offline" }),
    ).toBeVisible();
    await expect(notKept(page)).toBeVisible();

    await page.goto("/codex/pokemon/pikachu");
    await expect(
      page.getByRole("heading", { level: 1, name: "Pikachu" }),
    ).toBeVisible();

    await context.setOffline(false);
    await page.goto("/codex/pokemon/mewtwo");
    await expect(
      page.getByRole("heading", { level: 1, name: "Mewtwo" }),
    ).toBeVisible();
  });
});
