import { test as base, type Page } from "@playwright/test";

export * from "@playwright/test";

/*
 * Every trainer picks a name and an icon before the app opens (the trainer
 * step). Most tests aren't about it, so whenever it shows, Continue takes
 * what it offers (Ash and a random starter) and the test goes on. A
 * test about the step itself turns this off with
 * `test.use({ trainerStep: "stop" })`.
 */
export const passTrainerStep = (page: Page) =>
  page.addLocatorHandler(
    page.getByRole("form", { name: "Your trainer" }),
    async (form) => {
      await form.getByRole("button", { name: "Continue" }).click();
    },
  );

export const test = base.extend<{ trainerStep: "pass" | "stop" }>({
  trainerStep: ["pass", { option: true }],
  page: async ({ page, trainerStep }, provide) => {
    if (trainerStep === "pass") await passTrainerStep(page);

    await provide(page);
  },
});
