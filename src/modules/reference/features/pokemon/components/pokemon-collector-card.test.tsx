import fs from "node:fs";
import path from "node:path";

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

  it("reads its name first, then its top line, its types and what it adds", () => {
    const read = readOf(
      render({
        count: "2 Plays",
        detail: "Active slot 2",
        number: "#149",
        onClick: () => undefined,
        size: "sm",
      }),
    );

    expect(read).toBe("Dragonite #149 2 Plays Dragon Flying , Active slot 2");
  });

  it("puts a team card's level top right over the window, the art at full size", () => {
    const html = render({ level: 48 });
    /* The top line's text: the level alone, at its right end. */
    const topLine = /-mb-6[^"]*"[^>]*>(.*?)<\/span><\/span>/.exec(html)?.[1];

    expect(topLine).toContain("Lv. 48");
    expect(topLine).toContain("ml-auto");
    /* No number or count: the art is not pushed below the line. */
    expect(html).not.toContain("mt-6");
    expect(html).toContain("my-auto h-[90%]");
    expect(readOf(render({ level: 48, size: "sm" }))).toBe(
      "Dragonite Lv. 48 Dragon Flying",
    );
  });

  it("falls back to the level for an empty count", () => {
    expect(readOf(render({ count: "", level: 48, size: "sm" }))).toBe(
      "Dragonite Lv. 48 Dragon Flying",
    );
  });

  it("keeps the art full size under a right end alone, below the line with a number", () => {
    /* The Planner's "Replace" or "Your partner": no number on the left. */
    expect(render({ count: "Replace" })).not.toContain("mt-6");
    expect(render({ count: "Replace" })).toContain("my-auto h-[90%]");
    expect(render({ count: "2 Plays", number: "#149" })).toContain("mt-6");
  });

  it("shows no level without one", () => {
    expect(render({ level: null })).not.toContain("Lv.");
    expect(render({ level: 0 })).not.toContain("Lv.");
  });

  it("draws no top line without a number or a count", () => {
    expect(render()).not.toContain("-mb-6");
    expect(render({ count: "Your partner" })).toContain("-mb-6");
    expect(render({ number: "#149" })).toContain("-mb-6");
  });

  it("keeps one art box with or without a top line, the art below the line", () => {
    const artBoxOf = (html: string) =>
      /data-slot="collector-art" class="([^"]*)"/.exec(html)?.[1];

    expect(artBoxOf(render({ number: "#149", count: "2 Plays" }))).toBe(
      artBoxOf(render()),
    );
    expect(artBoxOf(render())).toBeDefined();
    expect(render({ number: "#149" })).toContain("mt-6");
    expect(render()).not.toContain("mt-6");
  });

  it("wears its first type's colour, frame and face", () => {
    const html = render();

    expect(html).toContain("--t:var(--type-dragon)");
    expect(html).toContain("card-frame");
    expect(html).toContain("card-face");
    expect(html).toContain("card-panel");
  });

  it("holds the art, the name and the types on one light panel inside the face's band", () => {
    const html = render({ number: "#149" });
    const panel = html.slice(html.indexOf("card-panel"));

    for (const part of ['data-slot="collector-art"', "Dragonite", "Dragon"]) {
      expect(panel).toContain(part);
    }
    expect(html.indexOf("card-face")).toBeLessThan(html.indexOf("card-panel"));
  });

  it("takes its picked frame once picked, on the same edge, and says so", () => {
    const html = render({ onClick: () => undefined, selected: true });

    expect(html).toContain('aria-pressed="true"');
    expect(html).toContain("card-frame-picked");
    expect(html).not.toMatch(/card-frame(?!-picked)/);
  });

  it("rings the card a dragged Pokémon would land on", () => {
    expect(render()).not.toContain("ring-calm");
    expect(render({ target: true })).toContain("ring-calm");
  });

  it("puts a warning top-left and the shiny mark top-right of the panel, along the top line", () => {
    const html = render({
      level: 48,
      shiny: true,
      warning: "Breaks a rule",
    });

    expect(cornerOf(html, "Breaks a rule")).toBe("inside-top-left");
    expect(cornerOf(html, ", Shiny")).toBe("inside-top-right");
    /*
     * In the panel's corners, not inside the art's box (they may overlap the
     * box's corner, where the picture leaves room).
     */
    const art = html.slice(
      html.indexOf('data-slot="collector-art"'),
      html.indexOf("</span>", html.indexOf('data-slot="collector-art"')),
    );
    expect(art).not.toContain("data-corner");
  });

  it("makes room on the top line for the shiny mark on its right and a warning on its left", () => {
    const lineOf = (html: string) =>
      /class="([^"]*-mb-6[^"]*)"/.exec(html)?.[1] ?? "";

    expect(lineOf(render({ level: 48, shiny: true }))).toMatch(
      /(?:^|\s)pr-9(?:\s|$)/,
    );
    expect(lineOf(render({ level: 48 }))).not.toMatch(/(?:^|\s)pr-9(?:\s|$)/);
    expect(
      lineOf(render({ number: "#149", warning: "Breaks a rule" })),
    ).toMatch(/(?:^|\s)pl-9(?:\s|$)/);
    expect(lineOf(render({ number: "#149" }))).not.toMatch(
      /(?:^|\s)pl-9(?:\s|$)/,
    );
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

  it("turns toward the pointer, unless its place turns instead", () => {
    const rootClass = (html: string) =>
      /^<[a-z]+ [^>]*class="([^"]*)"/.exec(html)?.[1] ?? "";

    expect(rootClass(render())).toMatch(/\bcard-tilt\b/);
    expect(rootClass(render())).not.toContain("hover:-translate-y");
    expect(rootClass(render({ tilt: false }))).not.toMatch(/\bcard-tilt\b/);
  });

  it("shows the species' name and reads the form's full one", () => {
    const html = render({
      name: "Raichu",
      nameReadAs: "Alolan Raichu",
      onClick: () => {},
    });

    expect(html).toContain('<span aria-hidden="true">Raichu</span>');
    expect(html).toContain('<span class="sr-only">Alolan Raichu</span>');
    expect(
      readOf(html.replace(/<span aria-hidden="true">[^<]*<\/span>/g, "")),
    ).toMatch(/^Alolan Raichu\b/);
  });

  it("reads a base form's name once, as it shows", () => {
    const html = render({ name: "Raichu", nameReadAs: "Raichu" });

    expect(html).not.toContain('sr-only">Raichu');
    expect(html).not.toContain('aria-hidden="true">Raichu');
  });

  it("carries a hover note only when it has one", () => {
    expect(render({ onClick: () => {} })).not.toContain("tooltip-trigger");
    expect(render({ onClick: () => {}, tip: null })).not.toContain(
      "tooltip-trigger",
    );
    expect(render({ onClick: () => {}, tip: "Alolan Raichu" })).toContain(
      'data-slot="tooltip-trigger"',
    );
  });

  it("stands its art below the line when it has a mark but no top line, so the mark stays off it", () => {
    expect(render({ shiny: true })).toContain("mt-6");
    expect(render({ warning: "Breaks a rule" })).toContain("mt-6");
    /* A team card keeps its big picture beside its level. */
    expect(render({ level: 48, shiny: true })).not.toContain("mt-6");
  });

  it("draws a Pokédex entry by its Play state, in one shape", () => {
    const rootClass = (html: string) =>
      /<article [^>]*class="([^"]*)"/.exec(html)?.[1] ?? "";
    const caught = render({ dexState: "caught", number: "#015" });
    const seen = render({ dexState: "seen", number: "#015" });
    const missing = render({
      dexState: "missing",
      imageUrl: "https://assets.test/dragonite.png",
      number: "#015",
    });

    /* Caught: the card of yours, with the Poké Ball. */
    expect(rootClass(caught)).toContain("card-frame");
    expect(caught).toContain("card-panel");
    expect(caught).toContain('aria-label="Caught"');
    /* Seen: white, no band or panel colour, the eye. */
    expect(rootClass(seen)).toContain("plain-card");
    expect(seen).not.toContain("card-face");
    expect(seen).not.toContain("card-panel");
    expect(seen).toContain('aria-label="Seen"');
    /* Missing: the dashed outline round the silhouette, no mark. */
    expect(rootClass(missing)).toContain("empty-slot");
    expect(missing).toContain("opacity-10 brightness-0");
    expect(missing).not.toContain('aria-label="Caught"');
    expect(missing).not.toContain('aria-label="Seen"');
  });

  it("lets a Pokédex entry's picture fill its box, a little room kept under the number", () => {
    const html = render({ dexState: "seen", number: "#015" });

    expect(html).toContain("mt-3 mb-auto h-[calc(100%-0.75rem)]");
    expect(html).not.toContain("mt-6");
  });

  it("keeps one size whatever a Pokédex entry's state: its border and padding add up the same", () => {
    const css = fs.readFileSync(
      path.join(process.cwd(), "src/shared/styles/app-utilities.css"),
      "utf8",
    );
    const borderOf = (utility: string) =>
      Number(
        /border:\s*([\d.]+)px/.exec(
          new RegExp(`@utility ${utility} \\{([^}]*)\\}`).exec(css)?.[1] ?? "",
        )?.[1] ?? 0,
      );
    const paddingOf = (classes: string) => {
      const value = /(?:^|\s)p-(\[[\d.]+px\]|[\d.]+)(?:\s|$)/.exec(
        classes,
      )?.[1];

      if (!value) throw new Error(`no padding in ${classes}`);

      return value.startsWith("[")
        ? Number(value.slice(1, -3))
        : Number(value) * 4;
    };
    const edgeOf = (dexState: "caught" | "missing" | "seen") => {
      const classes =
        /<article [^>]*class="([^"]*)"/.exec(
          render({ dexState, number: "#015" }),
        )?.[1] ?? "";
      const look = ["card-frame", "plain-card", "empty-slot"].find((name) =>
        classes.split(/\s+/).includes(name),
      )!;

      /* The frame draws its edge as a shadow, so it has no border. */
      return borderOf(look) + paddingOf(classes);
    };

    expect(edgeOf("seen")).toBe(edgeOf("caught"));
    expect(edgeOf("missing")).toBe(edgeOf("caught"));
  });

  it("wraps a Pokédex entry's name to a second line rather than cut it, loads its picture lazily and has no glint", () => {
    const dex = render({
      dexState: "missing",
      imageUrl: "https://assets.test/charmander.png",
      name: "Charmander",
      number: "#004",
    });
    const nameClass = (html: string) =>
      /class="(descender-room[^"]*)"/.exec(html)?.[1] ?? "";

    expect(nameClass(dex)).toContain("line-clamp-2");
    expect(nameClass(dex)).not.toContain("truncate");
    expect(nameClass(render())).toContain("truncate");
    expect(dex).toContain('loading="lazy"');
    expect(dex).not.toContain("blur-md");
    expect(render()).toContain("blur-md");
  });

  it("makes room on the top line for a Pokédex entry's Play state mark", () => {
    const lineOf = (html: string) =>
      /class="([^"]*-mb-6[^"]*)"/.exec(html)?.[1] ?? "";

    expect(lineOf(render({ dexState: "seen", number: "#015" }))).toMatch(
      /(?:^|\s)pr-9(?:\s|$)/,
    );
  });
});
