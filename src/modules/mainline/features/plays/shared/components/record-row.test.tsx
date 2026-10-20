import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { appIcons } from "@/shared/domain/icons/app-icons";

import { RecordRow } from "./record-row";

const row = (props: Partial<Parameters<typeof RecordRow>[0]> = {}) =>
  renderToStaticMarkup(
    <RecordRow
      headline="Boulder Badge"
      kicker="Milestone"
      medallion={{ icon: appIcons.milestones.story, kind: "calm" }}
      variant="timeline"
      {...props}
    />,
  );

describe("RecordRow on a timeline", () => {
  it("puts when it happened at the card's right edge, after the kind", () => {
    const markup = row({ when: "Feb 14 · 12:00 PM" });

    expect(markup).toContain("justify-between");
    expect(markup.indexOf("Milestone")).toBeLessThan(
      markup.indexOf("Feb 14 · 12:00 PM"),
    );
  });

  it("shows what the moment carries under its words", () => {
    expect(row({ extra: <span data-testid="party" /> })).toContain(
      'data-testid="party"',
    );
  });
});
