import { expect, type Page, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { openSearchBar } from "../support/filters";
import { startPlay, uniquePlayName } from "../support/plays";

/* Saves a Red / Blue Plan through the Team Planner, named in Save Plan; returns its id. */
const savePlan = async (page: Page, name: string, members: string[]) => {
  await page.goto("/mainline/plans/new?vg=rb");

  /* The list draws in batches as you scroll, so search for each one. */
  const picker = page.getByRole("region", { name: "Pick your Pokémon" });
  await openSearchBar(page);
  const search = picker.getByRole("searchbox");
  for (const member of members) {
    await search.fill(member);
    await picker
      .getByRole("button", { name: new RegExp(`^#\\d+ ${member}\\b`) })
      .click();
  }
  await search.clear();
  await expect(
    page
      .getByRole("region", { name: "Your team" })
      .getByText(`${members.length} of 6`),
  ).toBeVisible();

  await page.getByRole("button", { name: "Save Plan" }).click();
  const details = page.getByRole("dialog", { name: "Save Plan" });
  await details.getByRole("textbox", { name: "Plan name" }).fill(name);
  await details.getByRole("button", { name: "Save Plan" }).click();
  await page.waitForURL(/\/mainline\/plans\/[0-9a-f-]{36}/);

  return page.url().split("/").at(-1)!.split("?")[0];
};

test.describe("Team Planner", () => {
  test("builds a Plan, saves it and finds it in My Plans", async ({ page }) => {
    await page.goto("/mainline/plans/new?vg=rb");
    await expectAccessible(page);

    const name = uniquePlayName("Kanto starters");
    const planId = await savePlan(page, name, [
      "Venusaur",
      "Charizard",
      "Blastoise",
    ]);

    await page.reload();
    await expect(
      page.getByRole("heading", { level: 1, name: new RegExp(name) }),
    ).toBeVisible();
    await expect(
      page
        .getByRole("region", { name: "Your team" })
        .getByRole("button", { name: /^#\d+ Charizard\b.*slot 2\. Edit$/ }),
    ).toBeVisible();
    await expect(
      page.getByRole("button", { name: "Save changes" }),
    ).toBeDisabled();

    await page.goto("/mainline/plans");
    await expect(
      page.getByRole("link", { name: new RegExp(name) }),
    ).toHaveAttribute("href", `/mainline/plans/${planId}`);
    await expectAccessible(page);
  });

  test("follows a Plan from a Play", async ({ page }) => {
    const planName = uniquePlayName("Fire plan");
    const planId = await savePlan(page, planName, ["Charizard", "Rapidash"]);

    const playName = uniquePlayName("Plan run");
    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: playName,
      partner: "Charmander",
    });
    await page.goto(`/mainline/plays/${playId}/team/plan`);
    await page.getByRole("button", { name: "Follow a Plan" }).click();
    await page
      .getByRole("menu", { name: "Follow a Plan" })
      .getByRole("menuitem", { name: new RegExp(planName) })
      .click();

    /* Charmander counts toward Charizard through its evolution line. */
    const planned = page.getByRole("region", { name: "Planned team" });
    await expect(
      planned.getByRole("button", {
        name: /^Target 1 Charizard\b.*Charmander · Team, slot 1 In progress/,
      }),
    ).toBeVisible();
    await expect(
      planned.getByRole("button", { name: /^Target 2 Rapidash\b.*Not found/ }),
    ).toBeVisible();
    await expectAccessible(page);

    /* Followed, the Plan opens locked: it reads, and Unlock comes first. */
    await page.goto(`/mainline/plans/${planId}`);
    await expect(page.getByText("Locked: followed by 1 Play.")).toBeVisible();
    const team = page.getByRole("region", { name: "Your team" });
    await expect(
      team.getByRole("button", { name: /^Random team$/ }),
    ).toBeHidden();
    await expect(
      page.getByRole("region", { name: "Pick your Pokémon" }),
    ).toBeHidden();
    /* A Pokémon's sheet reads while locked. */
    await team.getByRole("button", { name: /^#\d+ Charizard\b/ }).click();
    const locked = page.getByRole("dialog", { name: /Charizard/ });
    await expect(locked.getByRole("textbox", { name: "Note" })).toBeDisabled();
    await expect(
      locked.getByRole("button", { name: "Remove from Plan" }),
    ).toBeHidden();
    await page.keyboard.press("Escape");
    await expect(locked).toBeHidden();

    await page.getByRole("button", { name: "Unlock to edit" }).click();
    const unlock = page.getByRole("alertdialog", { name: "Unlock this Plan?" });
    await expectAccessible(page);
    await unlock.getByRole("button", { name: "Keep it locked" }).click();
    await expect(
      page.getByRole("button", { name: "Unlock to edit" }),
    ).toBeVisible();
    await page.getByRole("button", { name: "Unlock to edit" }).click();
    await unlock.getByRole("button", { name: "Unlock" }).click();
    await team.getByRole("button", { name: /^Random team$/ }).click();
    await page.getByRole("menuitem", { name: /^Random team/ }).click();
    await expect(team.getByText("6 of 6")).toBeVisible();
    await expect(
      page.getByText("Followed by 1 Play. Saving updates its comparison."),
    ).toBeVisible();

    /* See Plays lists the Play that follows the Plan; its card opens it. */
    await page
      .getByRole("button", { name: `${planName}: more actions` })
      .click();
    await page.getByRole("menuitem", { name: "See Plays" }).click();
    const plays = page.getByRole("dialog", {
      name: "Plays following this Plan",
    });
    await expect(plays.getByRole("img", { name: "Charmander" })).toBeVisible();
    await expectAccessible(page);
    await plays.getByRole("link", { name: new RegExp(playName) }).click();
    await page.waitForURL(`**/mainline/plays/${playId}`);
  });

  test("asks before a game switch drops Pokémon", async ({ page }) => {
    const planId = await savePlan(page, uniquePlayName("Kanto trio"), [
      "Venusaur",
      "Charizard",
      "Pikachu",
    ]);

    const pickGame = async (game: string) => {
      await page.getByRole("combobox", { name: /^Game:/ }).click();
      await page.getByRole("option", { name: new RegExp(`^${game}`) }).click();
    };

    /* Sun and Moon have Pikachu but neither Kanto starter. */
    await pickGame("Sun / Moon");
    const confirm = page.getByRole("alertdialog", { name: "Switch game?" });
    const leaving = confirm.getByRole("region", { name: "Leaves the team" });
    await expect(leaving.getByText("Venusaur")).toBeVisible();
    await expect(leaving.getByText("Charizard")).toBeVisible();
    await expect(leaving.getByText("Pikachu")).toBeHidden();
    await expectAccessible(page);
    await confirm.getByRole("button", { name: "Keep this game" }).click();
    await expect(confirm).toBeHidden();
    expect(page.url()).not.toContain("vg=sm");

    await pickGame("Sun / Moon");
    await confirm.getByRole("button", { name: "Switch game" }).click();
    await page.waitForURL(`**/mainline/plans/${planId}?vg=sm`);
    await expect(
      page.getByRole("region", { name: "Your team" }).getByText("1 of 6"),
    ).toBeVisible();
    /* The switch waits on a save. */
    await expect(
      page.getByRole("button", { name: "Save changes" }),
    ).toBeEnabled();
  });

  test("archives a Plan into its own list, keeps it shut, and restores it", async ({
    page,
  }) => {
    const name = uniquePlayName("Shelved plan");
    const planId = await savePlan(page, name, ["Pikachu"]);

    await page.goto("/mainline/plans");
    await page.getByRole("button", { name: `${name}: more actions` }).click();
    await page.getByRole("menuitem", { name: "Archive" }).click();

    /* Out of My Plans, into Archived. */
    const card = page.getByRole("link", { name: new RegExp(name) });
    await expect(card).toBeHidden();
    await page.getByRole("link", { name: /^Archived · \d+/ }).click();
    await page.waitForURL("**/mainline/plans?view=archived");
    await expectAccessible(page);

    /* An archived Plan doesn't open: its card stays put, its link leads back. */
    await expect(
      page.getByRole("link", { name: new RegExp(name) }),
    ).toBeHidden();
    await expect(page.getByRole("heading", { name })).toBeVisible();
    await page.goto(`/mainline/plans/${planId}`);
    await page.waitForURL("**/mainline/plans?view=archived");

    /* Restored, it's back in My Plans. */
    await page.getByRole("button", { name: `${name}: more actions` }).click();
    await page.getByRole("menuitem", { name: "Restore" }).click();
    await expect(page.getByRole("heading", { name })).toBeHidden();
    await page.goto("/mainline/plans");
    await expect(card).toBeVisible();
  });

  test("renames a Plan from My Plans, followed or not", async ({ page }) => {
    const name = uniquePlayName("Old name");
    const renamed = uniquePlayName("New name");
    await savePlan(page, name, ["Squirtle"]);

    await page.goto("/mainline/plans", { waitUntil: "networkidle" });
    await page.getByRole("button", { name: `${name}: more actions` }).click();
    await page.getByRole("menuitem", { name: "Rename" }).click();
    const dialog = page.getByRole("dialog", { name: "Rename Plan" });
    await dialog.getByRole("textbox", { name: "Plan name" }).fill(renamed);
    await expectAccessible(page);
    await dialog.getByRole("button", { name: "Rename" }).click();

    await expect(dialog).toBeHidden();
    await page.getByRole("link", { name: new RegExp(renamed) }).click();
    await expect(
      page.getByRole("heading", { level: 1, name: new RegExp(renamed) }),
    ).toBeVisible();
  });

  test("saves a sheet's edits on Save, and asks before removing a Pokémon with a build", async ({
    page,
  }) => {
    await page.goto("/mainline/plans/new?vg=rb");
    const picker = page.getByRole("region", { name: "Pick your Pokémon" });
    await openSearchBar(page);
    await picker.getByRole("searchbox").fill("Charizard");
    await picker.getByRole("button", { name: /^#\d+ Charizard\b/ }).click();

    await page
      .getByRole("region", { name: "Your team" })
      .getByRole("button", { name: /^#\d+ Charizard\b.*slot 1\. Edit$/ })
      .click();
    const sheet = page.getByRole("dialog", { name: /Charizard/ });
    await sheet
      .getByRole("textbox", { name: "Note" })
      .fill("Leads, and answers the Grass gym");

    /* Edits wait for Save; closing before it asks first. */
    await page.keyboard.press("Escape");
    const discard = page.getByRole("alertdialog", {
      name: "Discard your changes?",
    });
    await expectAccessible(page);
    await discard.getByRole("button", { name: "Keep editing" }).click();
    await sheet.getByRole("button", { name: "Save" }).click();
    await expect(sheet).toBeHidden();

    await page
      .getByRole("region", { name: "Your team" })
      .getByRole("button", { name: /^#\d+ Charizard\b.*slot 1\. Edit$/ })
      .click();
    await expect(sheet.getByRole("textbox", { name: "Note" })).toHaveValue(
      "Leads, and answers the Grass gym",
    );
    await sheet.getByRole("button", { name: "Remove from Plan" }).click();

    const confirm = page.getByRole("alertdialog", {
      name: "Remove Charizard?",
    });
    await expect(confirm).toBeVisible();
    await confirm.getByRole("button", { name: "Keep it" }).click();
    await expect(
      page
        .getByRole("region", { name: "Your team" })
        .getByRole("button", { name: /^#\d+ Charizard\b.*slot 1\. Edit$/ }),
    ).toBeVisible();
  });

  test("deletes a Plan from My Plans", async ({ page }) => {
    const name = uniquePlayName("Short-lived plan");
    await savePlan(page, name, ["Pikachu"]);

    await page.goto("/mainline/plans");
    const card = page.getByRole("link", { name: new RegExp(name) });
    await expect(card).toBeVisible();
    await page.getByRole("button", { name: `${name}: more actions` }).click();
    await page.getByRole("menuitem", { name: "Delete" }).click();

    const confirm = page.getByRole("alertdialog", { name: `Delete ${name}?` });
    await expectAccessible(page);
    await confirm.getByRole("button", { name: "Delete Plan" }).click();

    await expect(confirm).toBeHidden();
    await expect(card).toBeHidden();
    await page.reload();
    await expect(card).toBeHidden();
  });
});
