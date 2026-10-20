import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";
import { forTheAnswer, waitForAction } from "../support/actions";

test.describe("Play settings", () => {
  let playId: string;
  let playName: string;

  test.beforeEach(async ({ page }) => {
    playName = uniquePlayName("Settings run");
    playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: playName,
      partner: null,
    });
    /* Wait for the page to finish loading, so the first tap is heard. */
    await page.goto(`/mainline/plays/${playId}/settings`, {
      waitUntil: "networkidle",
    });
  });

  test("renames the Play and pauses it", async ({ page }) => {
    const general = page.getByRole("region", { name: "General" });
    const newName = uniquePlayName("Renamed run");

    await general.getByRole("textbox", { name: "Play name" }).fill(newName);
    await general
      .getByRole("group", { name: "Status" })
      .getByRole("button", { name: "Paused" })
      .click();
    await expect(general.getByText("Unsaved changes")).toBeVisible();
    await expectAccessible(page);
    const saved = waitForAction(page);
    await general.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(general.getByText("Unsaved changes")).toBeHidden(forTheAnswer);

    await page.reload();
    await expect(
      page.getByRole("heading", { level: 1, name: newName }),
    ).toBeVisible();
    await expect(
      page.getByRole("region", { name: newName }).getByRole("definition"),
    ).toHaveText("Paused");
  });

  test("archives the Play out of the Plays list", async ({ page }) => {
    /* The message comes with the save and may be gone once Plays loads. */
    const saved = waitForAction(page);
    await page
      .getByRole("region", { name: "Archive or delete" })
      .getByRole("button", { name: "Archive" })
      .click();
    await saved;
    await expect(page.getByText(`${playName} archived`)).toBeVisible(
      forTheAnswer,
    );

    await page.waitForURL("**/mainline/plays");
    await expect(page.getByRole("heading", { level: 1 })).toHaveText("Plays");
    await expect(
      page.getByRole("link", { name: new RegExp(playName) }),
    ).toBeHidden();
  });

  test("deletes the Play after confirming", async ({ page }) => {
    await page
      .getByRole("region", { name: "Archive or delete" })
      .getByRole("button", { name: "Delete Play" })
      .click();

    const confirm = page.getByRole("alertdialog", {
      name: `Delete ${playName}?`,
    });
    await expectAccessible(page);
    /* The message comes with the save and may be gone once Plays loads. */
    const saved = waitForAction(page);
    await confirm.getByRole("button", { name: "Delete Play" }).click();
    await saved;
    await expect(page.getByText(`${playName} deleted`)).toBeVisible(
      forTheAnswer,
    );

    await page.waitForURL("**/mainline/plays");

    await page.goto(`/mainline/plays/${playId}`);
    await expect(
      page.getByRole("heading", { name: "This page wandered off" }),
    ).toBeVisible();
  });

  test("keeps the expansions you own in their own card", async ({ page }) => {
    const swordId = await startPlay(page, {
      game: "Pokémon Sword, 2019",
      name: uniquePlayName("Galar run"),
      partner: null,
    });

    await page.goto(`/mainline/plays/${swordId}/settings`, {
      waitUntil: "networkidle",
    });
    const expansions = page.getByRole("region", { name: "Expansions" });

    await expect(
      page.getByRole("region", { name: "Tracking" }).getByRole("button", {
        name: "The Isle of Armor",
      }),
    ).toHaveCount(0);
    await expansions.getByRole("button", { name: "The Isle of Armor" }).click();
    const saved = waitForAction(page);
    await expansions.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(expansions.getByText("Unsaved changes")).toBeHidden(
      forTheAnswer,
    );

    await page.reload();
    await expect(
      page
        .getByRole("region", { name: "Expansions" })
        .getByRole("button", { name: "The Isle of Armor" }),
    ).toHaveAttribute("aria-pressed", "true");
  });

  test("leaves the Expansions card out for a game without DLC", async ({
    page,
  }) => {
    await expect(page.getByRole("region", { name: "Expansions" })).toHaveCount(
      0,
    );
  });
});
