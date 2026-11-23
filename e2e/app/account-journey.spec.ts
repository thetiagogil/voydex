import { readFile } from "node:fs/promises";

import {
  expect,
  test,
  type Browser,
  type Page,
  passTrainerStep,
} from "../support/test";

import { newTestEmail, newDevice } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { createAccount, logIn, waitForFirstBackup } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * One device's whole life with an account and without one, start to end,
 * beside the account's other device: log in on an empty device, leave and
 * log out, play without an account, log in (nothing asked: they wait
 * aside), log out and get them back, bring them into the account with
 * Export and Import, both devices changing things, and logging out
 * offline. Each step checks what both devices show, so the parts that the
 * other tests cover one by one are also tested in the order people meet
 * them.
 */
test.use({ storageState: newDevice });

const accountRequests = /127\.0\.0\.1:54621\/(rest|storage)\//;

const newDeviceFor = async (browser: Browser) => {
  const context = await browser.newContext({ storageState: newDevice });

  const page = await context.newPage();

  await passTrainerStep(page);

  return { context, page };
};

const appReady = (page: Page) =>
  expect(page.getByRole("navigation").first()).toBeVisible(forTheAnswer);

const newerQuestion = (page: Page) =>
  page.getByRole("dialog", { name: "Your account has newer Plays" });

const playsText = async (page: Page) => {
  await page.goto("/app/plays", { waitUntil: "networkidle" });
  await expect(page.getByRole("heading", { level: 1 }).first()).toBeVisible();

  return page.locator("main").innerText();
};

/* The Plays list holds `yes`, each once, and none of `no`. */
const expectPlays = async (page: Page, yes: string[], no: string[] = []) => {
  await expect
    .poll(async () => {
      const text = await playsText(page);

      return (
        yes.every((name) => text.split(name).length === 2) &&
        no.every((name) => !text.includes(name))
      );
    }, forTheAnswer)
    .toBe(true);
};

const trainerCard = async (page: Page) => {
  await page.goto("/app", { waitUntil: "networkidle" });

  return page.getByRole("region", { name: "Your trainer card" });
};

const yourData = (page: Page) =>
  page.getByRole("region", { name: "Your data" });

/* Backs up now, and waits for it to finish. */
const backUpNow = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });

  const button = yourData(page).getByRole("button", { name: "Back up now" });

  await button.click();
  await expect(button).toBeEnabled(forTheAnswer);
};

const setName = async (page: Page, name: string) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await page.getByRole("textbox", { name: "Display name" }).fill(name);

  const saved = waitForAction(page);

  await page.getByRole("button", { name: "Save" }).first().click();
  await saved;
};

const renamePlay = async (page: Page, from: string, to: string) => {
  await page.goto("/app/plays", { waitUntil: "networkidle" });

  const href = await page
    .getByRole("link", { name: new RegExp(from) })
    .first()
    .getAttribute("href");
  const id = new URL(href ?? "", "http://localhost").searchParams.get("id");

  await page.goto(`/app/plays/play/settings?id=${id}`, {
    waitUntil: "networkidle",
  });

  const general = page.getByRole("region", { name: "General" });
  const saved = waitForAction(page);

  await general.getByRole("textbox", { name: "Play name" }).fill(to);
  await general.getByRole("button", { name: "Save" }).click();
  await saved;
};

const askToLogOut = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await page
    .getByRole("region", { name: "Account" })
    .getByRole("button", { name: "Log out" })
    .click();

  return page.getByRole("dialog", { name: "Log out?" });
};

/* Logs out, then opens the app without an account. */
const logOutAndOpenApp = async (page: Page) => {
  await (
    await askToLogOut(page)
  )
    .getByRole("button", { name: "Log out" })
    .click();
  await page.waitForURL("**/login**");
  await page.getByRole("link", { name: "Continue without an account" }).click();
  await page.waitForURL("**/app");
  await appReady(page);
};

/* Exports everything on the device as a file; returns its bytes. */
const exportFile = async (page: Page) => {
  await page.goto("/app/settings#your-data", { waitUntil: "networkidle" });

  const download = page.waitForEvent("download");

  await yourData(page).getByRole("button", { name: "Export" }).click();

  const file = await download;

  return {
    bytes: await readFile(await file.path()),
    name: file.suggestedFilename(),
  };
};

/* Imports a file, adding its Plays to the device's. */
const importAdding = async (
  page: Page,
  file: { bytes: Buffer; name: string },
) => {
  await page.goto("/app/settings#your-data", { waitUntil: "networkidle" });
  await yourData(page).getByLabel("File to import").setInputFiles({
    buffer: file.bytes,
    mimeType: "application/gzip",
    name: file.name,
  });

  const confirm = page.getByRole("dialog", { name: "Import this file?" });

  await confirm.getByText("Add its Plays and Plans").click();

  const added = waitForAction(page);

  await confirm.getByRole("button", { name: "Add them" }).click();
  await expect(confirm).toBeHidden(forTheAnswer);
  await added;
};

test("a device's life with an account and without one, in order", async ({
  browser,
  page,
}) => {
  test.setTimeout(480_000);

  const email = newTestEmail("journey");
  const accountPlay = uniquePlayName("Account");
  const accountPlay2 = uniquePlayName("Account");
  const local1 = uniquePlayName("Local");
  const offline = uniquePlayName("Offline");
  const other = await newDeviceFor(browser);

  await createAccount(email);

  try {
    /* The account's other device: an empty device asks nothing. */
    await logIn(other.page, email);
    await other.page.waitForURL("**/app");
    await appReady(other.page);
    await waitForFirstBackup(other.page);
    await startPlay(other.page, {
      game: "Pokémon Red, 1996",
      name: accountPlay,
      partner: null,
    });
    await setName(other.page, "Ana");
    await backUpNow(other.page);

    /* This device logs in empty: the account arrives. */
    await logIn(page, email);
    await page.waitForURL("**/app");
    await appReady(page);
    await expect(await trainerCard(page)).toContainText("Ana");
    await expectPlays(page, [accountPlay]);

    /* Leaving the app isn't logging out. */
    await page.getByRole("link", { name: "Voydex home" }).click();
    await expect(
      page.getByRole("link", { name: "Open the app" }),
    ).toBeVisible();

    /* Logging out empties the device; Back home is the front page, as new. */
    await page.getByRole("link", { name: "Open the app" }).click();
    await appReady(page);
    await (
      await askToLogOut(page)
    )
      .getByRole("button", { name: "Log out" })
      .click();
    await page.waitForURL("**/login**");
    await page.getByRole("link", { name: "Back home" }).click();
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();
    await page.getByRole("link", { name: "Start a Play" }).click();
    await page.waitForURL("**/app");
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toBeVisible(forTheAnswer);
    await expectPlays(page, [], [accountPlay]);

    /* Plays without an account, then logging in: nothing asked, they wait aside. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: local1,
      partner: null,
    });
    await setName(page, "Local Sam");
    await logIn(page, email);
    await page.waitForURL("**/app");
    await appReady(page);
    await expect(await trainerCard(page)).toContainText("Ana");
    await expectPlays(page, [accountPlay], [local1]);

    /* A Play made logged in is the account's; the other device takes it quietly. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: accountPlay2,
      partner: null,
    });
    await backUpNow(page);
    await other.page.reload({ waitUntil: "networkidle" });
    await expectPlays(other.page, [accountPlay, accountPlay2], [local1]);
    await expect(newerQuestion(other.page)).toHaveCount(0);

    /* Logging out brings the device's own back, exactly. */
    await logOutAndOpenApp(page);
    await expect(await trainerCard(page)).toContainText("Local Sam");
    await expectPlays(page, [local1], [accountPlay, accountPlay2]);

    /* Export, log in, Import adding: the device's Plays join the account. */
    const file = await exportFile(page);

    await logIn(page, email);
    await page.waitForURL("**/app");
    await appReady(page);
    await importAdding(page, file);
    await expect(await trainerCard(page)).toContainText("Ana");
    await expectPlays(page, [accountPlay, accountPlay2, local1]);
    await backUpNow(page);
    await other.page.reload({ waitUntil: "networkidle" });
    await expectPlays(other.page, [accountPlay, accountPlay2, local1]);

    /* Both devices change things: the other keeps its own, nothing merges. */
    await other.context.route(accountRequests, (route) => route.abort());
    await renamePlay(other.page, accountPlay, `${accountPlay} on the laptop`);
    await renamePlay(page, accountPlay2, `${accountPlay2} on this one`);
    await backUpNow(page);
    await other.context.unroute(accountRequests);
    await other.page.goto("/app/settings", { waitUntil: "networkidle" });
    await expect(newerQuestion(other.page)).toBeVisible(forTheAnswer);
    await newerQuestion(other.page)
      .getByRole("button", { name: "Keep this device's" })
      .click();
    await expect(newerQuestion(other.page)).toBeHidden(forTheAnswer);
    await page.reload({ waitUntil: "networkidle" });
    await expectPlays(
      page,
      [`${accountPlay} on the laptop`, accountPlay2],
      [`${accountPlay2} on this one`],
    );

    /* Logging out offline: stay, then log out anyway and lose the latest. */
    await page.route(accountRequests, (route) => route.abort());
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: offline,
      partner: null,
    });

    const stuck = page.getByRole("dialog", {
      name: "Your latest changes aren't backed up",
    });

    await (
      await askToLogOut(page)
    )
      .getByRole("button", { name: "Log out" })
      .click();
    await stuck.getByRole("button", { name: "Stay logged in" }).click();
    await expectPlays(page, [offline]);
    await (
      await askToLogOut(page)
    )
      .getByRole("button", { name: "Log out" })
      .click();
    await stuck.getByRole("button", { name: "Log out anyway" }).click();
    await page.waitForURL("**/login**");
    await page.unroute(accountRequests);
    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await appReady(page);
    await expectPlays(page, [local1], [offline, accountPlay]);
    await other.page.reload({ waitUntil: "networkidle" });
    await expectPlays(other.page, [local1], [offline]);
  } finally {
    await other.context.close();
  }
});
