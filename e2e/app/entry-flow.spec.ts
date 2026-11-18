import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { signedOut } from "../support/accounts";

test.use({ storageState: signedOut });

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
    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
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
