import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Card } from "@/shared/components/ui/card";

/* How the Play stands, in one short line: its status and what comes next. */
const getContinueLine = (play: HomePlay) =>
  [
    play.statusName,
    play.storyPosition?.kind === "next"
      ? `Next up ${play.storyPosition.name}`
      : play.storyPosition?.kind === "complete"
        ? "Story complete"
        : null,
  ]
    .filter(Boolean)
    .join(" · ");

/*
 * One slim row back into the Play you're on: its cover, its name, how it
 * stands, from 640px its team, and its overall ring, as the Plays list has
 * it. The whole row opens the Play.
 */
export const HomeContinueRow = ({ play }: { play: HomePlay }) => (
  <Link
    href={appRoutes.mainlinePlay(play.id)}
    className="group/card-link block rounded-lg outline-none"
  >
    <Card
      size="sm"
      variant="interactive"
      className="flex-row items-center gap-4 sm:gap-6"
    >
      {/*
       * In a span: a card trims its padding and rounds the top of a picture
       * that is its first child (a hero image), which a cover isn't.
       */}
      <span className="flex shrink-0">
        <GameCover
          alt=""
          coverImageUrl={play.coverImageUrl}
          eager
          gameName={play.gameName}
          gameSlug={play.gameSlug ?? undefined}
          size="slim"
        />
      </span>
      <div className="min-w-0 flex-1">
        <p className="text-select-ink copy-label">Continue</p>
        <p className="title-card line-clamp-2 sm:truncate">{play.name}</p>
        <p className="text-ink-3 copy-meta truncate">{getContinueLine(play)}</p>
      </div>
      <ul
        aria-label="Team"
        className="hidden grid-cols-[repeat(6,40px)] gap-1.5 sm:grid lg:grid-cols-[repeat(6,48px)]"
      >
        {play.team.map((member, index) => (
          <li key={member?.id ?? `open-${index}`}>
            {member ? (
              <>
                <PokemonAvatar
                  decorative
                  imageUrl={member.imageUrl}
                  name={member.name}
                  typeSlug={member.typeSlug ?? null}
                />
                <span className="sr-only">{member.name}</span>
              </>
            ) : (
              <PokemonAvatarSlot label={`Open slot ${index + 1}`} />
            )}
          </li>
        ))}
      </ul>
      {play.overallPercent === null ? null : (
        <ProgressDonut
          label="Overall progress"
          value={play.overallPercent}
          className="w-12 shrink-0 sm:w-14"
        />
      )}
      <span
        aria-hidden
        className="bg-surface-2 text-ink-2 group-hover/card-link:text-ink hidden size-9 shrink-0 place-items-center rounded-full transition-colors sm:grid"
      >
        <AppIcon icon={appIcons.actions.continue} size="md" />
      </span>
    </Card>
  </Link>
);
