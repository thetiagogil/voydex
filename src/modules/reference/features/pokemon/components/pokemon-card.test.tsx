import fs from "node:fs";
import path from "node:path";

import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCard } from "./pokemon-card";

describe("PokemonCard", () => {
  it("reads its number, its name, then its types, as the Codex and the Planner's list draw it", () => {
    const html = renderToStaticMarkup(
      <PokemonCard
        state="plain"
        size="sm"
        imageAlt=""
        imageUrl={null}
        name="Raichu"
        nameReadAs="Alolan Raichu"
        number="#026"
        types={[
          { name: "Electric", slug: "electric" },
          { name: "Psychic", slug: "psychic" },
        ]}
      />,
    );

    expect(html.indexOf("#026")).toBeLessThan(html.indexOf("Alolan Raichu"));
    expect(html.indexOf("Alolan Raichu")).toBeLessThan(
      html.indexOf("Electric"),
    );
    expect(html).toContain("Psychic");
  });
});

const utilitiesCss = fs.readFileSync(
  path.join(process.cwd(), "src/shared/styles/app-utilities.css"),
  "utf8",
);

/* A utility's border width in px, read from the CSS. */
const borderOf = (utility: string) => {
  const body = new RegExp(`@utility ${utility} \\{([^}]*)\\}`).exec(
    utilitiesCss,
  )?.[1];
  const width = /border:\s*([\d.]+)px/.exec(body ?? "")?.[1];

  if (!width) throw new Error(`${utility} has no border`);

  return Number(width);
};

/* A Tailwind spacing class's px: `pt-1.5` 6, `px-px` 1, `pb-[8.5px]` 8.5. */
const spacingOf = (classes: string, prefix: "pb" | "pt" | "px") => {
  const value = new RegExp(
    `(?:^|\\s)${prefix}-(\\[[\\d.]+px\\]|px|[\\d.]+)(?:\\s|$)`,
  ).exec(classes)?.[1];

  if (!value) throw new Error(`no ${prefix} in ${classes}`);
  if (value === "px") return 1;
  if (value.startsWith("[")) return Number(value.slice(1, -3));

  return Number(value) * 4;
};

describe("PokemonCard's states", () => {
  const borderByState = {
    caught: borderOf("sticker"),
    missing: borderOf("empty-slot"),
    plain: borderOf("plain-card"),
    seen: borderOf("plain-card"),
  } as const;

  const edgesOf = (
    size: "md" | "sm",
    state: keyof typeof borderByState,
    picked = false,
  ) => {
    const classes =
      /^<div [^>]*class="([^"]*)"/.exec(
        renderToStaticMarkup(
          <PokemonCard
            state={state}
            size={size}
            picked={picked}
            imageAlt=""
            imageUrl={null}
            name="Pikachu"
            number="#025"
            types={[{ name: "Electric", slug: "electric" }]}
          />,
        ),
      )?.[1] ?? "";
    const border = borderByState[picked ? "caught" : state];

    return ["pt", "px", "pb"].map(
      (prefix) => border + spacingOf(classes, prefix as "pb" | "pt" | "px"),
    );
  };

  it.each(["md", "sm"] as const)(
    "keeps the number, art and name in one place whatever the state (%s)",
    (size) => {
      const plain = edgesOf(size, "plain");

      for (const state of ["caught", "missing", "seen"] as const) {
        expect(edgesOf(size, state)).toEqual(plain);
      }
      /* A Planner pick wears the sticker's band. */
      expect(edgesOf(size, "plain", true)).toEqual(plain);
    },
  );

  /* The art's own box: the element round the picture, by its round shape. */
  const artBoxClassOf = (state: keyof typeof borderByState, picked = false) =>
    /<span class="([^"]*\brounded-full\b[^"]*)"><span[^>]*>P|<span class="([^"]*\brounded-full\b[^"]*)">/
      .exec(
        renderToStaticMarkup(
          <PokemonCard
            state={state}
            picked={picked}
            imageAlt=""
            imageUrl={null}
            name="Pikachu"
            types={[{ name: "Electric", slug: "electric" }]}
          />,
        ),
      )
      ?.slice(1)
      .find(Boolean) ?? "";

  it("draws nothing behind the art of a white card, a pale circle once caught or picked", () => {
    for (const state of ["plain", "seen"] as const) {
      const box = artBoxClassOf(state);

      expect(box).toContain("rounded-full");
      expect(box).not.toMatch(/(?:^|\s)bg-/);
    }
    expect(artBoxClassOf("caught")).toContain("bg-white/55");
    expect(artBoxClassOf("plain", true)).toContain("bg-white/55");
  });
});
