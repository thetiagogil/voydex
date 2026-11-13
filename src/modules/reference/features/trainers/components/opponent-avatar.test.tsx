import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { OpponentAvatar } from "./opponent-avatar";

const ace = {
  imageUrl: "https://assets.test/pokemon/starmie.webp",
  name: "Starmie",
};

describe("OpponentAvatar", () => {
  it("shows the portrait filling the disc, with the ace as a sticker on its corner", () => {
    const markup = renderToStaticMarkup(
      <OpponentAvatar
        ace={ace}
        className="size-14"
        decorative
        name="Misty"
        portraitUrl="https://assets.test/trainers/misty.webp"
        typeSlug="water"
      />,
    );

    expect(markup).toContain('src="https://assets.test/trainers/misty.webp"');
    expect(markup).toContain("object-cover");
    expect(markup).toContain('src="https://assets.test/pokemon/starmie.webp"');
    expect(markup).toContain("bubble absolute");
  });

  it("shows the trainer's initials where there is no portrait, the ace still on its corner", () => {
    const markup = renderToStaticMarkup(
      <OpponentAvatar
        ace={ace}
        className="size-14"
        decorative
        name="Jessie & James"
        portraitUrl={null}
        typeSlug="poison"
      />,
    );

    expect(markup).toContain('data-stand-in="JJ"');
    expect(markup).not.toContain("trainers/");
    expect(markup).toContain("bubble absolute");
    expect(markup).toContain('src="https://assets.test/pokemon/starmie.webp"');
  });

  it("gives a Pokémon met alone the whole disc", () => {
    const markup = renderToStaticMarkup(
      <OpponentAvatar
        ace={{
          imageUrl: "https://assets.test/pokemon/zapdos.webp",
          name: "Zapdos",
        }}
        className="size-10"
        decorative
        isTrainer={false}
        name="Zapdos"
        portraitUrl={null}
        typeSlug="electric"
      />,
    );

    expect(markup).toContain('src="https://assets.test/pokemon/zapdos.webp"');
    expect(markup).not.toContain("bubble");
  });
});
