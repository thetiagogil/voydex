import type { PlanMember } from "@/modules/mainline/features/plans/types";

/* The team a game switch carries to the Planner in the new game. */
export type PlanSwitchHandoff = {
  members: PlanMember[];
  name: string;
};

const getHandoffKey = (planId: string | null, versionGroupSlug: string) =>
  `voydex:plan-switch:${planId ?? "new"}:${versionGroupSlug}`;

/*
 * A game switch opens the Planner on another page, so the team as the new
 * game can have it (and its unsaved name) is handed over in this tab's
 * storage, read once by that page.
 */
export const writePlanSwitchHandoff = (
  planId: string | null,
  versionGroupSlug: string,
  handoff: PlanSwitchHandoff,
) => {
  try {
    window.sessionStorage.setItem(
      getHandoffKey(planId, versionGroupSlug),
      JSON.stringify(handoff),
    );
  } catch {
    // Storage can be blocked; the new game then opens on the saved team.
  }
};

export const takePlanSwitchHandoff = (
  planId: string | null,
  versionGroupSlug: string,
): PlanSwitchHandoff | null => {
  try {
    const key = getHandoffKey(planId, versionGroupSlug);
    const raw = window.sessionStorage.getItem(key);

    window.sessionStorage.removeItem(key);

    if (!raw) {
      return null;
    }

    const parsed = JSON.parse(raw) as Partial<PlanSwitchHandoff>;

    return Array.isArray(parsed.members) && typeof parsed.name === "string"
      ? { members: parsed.members, name: parsed.name }
      : null;
  } catch {
    return null;
  }
};
