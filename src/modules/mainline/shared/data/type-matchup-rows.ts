import type { TeamTypeMatchupRow } from "./team-type-analysis";

/*
 * How one attacking type lands on each member of a team, ready to draw: the
 * one row shape a Play's Team analysis and the Team Planner's Team check
 * share, built from Mainline's shared team type reading.
 */

export type TypeMatchupEffectiveness =
  | "immune"
  | "neutral"
  | "resistant"
  | "unknown"
  | "weak";

export type TypeMatchupCell = {
  effectiveness: TypeMatchupEffectiveness;
  memberId: string;
  memberName: string;
  multiplier: number | null;
  multiplierLabel: string;
};

export type TypeMatchupType = { name: string; slug: string };

export type TypeMatchupRow<TType extends TypeMatchupType = TypeMatchupType> =
  Omit<TeamTypeMatchupRow<TType>, "cells"> & { cells: TypeMatchupCell[] };

/* A member of the team as the matchups name and draw it. */
export type TypeMatchupMember = {
  id: string;
  imageUrl: string | null;
  name: string;
};

export const formatTypeMultiplier = (multiplier: number | null) => {
  if (multiplier === null) return "Unknown";
  if (multiplier === 0.25) return "¼×";
  if (multiplier === 0.5) return "½×";
  return `${multiplier}×`;
};

export const getTypeMatchupEffectiveness = (
  multiplier: number | null,
): TypeMatchupEffectiveness => {
  if (multiplier === null) return "unknown";
  if (multiplier === 0) return "immune";
  if (multiplier < 1) return "resistant";
  if (multiplier > 1) return "weak";
  return "neutral";
};

/* The shared reading's rows, each multiplier with its meaning and its member. */
export const toTypeMatchupRows = <TType extends TypeMatchupType>(
  rows: readonly TeamTypeMatchupRow<TType>[],
  members: readonly Pick<TypeMatchupMember, "id" | "name">[],
): TypeMatchupRow<TType>[] =>
  rows.map(({ cells, ...row }) => ({
    ...row,
    cells: cells.map((multiplier, index) => ({
      effectiveness: getTypeMatchupEffectiveness(multiplier),
      memberId: members[index]?.id ?? String(index),
      memberName: members[index]?.name ?? "",
      multiplier,
      multiplierLabel: formatTypeMultiplier(multiplier),
    })),
  }));
