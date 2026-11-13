import { expect, test, type Page } from "@playwright/test";

import { waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * Counts the queries the page sends the device database's worker (each is
 * one message), so a test can tell a tab that read the device from one
 * that was ready.
 */
const countQueries = (page: Page) =>
  page.addInitScript(() => {
    const counted = window as unknown as { voydexQueries: number };
    const post = Worker.prototype.postMessage;

    counted.voydexQueries = 0;
    Worker.prototype.postMessage = function (
      this: Worker,
      ...args: Parameters<Worker["postMessage"]>
    ) {
      if ((args[0] as { type?: string } | null)?.type === "voydex-query") {
        counted.voydexQueries += 1;
      }

      return post.apply(this, args as [unknown, StructuredSerializeOptions]);
    } as Worker["postMessage"];
  });

const queries = (page: Page) =>
  page.evaluate(
    () => (window as unknown as { voydexQueries: number }).voydexQueries,
  );

/* Waits until nothing has read the device for two seconds. */
const waitForQuiet = (page: Page) =>
  expect
    .poll(
      async () => {
        const before = await queries(page);

        await page.waitForTimeout(2000);

        return (await queries(page)) - before;
      },
      { timeout: 30_000 },
    )
    .toBe(0);

const tabs = [
  { link: "Plays", path: "/mainline/plays" },
  { link: "Team Planner", path: "/mainline/plans/new" },
  { link: "Statistics", path: "/mainline/stats" },
  { link: "Home", path: "/mainline" },
];

/*
 * Goes through every tab from the bar; none may read the device before it
 * shows. Counted up to the change that draws the tab's heading (a mutation
 * observer runs before any effect), so what a tab starts once it is on
 * screen (a note's own small read) isn't taken for a read it waited on.
 */
const switchTabsWithoutReading = async (page: Page) => {
  for (const tab of tabs) {
    const sent = await page.evaluate(
      ({ path }) =>
        new Promise<number>((resolve, reject) => {
          const counted = window as unknown as { voydexQueries: number };
          const anchor = [
            ...document.querySelectorAll<HTMLAnchorElement>(
              'nav[aria-label="Main"] a',
            ),
          ].find((candidate) => new URL(candidate.href).pathname === path);

          if (!anchor) {
            reject(new Error(`No link to ${path} in the bar.`));
            return;
          }

          const heading = () =>
            document.querySelector("main h1")?.textContent ?? "";
          const left = heading();
          const before = counted.voydexQueries;
          const observer = new MutationObserver(() => {
            if (location.pathname === path && heading() && heading() !== left) {
              observer.disconnect();
              resolve(counted.voydexQueries - before);
            }
          });

          observer.observe(document.body, {
            characterData: true,
            childList: true,
            subtree: true,
          });
          anchor.click();
        }),
      tab,
    );

    expect(sent, `${tab.link} read the device before it showed`).toBe(0);
  }
};

test.describe("Ready tabs", () => {
  test("every tab is ready once the app opens, and again after a save", async ({
    page,
  }) => {
    await countQueries(page);
    const name = uniquePlayName("Ready tabs");
    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name,
      partner: null,
    });

    /*
     * The Planner's newest game on the device first: a game added gets
     * every tab ready again, which the test would race.
     */
    await page.goto("/mainline/plans/new", { waitUntil: "networkidle" });
    await waitForQuiet(page);

    /* Opening the app gets every tab ready behind the start screen. */
    await page.goto(`/mainline/plays/play/settings?id=${playId}`, {
      waitUntil: "networkidle",
    });
    await waitForQuiet(page);
    await switchTabsWithoutReading(page);

    /* A save: the tabs get ready again in the background, with it. */
    await page
      .getByRole("navigation", { name: "Main" })
      .getByRole("link", { exact: true, name: "Plays" })
      .click();
    await page
      .getByRole("link", { name: new RegExp(name) })
      .first()
      .click();
    await page
      .getByRole("navigation", { name: "Play sections" })
      .getByRole("link", { name: "Settings" })
      .click();
    const general = page.getByRole("region", { name: "General" });
    const saved = waitForAction(page);

    await general
      .getByRole("group", { name: "Status" })
      .getByRole("button", { name: "Paused" })
      .click();
    await general.getByRole("button", { name: "Save" }).click();
    await saved;
    await waitForQuiet(page);
    await switchTabsWithoutReading(page);

    await page
      .getByRole("navigation", { name: "Main" })
      .getByRole("link", { exact: true, name: "Plays" })
      .click();
    await expect(
      page
        .getByRole("region", { name: "Play library" })
        .getByText("Paused", { exact: true }),
    ).toBeVisible();
  });
});
