import type { ReactNode } from "react";

import type {
  StatsFriend,
  StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatCountWord,
  formatMonthYear,
  joinStatsList,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { PageBand } from "@/shared/components/page-band";

type StatsHeroSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  stats: StatsModel;
};

const toTypeSlug = (slug: string | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/* A fact under the headline: its figure over what it counts. */
const Stamp = ({ label, value }: { label: string; value: string }) => (
  <div className="flex min-w-0 flex-col-reverse gap-1 rounded-xl bg-white/60 px-4 py-3 sm:px-5">
    <dt className="text-ink-2 text-14 font-bold">{label}</dt>
    <dd className="font-display text-24 leading-none font-semibold tabular-nums sm:text-[28px]">
      {value}
    </dd>
  </div>
);

/* The words in the headline that carry a colour: the friend's or the type's. */
const Coloured = ({
  children,
  type,
}: {
  children: ReactNode;
  type: PokemonTypeSlug | null;
}) => (
  <span style={getPokemonTypeCssVariables(type)} className="type-ink">
    {children}
  </span>
);

/*
 * How the headline ends: the old friend back for the most runs, else a
 * clear favourite type, else the Play with the most time.
 */
const HeadlineTail = ({ stats }: { stats: StatsModel }) => {
  const { highlight } = stats;

  if (highlight.kind === "old-friend") {
    const { friend } = highlight;

    return (
      <>
        , and{" "}
        <Coloured type={toTypeSlug(friend.types[0]?.slug)}>
          {friend.name}
        </Coloured>{" "}
        {friend.family.length > 1 ? "have" : "has"} joined you in{" "}
        {formatCountWord(friend.playCount)} Plays
      </>
    );
  }

  if (highlight.kind === "favourite-type") {
    return (
      <>
        , and you keep coming back to{" "}
        <Coloured type={toTypeSlug(highlight.type.slug)}>
          {highlight.type.name}
        </Coloured>{" "}
        types
      </>
    );
  }

  if (highlight.kind === "most-time") {
    return <>, and most of your time went to {highlight.label}</>;
  }

  return null;
};

/* Beside the headline: the friend's art (opening its family), or the type. */
const HeadlineArt = ({ onOpenFriend, stats }: StatsHeroSectionProps) => {
  const { highlight } = stats;

  if (highlight.kind === "old-friend") {
    const { friend } = highlight;

    return (
      <button
        type="button"
        onClick={() => onOpenFriend(friend)}
        aria-label={`${friend.name}: see their Plays`}
        style={getPokemonTypeCssVariables(toTypeSlug(friend.types[0]?.slug))}
        className="sticker focus-visible:outline-focus grid size-28 shrink-0 place-items-center rounded-2xl outline-none hover:-translate-y-[3px] focus-visible:outline-3 focus-visible:outline-solid sm:size-36"
      >
        {friend.imageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={friend.imageUrl}
            alt=""
            className="size-24 object-contain sm:size-32"
          />
        ) : null}
      </button>
    );
  }

  if (highlight.kind === "favourite-type") {
    const slug = toTypeSlug(highlight.type.slug);

    return slug ? (
      <PokemonTypeMark
        type={slug}
        className="size-24 shrink-0 sm:size-28"
        iconClassName="size-12 sm:size-14"
      />
    ) : null;
  }

  return null;
};

/*
 * Statistics' band (v3 `.st-hero`): your journey said in one sentence, which
 * is the page's title and ends on the one thing that stands out, a few facts
 * under it as stamps, and the friend or type it names beside it.
 */
export const StatsHeroSection = ({
  onOpenFriend,
  stats,
}: StatsHeroSectionProps) => {
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const counts = [
    hours ? `${hours} ${hours === 1 ? "hour" : "hours"}` : null,
    `${formatCountWord(stats.playCount)} ${stats.playCount === 1 ? "Play" : "Plays"}`,
    `${stats.speciesCount} Pokémon`,
  ].filter((count): count is string => Boolean(count));

  return (
    <PageBand className="pt-6 sm:pt-9">
      <div className="flex items-center gap-6 sm:gap-8">
        <div className="flex min-w-0 flex-1 flex-col gap-4">
          <div className="flex flex-col gap-1.5">
            <p className="text-ink-2 text-14 font-extrabold">
              Your journey so far
            </p>
            <h1 className="text-24 leading-tight tracking-[-0.01em] sm:text-[32px]">
              {joinStatsList(counts, "and")}
              <HeadlineTail stats={stats} />.
            </h1>
          </div>
          <dl className="grid max-w-xl grid-cols-3 gap-2.5 sm:gap-3">
            <Stamp
              label={
                stats.completedCount === 1
                  ? "Play completed"
                  : "Plays completed"
              }
              value={String(stats.completedCount)}
            />
            <Stamp
              label={stats.shinyCount === 1 ? "shiny" : "shinies"}
              value={String(stats.shinyCount)}
            />
            {firstPlay ? <Stamp label="first Play" value={firstPlay} /> : null}
          </dl>
        </div>
        <div className="hidden sm:block">
          <HeadlineArt onOpenFriend={onOpenFriend} stats={stats} />
        </div>
      </div>
    </PageBand>
  );
};
