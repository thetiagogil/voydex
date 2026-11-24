import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCollectorCard } from "./pokemon-collector-card";

const render = (
  props: Partial<Parameters<typeof PokemonCollectorCard>[0]> = {},
) =>
  renderToStaticMarkup(
    <PokemonCollectorCard
      imageUrl={null}
      name="Dragonite"
      types={[
        { name: "Dragon", slug: "dragon" },
        { name: "Flying", slug: "flying" },
      ]}
      {...props}
    />,
  );

const cornerOf = (html: string, text: string) =>
  html.match(
    new RegExp(`data-corner="([a-z-]+)"[^>]*>(?:(?!data-corner).)*${text}`),
  )?.[1];

/* The words a screen reader meets, in order, with the marks' own names. */
const readOf = (html: string) =>
  html
    .replace(/<[^>]*aria-label="([^"]*)"[^>]*>/g, " $1 ")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ")
    .trim();

describe("PokemonCollectorCard", () => {
  it("is a picture of the Pokémon when it opens nothing", () => {
    expect(render()).toMatch(/^<article /);
  });

  it("is a link with `href`", () => {
    expect(render({ href: "/app/plays/play?id=1" })).toMatch(
      /^<a [^>]*href="\/app\/plays\/play\?id=1"/,
    );
  });

  it("is a button with `onClick`, said as picked only where it can be", () => {
    const opens = render({ onClick: () => undefined });
    const picks = render({ onClick: () => undefined, selected: false });

    expect(opens).toMatch(/^<button type="button"/);
    expect(opens).not.toContain("aria-pressed");
    expect(picks).toContain('aria-pressed="false"');
  });

  it("reads its name first, then its level, its top line, its types and what it adds", () => {
    const read = readOf(
      render({
        count: "2 Plays",
        detail: "Active slot 2",
        level: 55,
        number: "#149",
        onClick: () => undefined,
        size: "sm",
      }),
    );

    expect(read).toBe(
      "Dragonite Lv. 55 #149 2 Plays Dragon Flying , Active slot 2",
    );
  });

  it("shows no level without one", () => {
    expect(render({ level: null })).not.toContain("Lv.");
    expect(render({ level: 0 })).not.toContain("Lv.");
  });

  it("draws no top line without a number or a count", () => {
    expect(render()).not.toContain("order-1");
    expect(render({ count: "Your partner" })).toContain("order-1");
    expect(render({ number: "#149" })).toContain("order-1");
  });

  it("wears its first type's colour, frame and face", () => {
    const html = render();

    expect(html).toContain("--t:var(--type-dragon)");
    expect(html).toContain("card-frame");
    expect(html).toContain("card-face");
    expect(html).toContain("card-window");
  });

  it("takes the type's full colour once picked, and says so", () => {
    const html = render({ onClick: () => undefined, selected: true });

    expect(html).toContain('aria-pressed="true"');
    expect(html).toContain("bg-(--t)");
    expect(html).not.toContain("card-frame");
  });

  it("is plain white for one that isn't yours", () => {
    const html = render({ owned: false });

    expect(html).toContain("plain-card");
    expect(html).not.toContain("card-frame");
    expect(html).not.toContain("card-face");
    expect(html).not.toContain("card-window");
  });

  it("rings the card a dragged Pokémon would land on", () => {
    expect(render()).not.toContain("ring-calm");
    expect(render({ target: true })).toContain("ring-calm");
  });

  it("puts a warning top-left and the shiny mark top-right of the window", () => {
    const html = render({ shiny: true, warning: "Breaks a rule" });

    expect(cornerOf(html, "Breaks a rule")).toBe("inside-top-left");
    expect(cornerOf(html, ", Shiny")).toBe("inside-top-right");
  });

  it("reads its marks last, after its types", () => {
    const read = readOf(
      render({
        detail: "Active slot 2",
        level: 12,
        onClick: () => undefined,
        shiny: true,
        size: "sm",
        warning: "Breaks a rule",
      }),
    );

    expect(read).toBe(
      "Dragonite Lv. 12 Dragon Flying , Breaks a rule , Shiny , Active slot 2",
    );
  });

  it("keeps what it adds for a card you can press", () => {
    expect(render({ detail: "Show" })).not.toContain("Show");
    expect(render({ detail: "Show", href: "/app" })).toContain(", Show");
  });

  it("keeps the count at the end of the top line without a number", () => {
    const html = render({ count: "Your partner" });

    expect(html).toContain(
      '<span class="ml-auto truncate">Your partner</span>',
    );
    expect(html).not.toContain('<span class="shrink-0"></span>');
  });

  it("names itself in the display face only at its full width", () => {
    expect(render({ size: "sm" })).not.toContain("font-display");
    expect(render({ size: "lg" })).toContain(
      "@min-[9.5rem]/collector:font-display",
    );
    expect(render({ size: "lg" })).not.toMatch(/(?<!:)font-display/);
  });

  it("draws no corner marks when it has none", () => {
    expect(render()).not.toContain("data-corner");
  });

  it("names its types in words where there is room and as marks where there isn't", () => {
    const full = render({ size: "lg" });
    const small = render({ size: "sm" });

    /* The words, shown from the full width up; the marks under it. */
    expect(full).toMatch(/hidden[^"]*@min-\[9\.5rem\]\/collector:flex/);
    expect(full).toMatch(/@min-\[9\.5rem\]\/collector:hidden/);
    expect(full).toContain("data-type-chip");
    expect(small).not.toContain("data-type-chip");
    expect(small).toContain('aria-label="Dragon"');
  });

  it("leaves its types out for a family, and keeps the colour", () => {
    const html = render({ showTypes: false });

    expect(html).not.toContain('aria-label="Dragon"');
    expect(html).not.toContain("data-type-chip");
    expect(html).toContain("--t:var(--type-dragon)");
  });

  it("stays neutral without a type it knows", () => {
    expect(render({ types: [] })).not.toContain("--type-");
  });
});
