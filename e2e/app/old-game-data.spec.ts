import { expect, test, type Page } from "../support/test";

import { signedOut } from "../support/accounts";

/*
 * A device that can't take a new game data release keeps the one it has,
 * and says so (#320): the reason goes to the console, and a toast says its
 * game data is out of date, with Try again. A test makes the release:
 * the version list names a newer base file that won't download.
 */

const versionsUrl = "**/game-data/versions.json";
const failedLog =
  "The game data update failed. This device keeps the game data it has.";

/* Serves a version list whose base file is a newer one that 404s. */
const offerBrokenRelease = (page: Page) =>
  page.route(versionsUrl, async (route) => {
    const response = await route.fetch();
    const versions = (await response.json()) as {
      base: { hash: string; path: string };
    };

    versions.base.hash = "0".repeat(64);
    /* Named the way a release names it, so the list reads as one. */
    versions.base.path = `base.${"0".repeat(16)}.json.gz`;
    await route.fulfill({ json: versions, response });
  });

const notice = (page: Page) =>
  page
    .locator("[data-sonner-toast]")
    .filter({ hasText: "Game data is out of date" });

/* A device set up on the current release, then offered a broken one. */
const openBehind = async (page: Page) => {
  const logged: string[] = [];

  page.on("console", (message) => {
    if (message.type() === "warning") logged.push(message.text());
  });

  await page.goto("/app");
  await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
  await expect(notice(page)).toHaveCount(0);

  await offerBrokenRelease(page);
  await page.reload();
  await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

  return logged;
};

test.describe("Older game data", () => {
  test.use({ storageState: signedOut });

  test("says so, logs why, and brings the device up to date on Try again", async ({
    page,
  }) => {
    const logged = await openBehind(page);

    await expect(notice(page)).toBeVisible();
    expect(logged.some((text) => text.includes(failedLog))).toBe(true);

    /* Still failing: the toast stays, with the reason. */
    await notice(page).getByRole("button", { name: "Try again" }).click();
    await expect(notice(page)).toContainText("Check your connection.");

    /* The release downloads again: the device is current. */
    await page.unroute(versionsUrl);
    await notice(page).getByRole("button", { name: "Try again" }).click();
    await expect(page.getByText("Game data is up to date")).toBeVisible();
    await expect(notice(page)).toHaveCount(0);

    await page.reload();
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await page.waitForTimeout(1000);
    await expect(notice(page)).toHaveCount(0);
  });

  test("stays quiet for the visit after Not now", async ({ page }) => {
    await openBehind(page);

    await notice(page).getByRole("button", { name: "Not now" }).click();
    await expect(notice(page)).toHaveCount(0);

    /* Moving between tabs doesn't bring it back. */
    await page.getByRole("link", { name: "Plays" }).first().click();
    await expect(page).toHaveURL(/\/app\/plays/);
    await page.waitForTimeout(1000);
    await expect(notice(page)).toHaveCount(0);
  });
});
