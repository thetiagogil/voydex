import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it, vi } from "vitest";

vi.mock("next/navigation", () => ({
  useRouter: () => ({ push: vi.fn(), refresh: vi.fn() }),
}));

import type { MyPlan } from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";

import { MyPlansGrid } from "./my-plans-browser";

const plan: MyPlan = {
  gameSlug: "sword",
  id: "plan-1",
  isArchived: false,
  linkedPlayCount: 0,
  memberCount: 0,
  members: [],
  name: "Galar team",
  updatedAt: null,
  versionGroupName: "Sword / Shield",
  versionGroupSlug: "swsh",
};

const getCard = (markup: string) =>
  markup.match(/<div data-slot="card"[^>]*>/)?.[0] ?? "";

describe("MyPlansGrid", () => {
  it("draws a Plan as a card that opens, its menu inside the card", () => {
    const markup = renderToStaticMarkup(<MyPlansGrid plans={[plan]} />);

    /* The small edge of what opens, and the link stretched over the card. */
    expect(getCard(markup)).toContain("shadow-open");
    expect(markup).toContain('data-slot="card-open"');
    expect(markup).toMatch(
      /<a [^>]*href="[^"]*plan-1[^"]*"[^>]*>.*Galar team.*<\/a>/,
    );
    /* The menu lifts with the card: inside it, after the link, not in it. */
    const menu = markup.indexOf("Galar team: more actions");

    expect(menu).toBeGreaterThan(markup.indexOf("</a>"));
    expect(menu).toBeLessThan(markup.lastIndexOf("</div></li>"));
  });

  it("keeps an archived Plan flat and shut", () => {
    const markup = renderToStaticMarkup(
      <MyPlansGrid plans={[{ ...plan, isArchived: true }]} />,
    );

    expect(getCard(markup)).toContain("shadow-card");
    expect(getCard(markup)).not.toContain("shadow-open");
    expect(markup).not.toContain('data-slot="card-open"');
    expect(markup).not.toContain("<a ");
  });
});
