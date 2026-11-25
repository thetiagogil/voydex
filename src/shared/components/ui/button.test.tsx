import { describe, expect, it } from "vitest";

import { buttonVariants } from "./button";

const classes = (variant: Parameters<typeof buttonVariants>[0]) =>
  buttonVariants(variant).split(" ");

describe("buttonVariants", () => {
  it("lifts only the main action, on the action colour", () => {
    expect(classes({ variant: "default" })).toContain("bg-action");
    expect(classes({ variant: "default" })).toContain("shadow-button");

    for (const variant of [
      "secondary",
      "destructive",
      "quiet",
      "ghost",
    ] as const) {
      expect(classes({ variant })).not.toContain("shadow-button");
      expect(classes({ variant })).not.toContain("bg-action");
    }
  });

  it("draws the secondary button white with the thin outline", () => {
    const secondary = classes({ variant: "secondary" });

    expect(secondary).toContain("bg-surface");
    expect(secondary).toContain("border-lip");
    expect(secondary).toContain("border-[1.5px]");
  });

  it("draws a button that removes something as the secondary button, its words in wine", () => {
    const remove = classes({ variant: "destructive" });

    expect(remove).toContain("bg-surface");
    expect(remove).toContain("border-lip");
    expect(remove).toContain("text-danger-deep");
    /* The danger tint shows only under the pointer, never at rest. */
    expect(remove).not.toContain("bg-danger-soft");
    expect(remove).toContain("hover:bg-danger-soft");
  });

  it("fills a pressed secondary button with the blue, as every pick", () => {
    expect(classes({ variant: "secondary" })).toContain("aria-pressed:bg-calm");
    expect(classes({ variant: "ghost" })).toContain(
      "aria-pressed:bg-select-soft",
    );
  });

  it("steps a quiet button back: the outline alone, softer words, no white fill", () => {
    const quiet = classes({ variant: "quiet" });

    expect(quiet).toContain("border-lip");
    expect(quiet).toContain("text-ink-2");
    expect(quiet).not.toContain("bg-surface");
    expect(quiet).not.toContain("shadow-button");
  });

  it("shows a switched-off button as paler, also one that keeps focus", () => {
    const base = classes({});

    expect(base).toContain("disabled:opacity-50");
    expect(base).toContain("aria-disabled:opacity-50");
    expect(base).toContain("aria-disabled:pointer-events-none");
  });

  it("keeps a ghost bare: no outline and no fill of its own", () => {
    const ghost = classes({ variant: "ghost" });

    expect(ghost).toContain("border-transparent");
    expect(ghost).not.toContain("border-lip");
    expect(ghost).not.toContain("bg-surface");
  });

  it("is 36px, and 48px only as `lg`, beside fields", () => {
    expect(classes({})).toContain("h-9");
    expect(classes({ size: "lg" })).toContain("h-12");
    expect(classes({ size: "icon" })).toContain("size-9");
  });

  it("lets a variant's outline win over the base border", () => {
    expect(classes({ variant: "secondary" })).not.toContain(
      "border-transparent",
    );
  });
});
