import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayPokedexEntry } from "../types";
import {
  getMarkMotion,
  getMarkMotionClassName,
  PokedexSpeciesGridCard,
} from "./pokedex-species-grid-card";

const entry: MainlinePlayPokedexEntry = {
  displayFormName: "Galarian Slowpoke",
  imageUrl: null,
  isIncludedInCompletion: true,
  isSourceRequiredForCompletion: false,
  nationalNumber: 79,
  pokedexNumber: 79,
  primaryType: { id: 14, name: "Psychic", slug: "psychic" },
  secondaryType: null,
  speciesId: 79,
  speciesName: "Slowpoke",
  speciesSlug: "slowpoke",
  state: "caught",
};

const render = (
  isPressed: boolean,
  { displayFormName = entry.displayFormName } = {},
) =>
  renderToStaticMarkup(
    <PokedexSpeciesGridCard
      entry={{ ...entry, displayFormName }}
      isPending={false}
      isPressed={isPressed}
      onToggle={() => undefined}
      state="caught"
      toggleLabel="Clear recorded progress for Galarian Slowpoke"
    />,
  );

/* The card's own markup, without the button laid over it. */
const cardOf = (html: string) => html.slice(0, html.indexOf("<button"));

describe("PokedexSpeciesGridCard", () => {
  it("is one button over the card, with the focus ring, its label and whether it is marked", () => {
    const button = /<button [^>]*>/.exec(render(true))?.[0] ?? "";

    expect(button).toContain('aria-pressed="true"');
    expect(button).toContain("focus-ring");
    expect(button).toContain(
      'aria-label="Clear recorded progress for Galarian Slowpoke"',
    );
    expect(/<button [^>]*>/.exec(render(false))?.[0]).toContain(
      'aria-pressed="false"',
    );
  });

  it("shows the species' name alone on the card, never a form line, and never tilts", () => {
    const card = cardOf(render(true));

    expect(card).toContain("Slowpoke");
    expect(card).not.toContain("Galarian Slowpoke");
    expect(card).not.toMatch(/\bcard-tilt\b/);
  });

  it("puts a form's own name in a hover tip on the button, and none for a base form", () => {
    expect(render(true)).toContain('data-slot="tooltip-trigger"');
    expect(render(true, { displayFormName: null })).not.toContain(
      'data-slot="tooltip-trigger"',
    );
    expect(render(true, { displayFormName: "Slowpoke" })).not.toContain(
      'data-slot="tooltip-trigger"',
    );
  });

  it("picks the pop to mark and the settle to unmark, and no class once the motion is cleared", () => {
    expect(getMarkMotion(false)).toBe("pop");
    expect(getMarkMotion(true)).toBe("settle");
    expect(getMarkMotionClassName("pop")).toBe("animate-pop");
    expect(getMarkMotionClassName("settle")).toBe("animate-settle");
    expect(getMarkMotionClassName(null)).toBeUndefined();
  });
});
