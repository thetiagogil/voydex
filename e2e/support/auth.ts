import { expect, type Page } from "@playwright/test";

import { testPassword } from "./accounts";

/* Creates an account through Sign up; it lands on Welcome. */
export const signUp = async (page: Page, email: string) => {
  await page.goto("/login?mode=sign-up");
  await page.getByRole("textbox", { name: "Email" }).fill(email);
  await page.getByRole("textbox", { name: "Password" }).fill(testPassword);
  await page.getByRole("button", { name: "Create account" }).click();
  /* Creating the account can take a while under load; wait for its page. */
  await page.waitForURL("**/welcome**");
  await expect(
    page.getByRole("heading", { name: "Welcome to Voydex" }),
  ).toBeVisible();
};

export const logIn = async (
  page: Page,
  email: string,
  password = testPassword,
) => {
  await page.goto("/login");
  await page.getByRole("textbox", { name: "Email" }).fill(email);
  await page.getByRole("textbox", { name: "Password" }).fill(password);
  await page.getByRole("button", { name: "Log in" }).click();
};
