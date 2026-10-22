import AxeBuilder from "@axe-core/playwright";
import { expect, type Page } from "@playwright/test";

const wcagTags = ["wcag2a", "wcag2aa", "wcag21a", "wcag21aa", "wcag22aa"];

/*
 * Fails with every axe finding on the page as it is now, once every running
 * transition and animation that ends has finished, so a fade or an opening
 * dialog is read at rest.
 */
export const expectAccessible = async (page: Page) => {
  await page.evaluate(async () => {
    const nextFrame = () =>
      new Promise((resolve) => requestAnimationFrame(resolve));
    /* Never longer than two seconds, whatever keeps moving. */
    const deadline = performance.now() + 2000;

    /*
     * A sheet that has just opened starts its transition a frame later, so
     * look again after a couple of frames until nothing that ends still runs.
     */
    while (performance.now() < deadline) {
      await nextFrame();
      await nextFrame();
      const running = document
        .getAnimations()
        /* A spinner loops for ever and a paused one never ends. */
        .filter(
          (animation) =>
            animation.playState === "running" &&
            animation.effect?.getTiming().iterations !== Infinity,
        );

      if (!running.length) {
        return;
      }

      await Promise.race([
        Promise.all(
          running.map((animation) => animation.finished.catch(() => undefined)),
        ),
        new Promise((resolve) =>
          setTimeout(resolve, deadline - performance.now()),
        ),
      ]);
    }
  });
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
