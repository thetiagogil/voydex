import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it, vi } from "vitest";

vi.mock("next/navigation", () => ({ useRouter: () => ({ refresh: vi.fn() }) }));
vi.mock("../server/preferences-actions", () => ({
  saveLookAndFeelAction: vi.fn(),
  saveNewPlayDefaultsAction: vi.fn(),
}));

import { SettingsLookSection } from "./settings-look-section";
import { SettingsNewPlayDefaultsSection } from "./settings-new-play-defaults-section";

describe("SettingsNewPlayDefaultsSection", () => {
  const render = (
    defaults: Parameters<typeof SettingsNewPlayDefaultsSection>[0]["defaults"],
  ) =>
    renderToStaticMarkup(
      <SettingsNewPlayDefaultsSection defaults={defaults} />,
    );

  it("shows every default as a real control, with no placeholder left", () => {
    const html = render({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });

    expect(html).toContain("New Play defaults");
    expect(html).toContain('role="switch"');
    expect(html).toContain("Caught only");
    expect(html).toContain("Caught and seen");
    expect(html).not.toContain("Not in Voydex yet");
    expect(html).not.toContain("Unsaved changes");
  });

  it("marks the saved switches and mode", () => {
    const html = render({
      collectibles: false,
      pokedexMode: "caught_only",
      story: true,
    });
    const switches = [
      ...html.matchAll(/role="switch"[^>]*aria-checked="(true|false)"/g),
    ];

    expect(switches.map((match) => match[1])).toEqual(["true", "false"]);
    expect(html).toMatch(
      /aria-pressed="true"[^>]*>Caught only|Caught only[^<]*<[^>]*aria-pressed="true"/,
    );
  });

  it("names each switch by its row's title", () => {
    const html = render({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });

    expect(
      html.match(/aria-labelledby="[^"]+"/g)?.length,
    ).toBeGreaterThanOrEqual(2);
  });
});

describe("SettingsLookSection", () => {
  it("offers Motion and Search and filters and leaves Mode and Colour theme pending", () => {
    const html = renderToStaticMarkup(
      <SettingsLookSection
        lookAndFeel={{ motion: "full", searchFilters: "folded" }}
      />,
    );

    expect(html).toContain("Full");
    expect(html).toContain("None");
    expect(html).toContain("Folded");
    expect(html).toContain("Always open");
    expect(html.match(/Not in Voydex yet/g)).toHaveLength(2);
  });
});
