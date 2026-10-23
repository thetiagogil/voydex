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

import { TypeName } from "@/modules/mainline/shared/components/type-name";
import { teamAnalysisHealthStatusLabels } from "../../data/team-analysis-health";
import {
  TipHead,
  TipNote,
  TipStack,
  TipText,
  type TipTone,
} from "@/shared/components/tip-parts";

const statusTones: Record<TeamAnalysisHealthStatus, StatusBadgeTone> = {
  "limited-data": "neutral",
  moderate: "warn",
  strong: "ok",
  weak: "danger",
};

const statusTipTones: Record<TeamAnalysisHealthStatus, TipTone | undefined> = {
  "limited-data": undefined,
  moderate: "warn",
  strong: "ok",
  weak: "danger",
};

const TeamAnalysisHealthCard = ({
  metric,
}: {
  metric: TeamAnalysisHealthMetric;
}) => {
  const statusLabel = teamAnalysisHealthStatusLabels[metric.status];

  return (
    <Card className="gap-0 px-5.5 py-5">
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
            <TipStack>
              <TipHead tone={statusTipTones[metric.status]}>
                {statusLabel}
              </TipHead>
              {/* The verdict first, then how it was read, quieter. */}
              {metric.reason
                .split(/(?<=\.)\s+/)
                .map((sentence, index) =>
                  index === 0 ? (
                    <TipText key={sentence}>{sentence}</TipText>
                  ) : (
                    <TipNote key={sentence}>{sentence}</TipNote>
                  ),
                )}
            </TipStack>
          }
        />
      </div>

      <StatusBadge
        size="md"
        tone={statusTones[metric.status]}
        className="mt-2.5 mb-2"
      >
        {statusLabel}
      </StatusBadge>

      <p className="text-14 text-ink-2 leading-normal font-medium">
        {metric.line.map((part, index) => (
          <Fragment key={index}>
            {index > 0 ? " " : null}
            {"type" in part ? (
              <TypeName size="sm" type={part.type} className="align-[-1px]" />
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
 * this team could have; why it reads that way is in the card's tooltip. A
 * note under them says when what the team leaves out makes it a rough read.
 */
export const TeamAnalysisHealthSection = ({
  metrics,
  roughNote,
}: {
  metrics: TeamAnalysisHealthMetric[];
  roughNote: string | null;
}) => {
  return (
    <div className="grid gap-3">
      <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 sm:gap-4 lg:grid-cols-4">
        {metrics.map((metric) => (
          <TeamAnalysisHealthCard key={metric.id} metric={metric} />
        ))}
      </div>
      {roughNote ? (
        <p className="text-ink-2 text-13 font-semibold">{roughNote}</p>
      ) : null}
    </div>
  );
};
