import type { CSSProperties } from "react";

import { appRoutes } from "@/config/routes";
import {
  getClearFavouriteType,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { joinStatsList } from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { SectionHead, SectionMoreLink } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type StatsStyleSectionProps = {
  stats: StatsModel;
};

const TypesSentence = ({ stats }: StatsStyleSectionProps) => {
  const used = stats.types
    .filter((type) => type.count > 0)
    .toSorted((left, right) => right.count - left.count);
  const unused = stats.types.filter((type) => type.count === 0);
  const favourite = getClearFavouriteType(stats.types);

  if (!used.length) {
    return <>Add Pokémon to your teams and the types you pick show up here.</>;
  }

  const lead = favourite
    ? `Your clear favourite is ${favourite.name}`
    : `You reach for ${joinStatsList(
        used.slice(0, 3).map((type) => type.name),
        "and",
      )} most`;
  const tail =
    unused.length === 1
      ? `, and ${unused[0].name} is the one type you haven't used yet`
      : unused.length
        ? `, and you haven't used ${joinStatsList(
            unused.map((type) => type.name),
            "or",
          )} yet`
        : "";

  return (
    <>
      {lead}
      {tail}.
    </>
  );
};

/*
 * Your team style: how often each type joins your teams (the tile's tint
 * deepens with the count), and the Pokémon back for more than one run.
 */
export const StatsStyleSection = ({ stats }: StatsStyleSectionProps) => {
  const most = Math.max(1, ...stats.types.map((type) => type.count));
  const usedCount = stats.types.filter((type) => type.count > 0).length;

  return (
    <section aria-labelledby="stats-style" className="flex flex-col gap-4">
      <SectionHead title="Your team style" titleId="stats-style" />
      <div className="grid gap-4 lg:grid-cols-[minmax(0,1.35fr)_minmax(0,1fr)]">
        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Types you pick"
            titleClassName="text-20"
            aside={`${usedCount} of ${stats.types.length} used`}
          />
          <ul className="grid grid-cols-2 gap-2 min-[480px]:grid-cols-3">
            {stats.types.map((type) => {
              const slug = isPokemonTypeSlug(type.slug) ? type.slug : null;
              const strength = Math.round(12 + (type.count / most) * 58);

              return (
                <li
                  key={type.slug}
                  style={
                    {
                      ...getPokemonTypeCssVariables(slug),
                      "--k": `${strength}%`,
                    } as CSSProperties
                  }
                  className={cn(
                    "flex min-w-0 items-center gap-2 rounded-md px-2.5 py-2",
                    type.count
                      ? "bg-[color-mix(in_oklab,var(--t)_var(--k),var(--surface))]"
                      : "bg-surface-2 opacity-60",
                  )}
                >
                  {slug ? (
                    <PokemonTypeMark
                      type={slug}
                      className="size-6 shrink-0"
                      iconClassName="size-3.5"
                    />
                  ) : null}
                  <b className="text-ink text-13 min-w-0 flex-1 truncate font-extrabold">
                    {type.name}
                  </b>
                  <span className="text-ink text-13 font-extrabold tabular-nums">
                    {type.count || "None"}
                    <span className="sr-only">
                      {type.count ? " on your teams" : " on your teams yet"}
                    </span>
                  </span>
                </li>
              );
            })}
          </ul>
          <p className="text-ink-2 text-14 font-semibold">
            <TypesSentence stats={stats} />
          </p>
        </Card>

        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Old friends"
            titleClassName="text-20"
            aside="Back for more than one run"
          />
          {stats.friends.length ? (
            <ul className="grid grid-cols-2 gap-3 min-[480px]:grid-cols-3">
              {stats.friends.slice(0, 6).map((friend) => (
                <li key={friend.speciesSlug} className="min-w-0">
                  <PokemonSticker
                    variant="compact"
                    className="w-full"
                    href={appRoutes.mainlineCollectionSpecies(
                      friend.speciesSlug,
                    )}
                    imageUrl={friend.imageUrl}
                    name={friend.name}
                    subtitle={`${friend.playCount} Plays`}
                    types={friend.types}
                  />
                </li>
              ))}
            </ul>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Use a Pokémon in a second Play and it shows up here.
            </p>
          )}
          <SectionMoreLink
            href={appRoutes.mainlineCollection}
            label="See your whole Collection"
            className="self-start"
          />
        </Card>
      </div>
    </section>
  );
};
