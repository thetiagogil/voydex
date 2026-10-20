import { expect, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { forTheAnswer, waitForAction } from "../support/actions";
import { startPlay, uniquePlayName } from "../support/plays";

test.describe("Library", () => {
  test("a tag made on a Play is renamed and deleted from the Library", async ({
    page,
  }) => {
    /* Names no other run shares, as both browsers use one trainer. */
    const suffix = Math.random().toString(36).slice(2, 7);
    const tagName = `Speedrun ${suffix}`;
    const renamed = `Speed run ${suffix}`;
    const playName = uniquePlayName("Library run");
    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: playName,
      partner: null,
    });

    /* On the Play: "Add tag" makes the tag and adds it; Save keeps it. */
    await page.goto(`/mainline/plays/${playId}/settings`, {
      waitUntil: "networkidle",
    });
    const tags = page.getByRole("region", { name: "Tags" });

    await tags.getByRole("combobox", { name: "Add tag" }).click();
    await page
      .getByRole("combobox", { name: "Search or name a new tag" })
      .fill(tagName);
    const created = waitForAction(page);
    await page.getByRole("option", { name: `Create “${tagName}”` }).click();
    await created;
    await expect(tags.getByText(tagName, { exact: true })).toBeVisible();
    await expectAccessible(page);
    const saved = waitForAction(page);
    await tags.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(tags.getByText("Unsaved changes")).toBeHidden(forTheAnswer);

    /* In the Library: it opens in full, names its Play, and renames. */
    await page.goto("/mainline/library?tab=tags", { waitUntil: "networkidle" });
    await page.getByRole("button", { name: `${tagName}, In 1 Play` }).click();
    const details = page.getByRole("dialog", { name: tagName });
    await expect(
      details
        .getByRole("region", { name: "Used in" })
        .getByRole("link", { name: playName }),
    ).toBeVisible();
    await details.getByRole("textbox", { name: "Tag name" }).fill(renamed);
    await expectAccessible(page);
    const renamedSave = waitForAction(page);
    await details.getByRole("button", { name: "Save" }).click();
    await renamedSave;
    await expect(
      page.getByRole("button", { name: `${renamed}, In 1 Play` }),
    ).toBeVisible(forTheAnswer);

    await page.goto(`/mainline/plays/${playId}/settings`);
    await expect(
      page.getByRole("region", { name: "Tags" }).getByText(renamed, {
        exact: true,
      }),
    ).toBeVisible();

    /* Deleting it for good takes it off the Play too. */
    await page.goto("/mainline/library?tab=tags", { waitUntil: "networkidle" });
    await page.getByRole("button", { name: `${renamed}, In 1 Play` }).click();
    await page
      .getByRole("dialog", { name: renamed })
      .getByRole("button", { name: "Delete" })
      .click();
    const confirm = page.getByRole("alertdialog", {
      name: `Delete ${renamed}?`,
    });
    await expect(confirm).toContainText("It leaves 1 Play.");
    const deleted = waitForAction(page);
    await confirm.getByRole("button", { name: "Delete tag" }).click();
    await deleted;
    await expect(
      page.getByRole("button", { name: new RegExp(renamed) }),
    ).toBeHidden(forTheAnswer);

    await page.goto(`/mainline/plays/${playId}/settings`);
    await expect(
      page.getByRole("region", { name: "Tags" }).getByText(renamed),
    ).toBeHidden();
  });

  test("a rule of yours opens in full and changes in place", async ({
    page,
  }) => {
    const suffix = Math.random().toString(36).slice(2, 7);
    const ruleName = `No healing ${suffix}`;

    /* New rule takes a name, a kind and what it asks. */
    await page.goto("/mainline/library?tab=rules", {
      waitUntil: "networkidle",
    });
    await page.getByRole("button", { name: "New rule" }).click();
    const create = page.getByRole("dialog", { name: "New rule" });
    await create.getByRole("textbox", { name: "Rule name" }).fill(ruleName);
    await create
      .getByRole("textbox", { name: "What it asks (optional)" })
      .fill("No Poké Center between gyms.");
    const created = waitForAction(page);
    await create.getByRole("button", { name: "Add rule" }).click();
    await created;

    /* It opens in full: yours to change, used by no Play yet. */
    await page
      .getByRole("button", { name: `${ruleName}, Not used yet` })
      .click(forTheAnswer);
    const details = page.getByRole("dialog", { name: ruleName });
    await expect(details.getByText(/^Created by you/)).toBeVisible();
    await expect(details.getByText("No Play uses it yet.")).toBeVisible();
    await details
      .getByRole("textbox", { name: "What it asks (optional)" })
      .fill("Heal only with items between battles.");
    await expectAccessible(page);
    const saved = waitForAction(page);
    await details.getByRole("button", { name: "Save" }).click();
    await saved;
    await expect(
      page
        .getByRole("listitem")
        .filter({ has: page.getByRole("heading", { name: ruleName }) })
        .getByText("Heal only with items between battles."),
    ).toBeVisible(forTheAnswer);
  });
});
