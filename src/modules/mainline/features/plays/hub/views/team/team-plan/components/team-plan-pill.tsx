import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanStatus,
} from "@/modules/mainline/features/plays/hub/types";
import {
  getTeamPlanFollowingLabel,
  getTeamPlanStatusLabel,
} from "../team-plan-display";
import { appIcons } from "@/shared/components/app-icon";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { cn } from "@/shared/utils/cn";

import {
  getTeamPlanFollowingTone,
  getTeamPlanStatusTone,
  type TeamPlanTone,
} from "../team-plan-model";

const badgeTones: Record<TeamPlanTone, StatusBadgeTone> = {
  info: "calm",
  mute: "neutral",
  ok: "ok",
  warn: "warn",
};

/* v3 `.ps-legend i`: each tone's dot, on its pills. */
const teamPlanToneDotClassNames: Record<TeamPlanTone, string> = {
  info: "bg-calm",
  mute: "bg-mute",
  ok: "bg-ok",
  warn: "bg-warn",
};

/* Retired and replaced matches share one mark, as on the match line. */
export const teamPlanPastIcon = appIcons.product.retired;

/* v3 `.pstate`: a small meaning pill, led by its tone dot. */
const TeamPlanPill = ({
  label,
  tone,
}: {
  label: string;
  tone: TeamPlanTone;
}) => (
  <StatusBadge
    size="md"
    tone={badgeTones[tone]}
    className={cn(tone === "mute" && "text-ink-3")}
  >
    <span
      aria-hidden
      className={cn(
        "size-2 shrink-0 rounded-full",
        teamPlanToneDotClassNames[tone],
      )}
    />
    {label}
  </StatusBadge>
);

export const TeamPlanStatusPill = ({
  status,
}: {
  status: MainlinePlayTeamPlanStatus;
}) => {
  const tone = getTeamPlanStatusTone(status);

  return <TeamPlanPill label={getTeamPlanStatusLabel(status)} tone={tone} />;
};

export const TeamPlanFollowingPill = ({
  state,
}: {
  state: MainlinePlayTeamPlanFollowingState;
}) => {
  const tone = getTeamPlanFollowingTone(state);

  return <TeamPlanPill label={getTeamPlanFollowingLabel(state)} tone={tone} />;
};
