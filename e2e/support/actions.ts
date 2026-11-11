import type { Page } from "@playwright/test";

/*
 * Waits for the next save on the device, or the next `count`: every save
 * counts itself on the page's root as it starts (`data-saves-started`) and
 * once it is written to IndexedDB (`data-saves`), so it survives a reload.
 * Start it just before the tap that saves, and await it before reloading or
 * reading the result.
 */
export const waitForAction = async (page: Page, count = 1) => {
  /*
   * Read before the tap: Playwright runs a page's commands in order. Counted
   * from the saves started, so one still being written isn't taken for this.
   */
  const start = await page.evaluate(() =>
    Number(document.documentElement.dataset.savesStarted ?? 0),
  );

  await page.waitForFunction(
    (target) => Number(document.documentElement.dataset.saves ?? 0) >= target,
    start + count,
    { timeout: 0 },
  );
};

/*
 * For what a save redraws (its message, the page read again): wait as long
 * as the test may rather than an expect's usual ten seconds.
 */
export const forTheAnswer = { timeout: 0 };
