import { readFile } from "node:fs/promises";

import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

const dayMs = 24 * 60 * 60 * 1000;

test.describe("Export and Import: your data as a file", () => {
  test("an exported file carries a Play to a new browser @phone", async ({
    browser,
    page,
  }) => {
    const name = uniquePlayName("Backup");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: null,
    });
    await page.goto("/app/settings#your-data", { waitUntil: "networkidle" });

    const data = page.getByRole("region", { name: "Your data" });

    await expect(data.getByText(/No backup yet/)).toBeVisible();
    await expectAccessible(page);

    const download = page.waitForEvent("download");

    await data.getByRole("button", { name: "Export" }).click();

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
      await fresh.goto("/app/settings#your-data", { waitUntil: "networkidle" });
      await fresh
        .getByRole("region", { name: "Your data" })
        .getByLabel("File to import")
        .setInputFiles({
          buffer: bytes,
          mimeType: "application/gzip",
          name: file.suggestedFilename(),
        });

      const confirm = fresh.getByRole("dialog", { name: "Import this file?" });

      await expect(confirm).toContainText("with 1 Play.");
      /* Replacing everything is picked unless you choose to add. */
      await expect(
        confirm.getByRole("radio", { name: /Replace everything/ }),
      ).toBeChecked();
      await expectAccessible(fresh);

      /* Written to the device before the next page reads it. */
      const restored = waitForAction(fresh);

      await confirm.getByRole("button", { name: "Replace everything" }).click();
      await expect(fresh.getByText("File imported")).toBeVisible(forTheAnswer);
      await restored;

      await fresh.goto("/app/plays");
      await expect(fresh.getByText(name)).toBeVisible();
    } finally {
      await other.close();
    }
  });

  test("Import can add a file's Plays beside yours instead of replacing them", async ({
    browser,
    page,
  }) => {
    const theirs = uniquePlayName("From file");
    const mine = uniquePlayName("Already here");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: theirs,
      partner: null,
    });
    await page.goto("/app/settings#your-data", { waitUntil: "networkidle" });

    const download = page.waitForEvent("download");

    await page
      .getByRole("region", { name: "Your data" })
      .getByRole("button", { name: "Export" })
      .click();

    const file = await download;
    const bytes = await readFile(await file.path());
    const other = await browser.newContext({
      storageState: { cookies: [], origins: [] },
    });
    const second = await other.newPage();

    try {
      await startPlay(second, {
        game: "Pokémon Red, 1996",
        name: mine,
        partner: null,
      });
      await second.goto("/app/settings#your-data", {
        waitUntil: "networkidle",
      });
      await second
        .getByRole("region", { name: "Your data" })
        .getByLabel("File to import")
        .setInputFiles({
          buffer: bytes,
          mimeType: "application/gzip",
          name: file.suggestedFilename(),
        });

      const confirm = second.getByRole("dialog", { name: "Import this file?" });

      await confirm.getByText("Add its Plays and Plans").click();

      const added = waitForAction(second);

      await confirm.getByRole("button", { name: "Add them" }).click();
      await expect(second.getByText("Added 1 Play")).toBeVisible(forTheAnswer);
      await added;

      await second.goto("/app/plays", { waitUntil: "networkidle" });
      await expect(second.getByText(mine)).toBeVisible();
      await expect(second.getByText(theirs)).toBeVisible();
    } finally {
      await other.close();
    }
  });

  test("a file that isn't a backup is refused", async ({ page }) => {
    await page.goto("/app/settings#your-data", { waitUntil: "networkidle" });
    await page
      .getByRole("region", { name: "Your data" })
      .getByLabel("File to import")
      .setInputFiles({
        buffer: Buffer.from("not a backup"),
        mimeType: "text/plain",
        name: "notes.txt",
      });

    await expect(
      page.getByText("That file isn't a Voydex backup, or it's damaged."),
    ).toBeVisible();
    await expect(page.getByRole("dialog")).toBeHidden();
  });

  test("Home reminds you after 30 days without a backup", async ({ page }) => {
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Reminder"),
      partner: null,
    });
    await page.clock.install({ time: new Date(Date.now() + 31 * dayMs) });
    await page.goto("/app");

    await expect(page.getByText(/No backup yet\./)).toBeVisible();
    await page.getByRole("link", { name: "Export your data" }).click();
    await page.waitForURL("**/app/settings#your-data");
  });
});
