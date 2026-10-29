import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it, vi } from "vitest";

vi.mock("next/navigation", () => ({ useRouter: () => ({ refresh: vi.fn() }) }));
vi.mock("../../server/play-settings-actions", () => ({
  updatePlayTrackingAction: vi.fn(),
}));

import type { MainlinePlaySettingsData } from "../../types";
import { PlaySettingsTrackingSection } from "./play-settings-tracking-section";

const render = (
  data: Partial<MainlinePlaySettingsData> &
    Pick<MainlinePlaySettingsData, "tracking">,
) =>
  renderToStaticMarkup(
    <PlaySettingsTrackingSection
      data={{ hasCollectibles: true, ...data } as MainlinePlaySettingsData}
      playId="play-1"
    />,
  );

describe("PlaySettingsTrackingSection", () => {
  const tracking = {
    collectibles: true,
    pokedexMode: "caught_and_seen" as const,
    story: true,
  };

  it("replaces every placeholder with a control", () => {
    const html = render({ tracking });

    expect(html).toContain("Tracking");
    expect(html).toContain("Turning something off hides it");
    expect(html.match(/role="switch"/g)).toHaveLength(2);
    expect(html).toContain("Caught only");
    expect(html).not.toContain("not in Voydex yet");
    expect(html).not.toContain("Unsaved changes");
  });

  it("marks the switches the Play has off", () => {
    const html = render({
      tracking: { ...tracking, collectibles: false, story: false },
    });
    const states = [
      ...html.matchAll(/role="switch"[^>]*aria-checked="(true|false)"/g),
    ];

    expect(states.map((match) => match[1])).toEqual(["false", "false"]);
  });

  it("leaves Collectibles out for a game that has none", () => {
    const html = render({ hasCollectibles: false, tracking });

    expect(html.match(/role="switch"/g)).toHaveLength(1);
    expect(html).not.toContain("The game&#x27;s own collections");
  });
});
