import type { MainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

import {
  TeamPlanFollowingPill,
  teamPlanPastIcon,
  teamPlanToneIcons,
  teamPlanToneTextClassNames,
} from "../../components/team-plan-pill";
import {
  getTeamPlanFoundPercent,
  type TeamPlanTone,
} from "../../team-plan-model";

/* The same marks the target pills carry, so each pill has its entry. */
const legend: { icon: AppIconComponent; label: string; tone: TeamPlanTone }[] =
  [
    { icon: teamPlanToneIcons.ok, label: "Exact", tone: "ok" },
    { icon: teamPlanToneIcons.warn, label: "Build differs", tone: "warn" },
    { icon: teamPlanToneIcons.info, label: "Evolution or form", tone: "info" },
    { icon: teamPlanToneIcons.mute, label: "Not found", tone: "mute" },
    { icon: teamPlanPastIcon, label: "Retired or replaced", tone: "mute" },
  ];

/*
 * v3 `.plan-sum`: how this Play follows the Plan, the Plan's notes, how much
 * of it is found, and what the target pills mean. Quiet: a tool's summary.
 */
export const TeamPlanSummarySection = ({
  plan,
}: {
  plan: MainlinePlayTeamPlanSummary;
}) => {
  const percent = getTeamPlanFoundPercent(plan.foundCount, plan.targetCount);

  return (
    <Card
      role="region"
      aria-label="Plan summary"
      className="grid items-center gap-6 px-5 sm:px-7 lg:grid-cols-[1.3fr_1fr] lg:gap-7"
    >
      <div className="min-w-0">
        <TeamPlanFollowingPill state={plan.followingState} />
        {plan.notes ? (
          <p className="text-ink-2 text-15 mt-3 leading-[1.55] whitespace-pre-line">
            {plan.notes}
          </p>
        ) : null}
      </div>

      <div className="min-w-0">
        <div className="text-14 grid grid-cols-[5.625rem_minmax(0,1fr)_2.75rem] items-center gap-2">
          <span className="text-ink-2 font-bold">Plan found</span>
          <Progress
            value={percent}
            max={100}
            aria-label={`${plan.foundCount} of ${plan.targetCount} planned Pokémon found`}
            className="[&_[data-slot=progress-track]]:h-3"
          />
          <b className="text-right font-extrabold tabular-nums">{percent}%</b>
        </div>
        <ul
          aria-label="What the target marks mean"
          className="text-13 text-ink-2 mt-3.5 flex flex-wrap gap-x-4 gap-y-2 font-bold"
        >
          {legend.map(({ icon, label, tone }) => (
            <li key={label} className="inline-flex items-center gap-1.5">
              <AppIcon
                icon={icon}
                size="sm"
                strokeWidth={2.6}
                className={teamPlanToneTextClassNames[tone]}
              />
              {label}
            </li>
          ))}
        </ul>
      </div>
    </Card>
  );
};
