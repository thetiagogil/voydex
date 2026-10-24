import { expect, test, type Page } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

const startBluePlay = async (page: Page, label: string) => {
  const name = uniquePlayName(label);
  const playId = await startPlay(page, {
    game: "Pokémon Blue, 1996",
    name,
    partner: null,
  });

  await page.goto(`/mainline/plays/${playId}`, { waitUntil: "networkidle" });

  return { head: page.getByRole("region", { name }), name, playId };
};

/* Saves the open dialog and waits until it has closed. */
const saveDialog = async (page: Page, dialogName: string) => {
  const dialog = page.getByRole("dialog", { name: dialogName });
  const saved = waitForAction(page);

  await dialog.getByRole("button", { name: "Save" }).click();
  await saved;
  await expect(dialog).toBeHidden(forTheAnswer);
};

test.describe("Play header edits", () => {
  test("changes status, trainer and playtime from the header", async ({
    page,
  }) => {
    const trainer = `Gary ${Date.now()}`;
    const { head, playId } = await startBluePlay(page, "Header run");

    /* Status: every option is listed, and a change joins History. */
    await head
      .getByRole("button", {
        name: /^(Not started|Playing|Paused|Completed|Abandoned)$/,
      })
      .click();
    const status = page.getByRole("dialog", { name: "Status" });

    await expect(status.getByRole("radio")).toHaveCount(5);
    await status.getByRole("radio", { name: "Paused" }).click();
    await expectAccessible(page);
    await saveDialog(page, "Status");
    await expect(head.getByRole("button", { name: "Paused" })).toBeVisible(
      forTheAnswer,
    );

    /* Trainer: typed in. */
    await head.getByRole("button", { name: "Add trainer" }).click();
    const trainerDialog = page.getByRole("dialog", { name: "Trainer name" });

    await trainerDialog
      .getByRole("textbox", { name: "Trainer name" })
      .fill(trainer);
    await expectAccessible(page);
    await saveDialog(page, "Trainer name");
    await expect(
      head.getByRole("button", { name: `Trainer ${trainer}` }),
    ).toBeVisible(forTheAnswer);

    /* Playtime. */
    await head.getByRole("button", { name: "Add playtime" }).click();
    const playtime = page.getByRole("dialog", { name: "Playtime" });

    await playtime.getByRole("spinbutton", { name: "Hours" }).fill("12");
    await playtime.getByRole("spinbutton", { name: "Minutes" }).fill("30");
    await expectAccessible(page);
    await saveDialog(page, "Playtime");
    await expect(
      head.getByRole("button", { name: "12h 30m played" }),
    ).toBeVisible(forTheAnswer);

    /* Settings shows the same values, and History has the status moment. */
    await page.goto(`/mainline/plays/${playId}/settings`, {
      waitUntil: "networkidle",
    });
    const general = page.getByRole("region", { name: "General" });

    await expect(
      general.getByRole("textbox", { name: "Trainer name" }),
    ).toHaveValue(trainer);
    await expect(
      general.getByRole("spinbutton", { name: "Hours" }),
    ).toHaveValue("12");
    await expect(
      general.getByRole("spinbutton", { name: "Minutes" }),
    ).toHaveValue("30");
    await expect(
      general
        .getByRole("group", { name: "Status" })
        .getByRole("button", { name: "Paused" }),
    ).toHaveAttribute("aria-pressed", "true");

    await page.goto(`/mainline/plays/${playId}/history`, {
      waitUntil: "networkidle",
    });
    await expect(
      page
        .getByRole("list", { name: "Moments" })
        .getByText(/Paused/)
        .first(),
    ).toBeVisible();
  });

  test("offers trainer names from other Plays and nothing else", async ({
    page,
  }) => {
    const trainer = `Ash ${Date.now()}`;
    const first = await startBluePlay(page, "Trainer source");

    await first.head.getByRole("button", { name: "Add trainer" }).click();
    await page
      .getByRole("dialog", { name: "Trainer name" })
      .getByRole("textbox", { name: "Trainer name" })
      .fill(trainer);
    await saveDialog(page, "Trainer name");

    const second = await startBluePlay(page, "Trainer pick");

    await second.head.getByRole("button", { name: "Add trainer" }).click();
    const dialog = page.getByRole("dialog", { name: "Trainer name" });
    const pick = dialog.getByRole("button", { name: trainer });

    await expect(pick).toBeVisible();
    await pick.click();
    await expect(
      dialog.getByRole("textbox", { name: "Trainer name" }),
    ).toHaveValue(trainer);
    await saveDialog(page, "Trainer name");
    await expect(
      second.head.getByRole("button", { name: `Trainer ${trainer}` }),
    ).toBeVisible(forTheAnswer);

    /* Its own value is no suggestion. */
    await second.head
      .getByRole("button", { name: `Trainer ${trainer}` })
      .click();
    await expect(
      page
        .getByRole("dialog", { name: "Trainer name" })
        .getByRole("button", { name: trainer }),
    ).toBeHidden();
  });

  test("closes without saving on Escape", async ({ page }) => {
    const { head } = await startBluePlay(page, "Header escape");

    await head
      .getByRole("button", {
        name: /^(Not started|Playing|Paused|Completed|Abandoned)$/,
      })
      .click();
    const dialog = page.getByRole("dialog", { name: "Status" });

    await dialog.getByRole("radio", { name: "Abandoned" }).click();
    await page.keyboard.press("Escape");
    await expect(dialog).toBeHidden();
    await expect(
      head.getByRole("button", {
        name: /^(Not started|Playing|Paused|Completed|Abandoned)$/,
      }),
    ).not.toHaveAccessibleName(/Abandoned/);
  });

  test("edits playtime from the phone sheet @phone", async ({ page }) => {
    const { head } = await startBluePlay(page, "Header phone");

    await head.getByRole("button", { name: "Add playtime" }).click();
    const sheet = page.getByRole("dialog", { name: "Playtime" });

    await sheet.getByRole("spinbutton", { name: "Hours" }).fill("3");
    await expectAccessible(page);
    await saveDialog(page, "Playtime");
    await expect(
      head.getByRole("button", { name: "3h 0m played" }),
    ).toBeVisible(forTheAnswer);
  });
});
