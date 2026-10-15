import type { ReactNode } from "react";

import {
  getTrainerTitle,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { formatMonthYear } from "@/modules/mainline/features/stats/utils/stats-format";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
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
import { cn } from "@/shared/utils/cn";

type StatsHeroSectionProps = {
  stats: StatsModel;
};

const toTypeSlug = (slug: string | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/* One figure under the title: big number, plain label, its own small picture. */
const Tile = ({
  art,
  label,
  note,
  value,
}: {
  art: ReactNode;
  label: string;
  note?: string | null;
  value: string;
}) => (
  <div className="flex min-w-0 items-center justify-between gap-3 rounded-xl bg-white/60 py-3.5 pr-3 pl-4 sm:pl-5">
    <div className="flex min-w-0 flex-col gap-1">
      <dd className="font-display text-[30px] leading-none font-semibold tabular-nums sm:text-[36px]">
        {value}
      </dd>
      <dt className="text-ink-2 text-14 min-w-0 font-bold">
        {label}
        {note ? (
          <span className="text-ink-3 text-13 block truncate font-semibold">
            {note}
          </span>
        ) : null}
      </dt>
    </div>
    <div aria-hidden className="flex shrink-0 items-center">
      {art}
    </div>
  </div>
);

/* Up to three Pokémon, overlapping a little, as a tile's picture. */
const TileSprites = ({ urls }: { urls: string[] }) => (
  <>
    {urls.map((url, index) => (
      // eslint-disable-next-line @next/next/no-img-element
      <img
        key={url}
        src={url}
        alt=""
        className={cn(
          "size-12 object-contain sm:size-14",
          index > 0 && "-ml-5",
        )}
      />
    ))}
  </>
);

/* A tile's picture when it has no art: its icon on a white disc. */
const TileIcon = ({ icon }: { icon: AppIconComponent }) => (
  <span className="text-ink-2 grid size-12 place-items-center rounded-full bg-white sm:size-14">
    <AppIcon icon={icon} size="md" />
  </span>
);

const coverTilts = ["-rotate-6", "rotate-0", "rotate-6"];

/*
 * Statistics' band: who you are as a trainer at a glance (a playful title
 * read from your Plays, and why), then your journey as four figures, each
 * with a small picture of what it counts.
 */
export const StatsHeroSection = ({ stats }: StatsHeroSectionProps) => {
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const trainer = getTrainerTitle(stats);
  const titleType = toTypeSlug(trainer.typeSlug ?? undefined);

  return (
    <PageBand className="flex flex-col gap-5 pt-6 sm:pt-9">
      <div className="flex flex-col gap-1">
        {firstPlay ? (
          <p className="text-ink-2 text-14 font-extrabold">
            Trainer since {firstPlay}
          </p>
        ) : null}
        <h1
          style={titleType ? getPokemonTypeCssVariables(titleType) : undefined}
          className={cn(
            "text-28 leading-tight tracking-[-0.02em] sm:text-[36px]",
            titleType ? "type-ink" : null,
          )}
        >
          {trainer.title}
        </h1>
        <p className="text-ink-2 text-15 font-semibold">{trainer.reason}</p>
      </div>
      <dl className="grid gap-2.5 sm:grid-cols-2 sm:gap-3 xl:grid-cols-4">
        <Tile
          art={<TileIcon icon={appIcons.product.playtime} />}
          label={hours === 1 ? "hour played" : "hours played"}
          note={
            stats.longestPlayName ? `Most in ${stats.longestPlayName}` : null
          }
          value={String(hours)}
        />
        <Tile
          art={
            stats.recentCovers.length ? (
              <span className="flex items-center pr-1">
                {stats.recentCovers.map((cover, index) => (
                  <span
                    key={cover.gameSlug ?? cover.gameName}
                    className={cn(
                      "drop-shadow-sm",
                      coverTilts[index],
                      index > 0 && "-ml-3",
                    )}
                  >
                    <GameCover
                      alt=""
                      coverImageUrl={cover.coverImageUrl}
                      gameName={cover.gameName}
                      gameSlug={cover.gameSlug ?? undefined}
                      size="dock"
                    />
                  </span>
                ))}
              </span>
            ) : (
              <TileIcon icon={appIcons.views.mainline.plays} />
            )
          }
          label={stats.playCount === 1 ? "Play" : "Plays"}
          note={`${stats.completedCount} completed`}
          value={String(stats.playCount)}
        />
        <Tile
          art={
            stats.pokemonArt.length ? (
              <TileSprites urls={stats.pokemonArt} />
            ) : (
              <TileIcon icon={appIcons.views.mainline.collection} />
            )
          }
          label="Pokémon met"
          value={String(stats.speciesCount)}
        />
        <Tile
          art={
            stats.shinyArt.length ? (
              <TileSprites urls={stats.shinyArt} />
            ) : (
              <TileIcon icon={appIcons.product.shiny} />
            )
          }
          label={stats.shinyCount === 1 ? "shiny" : "shinies"}
          value={String(stats.shinyCount)}
        />
      </dl>
    </PageBand>
  );
};
