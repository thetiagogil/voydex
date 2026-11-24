import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayPokedexEntry } from "../types";
import {
  getMarkMotion,
  getMarkMotionClassName,
  PokedexSpeciesGridCard,
} from "./pokedex-species-grid-card";
import { getToggleLabel } from "./pokedex-species-item";

const entry = {
  displayFormName: "Alolan Rattata",
  imageAlt: "",
  imageUrl: null,
  pokedexNumber: 15,
  primaryType: { name: "Dark", slug: "dark" },
  secondaryType: { name: "Normal", slug: "normal" },
  speciesName: "Rattata",
} as unknown as MainlinePlayPokedexEntry;

const render = (isPressed: boolean) =>
  renderToStaticMarkup(
    <PokedexSpeciesGridCard
      entry={entry}
      isPending={false}
      isPressed={isPressed}
      onToggle={() => undefined}
      state="caught"
      toggleLabel="Clear recorded progress for Alolan Rattata"
    />,
  );

describe("PokedexSpeciesGridCard", () => {
  it("is one button over the card, with the focus ring, its label and whether it is marked", () => {
    const button = /<button [^>]*>/.exec(render(true))?.[0] ?? "";

    expect(button).toContain('aria-pressed="true"');
    expect(button).toContain("focus-ring");
    expect(button).toContain(
      'aria-label="Clear recorded progress for Alolan Rattata"',
    );
    expect(/<button [^>]*>/.exec(render(false))?.[0]).toContain(
      'aria-pressed="false"',
    );
  });

  it("shows the species' name with its form on the line under it, and never tilts", () => {
    const html = render(true);

    expect(html).toContain("Rattata");
    expect(html).toContain("Alolan Rattata");
    expect(html).not.toMatch(/\bcard-tilt\b/);
  });

  it("pops when marked, settles when unmarked, and drops the motion once it ends", () => {
    expect(getMarkMotion(false)).toBe("pop");
    expect(getMarkMotion(true)).toBe("settle");
    expect(getMarkMotionClassName("pop")).toBe("animate-pop");
    expect(getMarkMotionClassName("settle")).toBe("animate-settle");
    expect(getMarkMotionClassName(null)).toBeUndefined();
  });
});

describe("getToggleLabel", () => {
  it("names the entry it marks", () => {
    expect(
      getToggleLabel({
        mode: "caught",
        speciesName: "Alolan Rattata",
        state: "missing",
      }),
    ).toBe("Mark Alolan Rattata as Caught");
  });
});
