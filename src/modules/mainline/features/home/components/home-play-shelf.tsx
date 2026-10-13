import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type HomePlayShelfProps = {
  currentPlayId: string;
  plays: HomePlay[];
};

const coverLinkClassName =
  "group/shelf-item focus-visible:outline-focus relative flex shrink-0 snap-center flex-col items-center rounded-md outline-none focus-visible:outline-3 focus-visible:outline-offset-4 focus-visible:outline-solid";

/*
 * v3 `.hb-shelf`: your Plays as covers, each with its lead Pokémon as a small
 * sticker; the current one stands up with a check. Picking one switches the
 * meadow, the line under it and the latest moments. The dashed tile starts
 * a new Play.
 */
export const HomePlayShelf = ({ currentPlayId, plays }: HomePlayShelfProps) => (
  <nav aria-label="Your Plays" className="relative z-6">
    <ul className="no-scrollbar flex snap-x items-end justify-center-safe gap-5 overflow-x-auto px-6 pt-9 pb-4 sm:gap-6.5 sm:pt-10">
      {plays.map((play) => {
        const isCurrent = play.id === currentPlayId;
        const leadType =
          play.lead?.typeSlug && isPokemonTypeSlug(play.lead.typeSlug)
            ? play.lead.typeSlug
            : null;

        return (
          <li key={play.id} className="shrink-0">
            <Link
              href={appRoutes.mainlineHomePlay(play.id)}
              scroll={false}
              aria-current={isCurrent ? "true" : undefined}
              aria-label={play.label}
              title={play.label}
              className={coverLinkClassName}
            >
              <span
                className={cn(
                  "relative grid transition-transform duration-250 ease-[cubic-bezier(.3,1.5,.5,1)]",
                  isCurrent
                    ? "-translate-y-4"
                    : "motion-safe:group-hover/shelf-item:-translate-y-2.5 motion-safe:group-hover/shelf-item:-rotate-2",
                )}
              >
                <GameCover
                  alt=""
                  coverImageUrl={play.coverImageUrl}
                  gameName={play.gameName}
                  gameSlug={play.gameSlug ?? undefined}
                  size="shelf"
                />
                {isCurrent ? (
                  <span
                    aria-hidden
                    className="bg-action absolute top-2 right-2 grid size-7 place-items-center rounded-full text-white ring-3 ring-white"
                  >
                    <AppIcon
                      icon={appIcons.status.active}
                      size="md"
                      strokeWidth={3}
                    />
                  </span>
                ) : null}
                {play.lead?.imageUrl ? (
                  <span
                    aria-hidden
                    style={getPokemonTypeCssVariables(leadType)}
                    className="sticker absolute -right-3 -bottom-3 grid size-11.5 place-items-center rounded-full [border-width:3px] [--sticker-border:#fff]"
                  >
                    {/* eslint-disable-next-line @next/next/no-img-element */}
                    <img
                      src={play.lead.imageUrl}
                      alt=""
                      className="size-10.5 max-w-none object-contain"
                    />
                  </span>
                ) : null}
              </span>
            </Link>
          </li>
        );
      })}
      <li className="shrink-0">
        <Link
          href={appRoutes.mainlinePlayNew()}
          aria-label="Start a new Play"
          title="Start a new Play"
          className={coverLinkClassName}
        >
          <span className="empty-slot text-ink-2 group-hover/shelf-item:bg-hover group-hover/shelf-item:text-ink grid h-22.5 w-17 place-items-center rounded-sm transition-colors sm:h-31 sm:w-23">
            <AppIcon icon={appIcons.actions.create} size="xl" />
          </span>
        </Link>
      </li>
    </ul>
  </nav>
);
