import { expect, test, type Browser, type Page } from "@playwright/test";

import { newTestEmail, newDevice } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { createAccount, logIn } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/*
 * One device's whole life with an account and without one, start to end,
 * beside the account's other device: log in on an empty device, leave and
 * log out, play without an account, log in and keep those Plays separate,
 * log out and get them back, add them to the account, edit them, add again,
 * keep separate and add later from Settings, log out offline, and Log out
 * instead. Each step checks what both devices show, so the parts that the
 * other tests cover one by one are also tested in the order people meet
 * them.
 */
test.use({ storageState: newDevice });

const accountRequests = /127\.0\.0\.1:54621\/(rest|storage)\//;

const newDeviceFor = async (browser: Browser) => {
  const context = await browser.newContext({ storageState: newDevice });

  return { context, page: await context.newPage() };
};

const appReady = (page: Page) =>
  expect(page.getByRole("navigation").first()).toBeVisible(forTheAnswer);

const ownPlaysQuestion = (page: Page) =>
  page.getByRole("region", { name: "This device already has Plays" });

const clashQuestion = (page: Page) =>
  page.getByRole("dialog", { name: "Which version to keep?" });

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

const waitForSync = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await expect(
    page.getByRole("region", { name: "Account" }).getByText(/Synced today/),
  ).toBeVisible(forTheAnswer);
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

const answerAdd = async (page: Page) => {
  const question = ownPlaysQuestion(page);

  await question
    .getByRole("button", { name: "Add them to my account" })
    .click();
  await question.getByRole("button", { name: "Yes, add them" }).click();
  await appReady(page);
  await waitForSync(page);
  await expect(clashQuestion(page)).toHaveCount(0);
};

test("a device's life with an account and without one, in order", async ({
  browser,
  page,
}) => {
  test.setTimeout(480_000);

  const email = newTestEmail("journey");
  const accountPlay = uniquePlayName("Account");
  const accountPlay2 = uniquePlayName("Account");
  const accountPlay3 = uniquePlayName("Account");
  const local1 = uniquePlayName("Local");
  const local2 = uniquePlayName("Local");
  const local3 = uniquePlayName("Local");
  const other = await newDeviceFor(browser);

  await createAccount(email);

  try {
    /* The account's other device: an empty device asks nothing. */
    await logIn(other.page, email);
    await other.page.waitForURL("**/app");
    await appReady(other.page);
    await expect(ownPlaysQuestion(other.page)).toHaveCount(0);
    await startPlay(other.page, {
      game: "Pokémon Red, 1996",
      name: accountPlay,
      partner: null,
    });
    await setName(other.page, "Ana");
    await waitForSync(other.page);

    /* This device logs in empty: no question, the account arrives. */
    await logIn(page, email);
    await page.waitForURL("**/app");
    await expect(ownPlaysQuestion(page)).toHaveCount(0);
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

    /* Plays without an account, then logging in: kept separate. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: local1,
      partner: null,
    });
    await setName(page, "Local Sam");
    await logIn(page, email);
    await expect(ownPlaysQuestion(page)).toBeVisible(forTheAnswer);
    await expect(page.getByRole("navigation")).toHaveCount(0);
    await expect(
      ownPlaysQuestion(page).getByRole("list", {
        name: "Plays on this device",
      }),
    ).toContainText(local1);
    await ownPlaysQuestion(page)
      .getByRole("button", { name: "Keep them separate" })
      .click();
    await appReady(page);
    await expect(await trainerCard(page)).toContainText("Ana");
    await expectPlays(page, [accountPlay], [local1]);

    /* A Play made logged in is the account's; nothing local reaches it. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: accountPlay2,
      partner: null,
    });
    await waitForSync(page);
    await waitForSync(other.page);
    await expectPlays(other.page, [accountPlay, accountPlay2], [local1]);

    /* Logging out brings the device's own back, exactly. */
    await logOutAndOpenApp(page);
    await expect(await trainerCard(page)).toContainText("Local Sam");
    await expectPlays(page, [local1], [accountPlay, accountPlay2]);

    /* Adding them: the Plays join, the account's name stays, no question. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: local2,
      partner: null,
    });
    await logIn(page, email);
    await expect(ownPlaysQuestion(page)).toBeVisible(forTheAnswer);
    await answerAdd(page);
    await expect(await trainerCard(page)).toContainText("Ana");
    await expectPlays(page, [accountPlay, accountPlay2, local1, local2]);

    /* An added Play edited while logged in: the edit reaches the other device. */
    await renamePlay(page, local1, `${local1} renamed`);
    await waitForSync(page);
    await waitForSync(other.page);
    await expectPlays(other.page, [`${local1} renamed`, local2]);

    /* Logging out keeps the device's own; adding again asks nothing more. */
    await logOutAndOpenApp(page);
    await expectPlays(page, [local2], [accountPlay]);
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: local3,
      partner: null,
    });
    await logIn(page, email);
    await expect(ownPlaysQuestion(page)).toBeVisible(forTheAnswer);
    await answerAdd(page);
    await expectPlays(page, [
      accountPlay,
      accountPlay2,
      `${local1} renamed`,
      local2,
      local3,
    ]);

    /* Kept separate, then added later from Settings: no question either. */
    await logOutAndOpenApp(page);
    await logIn(page, email);
    await ownPlaysQuestion(page)
      .getByRole("button", { name: "Keep them separate" })
      .click();
    await appReady(page);
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: accountPlay3,
      partner: null,
    });
    await page.goto("/app/settings", { waitUntil: "networkidle" });

    const account = page.getByRole("region", { name: "Account" });

    await account.getByRole("button", { name: "Add to my account" }).click();
    await page
      .getByRole("dialog", { name: "Add this device's Plays to your account?" })
      .getByRole("button", { name: "Add them" })
      .click();
    await expect(account.getByText("A copy is in your account")).toBeVisible(
      forTheAnswer,
    );
    await expect(clashQuestion(page)).toHaveCount(0);
    await expectPlays(page, [
      accountPlay,
      accountPlay3,
      `${local1} renamed`,
      local2,
      local3,
    ]);

    /* Logging out offline removes nothing: stay logged in. */
    const question = await askToLogOut(page);

    await page.route(accountRequests, (route) => route.abort());
    await question.getByRole("button", { name: "Log out" }).click();

    const stuck = page.getByRole("dialog", {
      name: "Your latest changes aren't in your account yet",
    });

    await expect(stuck).toBeVisible(forTheAnswer);
    await stuck.getByRole("button", { name: "Stay logged in" }).click();
    await page.unroute(accountRequests);
    await expectPlays(page, [accountPlay, local2]);

    /* Log out instead, on the question: the device stays as it was. */
    await logOutAndOpenApp(page);
    await expectPlays(page, [local2, local3], [accountPlay]);
    await logIn(page, email);
    await ownPlaysQuestion(page)
      .getByRole("button", { name: "Log out instead" })
      .click();
    await page.waitForURL("**/login**");
    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await appReady(page);
    await expectPlays(page, [local2, local3], [accountPlay]);
    await page.getByRole("link", { name: "Voydex home" }).click();
    await expect(page.getByRole("link", { name: "Continue" })).toBeVisible();
    await expect(
      page.getByRole("banner").getByRole("link", { name: "Log in" }),
    ).toBeVisible();
  } finally {
    await other.context.close();
  }
});
