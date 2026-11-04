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

  it("shows the ace on the disc where there is no portrait", () => {
    const markup = renderToStaticMarkup(
      <OpponentAvatar
        ace={ace}
        className="size-14"
        decorative
        name="Juan"
        portraitUrl={null}
        typeSlug="water"
      />,
    );

    expect(markup).toContain('src="https://assets.test/pokemon/starmie.webp"');
    expect(markup).not.toContain("trainers/");
    expect(markup).not.toContain("bubble");
  });
});
