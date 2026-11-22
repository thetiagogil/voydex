import { Fragment, type CSSProperties } from "react";

import { StatsCoverRow } from "@/modules/mainline/features/stats/components/stats-cover-row";
import {
  getTrainerTitleReason,
  type StatsCover,
  type StatsModel,
  type StatsMostPicked,
  type TrainerTitle,
} from "@/modules/mainline/shared/data/stats-model";
import { formatMonthYear } from "@/modules/mainline/shared/utils/stats-format";
import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { appIcons } from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";
import { useFirstVisit } from "@/shared/hooks/use-first-visit";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { StatTile } from "@/shared/components/stat-tile";

type StatsHeroSectionProps = {
  onOpenPokemon: (pokemon: StatsMostPicked) => void;
  stats: StatsModel;
};

const toTypeSlug = (slug: string): PokemonTypeSlug | null =>
  isPokemonTypeSlug(slug) ? slug : null;

/* Fades up once per visit, after the title; `--i` staggers a row. */
const fadeUpClassName =
  "group-data-first-visit/title:animate-fade-up motion-reduce:animate-none";

/* The four figures under the title rise in one after another. */
const figureClassName = cn(
  "[animation-delay:calc(900ms+var(--i)*60ms)]",
  fadeUpClassName,
);

/*
 * The picture beside the title: covers for a Region Hopper (one per region
 * played) and a Pokémon Trainer (one per game); for a Specialist, up to three
 * of their top Pokémon of the type, each opening its sheet (the type's mark
 * is the band's watermark).
 */
const TitlePicture = ({
  onOpenPokemon,
  regionCovers,
  playCovers,
  title,
}: {
  onOpenPokemon: (pokemon: StatsMostPicked) => void;
  playCovers: StatsCover[];
  regionCovers: StatsCover[];
  title: TrainerTitle;
}) => {
  if (title.kind !== "specialist") {
    const covers = title.kind === "hopper" ? regionCovers : playCovers;

    return covers.length ? (
      <div className="w-full min-w-0 md:w-75 lg:w-90 xl:w-120">
        <StatsCoverRow covers={covers} />
      </div>
    ) : null;
  }

  const typeSlug = toTypeSlug(title.typeSlug);

  return typeSlug ? (
    <div className="relative flex h-40 w-full items-end justify-center sm:h-48 md:w-75 lg:w-85">
      {title.pokemon.length ? (
        /*
         * A little podium: the top Pokémon in the middle, larger and in
         * front, the next two smaller behind it on either side. The list
         * keeps rank order for screen readers; `order` places them.
         */
        <ul className="relative flex items-end justify-center">
          {title.pokemon.map((pokemon, index) => {
            const { entry } = pokemon;
            const playCount = entry.playIds.length;

            return (
              <li
                key={entry.speciesId}
                style={{ "--i": index } as CSSProperties}
                className={cn(
                  "group-data-first-visit/title:animate-meadow-pop [animation-delay:calc(450ms+var(--i)*90ms)] motion-reduce:animate-none",
                  index === 0 ? "relative z-10 order-2" : "mb-4 sm:mb-5",
                  index === 1 && "order-1 -mr-3",
                  index === 2 && "order-3 -ml-3",
                )}
              >
                <button
                  type="button"
                  aria-label={`${entry.name}, in ${playCount} ${playCount === 1 ? "Play" : "Plays"}: open its details`}
                  onClick={() => onOpenPokemon(pokemon)}
                  className="group/art focus-ring block rounded-full"
                >
                  <FallbackImage
                    src={entry.imageUrl}
                    name={entry.name}
                    fallback="badge"
                    style={getPokemonTypeCssVariables(
                      toTypeSlug(entry.types[0]?.slug ?? ""),
                    )}
                    className={cn(
                      "ease-hop transition-transform duration-250 group-hover/art:-translate-y-2 group-hover/art:scale-[1.04]",
                      index === 0 ? "size-26 sm:size-32" : "size-20 sm:size-24",
                    )}
                  />
                </button>
              </li>
            );
          })}
        </ul>
      ) : null}
    </div>
  ) : null;
};

/*
 * Statistics' band: who you are as a trainer, said like a reveal ("You are
 * a Region Hopper") with what earned it and a picture of it, then your
 * journey as four figures. The words rise in once per visit.
 */
export const StatsHeroSection = ({
  onOpenPokemon,
  stats,
}: StatsHeroSectionProps) => {
  const firstVisit = useFirstVisit("stats-title");
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const { title } = stats;
  const regionCovers = stats.regions.flatMap((region) =>
    region.playLabels.length && region.gameName
      ? [
          {
            coverImageUrl: region.coverImageUrl,
            gameName: region.gameName,
            gameSlug: region.gameSlug,
          },
        ]
      : [],
  );
  /* The most recently played on top of the row. */
  const playCovers = stats.playCovers.slice(0, 10).toReversed();
  const playsLabel = stats.playCount === 1 ? "Play" : "Plays";
  /* A Specialist's type is the band's watermark, in place of the Poké Ball. */
  const specialistType =
    title.kind === "specialist" ? toTypeSlug(title.typeSlug) : null;

  return (
    <PageBand
      className="pt-6 sm:pt-9"
      mark={
        specialistType ? (
          <PokemonTypeIcon type={specialistType} className="size-full" />
        ) : undefined
      }
    >
      <div
        data-first-visit={firstVisit}
        className="group/title flex flex-col gap-4 sm:gap-6"
      >
        <div className="grid items-center gap-4 md:grid-cols-[minmax(0,1fr)_auto] md:gap-8">
          <div className="flex min-w-0 flex-col gap-1.5">
            <p
              className={cn(
                "text-calm-ink text-13 sm:text-15 font-black tracking-widest uppercase",
                fadeUpClassName,
              )}
            >
              You are {/^[aeiou]/i.test(title.title) ? "an" : "a"}
            </p>
            {/*
             * The title is ink: the art beside it carries the colour, and the
             * Poké Mart blue marks "You are a" and the figures' icons.
             */}
            <h1 className="title-display text-ink text-balance">
              {title.title.split(" ").map((word, index) => (
                <Fragment key={`${word}-${index}`}>
                  {index ? " " : null}
                  <span
                    style={{ "--i": index } as CSSProperties}
                    className="group-data-first-visit/title:animate-title-rise inline-block [animation-delay:calc(180ms+var(--i)*140ms)] motion-reduce:animate-none"
                  >
                    {word}
                  </span>
                </Fragment>
              ))}
            </h1>
            <p
              className={cn(
                "text-ink-2 sm:text-17 text-15 lg:text-20 mt-1.5 max-w-[46ch] leading-snug font-bold [animation-delay:620ms]",
                fadeUpClassName,
              )}
            >
              {getTrainerTitleReason(title).map(({ strong, text }, index) =>
                strong ? (
                  <b key={index} className="text-ink font-black">
                    {text}
                  </b>
                ) : (
                  text
                ),
              )}
            </p>
          </div>
          <div className="flex min-w-0 justify-center max-md:order-first">
            <TitlePicture
              onOpenPokemon={onOpenPokemon}
              playCovers={playCovers}
              regionCovers={regionCovers}
              title={title}
            />
          </div>
        </div>
        <div className="grid grid-cols-2 gap-2 sm:gap-3 xl:grid-cols-4">
          <StatTile
            ground="band"
            size="lg"
            icon={appIcons.product.playtime}
            style={{ "--i": 0 } as CSSProperties}
            className={figureClassName}
            label={hours === 1 ? "hour played" : "hours played"}
            value={String(hours)}
          />
          <StatTile
            ground="band"
            size="lg"
            icon={appIcons.product.game}
            style={{ "--i": 1 } as CSSProperties}
            className={figureClassName}
            label={firstPlay ? `${playsLabel} since ${firstPlay}` : playsLabel}
            value={String(stats.playCount)}
          />
          <StatTile
            ground="band"
            size="lg"
            icon={appIcons.product.caught}
            style={{ "--i": 2 } as CSSProperties}
            className={figureClassName}
            label="Pokémon met"
            value={String(stats.speciesCount)}
          />
          <StatTile
            ground="band"
            size="lg"
            icon={appIcons.product.shiny}
            style={{ "--i": 3 } as CSSProperties}
            className={figureClassName}
            label={stats.shinyCount === 1 ? "shiny" : "shinies"}
            value={String(stats.shinyCount)}
          />
        </div>
      </div>
    </PageBand>
  );
};
