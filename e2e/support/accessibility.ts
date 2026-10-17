import AxeBuilder from "@axe-core/playwright";
import { expect, type Page } from "@playwright/test";

const wcagTags = ["wcag2a", "wcag2aa", "wcag21a", "wcag21aa", "wcag22aa"];

/*
 * Fails with every axe finding on the page as it is now, once every running
 * transition and animation that ends has finished, so a fade or an opening
 * dialog is read at rest.
 */
export const expectAccessible = async (page: Page) => {
  await page.evaluate(() =>
    Promise.race([
      Promise.all(
        document
          .getAnimations()
          /* A spinner loops for ever; only wait for what ends. */
          .filter(
            (animation) =>
              animation.effect?.getTiming().iterations !== Infinity,
          )
          .map((animation) => animation.finished.catch(() => undefined)),
      ),
      /* Never longer than a second: a paused animation never finishes. */
      new Promise((resolve) => setTimeout(resolve, 1000)),
    ]),
  );
  const { violations } = await new AxeBuilder({ page })
    .withTags(wcagTags)
    /*
     * Type chips keep a white label on every type, the pale ones included,
     * by the owner's choice (2026-10-17); see the Design System.
     */
    .exclude("[data-type-chip]")
    .analyze();

  expect(
    violations.map(
      ({ help, id, nodes }) =>
        `${id}: ${help} (${nodes.map((node) => node.target.join(" ")).join(", ")})`,
    ),
  ).toEqual([]);
};
