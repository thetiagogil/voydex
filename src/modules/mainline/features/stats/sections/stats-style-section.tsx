"use client";

import { useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  getClearFavouriteType,
  type StatsFriend,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead, SectionMoreLink } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";

/* The chart starts with the types you lean on; the rest open below. */
const typesShownFirst = 8;

type StatsStyleSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  stats: StatsModel;
};

/*
 * Your team style: the types you pick as a ranked chart (one bar per type
 * you've used, longest first, the unused ones on one quiet line), and the
 * Pokémon back for more than one run, each opening its sheet here.
 */
export const StatsStyleSection = ({
  onOpenFriend,
  stats,
}: StatsStyleSectionProps) => {
  const used = stats.types
    .filter((type) => type.count > 0)
    .toSorted((left, right) => right.count - left.count);
  const unused = stats.types.filter((type) => type.count === 0);
  const most = Math.max(1, used[0]?.count ?? 1);
  const [showAllTypes, setShowAllTypes] = useState(false);
  const shownTypes = showAllTypes ? used : used.slice(0, typesShownFirst);
  const moreTypes = used.length - typesShownFirst;
  const favourite = getClearFavouriteType(stats.types);

  return (
    <section aria-labelledby="stats-style" className="flex flex-col gap-4">
      <SectionHead title="Your team style" titleId="stats-style" />
      <div className="grid gap-4 lg:grid-cols-[minmax(0,1.35fr)_minmax(0,1fr)]">
        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Types you pick"
            titleClassName="text-20"
            aside={
              favourite
                ? `${favourite.name} leads`
                : `${used.length} of ${stats.types.length} used`
            }
          />
          {used.length ? (
            <ol className="grid gap-2">
              {shownTypes.map((type) => {
                const slug = isPokemonTypeSlug(type.slug) ? type.slug : null;

                return (
                  <li
                    key={type.slug}
                    style={getPokemonTypeCssVariables(slug)}
                    className="grid grid-cols-[6.5rem_minmax(0,1fr)_2rem] items-center gap-3"
                  >
                    <span className="flex min-w-0 items-center gap-2">
                      {slug ? (
                        <PokemonTypeMark
                          type={slug}
                          className="size-6 shrink-0"
                          iconClassName="size-3.5"
                        />
                      ) : null}
                      <b className="text-ink text-13 truncate font-extrabold">
                        {type.name}
                      </b>
                    </span>
                    <span
                      aria-hidden
                      className="bg-track h-3 overflow-hidden rounded-full"
                    >
                      <span
                        className="block h-full rounded-full bg-(--t)"
                        style={{
                          width: `${Math.max(6, (type.count / most) * 100)}%`,
                        }}
                      />
                    </span>
                    <span className="text-ink text-14 text-right font-extrabold tabular-nums">
                      {type.count}
                      <span className="sr-only"> on your teams</span>
                    </span>
                  </li>
                );
              })}
            </ol>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Add Pokémon to your teams and the types you pick show up here.
            </p>
          )}
          {moreTypes > 0 ? (
            <button
              type="button"
              aria-expanded={showAllTypes}
              onClick={() => setShowAllTypes((current) => !current)}
              className="text-link text-14 focus-visible:outline-focus inline-flex min-h-10 items-center gap-1.5 self-start rounded-xs font-extrabold outline-none focus-visible:outline-3 focus-visible:outline-solid"
            >
              <AppIcon
                icon={appIcons.actions.expand}
                size="sm"
                className={showAllTypes ? "rotate-180" : undefined}
              />
              {showAllTypes
                ? "Show fewer"
                : `${moreTypes} more ${moreTypes === 1 ? "type" : "types"}`}
            </button>
          ) : null}
          {used.length && unused.length ? (
            <div className="flex flex-wrap items-center gap-2">
              <span className="text-ink-3 text-13 font-bold">Not yet</span>
              <ul className="flex flex-wrap gap-1">
                {unused.map((type) =>
                  isPokemonTypeSlug(type.slug) ? (
                    <li key={type.slug} title={type.name}>
                      <PokemonTypeMark
                        type={type.slug}
                        className="size-6 opacity-45 grayscale"
                        iconClassName="size-3.5"
                      />
                      <span className="sr-only">{type.name}</span>
                    </li>
                  ) : null,
                )}
              </ul>
            </div>
          ) : null}
        </Card>

        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Old friends"
            titleClassName="text-20"
            aside="Back for more than one run"
          />
          {stats.friends.length ? (
            <ul className="grid grid-cols-2 gap-3 min-[480px]:grid-cols-3 lg:grid-cols-2">
              {stats.friends.slice(0, 6).map((friend) => (
                <li key={friend.speciesSlug} className="flex min-w-0">
                  <PokemonSticker
                    variant="compact"
                    className="w-full"
                    label={`${friend.name}, in ${friend.playCount} Plays. Open`}
                    onClick={() => onOpenFriend(friend)}
                    imageUrl={friend.imageUrl}
                    imageUrls={friend.imageUrls}
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
