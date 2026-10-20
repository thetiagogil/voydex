import type { Page } from "@playwright/test";

/*
 * Waits for the next Server Action's answer, or the next `count`: a save,
 * or what a screen loads through one (such as the Team editor's options).
 * The answer starts once the action has run, so a save is in the database
 * by then. Start it just before the tap that calls the action, and await it
 * before reloading or reading the result. Under load an action can take
 * longer than an expect waits; this waits as long as the test may.
 */
export const waitForAction = (page: Page, count = 1) => {
  let seen = 0;

  return page.waitForResponse((response) => {
    const request = response.request();

    return (
      request.method() === "POST" &&
      request.headers()["next-action"] !== undefined &&
      ++seen === count
    );
  });
};

/*
 * For what an action's answer draws (its message, the redrawn page): under
 * load the answer can keep streaming well after the save, so wait for it
 * as long as the test may rather than an expect's usual ten seconds.
 */
export const forTheAnswer = { timeout: 0 };
