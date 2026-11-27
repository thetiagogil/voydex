import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type {
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";

import { TeamAnalysisHealthSection } from "./team-analysis-health-section";

const metric = (
  status: TeamAnalysisHealthStatus,
  fill: number | null,
  title = "Threat response",
): TeamAnalysisHealthMetric => ({
  fill,
  id: "threat-response",
  line: [{ text: "16 of 18 answered" }],
  status,
  tip: { rows: [], rule: null, scale: [], summary: "" },
  title,
});

const render = (metrics: TeamAnalysisHealthMetric[]) =>
  renderToStaticMarkup(
    <TeamAnalysisHealthSection
      members={[]}
      metrics={metrics}
      roughNote={null}
      verdict={null}
    />,
  );

/* The card's bar: its colour and how full it is. */
const barOf = (markup: string) => ({
  colour:
    /<div(?=[^>]*data-slot="meter-indicator")[^>]*background-color:\s*([^;"]+)/.exec(
      markup,
    )?.[1],
  value: Number(/aria-valuenow="(\d+)"/.exec(markup)?.[1]),
});

describe("TeamAnalysisHealthSection", () => {
  it("says each verdict as a word in its own ink, over a bar in its colour", () => {
    const looks = {
      moderate: ["Moderate", "text-warn-ink", "var(--warn)"],
      strong: ["Strong", "text-ok-deep", "var(--ok)"],
      weak: ["Weak", "text-danger", "var(--danger)"],
    } as const;

    for (const [status, [word, ink, colour]] of Object.entries(looks)) {
      const markup = render([metric(status as TeamAnalysisHealthStatus, 0.5)]);

      expect(markup).toMatch(
        new RegExp(`<p class="[^"]*${ink}[^"]*">${word}</p>`),
      );
      expect(barOf(markup).colour).toBe(colour);
      /* No white pill: three verdicts no longer look alike. */
      expect(markup).not.toContain('data-slot="badge"');
    }
  });

  it("fills the bar with the card's own count", () => {
    expect(barOf(render([metric("moderate", 16 / 18)])).value).toBe(89);
    expect(barOf(render([metric("strong", 1)])).value).toBe(100);
  });

  it("keeps a sliver of an empty bar so its colour still shows", () => {
    expect(barOf(render([metric("weak", 0)])).value).toBe(4);
  });

  it("draws an empty bar and a quiet word while the team can't be read", () => {
    const markup = render([metric("limited-data", null)]);

    expect(markup).toMatch(/text-ink-2[^"]*">Not enough yet<\/p>/);
    expect(barOf(markup).value).toBe(0);
  });

  it("only draws the bar: the word and the line already say it", () => {
    const markup = render([metric("moderate", 0.5)]);

    expect(markup).toMatch(
      /<div aria-hidden="true"[^>]*><div[^>]*role="meter"/,
    );
    expect(markup).toContain("16 of 18 answered");
  });
});
