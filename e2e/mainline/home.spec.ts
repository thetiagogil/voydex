import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Home", () => {
  test("a tapped team Pokémon is what Continue opens @phone", async ({
    page,
  }) => {
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Home pick"),
      partner: "Squirtle",
    });

    await page.goto(`/mainline?play=${playId}`, { waitUntil: "networkidle" });
    const squirtle = page.getByRole("button", { name: "Pick Squirtle" });
    const continueToPlay = page.getByRole("link", {
      exact: true,
      name: "Continue",
    });
    const continueWithSquirtle = page.getByRole("link", {
      name: "Continue with Squirtle",
    });

    /* Nothing picked: Continue opens the Play. */
    await expect(continueToPlay).toHaveAttribute(
      "href",
      `/mainline/plays/play?id=${playId}`,
    );

    /* A tap picks it and stays on Home; Continue now opens it. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "true");
    await expect(page).toHaveURL(/\/mainline\?play=/);
    await expect(continueWithSquirtle).toHaveAttribute(
      "href",
      new RegExp(`/mainline/plays/play/team\\?id=${playId}&pokemon=`),
    );
    await expectAccessible(page);

    /* Tapping it again lets it go. */
    await squirtle.click();
    await expect(squirtle).toHaveAttribute("aria-pressed", "false");
    await expect(continueToPlay).toBeVisible();

    await squirtle.click();
    await continueWithSquirtle.click();
    await expect(page).toHaveURL(
      new RegExp(`/mainline/plays/play/team\\?id=${playId}&pokemon=`),
    );
    await expect(
      page
        .getByText("Nothing recorded for Squirtle yet.")
        .filter({ visible: true }),
    ).toBeVisible();
  });

  test("another Play on the shelf lets the pick go", async ({ page }) => {
    /* Each test has its own device: the shelf needs a second Play. */
    await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Home shelf other"),
      partner: "Charmander",
    });
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Home shelf"),
      partner: "Bulbasaur",
    });

    await page.goto(`/mainline?play=${playId}`, { waitUntil: "networkidle" });
    const bulbasaur = page.getByRole("button", { name: "Pick Bulbasaur" });
    const shelf = page.getByRole("navigation", { name: "Your Plays" });

    await bulbasaur.click();
    await expect(bulbasaur).toHaveAttribute("aria-pressed", "true");

    /* Away to another Play and back: nothing is picked any more. */
    const thisCover = shelf.locator('a[aria-current="true"]');
    const thisLabel = await thisCover.getAttribute("aria-label");
    await shelf.locator('a[href*="play="]:not([aria-current])').first().click();
    await expect(
      page.getByRole("link", { name: /^Continue with/ }),
    ).toHaveCount(0);
    await shelf
      .getByRole("link", { exact: true, name: thisLabel ?? "" })
      .click();
    await expect(bulbasaur).toHaveAttribute("aria-pressed", "false");
    await expect(
      page.getByRole("link", { exact: true, name: "Continue" }),
    ).toBeVisible();
  });

  test("opening a Play moves it ahead on the shelf, recording nothing", async ({
    page,
  }) => {
    const olderName = uniquePlayName("Opened again");
    const olderId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: olderName,
      partner: "Charmander",
    });
    const newerName = uniquePlayName("Opened once");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: newerName,
      partner: "Squirtle",
    });
    const shelfOrder = async () => {
      await page.goto("/mainline", { waitUntil: "networkidle" });
      /* The shelf draws once the device database has opened. */
      const shelf = page.getByRole("navigation", { name: "Your Plays" });
      await expect(shelf).toBeVisible();
      const labels = await shelf
        .locator('a[href*="play="]')
        .evaluateAll((links) =>
          links.map((link) => link.getAttribute("aria-label") ?? ""),
        );

      return {
        newer: labels.findIndex((label) => label.endsWith(newerName)),
        older: labels.findIndex((label) => label.endsWith(olderName)),
      };
    };
    const moments = async () => {
      await page.goto(`/mainline/plays/play/history?id=${olderId}`, {
        waitUntil: "networkidle",
      });

      return page.getByRole("list", { name: "Moments" }).innerText();
    };

    const before = await shelfOrder();
    expect(before.newer).toBeGreaterThanOrEqual(0);
    /* Other runs share the trainer, so the older one may have left the shelf. */
    expect(before.older === -1 || before.newer < before.older).toBe(true);
    /* Opening its History opens the Play. */
    const momentsBefore = await moments();

    const after = await shelfOrder();
    expect(after.older).toBeGreaterThanOrEqual(0);
    expect(after.newer === -1 || after.older < after.newer).toBe(true);
    expect(await moments()).toBe(momentsBefore);
  });
});
