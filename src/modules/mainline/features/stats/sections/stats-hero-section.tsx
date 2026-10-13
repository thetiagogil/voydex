import type { ReactNode } from "react";

import type { StatsModel } from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatCountWord,
  formatMonthYear,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Card } from "@/shared/components/ui/card";

type StatsHeroSectionProps = {
  stats: StatsModel;
};

/* A word in the sentence that carries its type's colour as a small underline. */
const TypeWord = ({
  children,
  slug,
}: {
  children: ReactNode;
  slug: string;
}) => (
  <span
    style={getPokemonTypeCssVariables(isPokemonTypeSlug(slug) ? slug : null)}
    className="underline decoration-(--t) decoration-[0.12em] underline-offset-[0.18em]"
  >
    {children}
  </span>
);

const HeadlineTail = ({ stats }: StatsHeroSectionProps) => {
  const tail = stats.headlineTail;

  switch (tail.kind) {
    case "favourite-type":
      return (
        <>
          , and you keep coming back to{" "}
          <TypeWord slug={tail.type.slug}>{tail.type.name}</TypeWord> types
        </>
      );
    case "old-friend":
      return (
        <>
          , and{" "}
          <TypeWord slug={tail.friend.types[0]?.slug ?? ""}>
            {tail.friend.name}
          </TypeWord>{" "}
          has joined you in {formatCountWord(tail.friend.playCount)} different
          Plays
        </>
      );
    case "most-time":
      return <>, and most of your time went to {tail.label}</>;
    case "none":
      return null;
  }
};

/*
 * v3 `.st-hero`: your journey in one sentence, then three figures the
 * sentence doesn't already state. Only claims a favourite type when it
 * clearly leads.
 */
export const StatsHeroSection = ({ stats }: StatsHeroSectionProps) => {
  const hours = Math.round(stats.minutes / 60);
  const firstPlay = formatMonthYear(stats.firstStartedOn);
  const figures = [
    {
      label: stats.completedCount === 1 ? "Play completed" : "Plays completed",
      value: String(stats.completedCount),
    },
    {
      label: stats.shinyCount === 1 ? "shiny" : "shinies",
      value: String(stats.shinyCount),
    },
    ...(firstPlay ? [{ label: "first Play", value: firstPlay }] : []),
  ];

  return (
    <Card className="gap-6 px-5 py-6 sm:px-8 sm:py-8">
      <div>
        <p className="text-ink-2 text-14 font-extrabold">Your journey so far</p>
        <h1 className="text-28 mt-2 max-w-4xl leading-[1.15] tracking-[-0.02em] sm:text-[36px]">
          {hours} {hours === 1 ? "hour" : "hours"},{" "}
          {formatCountWord(stats.playCount)}{" "}
          {stats.playCount === 1 ? "Play" : "Plays"} and {stats.speciesCount}{" "}
          Pokémon
          <HeadlineTail stats={stats} />.
        </h1>
      </div>
      <dl className="grid grid-cols-3 gap-3 sm:max-w-xl sm:gap-4">
        {figures.map((figure) => (
          <div
            key={figure.label}
            className="bg-surface-2 flex flex-col-reverse gap-1 rounded-lg px-3 py-3 sm:px-4"
          >
            <dt className="text-ink-2 text-13 font-bold">{figure.label}</dt>
            <dd className="font-display text-24 leading-none font-semibold tabular-nums">
              {figure.value}
            </dd>
          </div>
        ))}
      </dl>
    </Card>
  );
};
