"use client";

import { PickedMark } from "@/shared/components/picked-mark";
import Link from "next/link";
import type { MouseEvent } from "react";

import { appRoutes } from "@/config/routes";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Carousel } from "@/shared/components/carousel";
import { cn } from "@/shared/utils/cn";

type HomePlayShelfProps = {
  currentPlayId: string;
  /* Makes a shelf Play the current one, without leaving the page. */
  onSelect: (playId: string) => void;
  plays: HomePlay[];
};

/*
 * How many Plays show at each width: one on phones, four on tablets, the
 * whole shelf on desktop. The rest are hidden by breakpoint (the current one
 * always shows), so the shelf never changes after the first paint.
 */
const PHONE_PLAY_COUNT = 1;
const TABLET_PLAY_COUNT = 4;

const getShelfItemClassName = (index: number) =>
  index < PHONE_PLAY_COUNT
    ? undefined
    : index < TABLET_PLAY_COUNT
      ? "max-md:hidden"
      : "max-lg:hidden";

const coverLinkClassName =
  "group/shelf-item relative flex shrink-0 flex-col items-center rounded-md focus-visible:outline-offset-4 focus-ring";

/* A plain click switches in place; a modified one opens the link as usual. */
const isPlainClick = (event: MouseEvent) =>
  event.button === 0 &&
  !event.metaKey &&
  !event.ctrlKey &&
  !event.shiftKey &&
  !event.altKey;

/*
 * v3 `.hb-shelf`: your latest Plays as covers, each with its lead Pokémon as
 * a small sticker; the current one stands up with a check. Picking one
 * switches the meadow, the line under it and the latest moments at once.
 * The dashed tile starts a new Play; the rest live on the Plays page. Earlier
 * and Later page through it on wider screens when it overflows.
 */
export const HomePlayShelf = ({
  currentPlayId,
  onSelect,
  plays,
}: HomePlayShelfProps) => (
  <nav aria-label="Your Plays" className="relative z-6">
    <Carousel
      render={<ul />}
      density="roomy"
      snap
      earlierLabel="Earlier Plays"
      laterLabel="Later Plays"
      initialEdges={{ canScrollEnd: false, canScrollStart: false }}
    >
      {plays.map((play, index) => {
        const isCurrent = play.id === currentPlayId;
        const leadType =
          play.lead?.typeSlug && isPokemonTypeSlug(play.lead.typeSlug)
            ? play.lead.typeSlug
            : null;

        return (
          <li
            key={play.id}
            className={cn(
              "shrink-0",
              !isCurrent && getShelfItemClassName(index),
            )}
          >
            <Link
              href={appRoutes.mainlineHomePlay(play.id)}
              scroll={false}
              aria-current={isCurrent ? "true" : undefined}
              aria-label={play.label}
              title={play.label}
              className={coverLinkClassName}
              onClick={(event) => {
                if (isPlainClick(event)) {
                  event.preventDefault();
                  onSelect(play.id);
                }
              }}
            >
              <span
                className={cn(
                  "ease-hop relative grid transition-transform duration-250",
                  isCurrent
                    ? "-translate-y-4"
                    : "motion-safe:group-hover/shelf-item:-translate-y-2.5 motion-safe:group-hover/shelf-item:-rotate-2",
                )}
              >
                <GameCover
                  alt=""
                  coverImageUrl={play.coverImageUrl}
                  eager
                  gameName={play.gameName}
                  gameSlug={play.gameSlug ?? undefined}
                  shape={play.coverShape}
                  size="playShelf"
                />
                {isCurrent ? <PickedMark /> : null}
                {play.lead?.imageUrl ? (
                  /* The partner as the one small portrait, in a corner mark's white ring. */
                  <span
                    aria-hidden
                    className="bubble absolute -right-3 -bottom-3 size-11.5 rounded-full"
                  >
                    <PokemonAvatar
                      imageUrl={play.lead.imageUrl}
                      name=""
                      typeSlug={leadType}
                    />
                  </span>
                ) : null}
              </span>
            </Link>
          </li>
        );
      })}
      <li className="shrink-0">
        <NewPlayTrigger
          aria-label="Start a new Play"
          title="Start a new Play"
          className={coverLinkClassName}
        >
          <span className="empty-slot text-ink-2 group-hover/shelf-item:bg-hover group-hover/shelf-item:text-ink grid h-22.5 w-17 place-items-center rounded-sm transition-colors sm:h-31 sm:w-23">
            <AppIcon icon={appIcons.actions.create} size="xl" />
          </span>
        </NewPlayTrigger>
      </li>
    </Carousel>
  </nav>
);
