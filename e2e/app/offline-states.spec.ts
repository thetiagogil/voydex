import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * With no connection, what needs the internet switches off and says why
 * (a hover, a tap or the keyboard opens the reason), and what has nothing
 * to show yet says it waits for the internet; both come back by
 * themselves with the connection. The network is cut by the browser
 * (`setOffline`), so the page hears it the way a phone losing its signal
 * does. Everything else keeps working (`offline.spec.ts`).
 */

const reason =
  "Needs the internet. It comes back by itself when you're online.";

/* A game's own file, such as `/game-data/sv.4f1c….json.gz`. */
const gameFiles = /\/game-data\/(?!base\.)[a-z0-9]+\.[0-9a-f]+\.json\.gz$/;
const learnsets = "**/game-data/*-learnsets.*.json.gz";

/* The tip a switched-off control opens, by its words. */
const tip = (page: Page, words: string) =>
  page.locator('[data-slot="popover-content"]').filter({ hasText: words });

test.describe("Offline states", () => {
  test("Log in switches off offline, says why, and comes back online @phone", async ({
    context,
    page,
  }) => {
    await page.goto("/login");
    const logIn = page.getByRole("button", { name: "Log in", exact: true });

    await expect(logIn).toBeEnabled();
    await context.setOffline(true);

    await expect(logIn).toBeDisabled();
    /* A tap on a phone, a click on a computer: the reason opens. */
    await page.locator("[data-needs-internet]").click();
    await expect(tip(page, reason)).toBeVisible();
    await expectAccessible(page);
    await page.keyboard.press("Escape");
    await expect(tip(page, reason)).toBeHidden();

    await context.setOffline(false);
    await expect(logIn).toBeEnabled();
    await expect(page.locator("[data-needs-internet]")).toHaveCount(0);
  });

  test("the reason opens from the keyboard too", async ({ context, page }) => {
    await page.goto("/forgot-password");
    await context.setOffline(true);

    const send = page.getByRole("button", {
      name: "Send the link",
      exact: true,
    });

    await expect(send).toBeDisabled();
    await page.locator("[data-needs-internet]").focus();
    await page.keyboard.press("Enter");
    await expect(tip(page, reason)).toBeVisible();
  });

  test("New Play waits for a game that isn't on the device", async ({
    context,
    page,
  }) => {
    /* No game ever reaches this device, only the shared base file. */
    await page.route(gameFiles, (route) => route.abort());
    await page.goto("/app?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });
    const red = dialog.getByRole("option", { name: "Pokémon Red, 1996" });

    /* The device opens online first, as it always has by then. */
    await expect(red).toBeVisible(forTheAnswer);
    await context.setOffline(true);
    await red.click();

    const next = dialog.getByRole("button", { name: "Next", exact: true });

    await expect(next).toBeDisabled();
    await dialog.locator("[data-needs-internet]").click();
    await expect(
      tip(page, "This game isn't on this device yet."),
    ).toBeVisible();

    await context.setOffline(false);
    await expect(next).toBeEnabled();
  });

  test("a game's moves say they come with the internet, then show by themselves", async ({
    context,
    page,
  }) => {
    /* The game is on the device; its moves never came. */
    await page.route(learnsets, (route) => route.abort());
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Offline moves"),
      partner: "Squirtle",
    });

    await page.goto(`/app/plays/play/team?id=${playId}`, {
      waitUntil: "networkidle",
    });
    await context.setOffline(true);

    await page.getByRole("button", { name: "Add Pokémon" }).first().click();
    await page
      .getByRole("dialog", { name: "Which Pokémon?" })
      .getByRole("button", { name: "Pidgey, #016" })
      .click();
    const details = page.getByRole("dialog", { name: "Pidgey" });

    await details.getByRole("button", { name: "More details" }).click();
    await expect(
      details.getByText(
        "This game's moves download the next time you're online.",
      ),
    ).toBeVisible(forTheAnswer);
    await expect(
      details.getByRole("combobox", { name: /^Move 1/ }),
    ).toHaveCount(0);
    await expectAccessible(page);

    /* Back online, the background brings them and the picker fills in. */
    await page.unroute(learnsets);
    await context.setOffline(false);
    await expect(
      details.getByRole("combobox", { name: /^Move 1/ }),
    ).toBeVisible({ timeout: 30_000 });
    await expect(details.getByText(/This game's moves/)).toHaveCount(0);
  });
});
