import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { HomeJourney } from "@/modules/mainline/features/home/types";
import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { StatusBadge } from "@/shared/components/status-badge";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/* The Play's status and the hours recorded, under its name. */
const JourneyStatus = ({ play }: { play: HomePlay }) => (
  <p className="text-ink-2 copy-note mt-2 flex flex-wrap items-center gap-x-2 gap-y-1">
    {play.statusName ? (
      <StatusBadge size="sm" tone={getPlayStatusTone(play.statusSlug)}>
        {play.statusName}
      </StatusBadge>
    ) : null}
    {typeof play.playtimeMinutes === "number" ? (
      <span className="tabular-nums">
        {formatPlayMinutes(play.playtimeMinutes)} played
      </span>
    ) : null}
  </p>
);

/*
 * What comes next and how far along the Play is, in one inset tile: the next
 * milestone with its badge or trophy and a line on it, then one ring for
 * each part the Play tracks. Either side can be missing (Story off, nothing
 * tracked); with neither, no tile.
 */
const JourneyNextUp = ({ journey }: { journey: HomeJourney }) => {
  const { nextUp, play } = journey;

  if (!nextUp && !play.progress.length) {
    return null;
  }

  return (
    <div
      className={cn(
        "tile grid gap-4",
        nextUp &&
          play.progress.length &&
          "lg:grid-cols-[minmax(0,1fr)_auto] lg:items-center lg:gap-6",
      )}
    >
      {nextUp ? (
        <div className="flex min-w-0 items-center gap-3">
          <Medallion content={nextUp.medallion} className="shrink-0" />
          <div className="min-w-0">
            <p className="text-select-ink copy-label">Next up</p>
            <p className="title-card wrap-anywhere">{nextUp.name}</p>
            {nextUp.detail ? (
              <p className="text-ink-2 copy-note mt-0.5 line-clamp-2">
                {nextUp.detail}
              </p>
            ) : null}
          </div>
        </div>
      ) : null}
      {play.progress.length ? (
        <ul
          aria-label="Progress"
          className="flex justify-around gap-4 lg:justify-end"
        >
          {play.progress.map((part) => (
            <li key={part.label} className="flex flex-col items-center gap-1.5">
              <ProgressDonut
                label={`${part.label} progress`}
                value={part.percent}
                className="w-16 sm:w-18"
              />
              <span className="text-ink-2 copy-label">{part.label}</span>
            </li>
          ))}
        </ul>
      ) : null}
    </div>
  );
};

/*
 * Home's journey card: the Play you're on, big. Its cover, its name, how it
 * stands, then what comes next with a ring for each part it tracks, and its
 * team. The whole card opens the Play, as every Play card does; the arrow
 * in its corner says so.
 */
export const HomeJourneyCard = ({ journey }: { journey: HomeJourney }) => {
  const { play } = journey;

  return (
    <Link
      href={appRoutes.mainlinePlay(play.id)}
      className="group/card-link block rounded-2xl outline-none"
    >
      <Card variant="interactive">
        <div className="grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-4 sm:gap-6">
          <GameCover
            alt={play.gameName}
            coverImageUrl={play.coverImageUrl}
            eager
            gameName={play.gameName}
            gameSlug={play.gameSlug ?? undefined}
            size="header"
          />
          <div className="min-w-0">
            <p className="text-select-ink copy-label">Continue your journey</p>
            <h2 className="title-section sm:title-page mt-1 wrap-anywhere">
              {play.name}
            </h2>
            <JourneyStatus play={play} />
          </div>
          <span
            aria-hidden
            className="bg-surface-2 text-ink-2 group-hover/card-link:text-ink grid size-9 place-items-center self-start rounded-full transition-colors"
          >
            <AppIcon icon={appIcons.actions.continue} size="md" />
          </span>
        </div>

        <JourneyNextUp journey={journey} />

        <ul aria-label="Team" className="grid grid-cols-6 gap-2 sm:gap-4">
          {play.team.map((member, index) => (
            <li
              key={member?.id ?? `open-${index}`}
              className="flex min-w-0 flex-col items-center gap-2"
            >
              {member ? (
                <>
                  <PokemonAvatar
                    decorative
                    imageUrl={member.imageUrl}
                    name={member.name}
                    typeSlug={member.typeSlug ?? null}
                    className="bubble w-full"
                  />
                  <span className="copy-strong max-w-full truncate max-sm:sr-only">
                    {member.name}
                  </span>
                </>
              ) : (
                <PokemonAvatarSlot
                  label={`Open slot ${index + 1}`}
                  className="w-full"
                />
              )}
            </li>
          ))}
        </ul>
      </Card>
    </Link>
  );
};
