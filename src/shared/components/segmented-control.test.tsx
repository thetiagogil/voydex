import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  getSegmentedOptionState,
  SegmentedControl,
  type SegmentedControlOption,
} from "./segmented-control";

type Section = "games" | "moves" | "pokemon";

const option = (
  overrides: Partial<SegmentedControlOption<Section>> = {},
): SegmentedControlOption<Section> => ({
  label: "Pokémon",
  value: "pokemon",
  ...overrides,
});

describe("getSegmentedOptionState", () => {
  it("marks the exact value as the page", () => {
    expect(getSegmentedOptionState(option(), "pokemon")).toEqual({
      ariaCurrent: "page",
      isActive: true,
      isDisabled: false,
      isSelected: true,
    });
  });

  it("marks the current section with aria-current true", () => {
    expect(
      getSegmentedOptionState(option({ current: true }), null),
    ).toMatchObject({ ariaCurrent: "true", isActive: true, isSelected: false });
  });

  it("prefers the exact page over the current flag", () => {
    expect(
      getSegmentedOptionState(option({ current: true }), "pokemon").ariaCurrent,
    ).toBe("page");
  });

  it("never selects a disabled option", () => {
    expect(
      getSegmentedOptionState(
        option({ current: true, disabled: true }),
        "pokemon",
      ),
    ).toEqual({
      ariaCurrent: undefined,
      isActive: false,
      isDisabled: true,
      isSelected: false,
    });
  });

  it("leaves other options plain", () => {
    expect(getSegmentedOptionState(option(), "games").isActive).toBe(false);
  });
});

describe("SegmentedControl", () => {
  it("renders links with aria-current page and true", () => {
    const html = renderToStaticMarkup(
      <SegmentedControl<Section>
        ariaLabel="Codex"
        value={null}
        options={[
          {
            href: "/codex/pokemon",
            label: "Pokémon",
            value: "pokemon",
            current: true,
          },
          { href: "/codex/games", label: "Games", value: "games" },
        ]}
      />,
    );

    expect(html).toContain("<nav");
    expect(html).toMatch(/<a aria-current="true"[^>]*href="\/codex\/pokemon"/);
    expect(html).toMatch(/<a class="[^"]*" href="\/codex\/games"/);
  });

  it("renders a disabled link without an href", () => {
    const html = renderToStaticMarkup(
      <SegmentedControl<Section>
        ariaLabel="Codex"
        value="pokemon"
        options={[
          { href: "/codex/pokemon", label: "Pokémon", value: "pokemon" },
          {
            href: "/codex/moves",
            label: "Moves",
            value: "moves",
            disabled: true,
          },
        ]}
      />,
    );

    expect(html).toContain('aria-current="page"');
    expect(html).toContain('role="link" aria-disabled="true"');
    expect(html).not.toContain('href="/codex/moves"');
  });

  it("renders disabled buttons, counts and a colour dot in segment mode", () => {
    const html = renderToStaticMarkup(
      <SegmentedControl<Section>
        ariaLabel="Version"
        variant="segment"
        value="games"
        options={[
          { label: "Games", value: "games", count: 12, dot: { color: "red" } },
          { label: "Moves", value: "moves", count: 0, disabled: true },
        ]}
      />,
    );

    expect(html).toContain('role="group"');
    expect(html).toContain('aria-pressed="true"');
    expect(html).toMatch(/<button[^>]*disabled=""/);
    expect(html).toContain(">12</small>");
    expect(html).toContain(">0</small>");
    expect(html).toMatch(/<span aria-hidden="true" style="color:red"/);
  });
});
