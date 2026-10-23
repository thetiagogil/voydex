import { Fragment } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type {
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
  TeamAnalysisHealthTip,
  TeamAnalysisTipRow,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
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
  TipRow,
  TipRows,
  TipRating,
  TipText,
  TipTitle,
  TipStack,
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

/* A tip row's picture and name: a Pokémon of yours, a type, or plain words. */
const TeamHealthTipRow = ({
  members,
  row,
}: {
  members: MainlinePlayTeamMember[];
  row: TeamAnalysisTipRow;
}) => {
  const { subject } = row;

  if ("pokemon" in subject) {
    const member = members.find(
      (candidate) => getPlayTeamMemberName(candidate) === subject.pokemon,
    );

    return (
      <TipRow
        chip={row.chip}
        detail={row.detail}
        leading={
          <PokemonAvatar
            decorative
            name={subject.pokemon}
            className="size-8 shrink-0"
            imageUrl={member ? getPlayTeamMemberImageUrl(member) : null}
            typeSlug={null}
          />
        }
        name={subject.pokemon}
        tone={row.tone}
      />
    );
  }

  if ("type" in subject) {
    return (
      <TipRow
        chip={row.chip}
        detail={row.detail}
        leading={
          isPokemonTypeSlug(subject.type.slug) ? (
            <PokemonTypeMark
              type={subject.type.slug}
              className="size-7 shrink-0"
              iconClassName="size-4"
            />
          ) : undefined
        }
        name={subject.type.name}
        tone={row.tone}
      />
    );
  }

  /* Words alone are a note, not a thing in your team. */
  if (!row.chip && !row.detail) {
    return (
      <li className="py-1.5 first:pt-0 last:pb-0">
        <TipNote>{subject.text}</TipNote>
      </li>
    );
  }

  return (
    <TipRow
      chip={row.chip}
      detail={row.detail}
      name={subject.text}
      tone={row.tone}
    />
  );
};

/* What was found in your team, then how the card is rated: two parts. */
const TeamHealthTip = ({
  members,
  status,
  statusLabel,
  tip,
}: {
  members: MainlinePlayTeamMember[];
  status: TeamAnalysisHealthStatus;
  statusLabel: string;
  tip: TeamAnalysisHealthTip;
}) => (
  <TipStack className="gap-2.5">
    <div className="grid gap-1">
      <TipHead tone={statusTipTones[status]}>{statusLabel}</TipHead>
      <TipText>{tip.summary}</TipText>
    </div>
    {tip.rows.length ? (
      <div className="grid gap-1.5">
        <TipTitle>In your team</TipTitle>
        <TipRows>
          {tip.rows.map((row, index) => (
            <TeamHealthTipRow key={index} members={members} row={row} />
          ))}
        </TipRows>
      </div>
    ) : null}
    {tip.rule || tip.scale.length ? (
      <TipRating rule={tip.rule} scale={tip.scale} />
    ) : null}
  </TipStack>
);

const TeamAnalysisHealthCard = ({
  members,
  metric,
}: {
  members: MainlinePlayTeamMember[];
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
          contentClassName="w-80"
          triggerLabel={`Why ${metric.title} reads ${statusLabel}`}
          content={
            <TeamHealthTip
              members={members}
              tip={metric.tip}
              status={metric.status}
              statusLabel={statusLabel}
            />
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
  members,
  metrics,
  roughNote,
}: {
  members: MainlinePlayTeamMember[];
  metrics: TeamAnalysisHealthMetric[];
  roughNote: string | null;
}) => {
  return (
    <div className="grid gap-3">
      <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 sm:gap-4 lg:grid-cols-4">
        {metrics.map((metric) => (
          <TeamAnalysisHealthCard
            key={metric.id}
            members={members}
            metric={metric}
          />
        ))}
      </div>
      {roughNote ? (
        <p className="text-ink-2 text-13 font-semibold">{roughNote}</p>
      ) : null}
    </div>
  );
};
