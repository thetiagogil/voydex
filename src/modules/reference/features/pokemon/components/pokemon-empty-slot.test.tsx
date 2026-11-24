import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { collectorCardSizeClassNames } from "./pokemon-collector-card";
import { PokemonEmptySlot } from "./pokemon-empty-slot";

const render = (props: Partial<Parameters<typeof PokemonEmptySlot>[0]> = {}) =>
  renderToStaticMarkup(<PokemonEmptySlot label="Empty slot 3" {...props} />);

describe("PokemonEmptySlot", () => {
  it("is a picture named by its slot, saying Open slot", () => {
    const html = render();

    expect(html).toMatch(/^<div role="img" aria-label="Empty slot 3"/);
    expect(html).toContain("Open slot");
    expect(html).toContain("empty-slot");
  });

  it("is a link named by its words with `href`", () => {
    const html = render({ href: "/app/add", text: "Add Pokémon" });

    expect(html).toMatch(/^<a [^>]*href="\/app\/add"/);
    expect(html).not.toContain("aria-label");
    expect(html).toContain("Add Pokémon");
  });

  it("keeps the unseen parts that size it out of what is read", () => {
    expect(render()).toMatch(/<span aria-hidden="true" class="invisible/);
  });

  it.each(["lg", "md", "sm"] as const)(
    "carries the %s card's own window, name and types line, so it stands as tall",
    (size) => {
      const html = render({ size });

      for (const className of Object.values(
        collectorCardSizeClassNames[size],
      )) {
        expect(html).toContain(className);
      }
    },
  );

  it("leaves out the types line beside cards that show none", () => {
    const html = render({ showTypes: false, size: "sm" });
    const { art, typesLine } = collectorCardSizeClassNames.sm;

    expect(html).toContain(art);
    expect(html).not.toContain(`mt-1.5 block ${typesLine}`);
    expect(render({ size: "sm" })).toContain(`mt-1.5 block ${typesLine}`);
  });

  it("is a container that steps with its cards, at the card's frame width", () => {
    const html = render();

    expect(html).toContain("@container/collector");
    /* 2.5px of dashes and 3.5px of padding: the card's 6px frame. */
    expect(html).toContain("p-[3.5px]");
  });

  it("rings the slot a dragged Pokémon would land on", () => {
    expect(render()).not.toContain("ring-calm");
    expect(render({ target: true })).toContain("ring-calm");
  });

  it("draws the plus ring only when asked", () => {
    expect(render()).not.toContain("<svg");
    expect(render({ ring: true })).toContain("<svg");
  });
});
