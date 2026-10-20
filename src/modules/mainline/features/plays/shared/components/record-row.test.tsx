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
  it("keeps its medallion on the line unless it sits in a grid", () => {
    const onLine = row();
    const inGrid = row({ placement: "grid" });

    expect(onLine).not.toContain("hidden lg:grid");
    expect(inGrid).toContain("lg:hidden");
    expect(inGrid).toContain("hidden lg:grid");
  });

  it("shows what the moment carries under its words", () => {
    expect(row({ extra: <span data-testid="party" /> })).toContain(
      'data-testid="party"',
    );
  });
});
