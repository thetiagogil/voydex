import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { newTestEmail, signedOut } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { openFilters } from "../support/filters";
import { signUp } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/* Settings change the trainer's own preferences, so each test signs up its own. */
test.use({ storageState: signedOut });

const skipWelcome = async (page: import("@playwright/test").Page) => {
  await page.getByRole("button", { name: "Skip for now" }).click();
  await page.waitForURL("**/mainline");
};

test.describe("Saved settings: look and feel, New Play defaults and tracking", () => {
  test("Motion is saved and applied across the app @phone", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("motion"));
    await skipWelcome(page);
    await page.goto("/settings", { waitUntil: "networkidle" });

    const look = page.getByRole("region", { name: "Look and feel" });

    await expect(look.getByText("Not in Voydex yet")).toHaveCount(2);
    await look.getByRole("button", { name: "None" }).click();
    await expectAccessible(page);
    const saved = waitForAction(page);
    await look.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(page.getByText("Look and feel saved")).toBeVisible(
      forTheAnswer,
    );
    await expect(page.locator("html")).toHaveAttribute("data-motion", "none");

    /* Another page, and a reload, keep it. */
    await page.goto("/mainline");
    await expect(page.locator("html")).toHaveAttribute("data-motion", "none");

    await page.goto("/settings", { waitUntil: "networkidle" });
    await look.getByRole("button", { name: "Full" }).click();
    const reset = waitForAction(page);
    await look.getByRole("button", { name: "Save" }).click();
    await reset;
    await expect(page.locator("html")).not.toHaveAttribute("data-motion");
  });

  test("Always open shows every list's search and filters on arrival", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("search-filters"));
    await skipWelcome(page);

    /* Folded by default. */
    await page.goto("/codex/pokemon");
    await expect(
      page.getByRole("button", { name: "Show search and filters" }),
    ).toBeVisible();

    await page.goto("/settings", { waitUntil: "networkidle" });
    const look = page.getByRole("region", { name: "Look and feel" });

    await look.getByRole("button", { name: "Always open" }).click();
    const saved = waitForAction(page);
    await look.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(page.getByText("Look and feel saved")).toBeVisible(
      forTheAnswer,
    );

    for (const path of ["/codex/games", "/codex/pokemon"]) {
      await page.goto(path);
      await expect(
        page.getByRole("button", { name: "Hide search and filters" }),
      ).toBeVisible();
      await expect(page.getByRole("searchbox").first()).toBeVisible();
    }

    /* The button still folds it for this visit. */
    await page.getByRole("button", { name: "Hide search and filters" }).click();
    await expect(
      page.getByRole("button", { name: "Show search and filters" }),
    ).toBeVisible();
  });

  test("defaults start New Play, and each Play's tracking hides what is off", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("tracking"));
    await skipWelcome(page);
    await page.goto("/settings", { waitUntil: "networkidle" });

    const defaults = page.getByRole("region", { name: "New Play defaults" });

    await defaults.getByRole("switch", { name: "Story" }).click();
    await defaults.getByRole("button", { name: "Caught only" }).click();
    await expectAccessible(page);
    const saved = waitForAction(page);
    await defaults.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(page.getByText("New Play defaults saved")).toBeVisible(
      forTheAnswer,
    );

    /* New Play starts from them, and each Play can still change them. */
    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Blue, 1996" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();
    /* Blue has no collectibles, so the summary and the switches leave them out. */
    /* The closed Change panel has a "Pokédex" row too; check the summary. */
    await expect(
      dialog.getByText(/^Pokédex$/).filter({ visible: true }),
    ).toBeVisible();
    await dialog.getByRole("button", { name: "Change" }).click();
    await expect(
      dialog.getByRole("switch", { name: "Collectibles" }),
    ).toHaveCount(0);
    await expect(
      dialog.getByRole("switch", { name: "Story" }),
    ).not.toBeChecked();
    await dialog.getByRole("switch", { name: "Story" }).click();
    await expect(dialog.getByText(/^Story · Pokédex/)).toBeVisible();
    await dialog.getByRole("switch", { name: "Story" }).click();
    await dialog.getByRole("button", { name: "Done" }).click();
    await dialog
      .getByRole("textbox", { name: "Play name" })
      .fill(uniquePlayName("Tracking run"));
    await dialog.getByRole("button", { name: /^Start/ }).click();
    await page.waitForURL(/\/mainline\/plays\/[0-9a-f-]{36}$/);
    const playId = page.url().split("/").at(-1)!;

    /* With Story off, Home never asks which partner was decided later. */
    await page.goto(`/mainline?play=${playId}`, { waitUntil: "networkidle" });
    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    await expect(
      page.getByRole("group", { name: "First partners" }),
    ).toHaveCount(0);
    await page.goto(`/mainline/plays/${playId}`);

    /* The Play kept what was off: no Story tab, and its link goes to the Pokédex. */
    await page.getByRole("button", { name: "Progress" }).first().click();
    await expect(
      page.getByRole("link", { name: /Pokédex/ }).first(),
    ).toBeVisible();
    await expect(page.getByRole("link", { name: /^Story/ })).toHaveCount(0);
    await page.keyboard.press("Escape");
    await page.goto(`/mainline/plays/${playId}/progress/story`);
    await page.waitForURL("**/progress/pokedex");
    await expect(page.getByText("Tap marks as")).toHaveCount(0);

    /* Play settings shows the same switches, and turning Story on restores it. */
    await page.goto(`/mainline/plays/${playId}/settings`, {
      waitUntil: "networkidle",
    });
    const tracking = page.getByRole("region", { name: "Tracking" });

    await expect(
      tracking.getByRole("switch", { name: "Story" }),
    ).not.toBeChecked();
    await tracking.getByRole("switch", { name: "Story" }).click();
    await tracking.getByRole("button", { name: "Caught and seen" }).click();
    await expectAccessible(page);
    const tracked = waitForAction(page);
    await tracking.getByRole("button", { name: "Save" }).click();
    await tracked;
    await expect(page.getByText("Tracking saved")).toBeVisible(forTheAnswer);

    await page.goto(`/mainline/plays/${playId}/progress/story`);
    await expect(page).toHaveURL(/\/progress\/story$/);
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`);
    await expect(page.getByText("Tap marks as").first()).toBeVisible();
  });

  test("New Play names Collectibles only where the game or an owned expansion has them", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("collectibles"));
    await skipWelcome(page);
    await page.goto("/mainline?new=1");
    const dialog = page.getByRole("dialog", { name: "New Play" });

    await dialog.getByRole("option", { name: "Pokémon Sword, 2019" }).click();
    await dialog.getByRole("button", { name: "Next" }).click();
    await dialog.getByRole("button", { name: "Decide later" }).click();
    await expect(dialog.getByText(/^Story · Pokédex$/)).toBeVisible();

    /* Sword's Alolan Diglett come with The Isle of Armor. */
    await dialog.getByRole("button", { name: "The Isle of Armor" }).click();
    await expect(
      dialog.getByText(/^Story · Pokédex · Collectibles$/),
    ).toBeVisible();
    await dialog.getByRole("button", { name: "The Isle of Armor" }).click();
    await expect(dialog.getByText(/^Story · Pokédex$/)).toBeVisible();
  });

  test("un-catching in caught only leaves no Seen behind for caught and seen", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("uncatch"));
    await skipWelcome(page);

    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Caught only run"),
      partner: null,
    });
    const setPokedexMode = async (mode: "Caught and seen" | "Caught only") => {
      await page.goto(`/mainline/plays/${playId}/settings`, {
        waitUntil: "networkidle",
      });
      const tracking = page.getByRole("region", { name: "Tracking" });

      await tracking.getByRole("button", { name: mode }).click();
      const saved = waitForAction(page);
      await tracking.getByRole("button", { name: "Save" }).click();
      await saved;
      await expect(page.getByText("Tracking saved")).toBeVisible(forTheAnswer);
    };

    await setPokedexMode("Caught only");
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`, {
      waitUntil: "networkidle",
    });
    const caught = waitForAction(page);
    await page.getByRole("button", { name: "Mark Pidgey as Caught" }).click();
    await caught;
    const cleared = waitForAction(page);
    await page
      .getByRole("button", { name: "Clear recorded progress for Pidgey" })
      .click();
    await cleared;

    await setPokedexMode("Caught and seen");
    await page.goto(`/mainline/plays/${playId}/progress/pokedex`, {
      waitUntil: "networkidle",
    });
    const { filters } = await openFilters(page);
    await expect(filters.getByRole("button", { name: "Seen 0" })).toBeVisible();
    await expect(
      filters.getByRole("button", { name: "Missing 151" }),
    ).toBeVisible();
  });

  test("a Play can start without its areas when the defaults are on", async ({
    page,
  }) => {
    await signUp(page, newTestEmail("ontrack"));
    await skipWelcome(page);

    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Everything on"),
      partner: null,
    });

    await page.goto(`/mainline/plays/${playId}/progress/story`);
    await expect(page).toHaveURL(/\/progress\/story$/);
  });
});
