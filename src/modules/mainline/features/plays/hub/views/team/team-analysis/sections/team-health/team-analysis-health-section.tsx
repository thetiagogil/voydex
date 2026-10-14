import { Fragment } from "react";

import type {
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { TeamAnalysisTypeName } from "../../components/team-analysis-type-name";
import { teamAnalysisHealthStatusLabels } from "../../data/team-analysis-health";

const statusTones: Record<TeamAnalysisHealthStatus, StatusBadgeTone> = {
  "limited-data": "neutral",
  moderate: "warn",
  strong: "ok",
  weak: "danger",
};

const TeamAnalysisHealthCard = ({
  isLead,
  metric,
}: {
  isLead: boolean;
  metric: TeamAnalysisHealthMetric;
}) => {
  const statusLabel = teamAnalysisHealthStatusLabels[metric.status];

  return (
    /* v3 `.hcard.lead`: Team health leads on the game's soft tint and lip. */
    <Card
      className={cn(
        "gap-0 px-5.5 py-5",
        isLead && "bg-game-soft shadow-[0_4px_0_var(--game-lip)]",
      )}
    >
      <div className="flex items-center justify-between gap-2">
        <h3 className="text-15 font-sans leading-snug font-extrabold tracking-normal">
          {metric.title}
        </h3>
        <ExplanatoryTip
          align="end"
          side="bottom"
          contentClassName="w-70"
          triggerLabel={`Why ${metric.title} reads ${statusLabel}`}
          content={
            <p>
              <b>{statusLabel}.</b> {metric.reason}
            </p>
          }
        />
      </div>

      <StatusBadge
        tone={statusTones[metric.status]}
        className={cn(
          "text-13 mt-2.5 mb-2 h-auto gap-1.75 px-2.75 py-1 font-extrabold",
          metric.status === "limited-data" && "bg-track",
        )}
      >
        <span aria-hidden className="size-2 rounded-full bg-current" />
        {statusLabel}
      </StatusBadge>

      <p className="text-14 text-ink-2 leading-normal font-medium">
        {metric.line.map((part, index) => (
          <Fragment key={index}>
            {index > 0 ? " " : null}
            {"type" in part ? (
              <TeamAnalysisTypeName
                size="sm"
                type={part.type}
                className="align-[-1px]"
              />
            ) : (
              part.text
            )}
          </Fragment>
        ))}
      </p>
    </Card>
  );
};

/*
 * How the team holds up, as four cards: a verdict each, backed by a line only
 * this team could have; why it reads that way is in the card's tooltip.
 */
export const TeamAnalysisHealthSection = ({
  metrics,
}: {
  metrics: TeamAnalysisHealthMetric[];
}) => {
  return (
    <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 sm:gap-4 lg:grid-cols-4">
      {metrics.map((metric) => (
        <TeamAnalysisHealthCard
          key={metric.id}
          isLead={metric.id === "team-health"}
          metric={metric}
        />
      ))}
    </div>
  );
};
