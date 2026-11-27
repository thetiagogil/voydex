import { describe, expect, it } from "vitest";

import type { TeamAnalysisTipRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import type { Type } from "@/modules/reference/types";

import { getTeamHealthTipParts } from "./team-health-tip-parts";

const type = (id: number, name: string) =>
  ({ id, name, slug: name.toLowerCase() }) as Type;

const typeRow = (id: number, name: string, detail: string) => ({
  detail,
  subject: { type: type(id, name) },
});

describe("getTeamHealthTipParts", () => {
  it("gathers types that say the same thing under those words", () => {
    const parts = getTeamHealthTipParts([
      typeRow(1, "Normal", "Harder to beat than the rest"),
      typeRow(2, "Ghost", "Harder to beat than the rest"),
    ]);

    expect(parts).toHaveLength(1);
    expect(parts[0]).toMatchObject({
      kind: "types",
      more: 0,
      title: "Harder to beat than the rest",
    });
    expect(
      parts[0].kind === "types" && parts[0].types.map((item) => item.name),
    ).toEqual(["Normal", "Ghost"]);
  });

  it("starts another line when the words change", () => {
    const parts = getTeamHealthTipParts([
      typeRow(1, "Normal", "Harder to beat than the rest"),
      typeRow(2, "Rock", "No answer yet"),
    ]);

    expect(parts.map((part) => part.kind)).toEqual(["types", "types"]);
  });

  it("turns the row that closes a cut list into a count on that list", () => {
    const parts = getTeamHealthTipParts([
      typeRow(1, "Normal", "Harder to beat than the rest"),
      { subject: { text: "and 2 more" } },
    ]);

    expect(parts).toHaveLength(1);
    expect(parts[0]).toMatchObject({ kind: "types", more: 2 });
  });

  it("keeps other words alone as a note, a count with no list too", () => {
    const parts = getTeamHealthTipParts([
      { subject: { text: "and 2 more" } },
      { subject: { text: "A rough read: 1 of yours has no damaging move." } },
    ]);

    expect(parts).toEqual([
      { kind: "note", text: "and 2 more" },
      { kind: "note", text: "A rough read: 1 of yours has no damaging move." },
    ]);
  });

  it("keeps a Pokémon, a type with a figure and words with a detail as rows", () => {
    const rows: TeamAnalysisTipRow[] = [
      {
        chip: "Lv. 48",
        detail: "5 levels below",
        subject: { pokemon: "Comet" },
      },
      { chip: "1 of 6", subject: { type: type(3, "Ground") } },
      { detail: "No damaging move", subject: { text: "Lapras" } },
    ];

    expect(getTeamHealthTipParts(rows)).toEqual([{ kind: "rows", rows }]);
  });

  it("keeps the order the parts were found in", () => {
    const parts = getTeamHealthTipParts([
      { chip: "Lv. 48", subject: { pokemon: "Comet" } },
      typeRow(1, "Normal", "Harder to beat than the rest"),
      { subject: { text: "A rough read." } },
    ]);

    expect(parts.map((part) => part.kind)).toEqual(["rows", "types", "note"]);
  });
});
