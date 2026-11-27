import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  TipBody,
  TipCard,
  TipFigures,
  TipHead,
  TipNamed,
  TipRating,
  TipRow,
  TipRows,
} from "./tip-parts";

describe("tip parts", () => {
  it("frames a card in the pale blue when it is about nothing with a colour", () => {
    const markup = renderToStaticMarkup(
      <TipCard>
        <TipHead name="Kanto" />
      </TipCard>,
    );

    expect(markup).toContain("tip-frame");
    expect(markup).not.toContain("data-tint");
    expect(markup).not.toContain("data-tone");
  });

  it("frames a card in the colour of what it is about", () => {
    const markup = renderToStaticMarkup(
      <TipCard tint="var(--type-fire)">
        <TipHead name="Ember" />
      </TipCard>,
    );

    expect(markup).toContain("data-tint");
    expect(markup).toContain("--t:var(--type-fire)");
  });

  it("lets a verdict's tone win over a tint", () => {
    const markup = renderToStaticMarkup(
      <TipCard tint="var(--type-fire)" tone="danger">
        <TipHead name="Weak" />
      </TipCard>,
    );

    expect(markup).toContain('data-tone="danger"');
    expect(markup).not.toContain("data-tint");
    expect(markup).not.toContain("--type-fire");
  });

  it("puts the name over its quiet line in the head, the picture first", () => {
    const markup = renderToStaticMarkup(
      <TipHead
        leading={<i>picture</i>}
        name="Comet"
        sub="Typhlosion · Lv. 48"
      />,
    );

    expect(markup.indexOf("picture")).toBeLessThan(markup.indexOf("Comet"));
    expect(markup.indexOf("Comet")).toBeLessThan(markup.indexOf("Typhlosion"));
  });

  it("shows a row's figure as a chip on its tone, and its detail under the name", () => {
    const markup = renderToStaticMarkup(
      <TipBody>
        <TipRows>
          <TipRow chip="2×" detail="Thunderbolt" name="Pidgeotto" tone="ok" />
        </TipRows>
      </TipBody>,
    );

    expect(markup).toContain("Pidgeotto");
    expect(markup).toContain("Thunderbolt");
    expect(markup).toContain("bg-ok-deep");
    expect(markup).toContain("2×");
  });

  it("keeps a warn chip's words dark, and a plain chip quiet", () => {
    const markup = renderToStaticMarkup(
      <TipRows>
        <TipRow chip="1 of 6" name="Ground" tone="warn" />
        <TipRow chip="2 Plays" name="Kirlia" tone="plain" />
      </TipRows>,
    );

    expect(markup).toContain('data-slot="tip-chip"');
    expect(markup).toContain("bg-warn text-ink");
    expect(markup).toContain("bg-surface-2 text-ink");
  });

  it("marks a row to check with a dot when it has no figure or picture", () => {
    const markup = renderToStaticMarkup(
      <TipRows>
        <TipRow name="Evolves only by trade." tone="warn" />
      </TipRows>,
    );

    expect(markup).toContain('aria-hidden="true"');
    expect(markup).toContain("bg-warn");
    expect(markup).not.toContain("tip-chip");
  });

  it("shows figures side by side, one cell each", () => {
    const markup = renderToStaticMarkup(
      <TipFigures
        figures={[
          { label: "Power", value: 40 },
          { label: "Accuracy", value: "–" },
          { label: "PP", value: 15 },
        ]}
      />,
    );

    expect(markup).toContain("repeat(3, minmax(0, 1fr))");
    expect(markup.indexOf("Power")).toBeLessThan(markup.indexOf("40"));
    expect(markup).toContain("–");
  });

  it("rings the grade a card got in its rating, and no other", () => {
    const markup = renderToStaticMarkup(
      <TipRating
        current="Weak"
        scale={[
          { chip: "easily", label: "Strong", tone: "ok" },
          { chip: "struggles", label: "Weak", tone: "danger" },
        ]}
      />,
    );

    expect(markup.match(/aria-current="true"/g)).toHaveLength(1);
    expect(markup).toContain("inset-ring-danger-deep");
    expect(markup).not.toContain("inset-ring-ok-deep");
  });

  it("names a thing on the frame over what it does inside", () => {
    const markup = renderToStaticMarkup(
      <TipNamed name="Surf">Hits all adjacent Pokémon.</TipNamed>,
    );

    expect(markup.indexOf("Surf")).toBeLessThan(
      markup.indexOf("Hits all adjacent"),
    );
    expect(markup.indexOf("tip-head")).toBeLessThan(markup.indexOf("tip-body"));
  });

  it("keeps words that come in pieces as one sentence", () => {
    const count = 2;
    const markup = renderToStaticMarkup(
      <TipNamed name="Plans are shared">
        Changes reach every Play that follows it ({count} do now).
      </TipNamed>,
    );

    expect(markup).toMatch(
      /<p class="[^"]*copy-note[^"]*">Changes reach every Play/,
    );
    expect(markup.match(/<p /g)).toHaveLength(1);
  });

  it("leaves parts of the caller's own as they are", () => {
    const markup = renderToStaticMarkup(
      <TipNamed name="Kanto">
        <TipRows>
          <TipRow name="Yellow" />
        </TipRows>
      </TipNamed>,
    );

    expect(markup).not.toContain("copy-note");
    expect(markup).toContain("<ul");
  });
});
