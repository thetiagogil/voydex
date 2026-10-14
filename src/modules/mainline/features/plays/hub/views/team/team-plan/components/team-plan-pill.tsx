import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanStatus,
} from "@/modules/mainline/features/plays/hub/types";
import {
  getTeamPlanFollowingLabel,
  getTeamPlanStatusLabel,
} from "../team-plan-display";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
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

/* The tone's mark, shared by the pills and the legend. */
export const teamPlanToneIcons: Record<TeamPlanTone, AppIconComponent> = {
  info: appIcons.product.activity,
  mute: appIcons.product.uncaught,
  ok: appIcons.status.active,
  warn: appIcons.actions.edit,
};

/* v3 `.ps-legend i`: each tone's dot in the legend, the colour of its pill. */
export const teamPlanToneDotClassNames: Record<TeamPlanTone, string> = {
  info: "bg-calm",
  mute: "bg-mute",
  ok: "bg-ok",
  warn: "bg-warn",
};

/* Retired and replaced matches share one mark, as on the match line. */
export const teamPlanPastIcon = appIcons.product.retired;

const getStatusIcon = (status: MainlinePlayTeamPlanStatus) =>
  status === "retired" || status === "replaced"
    ? teamPlanPastIcon
    : teamPlanToneIcons[getTeamPlanStatusTone(status)];

/* v3 `.pstate`: a small meaning pill with its mark. */
const TeamPlanPill = ({
  icon,
  label,
  tone,
}: {
  icon: AppIconComponent;
  label: string;
  tone: TeamPlanTone;
}) => (
  <StatusBadge
    size="md"
    tone={badgeTones[tone]}
    className={cn(tone === "mute" && "text-ink-3")}
  >
    <AppIcon icon={icon} strokeWidth={2.6} />
    {label}
  </StatusBadge>
);

export const TeamPlanStatusPill = ({
  status,
}: {
  status: MainlinePlayTeamPlanStatus;
}) => {
  const tone = getTeamPlanStatusTone(status);

  return (
    <TeamPlanPill
      icon={getStatusIcon(status)}
      label={getTeamPlanStatusLabel(status)}
      tone={tone}
    />
  );
};

export const TeamPlanFollowingPill = ({
  state,
}: {
  state: MainlinePlayTeamPlanFollowingState;
}) => {
  const tone = getTeamPlanFollowingTone(state);

  return (
    <TeamPlanPill
      icon={teamPlanToneIcons[tone]}
      label={getTeamPlanFollowingLabel(state)}
      tone={tone}
    />
  );
};
