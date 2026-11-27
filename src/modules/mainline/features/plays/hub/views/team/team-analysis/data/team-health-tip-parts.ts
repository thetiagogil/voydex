import type { TeamAnalysisTipRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import type { Type } from "@/modules/reference/types";

export type TeamHealthTipPart =
  | { kind: "note"; text: string }
  | { kind: "rows"; rows: TeamAnalysisTipRow[] }
  | {
      kind: "types";
      /* How many more types say the same, past the ones listed. */
      more: number;
      title: string;
      types: Type[];
    };

/* The row that closes a cut list of types: "and 2 more". */
const moreTypesPattern = /^and (\d+) more$/;

/*
 * The rows as parts: types that all say the same thing ("Harder to beat
 * than the rest") become one line of type badges under those words (with
 * "and 2 more" as a count beside them), other words alone are a note, and
 * everything else stays a row with its picture.
 */
export const getTeamHealthTipParts = (
  rows: TeamAnalysisTipRow[],
): TeamHealthTipPart[] => {
  const parts: TeamHealthTipPart[] = [];

  for (const row of rows) {
    const last = parts.at(-1);

    if ("type" in row.subject && row.detail && !row.chip) {
      if (last?.kind === "types" && last.title === row.detail) {
        last.types.push(row.subject.type);
      } else {
        parts.push({
          kind: "types",
          more: 0,
          title: row.detail,
          types: [row.subject.type],
        });
      }
    } else if ("text" in row.subject && !row.chip && !row.detail) {
      const more = moreTypesPattern.exec(row.subject.text);

      if (last?.kind === "types" && more) {
        last.more = Number(more[1]);
      } else {
        /* Words alone are a note, not a thing in your team. */
        parts.push({ kind: "note", text: row.subject.text });
      }
    } else if (last?.kind === "rows") {
      last.rows.push(row);
    } else {
      parts.push({ kind: "rows", rows: [row] });
    }
  }

  return parts;
};
