import type { ReactNode } from "react";

import type {
  TeamAnalysisDefensiveCell,
  TeamAnalysisEffectiveness,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { StatusBadge } from "@/shared/components/status-badge";
import { cn } from "@/shared/utils/cn";

/* The cell's effectiveness, with 4× singled out as very weak. */
type MatchupKind = TeamAnalysisEffectiveness | "very-weak";

/* The matrix chrome stays quiet; its cells keep their meaning tints. */
const kindClassNames: Record<MatchupKind, string> = {
  immune:
    "bg-ok-soft-2 text-ok-deep ring-ok-line font-extrabold ring-[1.5px] ring-inset",
  neutral: "text-ink-3/55",
  resistant: "bg-ok-soft text-ok",
  unknown: "text-ink-3",
  "very-weak": "bg-danger-soft-2 text-danger-deep font-extrabold",
  weak: "bg-danger-soft text-danger",
};

const sizeClassNames = {
  md: "text-14 h-7.5 min-w-11",
  sm: "text-12 h-5.5 min-w-7.5",
} as const;

const getMatchupKind = (cell: TeamAnalysisDefensiveCell): MatchupKind => {
  return cell.effectiveness === "weak" && (cell.multiplier ?? 0) >= 4
    ? "very-weak"
    : cell.effectiveness;
};

/* The matrix's compact mark: a dot for neutral, fractions without the ×. */
const getShortLabel = (cell: TeamAnalysisDefensiveCell) => {
  if (cell.effectiveness === "unknown") return "?";
  if (cell.effectiveness === "neutral") return "·";
  if (cell.effectiveness === "immune") return "0";
  if (cell.effectiveness === "resistant") {
    return cell.multiplierLabel.replace("×", "");
  }
  return cell.multiplierLabel;
};

const getSpokenLabel = (cell: TeamAnalysisDefensiveCell) => {
  const kind = getMatchupKind(cell);

  if (kind === "unknown") return "Typing not recorded";
  if (kind === "immune") return "No damage, immune";
  if (kind === "very-weak") return `${cell.multiplierLabel} damage, very weak`;
  if (kind === "weak") return `${cell.multiplierLabel} damage, weak`;
  if (kind === "resistant") return `${cell.multiplierLabel} damage, resists`;
  return "1× damage";
};

const MatchupMark = ({
  children,
  kind,
  size,
}: {
  children: ReactNode;
  kind: MatchupKind;
  size: keyof typeof sizeClassNames;
}) => {
  return (
    <span
      className={cn(
        "inline-grid place-items-center rounded-sm px-1.5 font-bold tabular-nums",
        sizeClassNames[size],
        kindClassNames[kind],
      )}
    >
      {children}
    </span>
  );
};

/* How hard one attacking type hits one of your Pokémon (v3 `.cell`). */
export const TeamAnalysisMatchupCell = ({
  cell,
}: {
  cell: TeamAnalysisDefensiveCell;
}) => {
  return (
    <MatchupMark kind={getMatchupKind(cell)} size="md">
      <span aria-hidden>{getShortLabel(cell)}</span>
      <span className="sr-only">{getSpokenLabel(cell)}</span>
    </MatchupMark>
  );
};

const legendItems: { kind: MatchupKind; label: string; mark: string }[] = [
  { kind: "very-weak", label: "Very weak", mark: "4×" },
  { kind: "weak", label: "Weak", mark: "2×" },
  { kind: "resistant", label: "Resists", mark: "½" },
  { kind: "immune", label: "Immune", mark: "0" },
];

export const TeamAnalysisMatchupLegend = ({
  className,
}: {
  className?: string;
}) => {
  return (
    <ul
      aria-label="Matchup key"
      className={cn(
        "text-13 text-ink-2 flex flex-wrap gap-x-3.5 gap-y-2 font-bold",
        className,
      )}
    >
      {legendItems.map((item) => (
        <li key={item.kind} className="inline-flex items-center gap-1.5">
          <MatchupMark kind={item.kind} size="sm">
            {item.mark}
          </MatchupMark>
          {item.label}
        </li>
      ))}
    </ul>
  );
};

/* A type that hits two of the team super effectively, or one of them 4×. */
export const TeamAnalysisPressureTag = () => {
  return (
    <StatusBadge tone="danger" className="h-5 px-2 font-extrabold">
      Pressure
    </StatusBadge>
  );
};
