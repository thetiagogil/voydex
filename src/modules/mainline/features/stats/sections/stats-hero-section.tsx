import {
  getTrainerTitle,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import {
  formatCountWord,
  formatMonthYear,
} from "@/modules/mainline/features/stats/utils/stats-format";
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
  onOpenPokemon: (
    entry: TrainerPokemonEntry,
    family: TrainerPokemonEntry[],
  ) => void;
  stats: StatsModel;
};

const toTypeSlug = (slug: string | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/* One figure in the row under the title: big number, plain label. */
const Tile = ({
  icon,
  label,
  note,
  value,
}: {
  icon?: AppIconComponent;
  label: string;
  note?: string;
  value: string;
}) => (
  <div className="flex min-w-0 flex-col gap-1 rounded-xl bg-white/60 px-4 py-3.5 sm:px-5">
    <dd className="font-display flex items-center gap-2 text-[30px] leading-none font-semibold tabular-nums sm:text-[36px]">
      {value}
      {icon ? <AppIcon icon={icon} size="md" className="text-ink-2" /> : null}
    </dd>
    <dt className="text-ink-2 text-14 font-bold">
      {label}
      {note ? (
        <span className="text-ink-3 text-13 block font-semibold">{note}</span>
      ) : null}
    </dt>
  </div>
);

/*
 * Beside the title: the Pokémon in the most Plays, its art opening its own
 * sheet, with a caption saying so.
 */
const FavouritePokemon = ({ onOpenPokemon, stats }: StatsHeroSectionProps) => {
  const { highlight } = stats;

  if (highlight.kind !== "favourite-pokemon") {
    return null;
  }

  const { entry, family } = highlight;
  const playCount = entry.playIds.length;

  return (
    <button
      type="button"
      onClick={() => onOpenPokemon(entry, family)}
      style={getPokemonTypeCssVariables(toTypeSlug(entry.types[0]?.slug))}
      className="group/favourite focus-visible:outline-focus flex shrink-0 items-center gap-4 rounded-2xl text-left outline-none focus-visible:outline-3 focus-visible:outline-solid lg:flex-col lg:gap-2.5 lg:text-center"
    >
      <span className="sticker grid size-24 shrink-0 place-items-center rounded-2xl transition-transform group-hover/favourite:-translate-y-[3px] lg:size-36">
        {entry.imageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={entry.imageUrl}
            alt=""
            className="size-20 object-contain lg:size-32"
          />
        ) : null}
      </span>
      <span className="flex min-w-0 flex-col gap-0.5">
        <span className="text-ink-3 text-13 font-extrabold">Most picked</span>
        <span className="font-display text-20 leading-tight font-semibold">
          {entry.name}
        </span>
        <span className="text-ink-2 text-14 font-semibold">
          In {formatCountWord(playCount)} of your Plays
        </span>
      </span>
    </button>
  );
};

/*
 * Statistics' band: who you are as a trainer at a glance (a playful title
 * read from your Plays, and why), your journey as four figures, and the
 * Pokémon you pick most beside them.
 */
export const StatsHeroSection = ({
  onOpenPokemon,
  stats,
}: StatsHeroSectionProps) => {
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const trainer = getTrainerTitle(stats);
  const titleType = toTypeSlug(trainer.typeSlug ?? undefined);

  return (
    <PageBand className="pt-6 sm:pt-9">
      <div className="flex flex-col gap-6 lg:flex-row lg:items-center lg:gap-10">
        <div className="flex min-w-0 flex-1 flex-col gap-5">
          <div className="flex flex-col gap-1">
            {firstPlay ? (
              <p className="text-ink-2 text-14 font-extrabold">
                Trainer since {firstPlay}
              </p>
            ) : null}
            <h1
              style={
                titleType ? getPokemonTypeCssVariables(titleType) : undefined
              }
              className={cn(
                "text-28 leading-tight tracking-[-0.02em] sm:text-[36px]",
                titleType ? "type-ink" : null,
              )}
            >
              {trainer.title}
            </h1>
            <p className="text-ink-2 text-15 font-semibold">{trainer.reason}</p>
          </div>
          <dl className="grid grid-cols-2 gap-2.5 sm:grid-cols-4 sm:gap-3">
            <Tile
              label={hours === 1 ? "hour" : "hours"}
              value={String(hours)}
            />
            <Tile
              label={stats.playCount === 1 ? "Play" : "Plays"}
              note={`${stats.completedCount} completed`}
              value={String(stats.playCount)}
            />
            <Tile label="Pokémon met" value={String(stats.speciesCount)} />
            <Tile
              icon={appIcons.product.shiny}
              label={stats.shinyCount === 1 ? "shiny" : "shinies"}
              value={String(stats.shinyCount)}
            />
          </dl>
        </div>
        <FavouritePokemon onOpenPokemon={onOpenPokemon} stats={stats} />
      </div>
    </PageBand>
  );
};
