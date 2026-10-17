import { Fragment, type CSSProperties } from "react";

import { StatsCoverRow } from "@/modules/mainline/features/stats/components/stats-cover-row";
import {
  getTrainerTitleReason,
  type StatsCover,
  type StatsModel,
  type StatsMostPicked,
  type TrainerTitle,
} from "@/modules/mainline/features/stats/data/stats-model";
import { formatMonthYear } from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";
import { useFirstVisit } from "@/shared/hooks/use-first-visit";
import { cn } from "@/shared/utils/cn";

type StatsHeroSectionProps = {
  onOpenPokemon: (pokemon: StatsMostPicked) => void;
  stats: StatsModel;
};

const toTypeSlug = (slug: string): PokemonTypeSlug | null =>
  isPokemonTypeSlug(slug) ? slug : null;

/* Fades up once per visit, after the title; `--i` staggers a row. */
const fadeUpClassName =
  "group-data-reveal/title:animate-fade-up motion-reduce:animate-none";

/*
 * One figure under the title: big number, plain label, its icon. The label
 * comes first for the definition list and sits under the number on screen.
 */
const Tile = ({
  icon,
  index,
  label,
  value,
}: {
  icon: AppIconComponent;
  index: number;
  label: string;
  value: string;
}) => (
  <div
    style={{ "--i": index } as CSSProperties}
    className={cn(
      "grid min-w-0 grid-cols-[minmax(0,1fr)_auto] items-center gap-x-3 gap-y-1 rounded-xl bg-white/60 py-3.5 pr-3.5 pl-4 [animation-delay:calc(900ms+var(--i)*60ms)] sm:pl-5",
      fadeUpClassName,
    )}
  >
    <dt className="text-ink-2 text-14 col-start-1 row-start-2 self-start font-bold">
      {label}
    </dt>
    <dd className="font-display col-start-1 row-start-1 self-end text-[30px] leading-none font-semibold tabular-nums sm:text-[36px]">
      {value}
    </dd>
    <dd
      aria-hidden
      className="text-ink-2 col-start-2 row-span-2 row-start-1 grid size-12 shrink-0 place-items-center rounded-full bg-white sm:size-14"
    >
      <AppIcon icon={icon} size="xl" />
    </dd>
  </div>
);

/*
 * The picture beside the title: covers for a Region Hopper (one per region
 * played) and a Pokémon Trainer (one per game); for a Specialist, always the
 * type's mark drawn in the band's own neutrals, with up to three of their
 * top Pokémon of it standing in front, each opening its sheet.
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
      <span
        aria-hidden
        className={cn(
          "group-data-reveal/title:animate-fade-up absolute left-1/2 grid size-36 -translate-x-1/2 place-items-center rounded-full bg-white/25 [animation-delay:200ms] motion-reduce:animate-none sm:size-44",
          title.pokemon.length ? "top-0" : "top-1/2 -translate-y-1/2",
        )}
      >
        <PokemonTypeIcon
          type={typeSlug}
          className="size-16 opacity-[0.07] sm:size-20"
        />
      </span>
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
                  "group-data-reveal/title:animate-meadow-pop [animation-delay:calc(450ms+var(--i)*90ms)] motion-reduce:animate-none",
                  index === 0 ? "relative z-10 order-2" : "mb-4 sm:mb-5",
                  index === 1 && "order-1 -mr-3",
                  index === 2 && "order-3 -ml-3",
                )}
              >
                <button
                  type="button"
                  aria-label={`${entry.name}, in ${playCount} ${playCount === 1 ? "Play" : "Plays"}: open its details`}
                  onClick={() => onOpenPokemon(pokemon)}
                  className="group/art focus-visible:outline-focus block rounded-full outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
                >
                  {entry.imageUrl ? (
                    // eslint-disable-next-line @next/next/no-img-element
                    <img
                      src={entry.imageUrl}
                      alt=""
                      className={cn(
                        "ease-hop transition-transform duration-250 group-hover/art:-translate-y-2 group-hover/art:scale-[1.04]",
                        index === 0
                          ? "size-26 sm:size-32"
                          : "size-20 sm:size-24",
                      )}
                    />
                  ) : (
                    <span className="empty-slot block size-16 rounded-full" />
                  )}
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
  const firstVisit = useFirstVisit("voydex:stats-title-seen");
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

  return (
    <PageBand className="pt-6 sm:pt-9">
      <div
        data-reveal={firstVisit ? "" : undefined}
        className="group/title flex flex-col gap-5 sm:gap-6"
      >
        <div className="grid items-center gap-4 md:grid-cols-[minmax(0,1fr)_auto] md:gap-8">
          <div className="flex min-w-0 flex-col gap-1.5">
            <p
              className={cn(
                "text-ink-2 text-13 sm:text-15 font-black tracking-[0.08em] uppercase",
                fadeUpClassName,
              )}
            >
              You are {/^[aeiou]/i.test(title.title) ? "an" : "a"}
            </p>
            {/* The title is ink: the art beside it carries the colour. */}
            <h1 className="md:text-60 text-ink text-[46px] leading-[0.98] tracking-tight text-balance lg:text-[76px]">
              {title.title.split(" ").map((word, index) => (
                <Fragment key={`${word}-${index}`}>
                  {index ? " " : null}
                  <span
                    style={{ "--i": index } as CSSProperties}
                    className="group-data-reveal/title:animate-title-rise inline-block [animation-delay:calc(180ms+var(--i)*140ms)] motion-reduce:animate-none"
                  >
                    {word}
                  </span>
                </Fragment>
              ))}
            </h1>
            <p
              className={cn(
                "text-ink-2 sm:text-17 text-16 lg:text-20 mt-1.5 max-w-[46ch] leading-snug font-bold [animation-delay:620ms]",
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
        <dl className="grid grid-cols-2 gap-2.5 sm:gap-3 xl:grid-cols-4">
          <Tile
            icon={appIcons.product.playtime}
            index={0}
            label={hours === 1 ? "hour played" : "hours played"}
            value={String(hours)}
          />
          <Tile
            icon={appIcons.product.game}
            index={1}
            label={firstPlay ? `${playsLabel} since ${firstPlay}` : playsLabel}
            value={String(stats.playCount)}
          />
          <Tile
            icon={appIcons.product.caught}
            index={2}
            label="Pokémon met"
            value={String(stats.speciesCount)}
          />
          <Tile
            icon={appIcons.product.shiny}
            index={3}
            label={stats.shinyCount === 1 ? "shiny" : "shinies"}
            value={String(stats.shinyCount)}
          />
        </dl>
      </div>
    </PageBand>
  );
};
