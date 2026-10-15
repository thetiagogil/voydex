"use client";

import { useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  getClearFavouriteType,
  type StatsFriend,
  type StatsModel,
  type StatsMostPicked,
  type StatsTypeTally,
} from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatCountWord,
  joinStatsList,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead, SectionMoreLink } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { cn } from "@/shared/utils/cn";

type StatsStyleSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  onOpenPokemon: (mostPicked: StatsMostPicked) => void;
  stats: StatsModel;
};

/* The grid shows the types you lean on; See all opens every one. */
const typesShownFirst = 10;

const typeTileGridClassName = "grid grid-cols-3 gap-2 min-[480px]:grid-cols-5";

/* One type as v3's `.tygrid` tile: tinted by how often you pick it. */
const TypeTile = ({
  className,
  most,
  type,
}: {
  className?: string;
  most: number;
  type: StatsTypeTally;
}) => {
  const slug = isPokemonTypeSlug(type.slug) ? type.slug : null;
  const share = Math.round(10 + (type.count / most) * 40);

  return (
    <li
      title={`${type.name}: ${type.count ? `${type.count} on your teams` : "not used yet"}`}
      style={{
        ...getPokemonTypeCssVariables(slug),
        ...(type.count
          ? {
              backgroundColor: `color-mix(in oklab, var(--t) ${share}%, var(--surface))`,
            }
          : null),
      }}
      className={cn(
        "flex min-w-0 flex-col items-center gap-1 rounded-lg px-1.5 py-2.5 text-center",
        type.count ? null : "border-dash border-[1.5px] border-dashed",
        className,
      )}
    >
      {slug ? (
        <PokemonTypeMark
          type={slug}
          className={cn(
            "size-6 shrink-0",
            type.count ? null : "opacity-45 grayscale",
          )}
          iconClassName="size-3.5"
        />
      ) : null}
      <b
        className={cn(
          "text-13 w-full truncate font-extrabold",
          type.count ? "text-ink" : "text-ink-3",
        )}
      >
        {type.name}
      </b>
      <span
        className={cn(
          "text-14 font-extrabold tabular-nums",
          type.count ? "text-ink" : "text-ink-3",
        )}
      >
        {type.count || "–"}
        <span className="sr-only"> on your teams</span>
      </span>
    </li>
  );
};

/* The Pokémon in the most Plays, opening its own sheet. */
const MostPickedCard = ({
  mostPicked,
  onOpenPokemon,
}: {
  mostPicked: StatsMostPicked;
  onOpenPokemon: (mostPicked: StatsMostPicked) => void;
}) => {
  const { entry } = mostPicked;
  const slug = entry.types[0]?.slug;
  const playCount = entry.playIds.length;

  return (
    <Card className="gap-4 px-5 py-5 sm:px-6">
      <SectionHead
        headingLevel={3}
        title="Most picked"
        titleClassName="text-20"
      />
      <button
        type="button"
        onClick={() => onOpenPokemon(mostPicked)}
        aria-label={`${entry.name}, in ${playCount} of your Plays. Open`}
        style={getPokemonTypeCssVariables(
          slug && isPokemonTypeSlug(slug) ? slug : null,
        )}
        className="group/picked focus-visible:outline-focus flex flex-1 items-center gap-4 rounded-xl text-left outline-none focus-visible:outline-3 focus-visible:outline-solid md:flex-col md:justify-center md:gap-3 md:text-center"
      >
        <span className="sticker grid size-24 shrink-0 place-items-center rounded-2xl transition-transform group-hover/picked:-translate-y-[3px] md:size-36">
          {entry.imageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={entry.imageUrl}
              alt=""
              className="size-20 object-contain md:size-32"
            />
          ) : null}
        </span>
        <span className="flex min-w-0 flex-col gap-1 md:items-center">
          <span className="font-display text-24 leading-tight font-semibold">
            {entry.name}
          </span>
          <span className="text-ink-2 text-14 font-semibold">
            In {formatCountWord(playCount)} of your Plays
          </span>
          <PokemonTypeList
            types={entry.types}
            badgeDisplay="icon-label"
            badgeSize="sm"
            className="mt-1 flex flex-wrap gap-1.5"
          />
        </span>
      </button>
    </Card>
  );
};

/*
 * Your team style, three cards side by side on wide screens (Old friends
 * moves under the other two on tablets): the Pokémon
 * you pick most; the types you pick as v3's tile grid (the ten you lean on,
 * every type in a dialog), with one line saying what stands out; and the
 * families back for more than one run, each opening its family's sheet.
 */
export const StatsStyleSection = ({
  onOpenFriend,
  onOpenPokemon,
  stats,
}: StatsStyleSectionProps) => {
  const [isAllTypesOpen, setIsAllTypesOpen] = useState(false);
  const ranked = stats.types.toSorted(
    (left, right) => right.count - left.count,
  );
  const used = ranked.filter((type) => type.count > 0);
  const unused = ranked.filter((type) => type.count === 0);
  const most = Math.max(1, used[0]?.count ?? 1);
  const favourite = getClearFavouriteType(stats.types);
  const leaning = favourite
    ? `Your clear favourite is ${favourite.name}`
    : `You reach for ${joinStatsList(
        used.slice(0, 3).map((type) => type.name),
        "and",
      )} most`;
  const missing = unused.length
    ? `, and you haven't used ${joinStatsList(
        unused.map((type) => type.name),
        "or",
      )} yet`
    : "";

  return (
    <section aria-labelledby="stats-style" className="flex flex-col gap-4">
      <SectionHead title="Your team style" titleId="stats-style" />
      <div
        className={cn(
          "grid gap-4",
          stats.mostPicked
            ? "md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.45fr)] xl:grid-cols-[minmax(0,0.75fr)_minmax(0,1.25fr)_minmax(0,1.3fr)]"
            : "xl:grid-cols-[minmax(0,1.45fr)_minmax(0,1.1fr)]",
        )}
      >
        {stats.mostPicked ? (
          <MostPickedCard
            mostPicked={stats.mostPicked}
            onOpenPokemon={onOpenPokemon}
          />
        ) : null}

        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Types you pick"
            titleClassName="text-20"
            aside={`${used.length} of ${stats.types.length} used`}
          />
          {used.length ? (
            <>
              <ol className={typeTileGridClassName}>
                {ranked.slice(0, typesShownFirst).map((type, index) => (
                  <TypeTile
                    key={type.slug}
                    /* Phones show nine, three full rows. */
                    className={
                      index === typesShownFirst - 1
                        ? "max-[479px]:hidden"
                        : undefined
                    }
                    most={most}
                    type={type}
                  />
                ))}
              </ol>
              <p className="text-ink-2 text-14 font-semibold">
                {leaning}
                {missing}.
              </p>
              {ranked.length > typesShownFirst ? (
                <button
                  type="button"
                  onClick={() => setIsAllTypesOpen(true)}
                  className="text-link text-14 focus-visible:outline-focus -mt-1 inline-flex min-h-10 items-center gap-1.5 self-start rounded-xs font-extrabold outline-none focus-visible:outline-3 focus-visible:outline-solid"
                >
                  See all {ranked.length} types
                  <AppIcon icon={appIcons.actions.next} size="sm" />
                </button>
              ) : null}
            </>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Add Pokémon to your teams and the types you pick show up here.
            </p>
          )}
        </Card>

        <Card className="gap-4 px-5 py-5 sm:px-6 md:col-span-full xl:col-span-1">
          <SectionHead
            headingLevel={3}
            title="Old friends"
            titleClassName="text-20"
            aside="Back for more than one run"
          />
          {stats.friends.length ? (
            <ul className="grid grid-cols-2 gap-3 min-[480px]:grid-cols-3 md:grid-cols-4 xl:my-auto xl:grid-cols-3">
              {stats.friends.slice(0, 6).map((friend) => (
                <li
                  key={friend.speciesSlug}
                  className="flex min-w-0 md:max-xl:nth-[n+5]:hidden xl:nth-[n+4]:hidden"
                >
                  <PokemonSticker
                    variant="compact"
                    className="w-full"
                    label={`${friend.name}, in ${friend.playCount} Plays. Open`}
                    onClick={() => onOpenFriend(friend)}
                    imageUrl={friend.imageUrl}
                    name={friend.entry.name}
                    subtitle={
                      friend.family.length > 1
                        ? `Family · ${friend.playCount} Plays`
                        : `${friend.playCount} Plays`
                    }
                    types={friend.types}
                    showTypes={false}
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

      <Dialog open={isAllTypesOpen} onOpenChange={setIsAllTypesOpen}>
        <DialogContent className="flex max-h-[85dvh] flex-col gap-0 overflow-hidden p-0 sm:max-w-2xl">
          <DialogHeader className="border-line shrink-0 border-b px-6 pt-6 pr-16 pb-4">
            <DialogTitle>Types you pick</DialogTitle>
            <DialogDescription>
              {used.length} of {stats.types.length} used, most picked first
            </DialogDescription>
          </DialogHeader>
          <ol
            className={cn(
              typeTileGridClassName,
              "min-h-0 flex-1 overflow-y-auto overscroll-contain px-6 py-5 min-[480px]:grid-cols-6",
            )}
          >
            {ranked.map((type) => (
              <TypeTile key={type.slug} most={most} type={type} />
            ))}
          </ol>
        </DialogContent>
      </Dialog>
    </section>
  );
};
