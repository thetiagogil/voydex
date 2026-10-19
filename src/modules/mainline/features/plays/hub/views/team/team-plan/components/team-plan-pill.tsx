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
  <StatusBadge size="md" tone={badgeTones[tone]}>
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
