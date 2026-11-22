import { expect, test, type Page } from "@playwright/test";

import { newTestEmail, signedOut } from "../support/accounts";
import { forTheAnswer, waitForAction } from "../support/actions";
import { expectAccessible } from "../support/accessibility";
import { createAccount, logIn, logInToNewAccount } from "../support/auth";
import { startPlay, uniquePlayName } from "../support/plays";

/* Each test makes its own account, so no other test's backups mix in. */
test.use({ storageState: signedOut });

const rename = async (page: Page, name: string) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await page.getByRole("textbox", { name: "Display name" }).fill(name);

  const saved = waitForAction(page);

  await page.getByRole("button", { name: "Save" }).first().click();
  await saved;
};

/* The account's side of Supabase (data and files), not the app or login. */
const accountRequests = /127\.0\.0\.1:54621\/(rest|storage)\//;

const askToLogOut = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await page
    .getByRole("region", { name: "Account" })
    .getByRole("button", { name: "Log out" })
    .click();

  return page.getByRole("dialog", { name: "Log out?" });
};

/*
 * Logs out with the account out of reach, so the last save can't go up and
 * the device keeps its Plays, then logs in to a second, new account on the
 * same device.
 */
const switchAccount = async (page: Page, email: string) => {
  const question = await askToLogOut(page);

  await page.route(accountRequests, (route) => route.abort());
  await question.getByRole("button", { name: "Log out" }).click();

  const stuck = page.getByRole("dialog", {
    name: "Your latest changes aren't in your account yet",
  });

  await expect(stuck).toBeVisible(forTheAnswer);
  await stuck
    .getByRole("button", { name: "Log out and keep them here" })
    .click();
  await page.waitForURL("**/login**");
  await page.unroute(accountRequests);
  await createAccount(email);
  await logIn(page, email);
};

/* The step before the app, on a device with Plays made without an account. */
const ownPlaysQuestion = (page: Page) =>
  page.getByRole("region", { name: "This device already has Plays" });

const otherPlaysQuestion = (page: Page) =>
  page.getByRole("dialog", {
    name: "Add this device's Plays to your account?",
  });

const waitForSync = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await expect(
    page.getByRole("region", { name: "Account" }).getByText(/Synced today/),
  ).toBeVisible(forTheAnswer);
};

test.describe("Account sync: backups that follow you between devices", () => {
  test("a Play made on one device reaches another @phone", async ({
    browser,
    page,
  }) => {
    const email = newTestEmail("sync");
    const name = uniquePlayName("Synced");

    await logInToNewAccount(page, email);
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: null,
    });
    await waitForSync(page);

    /* The second device: a new browser, the same account. */
    const other = await browser.newContext({ storageState: signedOut });
    const second = await other.newPage();

    try {
      await logIn(second, email);
      await second.waitForURL("**/app**");
      await waitForSync(second);
      await second.goto("/app/plays");
      await expect(second.getByText(name)).toBeVisible(forTheAnswer);
    } finally {
      await other.close();
    }
  });

  test("logging out takes your Plays off this device, and logging in brings them back @phone", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("clean");
    const name = uniquePlayName("Mine");

    await logInToNewAccount(page, email);
    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });
    await rename(page, "Sam");

    /* No waiting for a sync: Log out saves to the account first. */
    const question = await askToLogOut(page);

    await expect(question).toBeVisible();
    await expectAccessible(page);
    await question.getByRole("button", { name: "Log out" }).click();
    await page.waitForURL("**/login**");

    /* Logged out is out of the app: Back home is the front page, as new. */
    await page.getByRole("link", { name: "Back home" }).click();
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();
    expect(new URL(page.url()).pathname).toBe("/");
    await page
      .getByRole("banner")
      .getByRole("link", { name: "Log in" })
      .click();

    /* Without the account, the device is as new: no Play, no name. */
    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toBeVisible(forTheAnswer);
    await page.goto("/app/settings", { waitUntil: "networkidle" });
    await expect(
      page.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("");

    /* It survives a reload, and the front page has a Play to start. */
    await page.goto("/#how-it-works");
    await expect(
      page.getByRole("link", { name: "Start a Play" }),
    ).toBeVisible();

    /* Logging in again brings everything back, and asks nothing. */
    await logIn(page, email);
    await page.waitForURL("**/app**");
    await waitForSync(page);
    await expect(otherPlaysQuestion(page)).toBeHidden();
    await expect(
      page.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Sam");
    await page.goto("/app/plays");
    await expect(page.getByText(name)).toBeVisible(forTheAnswer);
  });

  test("on a friend's device: their Plays stay out of your account and come back when you log out @phone", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const theirs = uniquePlayName("Friend");
    const mine = uniquePlayName("Mine");

    /* The friend plays without an account. */
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: theirs,
      partner: null,
    });

    /* You log in on their device: a step before the app asks about their Plays. */
    const email = newTestEmail("guest");

    await createAccount(email);
    await logIn(page, email);

    const question = ownPlaysQuestion(page);

    await expect(question).toBeVisible(forTheAnswer);
    /* The step stands alone: no bars, and it shows what is on the device. */
    await expect(page.getByRole("navigation")).toHaveCount(0);
    await expect(
      question.getByRole("list", { name: "Plays on this device" }),
    ).toContainText(theirs);
    await expectAccessible(page);

    await question.getByRole("button", { name: "Keep them separate" }).click();
    await expect(question).toBeHidden(forTheAnswer);
    await expect(page.getByRole("navigation").first()).toBeVisible(
      forTheAnswer,
    );
    /* The app opens finished: Home is there with the bars, not still loading. */
    expect(
      await page
        .getByRole("heading", { name: "Your first Play starts here" })
        .count(),
    ).toBe(1);
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByText(theirs)).toBeHidden();
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: mine,
      partner: null,
    });

    /* You log out: yours leave, theirs are back as they were. */
    const logOut = await askToLogOut(page);

    await expect(logOut).toContainText("comes back now");
    await logOut.getByRole("button", { name: "Log out" }).click();
    await page.waitForURL("**/login**");
    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByText(theirs)).toBeVisible(forTheAnswer);
    await expect(page.getByText(mine)).toBeHidden();

    /* And it survives a reload. */
    await page.reload({ waitUntil: "networkidle" });
    await expect(page.getByText(theirs)).toBeVisible(forTheAnswer);
  });

  test("your own Plays made before logging in join your account when you add them, and stay on the device", async ({
    browser,
    page,
  }) => {
    test.setTimeout(120_000);

    const name = uniquePlayName("Before");
    const email = newTestEmail("owner");

    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });
    await createAccount(email);
    await logIn(page, email);

    const question = ownPlaysQuestion(page);

    /* Adding can't be undone, so it asks once more. */
    await question
      .getByRole("button", { name: "Add them to my account" })
      .click();
    await question.getByRole("button", { name: "Yes, add them" }).click();
    await expect(question).toBeHidden(forTheAnswer);
    await waitForSync(page);

    const other = await browser.newContext({ storageState: signedOut });
    const laptop = await other.newPage();

    try {
      await logIn(laptop, email);
      await laptop.waitForURL("**/app**");
      await waitForSync(laptop);
      await laptop.goto("/app/plays");
      await expect(laptop.getByText(name)).toBeVisible(forTheAnswer);
    } finally {
      await other.close();
    }

    /* Logging out deletes nothing of the device's own: the Play is still here. */
    const logOut = await askToLogOut(page);

    await logOut.getByRole("button", { name: "Log out" }).click();
    await page.waitForURL("**/login**");
    await page
      .getByRole("link", { name: "Continue without an account" })
      .click();
    await page.waitForURL("**/app");
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByText(name)).toBeVisible(forTheAnswer);
  });

  test("Plays kept separate can still be added to the account later, from Settings", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const theirs = uniquePlayName("Kept");
    const mine = uniquePlayName("Account");
    const email = newTestEmail("later");

    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: theirs,
      partner: null,
    });
    await createAccount(email);
    await logIn(page, email);

    const question = ownPlaysQuestion(page);

    await question.getByRole("button", { name: "Keep them separate" }).click();
    await expect(question).toBeHidden(forTheAnswer);
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: mine,
      partner: null,
    });

    await page.goto("/app/settings", { waitUntil: "networkidle" });

    const account = page.getByRole("region", { name: "Account" });

    await expect(account).toContainText("Kept separate from your account");
    await account.getByRole("button", { name: "Add to my account" }).click();
    await page
      .getByRole("dialog", { name: "Add this device's Plays to your account?" })
      .getByRole("button", { name: "Add them" })
      .click();
    await expect(account).toContainText(
      "A copy is in your account",
      forTheAnswer,
    );

    /* Both are here now: the account's own and the device's. */
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByText(theirs)).toBeVisible(forTheAnswer);
    await expect(page.getByText(mine)).toBeVisible(forTheAnswer);
  });

  test("asks which version to keep when both devices changed the same thing", async ({
    browser,
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("clash");

    await logInToNewAccount(page, email);
    /* A first save: a new device with nothing changed has nothing to back up. */
    await rename(page, "Red");
    await waitForSync(page);

    const other = await browser.newContext({ storageState: signedOut });
    const laptop = await other.newPage();

    try {
      await logIn(laptop, email);
      await laptop.waitForURL("**/app**");
      await waitForSync(laptop);

      /* The laptop is cut off from the account while both change the name. */
      await other.route(accountRequests, (route) => route.abort());
      await rename(laptop, "Laptop Red");
      await rename(page, "Phone Red");
      /* The phone's change reaches the account first. */
      await page
        .getByRole("region", { name: "Account" })
        .getByRole("button", { name: "Sync now" })
        .click();
      await expect(
        page
          .getByRole("region", { name: "Account" })
          .getByRole("button", { name: "Sync now" }),
      ).toBeEnabled(forTheAnswer);
      await other.unroute(accountRequests);
      await laptop.goto("/app/settings", { waitUntil: "networkidle" });

      const dialog = laptop.getByRole("dialog", {
        name: "Which version to keep?",
      });

      await expect(dialog).toBeVisible(forTheAnswer);
      await expect(dialog).toContainText("Profile · Display name");
      await expectAccessible(laptop);

      const keep = dialog.getByRole("button", { name: "Keep these" });

      await expect(keep).toBeDisabled();
      await dialog.getByText("Phone Red").click();
      await expect(dialog.getByRole("radio").nth(1)).toBeChecked();
      await keep.click();
      await expect(dialog).toBeHidden();
      await expect(
        laptop.getByRole("textbox", { name: "Display name" }),
      ).toHaveValue("Phone Red", { timeout: 20_000 });
    } finally {
      await other.close();
    }
  });

  test("asks before Plays from another account join this one, then adds them", async ({
    browser,
    page,
  }) => {
    test.setTimeout(120_000);

    const name = uniquePlayName("First account");
    const second = newTestEmail("second");

    await logInToNewAccount(page, newTestEmail("first"));
    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });
    await waitForSync(page);
    await switchAccount(page, second);

    const question = otherPlaysQuestion(page);

    await expect(question).toBeVisible(forTheAnswer);
    await expectAccessible(page);
    /* The device joins this account: written before the page changes. */
    const joined = waitForAction(page);

    await question.getByRole("button", { name: "Add them" }).click();
    await expect(question).toBeHidden();
    await joined;
    await waitForSync(page);

    const other = await browser.newContext({ storageState: signedOut });
    const laptop = await other.newPage();

    try {
      await logIn(laptop, second);
      await laptop.waitForURL("**/app**");
      await waitForSync(laptop);
      await laptop.goto("/app/plays");
      await expect(laptop.getByText(name)).toBeVisible(forTheAnswer);
    } finally {
      await other.close();
    }
  });

  test("leaving another account's Plays out saves them to a file first", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const name = uniquePlayName("Left out");

    await logInToNewAccount(page, newTestEmail("first"));
    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });
    await waitForSync(page);
    await switchAccount(page, newTestEmail("second"));

    const question = otherPlaysQuestion(page);

    await expect(question).toBeVisible(forTheAnswer);

    const download = page.waitForEvent("download");
    /* The device takes this account's data: written before the page changes. */
    const saved = waitForAction(page);

    await question.getByRole("button", { name: "Leave them out" }).click();
    expect((await download).suggestedFilename()).toMatch(
      /^voydex-backup-\d{4}-\d{2}-\d{2}\.json\.gz$/,
    );
    await expect(question).toBeHidden(forTheAnswer);
    await saved;
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByRole("heading", { name: "Plays" })).toBeVisible();
    await expect(page.getByText(name)).toBeHidden();
  });
});
