import {
  getTrainerTitle,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
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

/* One figure under the title: big number, plain label, its icon. */
const Tile = ({
  icon,
  label,
  value,
}: {
  icon: AppIconComponent;
  label: string;
  value: string;
}) => (
  <div className="flex min-w-0 items-center justify-between gap-3 rounded-xl bg-white/60 py-3.5 pr-3.5 pl-4 sm:pl-5">
    <div className="flex min-w-0 flex-col gap-1">
      <dd className="font-display text-[30px] leading-none font-semibold tabular-nums sm:text-[36px]">
        {value}
      </dd>
      <dt className="text-ink-2 text-14 font-bold">{label}</dt>
    </div>
    <span
      aria-hidden
      className="text-ink-2 grid size-12 shrink-0 place-items-center rounded-full bg-white sm:size-14"
    >
      <AppIcon icon={icon} size="xl" />
    </span>
  </div>
);

/*
 * Statistics' band: who you are as a trainer at a glance (a playful title
 * read from your Plays, and why), then your journey as four figures, each
 * with its icon.
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
      <dl className="grid grid-cols-2 gap-2.5 sm:gap-3 xl:grid-cols-4">
        <Tile
          icon={appIcons.product.playtime}
          label={hours === 1 ? "hour played" : "hours played"}
          value={String(hours)}
        />
        <Tile
          icon={appIcons.product.game}
          label={stats.playCount === 1 ? "Play" : "Plays"}
          value={String(stats.playCount)}
        />
        <Tile
          icon={appIcons.product.caught}
          label="Pokémon met"
          value={String(stats.speciesCount)}
        />
        <Tile
          icon={appIcons.product.shiny}
          label={stats.shinyCount === 1 ? "shiny" : "shinies"}
          value={String(stats.shinyCount)}
        />
      </dl>
    </PageBand>
  );
};
