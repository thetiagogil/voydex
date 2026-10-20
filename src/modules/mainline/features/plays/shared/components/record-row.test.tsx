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

  it("stays beside its medallion without a side", () => {
    expect(row()).not.toContain("lg:col-start");
  });

  it("takes the side of the trail it's given from 1024px", () => {
    const left = row({ side: "left" });
    const right = row({ side: "right" });

    expect(left).toContain("lg:col-start-1");
    expect(left).toContain("lg:before:right-1/2");
    expect(right).toContain("lg:col-start-3");
    expect(right).toContain("lg:before:left-1/2");
    expect(right).not.toContain("lg:col-start-1");
  });

  it("brings its medallion inside the card off the trail", () => {
    const beside = row();
    const onTrail = row({ side: "left" });

    expect(beside).not.toContain("hidden lg:grid");
    expect(onTrail).toContain("lg:hidden");
    expect(onTrail).toContain("hidden lg:grid");
  });
});
