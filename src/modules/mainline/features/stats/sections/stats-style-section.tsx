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
} from "@/modules/mainline/shared/data/stats-model";
import { formatMonthYear } from "@/modules/mainline/shared/utils/stats-format";
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
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { SectionMoreLink } from "@/shared/components/section-head";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { IconDisc } from "@/shared/components/icon-disc";
import { IconTip } from "@/shared/components/icon-tip";
import { TipNamed } from "@/shared/components/tip-parts";

type StatsStyleSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  onOpenPokemon: (mostPicked: StatsMostPicked) => void;
  stats: StatsModel;
};

/* The grid shows the types you lean on; See all opens every one. */
const typesShownFirst = 12;

/* Old friends has six places; the ones still open show as empty slots. */
const oldFriendSlots = 6;
/* With fewer than a row of them, a line says how one gets there. */
const oldFriendsRow = 3;

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
    <IconTip
      label={`${type.name}: ${type.count ? `${type.count} on your teams` : "not used yet"}`}
      trigger={
        <li
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
              "copy-label w-full truncate",
              type.count ? "text-ink" : "text-ink-3",
            )}
          >
            {type.name}
          </b>
          <span
            className={cn(
              "copy-strong tabular-nums",
              type.count ? "text-ink" : "text-ink-3",
            )}
          >
            {type.count || "–"}
            <span className="sr-only"> on your teams</span>
          </span>
        </li>
      }
    />
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
  <li className="text-ink-2 copy-note flex items-center gap-2">
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
    <DetailSectionCard
      title="Most picked"
      contentClassName="flex flex-col gap-4"
    >
      <button
        type="button"
        onClick={() => onOpenPokemon(mostPicked)}
        style={getPokemonTypeCssVariables(
          slug && isPokemonTypeSlug(slug) ? slug : null,
        )}
        className="group/picked focus-ring flex flex-col items-center gap-2 rounded-lg text-center"
      >
        <span className="sticker grid size-28 shrink-0 place-items-center rounded-lg transition-transform group-hover/picked:-translate-y-0.75">
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
      <ul className="flex flex-col gap-2">
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
    </DetailSectionCard>
  );
};

/*
 * Most picked before any Pokémon has been in two Plays: its place kept
 * open, and how one gets there. The section never leaves the page.
 */
const MostPickedEmpty = () => (
  <DetailSectionCard
    title="Most picked"
    contentClassName="flex flex-col items-center justify-center gap-3 text-center"
  >
    <span
      aria-hidden
      className="empty-slot text-ink-3 grid size-28 shrink-0 place-items-center rounded-lg"
    >
      <AppIcon icon={appIcons.product.caught} size="xl" />
    </span>
    <p className="text-ink copy-strong">No favourite yet</p>
    <p className="text-ink-2 copy-note max-w-xs">
      Use the same Pokémon in two Plays and it stands here, with what only it
      can tell.
    </p>
  </DetailSectionCard>
);

/*
 * Your team style, three sections side by side and one height on wide screens
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
  const friends = stats.friends.slice(0, oldFriendSlots);
  const openFriendSlots = oldFriendSlots - friends.length;

  return (
    <>
      {/* All three sections, always: one with nothing yet keeps its place and says what fills it. */}
      <div className="grid gap-4 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.45fr)] xl:grid-cols-[minmax(0,0.75fr)_minmax(0,1.25fr)_minmax(0,1.3fr)]">
        {stats.mostPicked ? (
          <MostPickedCard
            mostPicked={stats.mostPicked}
            onOpenPokemon={onOpenPokemon}
          />
        ) : (
          <MostPickedEmpty />
        )}

        <DetailSectionCard
          title="Types you pick"
          aside={`${used.length} of ${stats.types.length} used`}
          contentClassName="flex flex-col gap-4"
        >
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
          {used.length ? null : (
            <p className="text-ink-2 copy-note">
              Add Pokémon to your teams and the types you pick fill in.
            </p>
          )}
          {ranked.length > typesShownFirst ? (
            <TextLink
              arrow="forward"
              onClick={() => setIsAllTypesOpen(true)}
              className="-mt-1 self-start"
            >
              See all {ranked.length} types
            </TextLink>
          ) : null}
        </DetailSectionCard>

        <DetailSectionCard
          title="Old friends"
          aside="Back for more than one run"
          className="md:col-span-full xl:col-span-1"
          contentClassName="flex flex-col gap-4"
        >
          <ul className="grid flex-1 grid-cols-2 content-start gap-2 min-[480px]:grid-cols-3">
            {friends.map((friend) => (
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
                        <TipNamed name={`${friend.entry.name}'s family`}>
                          You used {friend.memberNames} across{" "}
                          {friend.playCount} Plays.
                        </TipNamed>
                      }
                    >
                      <AppIcon icon={appIcons.product.family} size="sm" />
                    </ExplanatoryTip>
                  </CornerBubble>
                ) : null}
              </li>
            ))}
            {/* The places still open: a friend comes back, a slot fills. */}
            {Array.from({ length: openFriendSlots }, (_, index) => (
              <li
                key={`open-${index}`}
                aria-hidden
                className="empty-slot min-h-32 rounded-lg"
              />
            ))}
          </ul>
          {friends.length < oldFriendsRow ? (
            <p className="text-ink-2 copy-note">
              Bring a Pokémon, or one of its family, back for another Play and
              it takes a place here.
            </p>
          ) : null}
          <SectionMoreLink
            href={appRoutes.mainlineCollection}
            label="See your whole Collection"
            className="self-start"
          />
        </DetailSectionCard>
      </div>

      <OverlaySheet
        open={isAllTypesOpen}
        size="xl"
        title="Types you pick"
        description={`${used.length} of ${stats.types.length} used, most picked first`}
        bodyClassName="grid content-start gap-6"
        onOpenChange={setIsAllTypesOpen}
      >
        <ol className="grid grid-cols-3 gap-2 min-[480px]:grid-cols-6">
          {ranked.map((type) => (
            <TypeTile key={type.slug} most={most} type={type} />
          ))}
        </ol>
      </OverlaySheet>
    </>
  );
};
