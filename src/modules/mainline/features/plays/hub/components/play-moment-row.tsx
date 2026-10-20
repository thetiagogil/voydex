import { Fragment, type ReactNode } from "react";

import { PlayTeamParty } from "@/modules/mainline/features/plays/shared/components/play-team-party";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { getPlayMomentPokemon } from "@/modules/mainline/features/plays/shared/data/play-moment-pokemon";
import {
  getPlayMomentRecord,
  type PlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { parsePlayTeamSnapshot } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";

type PlayMomentRowProps = {
  context?: PlayMomentContext;
  event: MainlinePlayTimelineEvent;
  /* `timeline`: on a timeline's line, its words in a card of their own. */
  variant?: "row" | "timeline";
  /* When it happened, after the kind in the kicker. */
  when?: ReactNode;
  /* Let the line and note wrap in full. */
  wrap?: boolean;
};

const changeEventTypes = new Set(["pokemon_evolved", "pokemon_form_changed"]);

/*
 * What a moment carries on the timeline beyond its words: the team saved
 * with it, or what a Pokémon was before and after it evolved or changed
 * form. Nothing for the rest.
 */
const getTimelineExtra = (event: MainlinePlayTimelineEvent) => {
  const members = parsePlayTeamSnapshot(event.team_snapshots);

  if (members.length) {
    return (
      <PlayTeamParty
        className="flex pl-0 sm:flex"
        members={members}
        size="md"
      />
    );
  }

  if (!changeEventTypes.has(event.event_type_slug ?? "")) {
    return null;
  }

  const pokemon = getPlayMomentPokemon(event);
  const from = pokemon.find((entry) => entry.role === "from");
  const to = pokemon.find((entry) => entry.role === "to");

  if (!from || !to) {
    return null;
  }

  return (
    <span
      role="img"
      aria-label={`${from.name} became ${to.name}`}
      className="flex items-center gap-1.5"
    >
      {[from, to].map((entry, index) => (
        <Fragment key={entry.key}>
          {index ? (
            <AppIcon
              icon={appIcons.actions.continue}
              size="sm"
              className="text-ink-3"
            />
          ) : null}
          <FallbackImage
            src={entry.imageUrl}
            name={entry.formName ?? entry.name}
            fallback="badge"
            loading="lazy"
            className="size-12 max-w-none object-contain"
          />
        </Fragment>
      ))}
    </span>
  );
};

/* One recorded moment as a record row, the same wherever moments show. */
export const PlayMomentRow = ({
  context,
  event,
  variant,
  when,
  wrap,
}: PlayMomentRowProps) => {
  const record = getPlayMomentRecord(event, context);
  const onTimeline = variant === "timeline";

  return (
    <RecordRow
      medallionFaded={record.faded}
      variant={variant}
      when={onTimeline ? when : undefined}
      wrap={wrap}
      kicker={
        when && !onTimeline ? (
          <>
            {record.label} · {when}
          </>
        ) : (
          record.label
        )
      }
      headline={record.headline.map((part, index) =>
        part.emphasized ? (
          <b key={`${part.text}-${index}`}>{part.text}</b>
        ) : (
          <Fragment key={`${part.text}-${index}`}>{part.text}</Fragment>
        ),
      )}
      description={record.description}
      extra={onTimeline ? getTimelineExtra(event) : undefined}
      medallion={record.medallion}
    />
  );
};
