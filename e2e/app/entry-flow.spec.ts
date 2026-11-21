import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newDevice } from "../support/accounts";
import { startPlay, uniquePlayName } from "../support/plays";

test.use({ storageState: newDevice });

/*
 * The way in: the website is one page, and one button leads into the app.
 * A device that has opened the app skips the front page afterwards, and
 * logging in is offered inside the app, never demanded.
 */
test.describe("Entry flow", () => {
  test("the front page explains, and Start a Play opens the app @phone", async ({
    page,
  }) => {
    await page.goto("/");

    await expect(
      page.getByRole("heading", {
        level: 1,
        name: "A Pokédex for your playthroughs.",
      }),
    ).toBeVisible();
    await expect(
      page.getByRole("heading", { level: 2, name: "How it works" }),
    ).toBeVisible();
    await expect(
      page.getByRole("heading", { level: 2, name: "Install" }),
    ).toBeVisible();
    await expectAccessible(page);

    await page.getByRole("link", { name: "Start a Play" }).click();
    await page.waitForURL("**/app");
    await expect(
      page.getByRole("region", { name: "Welcome" }).getByRole("listbox", {
        name: "Games",
      }),
    ).toBeVisible();
  });

  test("a device that has opened the app skips the front page", async ({
    page,
  }) => {
    await page.goto("/app");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    await page.goto("/");
    await page.waitForURL("**/app");

    /* A link to one of the front page's parts still shows it. */
    await page.goto("/#how-it-works");
    await expect(
      page.getByRole("heading", { level: 2, name: "How it works" }),
    ).toBeVisible();
    /* No Play on this device yet, so there is still one to start. */
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
  });

  test("Leave the app brings the front page back until you go in again @phone", async ({
    page,
  }) => {
    await page.goto("/app");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    /* The account menu on a wide screen, the You page on a phone. */
    if ((page.viewportSize()?.width ?? 0) >= 1024) {
      await page.getByRole("button", { name: "You" }).click();
      await page.getByRole("menuitem", { name: /Leave the app/ }).click();
    } else {
      await page.goto("/app/you");
      await page.getByRole("link", { name: /Leave the app/ }).click();
    }

    const start = page.getByRole("link", { name: "Start a Play" });

    await expect(start).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");

    /* It stays the front page, on a reload too, until you go in again. */
    await page.reload();
    await expect(start).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");

    await start.click();
    await page.waitForURL("**/app");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();
    await page.goto("/");
    await page.waitForURL("**/app");
  });

  test("a Codex visit alone keeps the front page", async ({ page }) => {
    await page.goto("/app/codex/pokemon");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    await page.goto("/");
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
  });

  test("the start screen shows while the device opens, then the app", async ({
    page,
  }) => {
    /* Held open: the device's own files wait while the start screen shows. */
    let release = () => {};
    const held = new Promise<void>((resolve) => {
      release = resolve;
    });

    await page.route("**/local-db/**", async (route) => {
      await held;
      await route.continue().catch(() => undefined);
    });
    await page.goto("/app", { waitUntil: "commit" });

    const start = page.getByRole("status");

    await expect(start).toBeVisible();
    await expect(start).toContainText("Opening your Plays");
    /* The app's bars come only once the device is ready. */
    await expect(page.getByRole("navigation")).toHaveCount(0);

    release();

    await expect(page.getByRole("navigation").first()).toBeVisible();
  });

  test("the V in the app's bar leaves for the front page, like Leave the app @phone", async ({
    page,
  }) => {
    await page.goto("/app");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    await page.getByRole("link", { name: "Voydex home" }).click();

    const start = page.getByRole("link", { name: "Start a Play" });

    await expect(start).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");

    /* It stays the front page until you go in again. */
    await page.reload();
    await expect(start).toBeVisible();
    await start.click();
    await page.waitForURL("**/app");
  });

  test("the front page says Continue once this device holds a Play", async ({
    page,
  }) => {
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Front door"),
      partner: null,
    });
    await page.getByRole("link", { name: "Voydex home" }).click();

    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    await expect(page.getByRole("link", { name: "Start a Play" })).toHaveCount(
      0,
    );
    /* Not logged in: the bar still offers Log in. */
    await expect(
      page.getByRole("banner").getByRole("link", { name: "Log in" }),
    ).toBeVisible();
  });

  test("Log in has a way in without an account, and a way back home @phone", async ({
    page,
  }) => {
    await page.goto("/login");

    await expect(page.getByRole("link", { name: "Back home" })).toHaveAttribute(
      "href",
      "/",
    );
    await expect(
      page.getByText("Your Plays are saved on this device only."),
    ).toBeVisible();
    await expectAccessible(page);

    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await expect(
      page.getByRole("region", { name: "Welcome" }).getByRole("listbox", {
        name: "Games",
      }),
    ).toBeVisible();
  });

  test("the V on a Codex page keeps Start a Play for a new device", async ({
    page,
  }) => {
    await page.goto("/app/codex/pokemon");
    await expect(page.getByRole("heading", { level: 1 })).toBeVisible();

    await page.getByRole("link", { name: "Voydex home" }).click();
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
  });

  test("the V leads to the start page, from Log in too", async ({ page }) => {
    await page.goto("/");
    await expect(
      page.getByRole("link", { name: "Voydex home" }),
    ).toHaveAttribute("href", "/");

    await page.goto("/login");
    await page.getByRole("link", { name: "Voydex home" }).click();
    await page.waitForURL((url) => url.pathname === "/");
    await expect(
      page.getByRole("heading", {
        level: 1,
        name: "A Pokédex for your playthroughs.",
      }),
    ).toBeVisible();
  });

  test("the footer's name, tagline and links share one baseline", async ({
    page,
  }) => {
    await page.goto("/");

    const footer = page.getByRole("contentinfo");
    /* Where a text's baseline sits: the bottom of an empty box set in it. */
    const baselineOf = (text: string) =>
      footer.getByText(text, { exact: true }).evaluate((element) => {
        const mark = document.createElement("span");
        mark.style.cssText = "display:inline-block;width:0;height:0";
        element.append(mark);
        const { bottom } = mark.getBoundingClientRect();
        mark.remove();
        return bottom;
      });

    const name = await baselineOf("Voydex");

    expect(
      Math.abs((await baselineOf("A Pokédex for your playthroughs.")) - name),
    ).toBeLessThan(0.5);
    expect(Math.abs((await baselineOf("Terms")) - name)).toBeLessThan(0.5);
  });

  test("Settings offers Log in when signed out, and comes back @phone", async ({
    page,
  }) => {
    await page.goto("/app/settings");

    const account = page.getByRole("region", { name: "Account" });
    const logIn = account.getByRole("link", { name: "Log in" });

    await expect(logIn).toHaveAttribute(
      "href",
      "/login?next=%2Fapp%2Fsettings",
    );
    await expect(
      page
        .getByRole("navigation", { name: "About Voydex" })
        .getByRole("link", { name: "How it works" }),
    ).toHaveAttribute("href", "/#how-it-works");
    await expectAccessible(page);

    await logIn.click();
    await expect(
      page.getByRole("heading", { name: "Welcome back" }),
    ).toBeVisible();
    await page.getByRole("link", { name: "Back to the app" }).click();
    await page.waitForURL("**/app/settings");
  });
});
