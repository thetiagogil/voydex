import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { BadgeArt } from "./badge-art";
import { BadgeStamp } from "./badge-stamp";

describe("BadgeArt", () => {
  it("shows the badge's picture on its type's wash", () => {
    const markup = renderToStaticMarkup(
      <BadgeArt
        badge={{
          imageUrl: "https://assets.test/badges/boulder-badge.webp",
          type: "rock",
        }}
        iconClassName="size-[48%]"
      />,
    );

    expect(markup).toContain(
      'src="https://assets.test/badges/boulder-badge.webp"',
    );
    expect(markup).toContain("type-tint");
    expect(markup).not.toContain("/icons/types/rock.svg");
  });

  it("shows the type's icon when the badge has no picture", () => {
    const markup = renderToStaticMarkup(
      <BadgeArt
        badge={{ imageUrl: null, type: "water" }}
        iconClassName="size-[48%]"
      />,
    );

    expect(markup).not.toContain("<img");
    expect(markup).toContain("/icons/types/water.svg");
  });
});

describe("BadgeStamp", () => {
  it("wears an earned gym's badge picture", () => {
    const markup = renderToStaticMarkup(
      <BadgeStamp
        label="Boulder Badge, earned"
        state={{
          badge: {
            imageUrl: "https://assets.test/badges/boulder-badge.webp",
            type: "rock",
          },
          kind: "badge",
        }}
      />,
    );

    expect(markup).toContain(
      'src="https://assets.test/badges/boulder-badge.webp"',
    );
    expect(markup).toContain("--type-rock");
  });
});
