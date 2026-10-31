import type { TypeMatchupCell } from "./type-matchup-rows";

/*
 * One attacking type's tally: a small bar per Pokémon, in team order, that
 * rises when the type hits it hard and drops when it takes the hit well.
 * The taller the bar, the stronger the matchup: 2× or ½ is one step, 4× or
 * ¼ two, and an immunity the full drop.
 */

export type TypeTallyTone =
  | "immune"
  | "neutral"
  | "resist"
  | "unknown"
  | "weak";

export type TypeTallyBar = {
  direction: "down" | "flat" | "up";
  memberId: string;
  /* 0 for a flat bar, then 1 to 3 steps. */
  steps: 0 | 1 | 2 | 3;
  tone: TypeTallyTone;
};

const getBar = ({
  memberId,
  multiplier,
}: Pick<TypeMatchupCell, "memberId" | "multiplier">): TypeTallyBar => {
  if (multiplier === null) {
    return { direction: "flat", memberId, steps: 0, tone: "unknown" };
  }
  if (multiplier === 0) {
    return { direction: "down", memberId, steps: 3, tone: "immune" };
  }
  if (multiplier > 1) {
    return {
      direction: "up",
      memberId,
      steps: multiplier >= 4 ? 2 : 1,
      tone: "weak",
    };
  }
  if (multiplier < 1) {
    return {
      direction: "down",
      memberId,
      steps: multiplier <= 0.25 ? 2 : 1,
      tone: "resist",
    };
  }
  return { direction: "flat", memberId, steps: 0, tone: "neutral" };
};

export const getTypeTallyBars = (
  cells: readonly Pick<TypeMatchupCell, "memberId" | "multiplier">[],
): TypeTallyBar[] => cells.map(getBar);

/*
 * Who the type hits hard, who takes it well and whose typing is missing, for
 * screen readers.
 */
export const describeTypeTally = (
  cells: readonly Pick<
    TypeMatchupCell,
    "effectiveness" | "memberName" | "multiplier"
  >[],
) => {
  const names = (pick: (cell: (typeof cells)[number]) => boolean) =>
    cells
      .filter(pick)
      .map((cell) => cell.memberName)
      .join(", ");
  const weak = names((cell) => cell.effectiveness === "weak");
  const resist = names(
    (cell) =>
      cell.effectiveness === "resistant" || cell.effectiveness === "immune",
  );

  const unknown = names((cell) => cell.effectiveness === "unknown");

  return [
    weak ? `Weak: ${weak}.` : "Nobody weak.",
    resist ? `Resists: ${resist}.` : "Nobody resists.",
    unknown ? `Typing not recorded: ${unknown}.` : null,
  ]
    .filter(Boolean)
    .join(" ");
};
