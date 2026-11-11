import type { Page } from "@playwright/test";

/*
 * The device answers a save before it reaches IndexedDB (relaxed
 * durability, ADR 0008), so a reload in that moment can lose it, as a crash
 * can. Long enough for the write to land.
 */
const durableSaveMs = 300;

/*
 * Waits for the next save on the device, or the next `count`: every save
 * counts itself on the page's root (`data-saves`) once it is in the device
 * database, then has a moment to reach IndexedDB. Start it just before the
 * tap that saves, and await it before reloading or reading the result.
 */
export const waitForAction = async (page: Page, count = 1) => {
  /* Read before the tap: Playwright runs a page's commands in order. */
  const start = await page.evaluate(() =>
    Number(document.documentElement.dataset.saves ?? 0),
  );

  await page.waitForFunction(
    (target) => Number(document.documentElement.dataset.saves ?? 0) >= target,
    start + count,
    { timeout: 0 },
  );
  await page.waitForTimeout(durableSaveMs);
};

/*
 * For what a save redraws (its message, the page read again): wait as long
 * as the test may rather than an expect's usual ten seconds.
 */
export const forTheAnswer = { timeout: 0 };
