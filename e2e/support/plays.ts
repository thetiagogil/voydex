import { expect, type Page } from "@playwright/test";

type NewPlay = {
  /* The game as New Play lists it, such as "Pokémon Red, 1996". */
  game: string;
  name: string;
  /* A first partner the game offers, or null to decide later. */
  partner: string | null;
  /*
   * Voydex's rules to keep: Monotype with its type, a rule with options
   * (`withOptions`) on its defaults.
   */
  rules?: { name: string; type?: string; withOptions?: boolean }[];
};

/* Picks one of the rules a picker offers by its name. */
export const pickRule = async (page: Page, name: string) => {
  await page
    .getByRole("combobox", { name: "Search or name a new rule" })
    .fill(name);
  await page.getByRole("option", { name, exact: true }).click();
};

/* Picks a type in an open rule's options and closes them. */
export const pickType = async (page: Page, rule: string, type: string) => {
  const options = page.getByRole("dialog", { name: rule });

  await options.getByRole("combobox", { name: "Type" }).click();
  await page.getByRole("option", { name: type, exact: true }).click();
  await options.getByRole("button", { name: "Done" }).click();
  await expect(options).toBeHidden();
};

/* Starts a Play through New Play and returns its id, on its Overview. */
export const startPlay = async (
  page: Page,
  { game, name, partner, rules = [] }: NewPlay,
) => {
  await page.goto("/mainline?new=1");
  const dialog = page.getByRole("dialog", { name: "New Play" });

  await dialog.getByRole("option", { name: game }).click();
  await dialog.getByRole("button", { name: "Next" }).click();

  if (partner) {
    await dialog
      .getByRole("button", { name: `${partner} is my partner` })
      .click();
    await dialog.getByRole("button", { name: "Next" }).click();
  } else {
    await dialog.getByRole("button", { name: "Decide later" }).click();
  }

  await dialog.getByRole("textbox", { name: "Play name" }).fill(name);

  for (const rule of rules) {
    await dialog
      .getByRole("group", { name: "Challenge rules" })
      .getByRole("combobox", { name: "Add rule" })
      .click();
    await pickRule(page, rule.name);

    if (rule.type) {
      await pickType(page, rule.name, rule.type);
    } else if (rule.withOptions) {
      const options = page.getByRole("dialog", { name: rule.name });

      await options.getByRole("button", { name: "Done" }).click();
      await expect(options).toBeHidden();
    }
  }

  await dialog.getByRole("button", { name: /^Start/ }).click();

  await page.waitForURL(/\/mainline\/plays\/[0-9a-f-]{36}$/);
  await expect(page.getByRole("heading", { level: 1, name })).toBeVisible();

  return page.url().split("/").at(-1)!;
};

/* A name no other test's Play shares. */
export const uniquePlayName = (label: string) =>
  `${label} ${Math.random().toString(36).slice(2, 7)}`;
