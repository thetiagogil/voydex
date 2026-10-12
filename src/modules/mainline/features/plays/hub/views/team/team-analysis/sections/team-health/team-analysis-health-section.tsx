import {
  CrosshairIcon,
  HeartPulseIcon,
  InfoIcon,
  ShieldCheckIcon,
  TriangleAlertIcon,
  type LucideIcon,
} from "lucide-react";

import { MainlinePlayMetricIcon } from "@/modules/mainline/features/plays/hub/shell/mainline-play-metric-icon";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type {
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { cn } from "@/shared/utils/cn";

const statusLabels: Record<TeamAnalysisHealthStatus, string> = {
  "limited-data": "Limited data",
  moderate: "Moderate",
  strong: "Strong",
  weak: "Weak",
};

const metricIcons: Record<TeamAnalysisHealthMetric["id"], LucideIcon> = {
  "move-coverage": CrosshairIcon,
  "team-health": HeartPulseIcon,
  "threat-response": ShieldCheckIcon,
  "weakness-control": TriangleAlertIcon,
};

const statusIconClassNames: Record<TeamAnalysisHealthStatus, string> = {
  "limited-data": "border-muted-foreground/20 bg-muted text-muted-foreground",
  moderate: "border-warn/50 bg-warn-soft text-warn-ink",
  strong: "border-ok-line bg-ok-soft text-ok",
  weak: "border-destructive/25 bg-destructive/10 text-destructive",
};

const statusTextClassNames: Record<TeamAnalysisHealthStatus, string> = {
  "limited-data": "text-muted-foreground",
  moderate: "text-warn-ink",
  strong: "text-ok",
  weak: "text-destructive",
};

const TeamAnalysisHealthMetricColumn = ({
  index,
  metric,
}: {
  index: number;
  metric: TeamAnalysisHealthMetric;
}) => {
  const MetricIcon = metricIcons[metric.id];

  return (
    <article
      className={cn(
        "border-line grid content-start px-4 py-5",
        index > 0 && "border-t sm:border-t-0 xl:border-l",
        index % 2 === 1 && "sm:border-l",
        index >= 2 && "sm:border-t xl:border-t-0",
      )}
    >
      <div className="flex items-start gap-3">
        <MainlinePlayMetricIcon
          icon={MetricIcon}
          className={statusIconClassNames[metric.status]}
        />

        <div className="min-w-0 flex-1">
          <h4 className="text-sm leading-5 font-semibold">{metric.title}</h4>
          <p
            className={cn(
              "mt-0.5 text-base leading-5 font-semibold",
              statusTextClassNames[metric.status],
            )}
          >
            {statusLabels[metric.status]}
          </p>
        </div>

        <ExplanatoryTip
          align="end"
          side="bottom"
          content={
            <div className="grid gap-3">
              <div>
                <p className="font-semibold">Current result</p>
                <div className="mt-1 flex flex-wrap items-baseline gap-x-2 gap-y-1">
                  <span
                    className={cn(
                      "font-semibold",
                      statusTextClassNames[metric.status],
                    )}
                  >
                    {statusLabels[metric.status]}
                  </span>
                  <span className="text-muted-foreground">
                    {metric.evidence}
                  </span>
                </div>
              </div>

              <div>
                <p className="font-semibold">How this is measured</p>
                <p className="text-muted-foreground mt-1">
                  {metric.explanation.description}
                </p>
              </div>

              <div>
                <p className="font-semibold">Status guide</p>
                <ul className="text-muted-foreground mt-1 list-disc space-y-1 pl-4">
                  {metric.explanation.rules.map((rule) => (
                    <li key={rule}>{rule}</li>
                  ))}
                </ul>
              </div>

              {metric.explanation.note ? (
                <p className="border-border/70 text-muted-foreground border-t pt-2">
                  {metric.explanation.note}
                </p>
              ) : null}
            </div>
          }
          contentClassName="w-80 max-w-[calc(100vw-2rem)] px-4 py-3"
          trigger={
            <button
              type="button"
              className="text-muted-foreground hover:text-foreground focus-visible:ring-ring/40 inline-flex size-7 shrink-0 cursor-help items-center justify-center rounded-full outline-none focus-visible:ring-2"
              aria-label={`How ${metric.title} is assessed`}
            />
          }
        >
          <InfoIcon aria-hidden className="size-4" />
        </ExplanatoryTip>
      </div>

      <p className="text-muted-foreground mt-4 text-xs leading-5">
        {metric.summary}
      </p>
    </article>
  );
};

export const TeamAnalysisHealthSection = ({
  metrics,
}: {
  metrics: TeamAnalysisHealthMetric[];
}) => {
  return (
    <MainlinePlaySectionCard
      title="Team assessment"
      headingLevel={3}
      description="A quick reading of exact-generation typing and recorded damaging moves."
      contentClassName="p-0"
      showSeparator
    >
      <div className="grid sm:grid-cols-2 xl:grid-cols-4">
        {metrics.map((metric, index) => (
          <TeamAnalysisHealthMetricColumn
            key={metric.id}
            index={index}
            metric={metric}
          />
        ))}
      </div>
    </MainlinePlaySectionCard>
  );
};
