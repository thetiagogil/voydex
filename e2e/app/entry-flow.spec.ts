import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newDevice } from "../support/accounts";

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
      page.getByRole("heading", { level: 1, name: "Voydex" }),
    ).toBeVisible();
    await expect(
      page.getByRole("heading", { level: 2, name: "How it works" }),
    ).toBeVisible();
    await expect(
      page.getByRole("heading", { level: 2, name: "Carry the Dex" }),
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
    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
  });

  test("Leave the app brings the front page back until you continue @phone", async ({
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

    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");

    /* It stays the front page, on a reload too, until you continue. */
    await page.reload();
    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");

    await page.getByRole("link", { name: "Continue" }).click();
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

  test("the Dex boots for two seconds when you enter the app", async ({
    page,
  }) => {
    await page.goto("/");
    await page.getByRole("link", { name: "Start a Play" }).click();

    const boot = page.getByRole("status");

    await expect(boot).toBeVisible();

    const shownAt = Date.now();

    /* The app's bars come only once the boot has had its time. */
    await expect(page.getByRole("navigation").first()).toBeVisible();
    expect(Date.now() - shownAt).toBeGreaterThan(1500);

    /* Now in the app: a reload opens as soon as the device is ready. */
    await page.reload();
    await expect(page.getByRole("navigation").first()).toBeVisible();
  });

  test("the boot lights flash one at a time, from the first moment", async ({
    page,
  }) => {
    /* Held open: the device's own files wait while the lights are watched. */
    let release = () => {};
    const held = new Promise<void>((resolve) => {
      release = resolve;
    });

    await page.route("**/local-db/**", async (route) => {
      await held;
      await route.continue().catch(() => undefined);
    });
    await page.goto("/app", { waitUntil: "commit" });
    await expect(page.getByRole("status")).toBeVisible();

    /* How bright each light is on every frame, for a cycle and a half. */
    const frames = await page.evaluate(
      () =>
        new Promise<number[][]>((resolve) => {
          const lights = [
            ...document.querySelectorAll<HTMLElement>(
              '[data-slot="dex-light"]',
            ),
          ];
          const seen: number[][] = [];
          const startedAt = performance.now();
          const read = () => {
            seen.push(
              lights.map((light) => Number(getComputedStyle(light).opacity)),
            );
            if (performance.now() - startedAt < 1800) {
              requestAnimationFrame(read);
            } else {
              resolve(seen);
            }
          };

          read();
        }),
    );

    release();

    expect(frames[0]).toHaveLength(3);
    /* Never two lit together, the first frame included. */
    for (const frame of frames) {
      expect(frame.filter((opacity) => opacity > 0.6).length).toBeLessThan(2);
    }
    /* Each one has its turn. */
    for (const light of [0, 1, 2]) {
      expect(frames.some((frame) => (frame[light] ?? 0) > 0.9)).toBe(true);
    }
  });

  test("the start screen stands alone, without the app's bars", async ({
    page,
  }) => {
    /* Held open: the device's own files wait until the screen is checked. */
    let release = () => {};
    const held = new Promise<void>((resolve) => {
      release = resolve;
    });

    await page.route("**/local-db/**", async (route) => {
      await held;
      await route.continue();
    });
    await page.goto("/app");

    await expect(page.getByRole("status")).toBeVisible();
    await expect(page.getByRole("navigation")).toHaveCount(0);

    release();
    await expect(page.getByRole("navigation").first()).toBeVisible();
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
    await page.getByRole("link", { name: "Go back" }).click();
    await page.waitForURL("**/app/settings");
  });
});
