import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { FallbackImage } from "./fallback-image";

describe("FallbackImage", () => {
  it("draws the image when it has an address", () => {
    const markup = renderToStaticMarkup(
      <FallbackImage
        src="https://assets.test/pokemon/pikachu.webp"
        name="Pikachu"
        alt="Pikachu"
        className="size-10"
      />,
    );

    expect(markup).toContain("<img");
    expect(markup).toContain('src="https://assets.test/pokemon/pikachu.webp"');
    expect(markup).toContain('alt="Pikachu"');
  });

  it("shows the first letter in the same box without an address", () => {
    const markup = renderToStaticMarkup(
      <FallbackImage src={null} name="pikachu" className="size-10" />,
    );

    expect(markup).not.toContain("<img");
    expect(markup).toContain(">P</span>");
    expect(markup).toContain("size-10");
    expect(markup).toContain('aria-hidden="true"');
  });

  it("keeps a meaningful image's name on its stand-in", () => {
    const markup = renderToStaticMarkup(
      <FallbackImage src="" name="Eevee" alt="Eevee" />,
    );

    expect(markup).toContain('role="img"');
    expect(markup).toContain('aria-label="Eevee"');
  });

  it("writes the name on a badge, with the letter for small boxes", () => {
    const markup = renderToStaticMarkup(
      <FallbackImage
        src={undefined}
        name="Bulbasaur"
        fallback="badge"
        className="size-24"
      />,
    );

    expect(markup).not.toContain("<img");
    expect(markup).toContain("sticker");
    expect(markup).toContain(">Bulbasaur</span>");
    expect(markup).toContain(">B</span>");
  });
});
