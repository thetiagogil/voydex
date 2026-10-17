import { expect, type Page, test } from "@playwright/test";

import { expectAccessible } from "../support/accessibility";
import { startPlay, uniquePlayName } from "../support/plays";

/* Saves a Red / Blue Plan through the Team Planner; returns its id. */
const savePlan = async (page: Page, name: string, members: string[]) => {
  await page.goto("/mainline/plans/new?vg=rb");
  await page.getByRole("button", { name: /^Untitled Plan/ }).click();
  const nameField = page.getByRole("textbox", { name: "Plan name" });
  await nameField.fill(name);
  await nameField.press("Enter");

  /* The list draws in batches as you scroll, so search for each one. */
  const picker = page.getByRole("region", { name: "Pick your Pokémon" });
  const search = picker.getByRole("searchbox");
  for (const member of members) {
    await search.fill(member);
    await picker.getByRole("button", { name: member, exact: true }).click();
  }
  await search.clear();
  await expect(
    page
      .getByRole("region", { name: "Your team" })
      .getByText(`${members.length} of 6`),
  ).toBeVisible();

  await page.getByRole("button", { name: "Save Plan" }).click();
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
        .getByRole("button", { name: "Charizard, slot 2. Edit" }),
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
    await savePlan(page, planName, ["Charizard", "Rapidash"]);

    const playId = await startPlay(page, {
      game: "Pokémon Red, 1996",
      name: uniquePlayName("Plan run"),
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
        name: /^Target 1, Charizard: In progress\. Charmander, Team, slot 1/,
      }),
    ).toBeVisible();
    await expect(
      planned.getByRole("button", { name: /^Target 2, Rapidash: Not found/ }),
    ).toBeVisible();
    await expectAccessible(page);
  });

  test("asks before removing a Pokémon with a build from its sheet", async ({
    page,
  }) => {
    await page.goto("/mainline/plans/new?vg=rb");
    const picker = page.getByRole("region", { name: "Pick your Pokémon" });
    await picker.getByRole("searchbox").fill("Charizard");
    await picker
      .getByRole("button", { name: "Charizard", exact: true })
      .click();

    await page
      .getByRole("region", { name: "Your team" })
      .getByRole("button", { name: "Charizard, slot 1. Edit" })
      .click();
    const sheet = page.getByRole("dialog", { name: /Charizard/ });
    await sheet.getByRole("button", { name: "Lead" }).click();
    await sheet.getByRole("button", { name: "Remove from Plan" }).click();

    const confirm = page.getByRole("alertdialog", {
      name: "Remove Charizard?",
    });
    await expect(confirm).toBeVisible();
    await confirm.getByRole("button", { name: "Keep it" }).click();
    await expect(
      page
        .getByRole("region", { name: "Your team" })
        .getByRole("button", { name: "Charizard, slot 1. Edit" }),
    ).toBeVisible();
  });

  test("deletes a Plan from My Plans", async ({ page }) => {
    const name = uniquePlayName("Short-lived plan");
    await savePlan(page, name, ["Pikachu"]);

    await page.goto("/mainline/plans");
    const card = page.getByRole("link", { name: new RegExp(name) });
    await expect(card).toBeVisible();
    await page.getByRole("button", { name: `Delete ${name}` }).click();

    const confirm = page.getByRole("alertdialog", { name: `Delete ${name}?` });
    await expectAccessible(page);
    await confirm.getByRole("button", { name: "Delete Plan" }).click();

    await expect(confirm).toBeHidden();
    await expect(card).toBeHidden();
    await page.reload();
    await expect(card).toBeHidden();
  });
});
