import { expect, test, type Page } from "../support/test";

import { startPlay, uniquePlayName } from "../support/plays";

/*
 * Notes the page's main content on every frame drawn from now on, so a
 * page change that shows an empty page, even for one frame, is caught.
 */
const watchFrames = (page: Page) =>
  page.evaluate(() => {
    const frames: string[] = [];
    const watched = window as unknown as { voydexFrames?: string[] };
    const note = () => {
      if (watched.voydexFrames !== frames) return;

      const main = document.querySelector("main");
      const text = main?.innerText.trim() ?? "";
      /* A page still reading shows its loading state, which counts. */
      const loading = Boolean(main?.querySelector("[aria-busy='true']"));

      frames.push(
        `${location.pathname}${location.search} ${text || loading ? "" : "empty"}`,
      );
      requestAnimationFrame(note);
    };

    watched.voydexFrames = frames;
    requestAnimationFrame(note);
  });

const emptyFrames = (page: Page) =>
  page.evaluate(() => {
    const watched = window as unknown as { voydexFrames?: string[] };
    const frames = watched.voydexFrames ?? [];

    watched.voydexFrames = undefined;

    return frames.filter((frame) => frame.endsWith("empty"));
  });

test.describe("Page changes", () => {
  test("a page change never shows a bare page", async ({ page }) => {
    const firstId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Page change first"),
      partner: "Charmander",
    });
    /* A second Play, so Home is past its first-Play welcome. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Page change second"),
      partner: "Bulbasaur",
    });

    await page.goto(`/app?play=${firstId}`, { waitUntil: "networkidle" });
    const continueRow = page.getByRole("link", { name: /Continue/ });

    await expect(continueRow).toBeVisible();

    /* Into the Play, from Home's Continue row. */
    await watchFrames(page);
    await continueRow.click();
    await expect(page).toHaveURL(`/app/plays/play?id=${firstId}`);
    await expect(page.getByRole("heading", { level: 1 })).toContainText(
      "Page change first",
    );
    expect(await emptyFrames(page)).toEqual([]);

    /* On to another of its pages. */
    await watchFrames(page);
    await page
      .getByRole("navigation", { name: "Play sections" })
      .getByRole("link", { name: "History" })
      .click();
    await expect(page.getByRole("list", { name: "Moments" })).toBeVisible();
    expect(await emptyFrames(page)).toEqual([]);

    /* Out of Mainline to Settings, and back Home. */
    await page.getByRole("button", { name: "You" }).click();
    await watchFrames(page);
    await page.getByRole("menuitem", { name: /^Settings/ }).click();
    await expect(page).toHaveURL("/app/settings");
    await expect(
      page.getByRole("heading", { level: 1, name: "Settings" }),
    ).toBeVisible();
    await page.getByRole("link", { exact: true, name: "Home" }).click();
    await expect(continueRow).toBeVisible();
    expect(await emptyFrames(page)).toEqual([]);
  });

  test("the Team Planner opens at once, with its loading state until its game's file is in", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Page change planner"),
      partner: "Squirtle",
    });
    const pool = page.getByRole("region", { name: "Pick your Pokémon" });

    /*
     * A game's file that takes a while: the Planner opens at once, on its
     * loading state, and draws its Pokémon once the file is in.
     */
    let sendFile = () => {};
    const fileSent = new Promise<void>((resolve) => {
      sendFile = resolve;
    });

    await page.route("**/codex-data/planner/rb.json.gz", async (route) => {
      await fileSent;
      await route.continue();
    });
    await page.goto(`/app/plays/play/team/plan?id=${playId}`, {
      waitUntil: "networkidle",
    });
    /*
     * The start screen gives way once Home is ready and the other tabs
     * read behind it, with no download, so the network can go quiet
     * before the page shows: watch from the page, not the start screen.
     */
    const planTeam = page.getByRole("button", { name: "Plan a team" });

    await expect(planTeam).toBeVisible();
    await watchFrames(page);
    await planTeam.click();
    await expect(page).toHaveURL("/app/planner?vg=rb");
    await expect(
      page.getByRole("main").locator("[aria-busy='true']"),
    ).toBeVisible();
    await expect(pool).toBeHidden();
    sendFile();
    await expect(pool).toBeVisible();
    expect(await emptyFrames(page)).toEqual([]);

    /*
     * The newest game isn't: the Planner opens from its file, with no
     * download to wait on.
     */
    await page.goto("/app/plans", { waitUntil: "networkidle" });
    const newPlan = page.getByRole("link", { name: "New Plan" }).first();

    await expect(newPlan).toBeVisible();
    await watchFrames(page);
    await newPlan.click();
    await expect(pool).toBeVisible();
    await expect(page.getByText(/^Downloading /)).toHaveCount(0);
    expect(await emptyFrames(page)).toEqual([]);
  });
});
