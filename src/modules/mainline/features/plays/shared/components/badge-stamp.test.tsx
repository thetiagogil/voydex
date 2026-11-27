import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { appIcons } from "@/shared/components/app-icon";

import { BadgeStamp, BadgeStampTip } from "./badge-stamp";

const zephyr = {
  imageUrl: "/badges/zephyr-badge.webp",
  type: "flying",
} as const;

describe("BadgeStampTip", () => {
  it("shows an earned badge on its type's frame, with what earned it and the day", () => {
    const markup = renderToStaticMarkup(
      <BadgeStampTip
        facts={{
          description: "Beat Falkner and his Flying types at Violet Gym.",
          earnedOn: "Jan 24, 2025",
          name: "Zephyr Badge",
          state: "earned",
        }}
        state={{ badge: zephyr, kind: "badge" }}
      />,
    );

    expect(markup).toContain("--t:var(--type-flying)");
    expect(markup).toContain("Zephyr Badge");
    expect(markup).toContain("Beat Falkner");
    expect(markup.indexOf("Earned")).toBeLessThan(
      markup.indexOf("Jan 24, 2025"),
    );
  });

  it("says Earned once on a stamp with no badge of its own", () => {
    const markup = renderToStaticMarkup(
      <BadgeStampTip
        facts={{
          earnedOn: "Feb 7, 2025",
          name: "Pokémon League",
          state: "earned",
        }}
        state={{ icon: appIcons.status.info, kind: "earned" }}
      />,
    );

    expect(markup.match(/Earned/g)).toHaveLength(1);
    expect(markup).not.toContain("data-tint");
  });

  it("marks the next stamp and one further ahead, with what earns them", () => {
    const next = renderToStaticMarkup(
      <BadgeStampTip
        facts={{
          description: "Beat Brock and his Rock types at Pewter Gym.",
          name: "Boulder Badge",
          state: "next",
        }}
        state={{ kind: "next" }}
      />,
    );
    const todo = renderToStaticMarkup(
      <BadgeStampTip
        facts={{ name: "Rainbow Badge", state: "todo" }}
        state={{ kind: "todo" }}
      />,
    );

    expect(next).toContain("Next");
    expect(next).toContain("Beat Brock");
    expect(next).not.toContain("Earned");
    expect(todo).toContain("Not yet");
    /* Nothing more to say: the card is its head alone. */
    expect(todo).not.toContain("tip-body");
  });
});

describe("BadgeStamp", () => {
  it("keeps its name for screen readers whichever tip it opens", () => {
    const state = { badge: zephyr, kind: "badge" } as const;
    const plain = renderToStaticMarkup(
      <BadgeStamp label="Zephyr Badge, earned" state={state} />,
    );
    const withFacts = renderToStaticMarkup(
      <BadgeStamp
        facts={{ name: "Zephyr Badge", state: "earned" }}
        label="Zephyr Badge, earned"
        state={state}
      />,
    );

    for (const markup of [plain, withFacts]) {
      expect(markup).toContain('aria-label="Zephyr Badge, earned"');
      expect(markup).toContain('data-slot="tooltip-trigger"');
      expect(markup).not.toContain("title=");
    }
  });
});
