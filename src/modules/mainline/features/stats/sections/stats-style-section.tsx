"use client";

import { useState, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import {
  type StatsFriend,
  type StatsModel,
  type StatsMostPicked,
  type StatsTypeTally,
} from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatCountWord,
  formatMonthYear,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
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
const typesShownFirst = 12;

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

/* A short fact under the most picked Pokémon, with its icon. */
const PickedFact = ({
  children,
  icon,
}: {
  children: ReactNode;
  icon: AppIconComponent;
}) => (
  <li className="text-ink-2 text-14 flex items-center gap-2.5 font-semibold">
    <span className="text-ink-2 bg-surface-2 grid size-8 shrink-0 place-items-center rounded-full">
      <AppIcon icon={icon} size="sm" />
    </span>
    <span className="min-w-0">{children}</span>
  </li>
);

/*
 * The Pokémon in the most Plays: its art, name and types (opening its own
 * sheet), then a few facts only it can tell.
 */
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
  const gameCount = entry.gameNames.length;
  const onTeamNow = new Set(
    entry.members
      .filter((member) => member.isCurrent)
      .map((member) => member.play.id),
  ).size;
  const highestLevel = Math.max(
    0,
    ...entry.members.map((member) => member.level ?? 0),
  );
  const firstJoined = formatMonthYear(entry.firstUsedAt?.slice(0, 10) ?? null);

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
        className="group/picked focus-visible:outline-focus flex items-center gap-4 rounded-xl text-left outline-none focus-visible:outline-3 focus-visible:outline-solid"
      >
        <span className="sticker grid size-22 shrink-0 place-items-center rounded-2xl transition-transform group-hover/picked:-translate-y-[3px]">
          {entry.imageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={entry.imageUrl}
              alt=""
              className="size-19 object-contain"
            />
          ) : null}
        </span>
        <span className="flex min-w-0 flex-col gap-1.5">
          <span className="font-display text-24 truncate leading-tight font-semibold">
            {entry.name}
          </span>
          <PokemonTypeList
            types={entry.types}
            badgeDisplay="icon-label"
            badgeSize="sm"
            className="flex flex-wrap gap-1.5"
          />
        </span>
      </button>
      <ul className="flex flex-col gap-2.5">
        <PickedFact icon={appIcons.product.game}>
          In {formatCountWord(playCount)} Plays
          {gameCount > 1 ? ` across ${formatCountWord(gameCount)} games` : ""}
        </PickedFact>
        {onTeamNow ? (
          <PickedFact icon={appIcons.product.team}>
            On{" "}
            {onTeamNow === 1 ? "a team" : `${formatCountWord(onTeamNow)} teams`}{" "}
            right now
          </PickedFact>
        ) : null}
        {highestLevel ? (
          <PickedFact icon={appIcons.product.evolved}>
            Reached Lv. {highestLevel}
          </PickedFact>
        ) : null}
        {firstJoined ? (
          <PickedFact icon={appIcons.product.date}>
            First joined you in {firstJoined}
          </PickedFact>
        ) : null}
      </ul>
    </Card>
  );
};

/*
 * Your team style, three cards side by side and one height on wide screens
 * (Old friends moves under the other two on tablets): the Pokémon you pick
 * most; the types you pick as v3's tile grid (the twelve you lean on, every
 * type in a dialog); and up to six families back for more than one run, each
 * opening its family's sheet.
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
  const most = Math.max(1, used[0]?.count ?? 1);
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
              <ol className="grid flex-1 grid-cols-4 gap-2">
                {ranked.slice(0, typesShownFirst).map((type) => (
                  <TypeTile
                    key={type.slug}
                    className="justify-center py-2"
                    most={most}
                    type={type}
                  />
                ))}
              </ol>
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
            <ul className="grid grid-cols-2 gap-2.5 min-[480px]:grid-cols-3">
              {stats.friends.slice(0, 6).map((friend) => (
                <li key={friend.speciesSlug} className="flex min-w-0">
                  <PokemonSticker
                    variant="mini"
                    className="w-full"
                    label={`${friend.name}, in ${friend.playCount} Plays. Open`}
                    onClick={() => onOpenFriend(friend)}
                    imageUrl={friend.imageUrl}
                    name={friend.entry.name}
                    slotLabel={friend.family.length > 1 ? "Family" : undefined}
                    subtitle={`${friend.playCount} Plays`}
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
          <ol className="grid min-h-0 flex-1 grid-cols-3 gap-2 overflow-y-auto overscroll-contain px-6 py-5 min-[480px]:grid-cols-6">
            {ranked.map((type) => (
              <TypeTile key={type.slug} most={most} type={type} />
            ))}
          </ol>
        </DialogContent>
      </Dialog>
    </section>
  );
};
