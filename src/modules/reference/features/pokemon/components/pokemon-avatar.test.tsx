import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonAvatar } from "./pokemon-avatar";

const render = (props: Partial<Parameters<typeof PokemonAvatar>[0]>) =>
  renderToStaticMarkup(
    <PokemonAvatar
      imageUrl="/art/typhlosion.png"
      name="Comet"
      typeSlug="fire"
      {...props}
    />,
  );

describe("PokemonAvatar", () => {
  it("opens a tip under the pointer, and names itself", () => {
    const markup = render({});

    expect(markup).toContain('data-slot="tooltip-trigger"');
    expect(markup).toContain('alt="Comet"');
    expect(markup).not.toContain("title=");
  });

  it("has no tip where the words beside it name it", () => {
    const markup = render({ decorative: true });

    expect(markup).not.toContain("tooltip-trigger");
    expect(markup).toContain('alt=""');
  });

  it("has no tip without a name: there is nothing to say", () => {
    expect(render({ name: "" })).not.toContain("tooltip-trigger");
  });

  it("wears its type's tint, and the neutral one for a type it doesn't know", () => {
    expect(render({})).toContain("--t:var(--type-fire)");
    expect(render({ typeSlug: "shadow" })).toContain("--t:var(--mute)");
    expect(render({ typeSlug: null })).toContain("--t:var(--mute)");
  });
});
