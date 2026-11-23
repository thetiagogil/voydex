import { expect, test, type Page, passTrainerStep } from "../support/test";

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

const yourData = (page: Page) =>
  page.getByRole("region", { name: "Your data" });

const askToLogOut = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await page
    .getByRole("region", { name: "Account" })
    .getByRole("button", { name: "Log out" })
    .click();

  return page.getByRole("dialog", { name: "Log out?" });
};

/* Waits for this device's changes to be in the account. */
const waitForBackup = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });
  await expect(yourData(page).getByText(/Backed up today/)).toBeVisible(
    forTheAnswer,
  );
};

/* Backs up now, and waits for it to finish. */
const backUpNow = async (page: Page) => {
  await page.goto("/app/settings", { waitUntil: "networkidle" });

  const button = yourData(page).getByRole("button", { name: "Back up now" });

  await button.click();
  await expect(button).toBeEnabled(forTheAnswer);
};

test.describe("Account backups: your Plays on every device, never merged", () => {
  test("a Play made on one device reaches another @phone", async ({
    browser,
    page,
  }) => {
    const email = newTestEmail("backup");
    const name = uniquePlayName("Backed up");

    await logInToNewAccount(page, email);
    await startPlay(page, {
      game: "Pokémon Red, 1996",
      name,
      partner: null,
    });
    await waitForBackup(page);

    /* The second device: a new browser, the same account. */
    const other = await browser.newContext({ storageState: signedOut });
    const second = await other.newPage();

    await passTrainerStep(second);

    try {
      await logIn(second, email);
      await second.waitForURL("**/app**");
      await second.goto("/app/plays");
      await expect(second.getByText(name)).toBeVisible(forTheAnswer);
    } finally {
      await other.close();
    }
  });

  test("logging out backs up and takes your Plays off this device, and logging in brings them back @phone", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("clean");
    const name = uniquePlayName("Mine");

    await logInToNewAccount(page, email);
    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });
    await rename(page, "Sam");

    /* No waiting for a backup: Log out backs up first. */
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

    /*
     * Without the account, the device is as new: no Play, and its own
     * trainer again (the trainer step gave it Ash).
     */
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
    ).toHaveValue("Ash");

    /* Logging in again brings everything back. */
    await logIn(page, email);
    await page.waitForURL("**/app**");
    await page.goto("/app/settings", { waitUntil: "networkidle" });
    await expect(
      page.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("Sam", forTheAnswer);
    await page.goto("/app/plays");
    await expect(page.getByText(name)).toBeVisible(forTheAnswer);
  });

  test("on a friend's device: nothing is asked, their Plays stay apart and come back when you log out @phone", async ({
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

    /* You log in on their device: the app opens on your account, no question. */
    const email = newTestEmail("guest");

    await createAccount(email);
    await logIn(page, email);
    await expect(page.getByRole("navigation").first()).toBeVisible(
      forTheAnswer,
    );
    await expect(
      page.getByRole("heading", { name: "This device already has Plays" }),
    ).toHaveCount(0);
    /* The app opens finished: Home is there with the bars, not still loading. */
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toBeVisible();
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

  test("offline, Log out says what would be lost: stay, or log out anyway", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("offline");
    const name = uniquePlayName("Offline");

    await logInToNewAccount(page, email);
    await page.route(accountRequests, (route) => route.abort());
    await startPlay(page, { game: "Pokémon Red, 1996", name, partner: null });

    await (
      await askToLogOut(page)
    )
      .getByRole("button", { name: "Log out" })
      .click();

    const stuck = page.getByRole("dialog", {
      name: "Your latest changes aren't backed up",
    });

    await expect(stuck).toBeVisible(forTheAnswer);
    await expectAccessible(page);

    /* Stay: nothing was removed. */
    await stuck.getByRole("button", { name: "Stay logged in" }).click();
    await expect(stuck).toBeHidden();
    await page.goto("/app/plays", { waitUntil: "networkidle" });
    await expect(page.getByText(name)).toBeVisible();

    /* Anyway: the device is as new, and the account never got that Play. */
    await (
      await askToLogOut(page)
    )
      .getByRole("button", { name: "Log out" })
      .click();
    await stuck.getByRole("button", { name: "Log out anyway" }).click();
    await page.waitForURL("**/login**");
    await page.unroute(accountRequests);
    await logIn(page, email);
    await page.waitForURL("**/app**");
    await expect(
      page.getByRole("heading", { name: "Your first Play starts here" }),
    ).toBeVisible(forTheAnswer);
  });

  test("asks which to keep when both devices changed things, and merges nothing", async ({
    browser,
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("newer");

    await logInToNewAccount(page, email);
    await rename(page, "Red");
    await waitForBackup(page);

    const other = await browser.newContext({ storageState: signedOut });
    const laptop = await other.newPage();

    await passTrainerStep(laptop);

    try {
      await logIn(laptop, email);
      await laptop.waitForURL("**/app**");
      await laptop.goto("/app/settings", { waitUntil: "networkidle" });
      await expect(
        laptop.getByRole("textbox", { name: "Display name" }),
      ).toHaveValue("Red", forTheAnswer);

      /* The laptop is cut off from the account while both change the name. */
      await other.route(accountRequests, (route) => route.abort());
      await rename(laptop, "Laptop Red");
      await rename(page, "Phone Red");
      await backUpNow(page);
      await other.unroute(accountRequests);
      /* Back online, the laptop looks again as the app opens. */
      await laptop.goto("/app/settings", { waitUntil: "networkidle" });

      const dialog = laptop.getByRole("dialog", {
        name: "Your account has newer Plays",
      });

      await expect(dialog).toBeVisible(forTheAnswer);
      await expect(dialog).toContainText("today at");
      await expectAccessible(laptop);

      /* Using the phone's: the laptop's change gives way, nothing merged. */
      await dialog.getByRole("button", { name: /^Use / }).click();
      await expect(dialog).toBeHidden(forTheAnswer);
      await expect(
        laptop.getByRole("textbox", { name: "Display name" }),
      ).toHaveValue("Phone Red", forTheAnswer);
    } finally {
      await other.close();
    }
  });

  test("Restore from account puts back one of the last 3 backups", async ({
    page,
  }) => {
    test.setTimeout(120_000);

    const email = newTestEmail("restore");

    await logInToNewAccount(page, email);
    await rename(page, "First");
    await backUpNow(page);
    await rename(page, "Second");
    await backUpNow(page);

    await yourData(page).getByRole("button", { name: "Restore" }).click();

    const dialog = page.getByRole("dialog", {
      name: "Restore from your account",
    });
    const choices = dialog.getByRole("radio");

    /* Newest first, and picked. */
    await expect(choices.nth(1)).toBeVisible(forTheAnswer);
    await expect(choices.first()).toBeChecked();
    await expectAccessible(page);
    await choices.nth(1).check();
    await dialog
      .getByRole("button", { name: "Replace with this backup" })
      .click();
    await expect(page.getByText("Backup restored")).toBeVisible(forTheAnswer);
    await expect(dialog).toBeHidden();
    await page.reload({ waitUntil: "networkidle" });
    await expect(
      page.getByRole("textbox", { name: "Display name" }),
    ).toHaveValue("First", forTheAnswer);
  });
});
