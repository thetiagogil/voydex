import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { TipHead, TipNamed, TipRow, TipRows, TipStack } from "./tip-parts";

describe("tip parts", () => {
  it("puts a tone dot before the head, hidden from screen readers", () => {
    const markup = renderToStaticMarkup(<TipHead tone="danger">Weak</TipHead>);

    expect(markup).toContain('aria-hidden="true"');
    expect(markup).toContain("bg-danger-line");
    expect(markup).toContain("Weak");
  });

  it("shows a row's figure as a chip on its tone, and its detail under the name", () => {
    const markup = renderToStaticMarkup(
      <TipStack>
        <TipRows>
          <TipRow chip="2×" detail="Thunderbolt" name="Pidgeotto" tone="ok" />
        </TipRows>
      </TipStack>,
    );

    expect(markup).toContain("Pidgeotto");
    expect(markup).toContain("Thunderbolt");
    expect(markup).toContain("bg-ok-deep");
    expect(markup).toContain("2×");
  });

  it("marks a chip so the ink tip leaves its own text colour alone", () => {
    const markup = renderToStaticMarkup(
      <TipRows>
        <TipRow chip="1 of 6" name="Ground" tone="warn" />
      </TipRows>,
    );

    expect(markup).toContain('data-slot="tip-chip"');
    expect(markup).toContain("bg-warn text-ink");
  });

  it("names a thing over what it does", () => {
    const markup = renderToStaticMarkup(
      <TipNamed name="Surf">Hits all adjacent Pokémon.</TipNamed>,
    );

    expect(markup.indexOf("Surf")).toBeLessThan(
      markup.indexOf("Hits all adjacent"),
    );
  });
});
