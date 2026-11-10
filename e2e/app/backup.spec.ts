import { readFile } from "node:fs/promises";

import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

const dayMs = 24 * 60 * 60 * 1000;

test.describe("Backups: save a file, restore it on another device", () => {
  test("a backup file carries a Play to a new browser @phone", async ({
    browser,
    page,
  }) => {
    const name = uniquePlayName("Backup");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: null,
    });
    await page.goto("/settings#your-data", { waitUntil: "networkidle" });

    const data = page.getByRole("region", { name: "Your data" });

    await expect(data.getByText(/No backup yet/)).toBeVisible();
    await expectAccessible(page);

    const download = page.waitForEvent("download");

    await data.getByRole("button", { name: "Save backup" }).click();

    const file = await download;

    expect(file.suggestedFilename()).toMatch(
      /^voydex-backup-\d{4}-\d{2}-\d{2}\.json\.gz$/,
    );
    await expect(data.getByText(/Last backup today/)).toBeVisible(forTheAnswer);

    const bytes = await readFile(await file.path());

    /* A new browser: nothing on its device yet. */
    const other = await browser.newContext({
      storageState: { cookies: [], origins: [] },
    });
    const fresh = await other.newPage();

    try {
      await fresh.goto("/settings#your-data", { waitUntil: "networkidle" });
      await fresh
        .getByRole("region", { name: "Your data" })
        .getByLabel("Backup file to restore")
        .setInputFiles({
          buffer: bytes,
          mimeType: "application/gzip",
          name: file.suggestedFilename(),
        });

      const confirm = fresh.getByRole("alertdialog", {
        name: "Restore this backup?",
      });

      await expect(confirm).toContainText("with 1 Play.");
      await confirm
        .getByRole("button", { name: "Replace with the backup" })
        .click();
      await expect(fresh.getByText("Backup restored")).toBeVisible(
        forTheAnswer,
      );

      await fresh.goto("/mainline/plays");
      await expect(fresh.getByText(name)).toBeVisible();
    } finally {
      await other.close();
    }
  });

  test("a file that isn't a backup is refused", async ({ page }) => {
    await page.goto("/settings#your-data", { waitUntil: "networkidle" });
    await page
      .getByRole("region", { name: "Your data" })
      .getByLabel("Backup file to restore")
      .setInputFiles({
        buffer: Buffer.from("not a backup"),
        mimeType: "text/plain",
        name: "notes.txt",
      });

    await expect(
      page.getByText("That file isn't a Voydex backup, or it's damaged."),
    ).toBeVisible();
    await expect(page.getByRole("alertdialog")).toBeHidden();
  });

  test("Home reminds you after 30 days without a backup", async ({ page }) => {
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Reminder"),
      partner: null,
    });
    await page.clock.install({ time: new Date(Date.now() + 31 * dayMs) });
    await page.goto("/mainline");

    await expect(page.getByText(/No backup yet\./)).toBeVisible();
    await page.getByRole("link", { name: "Save a backup" }).click();
    await page.waitForURL("**/settings#your-data");
  });
});
