import type { ReactNode } from "react";

import type {
  StatsFriend,
  StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatCountWord,
  formatMonthYear,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";

type StatsHeroSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  stats: StatsModel;
};

const BigFigure = ({ label, value }: { label: string; value: string }) => (
  <div className="flex min-w-0 flex-col-reverse gap-1 rounded-xl bg-white/60 px-4 py-3.5 sm:px-5 sm:py-4">
    <dt className="text-ink-2 text-14 font-bold">{label}</dt>
    <dd className="font-display text-[34px] leading-none font-semibold tabular-nums sm:text-[44px]">
      {value}
    </dd>
  </div>
);

const SmallFact = ({
  children,
  icon,
}: {
  children: ReactNode;
  icon: AppIconComponent;
}) => (
  <li className="text-ink-2 text-14 inline-flex items-center gap-1.5 rounded-full bg-white/50 px-3 py-1.5 font-bold">
    <AppIcon icon={icon} size="sm" />
    {children}
  </li>
);

const highlightCardClassName =
  "bg-surface shadow-card flex w-full items-center gap-4 rounded-2xl p-4 text-left sm:gap-5 sm:p-5";

/* The highlight beside the figures: one thing that stands out, shown. */
const Highlight = ({ onOpenFriend, stats }: StatsHeroSectionProps) => {
  const { highlight } = stats;

  if (highlight.kind === "old-friend") {
    const { friend } = highlight;
    const type = friend.types[0]?.slug;

    return (
      <button
        type="button"
        onClick={() => onOpenFriend(friend)}
        className={`${highlightCardClassName} hover:bg-hover focus-visible:outline-focus outline-none focus-visible:outline-3 focus-visible:outline-solid`}
      >
        <span
          aria-hidden
          style={getPokemonTypeCssVariables(
            type && isPokemonTypeSlug(type) ? type : null,
          )}
          className="sticker grid size-24 shrink-0 place-items-center rounded-xl sm:size-28"
        >
          {friend.imageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={friend.imageUrl}
              alt=""
              className="size-20 object-contain sm:size-24"
            />
          ) : null}
        </span>
        <span className="flex min-w-0 flex-col gap-1">
          <span className="text-ink-3 text-13 font-extrabold">
            Your old friend
          </span>
          <span className="font-display text-24 leading-tight font-semibold">
            {friend.name}
          </span>
          <span className="text-ink-2 text-14 font-semibold">
            With you in {formatCountWord(friend.playCount)} Plays
          </span>
          <PokemonTypeList
            types={friend.types}
            badgeDisplay="icon-label"
            badgeSize="sm"
            className="mt-1 flex flex-wrap gap-1.5"
          />
        </span>
      </button>
    );
  }

  if (highlight.kind === "favourite-type") {
    const slug = isPokemonTypeSlug(highlight.type.slug)
      ? highlight.type.slug
      : null;

    return (
      <div className={highlightCardClassName}>
        {slug ? (
          <PokemonTypeMark
            type={slug}
            className="size-20 shrink-0"
            iconClassName="size-10"
          />
        ) : null}
        <div className="flex min-w-0 flex-col gap-1">
          <span className="text-ink-3 text-13 font-extrabold">
            Your favourite type
          </span>
          <span className="font-display text-24 leading-tight font-semibold">
            {highlight.type.name}
          </span>
          <span className="text-ink-2 text-14 font-semibold">
            {highlight.type.count} on your teams
          </span>
        </div>
      </div>
    );
  }

  if (highlight.kind === "most-time") {
    return (
      <div className={highlightCardClassName}>
        <div className="flex min-w-0 flex-col gap-1">
          <span className="text-ink-3 text-13 font-extrabold">
            Most of your time
          </span>
          <span className="font-display text-24 leading-tight font-semibold">
            {highlight.label}
          </span>
        </div>
      </div>
    );
  }

  return null;
};

/*
 * Statistics' band (v3 `.st-hero`): your journey as three big figures, a few
 * small facts under them, and beside them the one thing that stands out,
 * shown rather than told; your old friend opens its sheet.
 */
export const StatsHeroSection = ({
  onOpenFriend,
  stats,
}: StatsHeroSectionProps) => {
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const hasHighlight = stats.highlight.kind !== "none";

  return (
    <PageBand className="flex flex-col gap-5 pt-6 sm:pt-9">
      <h1 className="text-28 leading-tight tracking-[-0.02em] sm:text-[34px]">
        Your journey so far
      </h1>
      <div
        className={
          hasHighlight
            ? "grid items-center gap-5 lg:grid-cols-[minmax(0,1.4fr)_minmax(0,1fr)]"
            : "grid gap-5"
        }
      >
        <div className="flex flex-col gap-3">
          <dl className="grid grid-cols-3 gap-2.5 sm:gap-3">
            <BigFigure
              label={hours === 1 ? "hour" : "hours"}
              value={String(hours)}
            />
            <BigFigure
              label={stats.playCount === 1 ? "Play" : "Plays"}
              value={String(stats.playCount)}
            />
            <BigFigure label="Pokémon met" value={String(stats.speciesCount)} />
          </dl>
          <ul
            aria-label="More about your Plays"
            className="flex flex-wrap gap-2"
          >
            <SmallFact icon={appIcons.product.completion}>
              {stats.completedCount} completed
            </SmallFact>
            <SmallFact icon={appIcons.product.shiny}>
              {stats.shinyCount} {stats.shinyCount === 1 ? "shiny" : "shinies"}
            </SmallFact>
            {firstPlay ? (
              <SmallFact icon={appIcons.product.date}>
                First Play {firstPlay}
              </SmallFact>
            ) : null}
          </ul>
        </div>
        {hasHighlight ? (
          <Highlight onOpenFriend={onOpenFriend} stats={stats} />
        ) : null}
      </div>
    </PageBand>
  );
};
