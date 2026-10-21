"use client";

import { CornerBubble } from "@/shared/components/corner-bubble";
import { TextLink } from "@/shared/components/text-link";
import { useState, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import {
  type StatsFriend,
  type StatsModel,
  type StatsMostPicked,
  type StatsTypeTally,
} from "@/modules/mainline/features/stats/data/stats-model";
import { formatMonthYear } from "@/modules/mainline/features/stats/utils/stats-format";
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
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { SectionHead, SectionMoreLink } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { IconDisc } from "@/shared/components/icon-disc";

type StatsStyleSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  onOpenPokemon: (mostPicked: StatsMostPicked) => void;
  stats: StatsModel;
};

/* The grid shows the types you lean on; See all opens every one. */
const typesShownFirst = 12;

/* Old friends shows once it can fill a row. */
const oldFriendsShownFrom = 3;

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
        type.count ? null : "empty-slot",
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
    <IconDisc size="sm">
      <AppIcon icon={icon} size="sm" />
    </IconDisc>
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
        style={getPokemonTypeCssVariables(
          slug && isPokemonTypeSlug(slug) ? slug : null,
        )}
        className="group/picked focus-ring flex flex-col items-center gap-2.5 rounded-xl text-center"
      >
        <span className="sticker grid size-28 shrink-0 place-items-center rounded-xl transition-transform group-hover/picked:-translate-y-0.75">
          <FallbackImage
            src={entry.imageUrl}
            name={entry.name}
            className="size-24 object-contain"
          />
        </span>
        <span className="font-display text-24 descender-room max-w-full truncate leading-tight font-semibold">
          {entry.name}
        </span>
        <PokemonTypeList
          types={entry.types}
          badgeDisplay="icon-label"
          badgeSize="sm"
          className="flex flex-wrap justify-center gap-1.5"
        />
        <span className="sr-only">, in {playCount} of your Plays. Open</span>
      </button>
      <ul className="flex flex-col gap-2.5">
        <PickedFact icon={appIcons.product.game}>
          In <b className="text-ink">{playCount} Plays</b>
          {gameCount > 1 ? (
            <>
              {" "}
              across <b className="text-ink">{gameCount} games</b>
            </>
          ) : null}
        </PickedFact>
        {onTeamNow ? (
          <PickedFact icon={appIcons.product.team}>
            On{" "}
            <b className="text-ink">
              {onTeamNow === 1 ? "a team" : `${onTeamNow} teams`}
            </b>{" "}
            right now
          </PickedFact>
        ) : null}
        {highestLevel ? (
          <PickedFact icon={appIcons.product.evolved}>
            Reached max <b className="text-ink">Lv. {highestLevel}</b>
          </PickedFact>
        ) : null}
        {firstJoined ? (
          <PickedFact icon={appIcons.product.date}>
            First joined in <b className="text-ink">{firstJoined}</b>
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
 * opening its family's sheet, shown once there are three of them.
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
  /* A lone friend or two reads as a gap, so the card waits for a full row. */
  const showFriends = stats.friends.length >= oldFriendsShownFrom;
  /*
   * With a card missing, Types you pick takes the room: six across on wide
   * screens, so every type shows and "See all" goes.
   */
  const typesTakeRoom = !stats.mostPicked || !showFriends;
  return (
    <section aria-labelledby="stats-style" className="flex flex-col gap-4">
      <SectionHead title="Your team style" titleId="stats-style" />
      <div
        className={cn(
          "grid gap-4",
          stats.mostPicked
            ? showFriends
              ? "md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.45fr)] xl:grid-cols-[minmax(0,0.75fr)_minmax(0,1.25fr)_minmax(0,1.3fr)]"
              : "md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.45fr)]"
            : showFriends && "xl:grid-cols-[minmax(0,1.45fr)_minmax(0,1.1fr)]",
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
              <ol
                className={cn(
                  "grid flex-1 grid-cols-4 gap-2",
                  typesTakeRoom && "xl:grid-cols-6",
                )}
              >
                {(typesTakeRoom
                  ? ranked
                  : ranked.slice(0, typesShownFirst)
                ).map((type, index) => (
                  <TypeTile
                    key={type.slug}
                    className={cn(
                      "justify-center py-2",
                      index >= typesShownFirst && "max-xl:hidden",
                    )}
                    most={most}
                    type={type}
                  />
                ))}
              </ol>
              {ranked.length > typesShownFirst ? (
                <TextLink
                  arrow="forward"
                  onClick={() => setIsAllTypesOpen(true)}
                  className={cn(
                    "-mt-1 self-start",
                    typesTakeRoom && "xl:hidden",
                  )}
                >
                  See all {ranked.length} types
                </TextLink>
              ) : null}
            </>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Add Pokémon to your teams and the types you pick show up here.
            </p>
          )}
        </Card>

        {showFriends ? (
          <Card className="gap-4 px-5 py-5 sm:px-6 md:col-span-full xl:col-span-1">
            <SectionHead
              headingLevel={3}
              title="Old friends"
              titleClassName="text-20"
              aside="Back for more than one run"
            />
            <ul className="grid flex-1 grid-cols-2 content-start gap-2.5 min-[480px]:grid-cols-3">
              {stats.friends.slice(0, 6).map((friend) => (
                <li
                  key={friend.speciesSlug}
                  className="relative flex min-w-0 transition-transform duration-150 hover:-translate-y-0.75"
                >
                  <PokemonSticker
                    variant="mini"
                    /* The card lifts instead, carrying the family tip. */
                    className="w-full justify-center hover:translate-y-0"
                    detail="Open"
                    onClick={() => onOpenFriend(friend)}
                    imageUrl={friend.imageUrl}
                    name={friend.entry.name}
                    subtitle={`${friend.playCount} Plays`}
                    types={friend.types}
                    showTypes={false}
                  />
                  {friend.family.length > 1 ? (
                    <CornerBubble corner="inside-top-left">
                      <ExplanatoryTip
                        triggerVariant="raised"
                        triggerLabel={`${friend.entry.name}'s family`}
                        contentClassName="w-60"
                        content={
                          <p>
                            <b>{friend.entry.name}&apos;s family.</b> You used{" "}
                            {friend.memberNames} across {friend.playCount}{" "}
                            Plays.
                          </p>
                        }
                      >
                        <AppIcon icon={appIcons.product.family} size="sm" />
                      </ExplanatoryTip>
                    </CornerBubble>
                  ) : null}
                </li>
              ))}
            </ul>
            <SectionMoreLink
              href={appRoutes.mainlineCollection}
              label="See your whole Collection"
              className="self-start"
            />
          </Card>
        ) : null}
      </div>

      <ResponsiveDetailSheet
        open={isAllTypesOpen}
        size="wide"
        label="Types you pick"
        onOpenChange={setIsAllTypesOpen}
        head={
          <div>
            <SheetTitle className="text-24">Types you pick</SheetTitle>
            <p className="text-ink-2 text-14 mt-1 font-semibold">
              {used.length} of {stats.types.length} used, most picked first
            </p>
          </div>
        }
      >
        <ol className="grid grid-cols-3 gap-2 min-[480px]:grid-cols-6">
          {ranked.map((type) => (
            <TypeTile key={type.slug} most={most} type={type} />
          ))}
        </ol>
      </ResponsiveDetailSheet>
    </section>
  );
};
