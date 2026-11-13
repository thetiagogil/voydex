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
  "/mainline/plays",
  "/mainline/plans/new",
  "/mainline/stats",
  "/mainline",
];

/*
 * Follows the link to `href` (path and query) on the page and says whether
 * the next page had to wait: whether its loading state was drawn, even for
 * one change, before the page itself.
 */
const waitsBeforeShowing = (page: Page, href: string) =>
  page.evaluate(
    (href) =>
      new Promise<boolean>((resolve, reject) => {
        const target = new URL(href, location.origin);
        const anchor = [
          ...document.querySelectorAll<HTMLAnchorElement>("a[href]"),
        ].find((candidate) => {
          const url = new URL(candidate.href);

          return (
            url.pathname === target.pathname && url.search === target.search
          );
        });

        if (!anchor) {
          reject(new Error(`No link to ${href} on the page.`));
          return;
        }

        const main = () => document.querySelector("main");
        const loading = () =>
          Boolean(main()?.querySelector("[aria-busy='true']"));
        const shown = () => main()?.innerText.trim() ?? "";
        const left = shown();
        let waited = false;
        const observer = new MutationObserver(() => {
          if (loading()) {
            waited = true;
            return;
          }

          if (
            location.pathname === target.pathname &&
            shown() &&
            shown() !== left
          ) {
            observer.disconnect();
            resolve(waited);
          }
        });

        setTimeout(() => {
          observer.disconnect();
          reject(
            new Error(
              `${href} didn't show: at ${location.pathname}${location.search}, showing "${shown().slice(0, 80)}".`,
            ),
          );
        }, 10_000);
        observer.observe(document.body, {
          attributes: true,
          characterData: true,
          childList: true,
          subtree: true,
        });
        anchor.click();
      }),
    href,
  );

/* Goes through every tab from the bar; none may have to wait. */
const switchTabsWithoutWaiting = async (page: Page) => {
  for (const tab of tabs) {
    expect(
      await waitsBeforeShowing(page, tab),
      `${tab} waited on the device`,
    ).toBe(false);
  }
};

test.describe("Ready tabs", () => {
  /*
   * A tab is ready when its page file is prefetched and its read is in. Only
   * the built app prefetches pages (`next dev` fetches each on the tap, so
   * every tab shows its loading state): these run against `npm run build`
   * then `npm run start` (GitHub does); `next dev` skips them.
   */
  test.beforeEach(async ({ request }) => {
    const built = await request.get("/sw.js");

    test.skip(
      !built.ok(),
      "Only the built app prefetches pages: npm run build, then npm run start.",
    );
  });

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
    await switchTabsWithoutWaiting(page);

    /* A Play on Home's shelf opens without waiting, from the Plays list too. */
    expect(
      await waitsBeforeShowing(page, "/mainline/plays"),
      "it waited on the device",
    ).toBe(false);
    expect(
      await waitsBeforeShowing(page, `/mainline/plays/play?id=${playId}`),
      "the Play waited on the device",
    ).toBe(false);

    /* The Play's sections get ready while it is open. */
    await waitForQuiet(page);
    expect(
      await waitsBeforeShowing(
        page,
        `/mainline/plays/play/settings?id=${playId}`,
      ),
      "the Play's Settings waited on the device",
    ).toBe(false);

    /* A save: the tabs get ready again in the background, with it. */
    const general = page.getByRole("region", { name: "General" });
    const saved = waitForAction(page);

    await general
      .getByRole("group", { name: "Status" })
      .getByRole("button", { name: "Paused" })
      .click();
    await general.getByRole("button", { name: "Save" }).click();
    await saved;
    await waitForQuiet(page);
    await switchTabsWithoutWaiting(page);

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
