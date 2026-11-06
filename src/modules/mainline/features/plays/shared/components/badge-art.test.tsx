import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { BadgeArt } from "./badge-art";
import { BadgeStamp } from "./badge-stamp";

describe("BadgeArt", () => {
  it("shows the badge's picture", () => {
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
    expect(markup).not.toContain("/icons/types/rock.svg");
  });

  /* The same stand-in shows when a picture fails to load. */
  it("shows the type's icon on the full type colour without a picture", () => {
    const markup = renderToStaticMarkup(
      <BadgeArt
        badge={{ imageUrl: null, type: "water" }}
        iconClassName="size-[48%]"
      />,
    );

    expect(markup).not.toContain("<img");
    expect(markup).toContain("/icons/types/water.svg");
    expect(markup).toContain("bg-(--t)");
    expect(markup).toContain("text-inherit");
    expect(markup).not.toContain("text-ink-tint");
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
    expect(markup).toContain("type-tint");
    expect(markup).not.toContain("bg-(--t) text-white");
  });

  it("keeps a badge without a picture on its full type colour", () => {
    const markup = renderToStaticMarkup(
      <BadgeStamp
        label="Ilima, earned"
        state={{ badge: { imageUrl: null, type: "normal" }, kind: "badge" }}
      />,
    );

    expect(markup).not.toContain("type-tint");
    expect(markup).toContain("/icons/types/normal.svg");
  });
});
