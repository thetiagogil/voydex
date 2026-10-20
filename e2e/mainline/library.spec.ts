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
    const playId = await startPlay(page, {
      game: "Pokémon Blue, 1996",
      name: uniquePlayName("Library run"),
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

    /* In the Library: rename it, and the Play wears the new name. */
    await page.goto("/mainline/library?tab=tags", { waitUntil: "networkidle" });
    await page.getByRole("button", { name: `${tagName}, In 1 Play` }).click();
    await page.getByRole("menuitem", { name: "Rename" }).click();
    const rename = page.getByRole("dialog", { name: "Rename tag" });
    await rename.getByRole("textbox", { name: "Tag name" }).fill(renamed);
    await expectAccessible(page);
    const renamedSave = waitForAction(page);
    await rename.getByRole("button", { name: "Rename" }).click();
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
    await page.getByRole("menuitem", { name: "Delete" }).click();
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
});
