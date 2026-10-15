"use client";

import Link from "next/link";
import { useState, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonSheetHead } from "@/modules/mainline/shared/components/pokemon-sheet-head";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { StatusBadge } from "@/shared/components/status-badge";
import { buttonVariants } from "@/shared/components/ui/button";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { useIsMobile } from "@/shared/hooks/use-mobile";

type TrainerSpeciesSheetProps = {
  /* Outside the Collection: where "See in Collection" leads. */
  collectionHref?: string;
  /* The species to show; null closes the sheet. */
  entry: TrainerPokemonEntry | null;
  /* The rest of its evolution family that has joined you. */
  family?: TrainerPokemonEntry[];
  /*
   * Shows the whole family instead of one species, named this way ("Kirlia,
   * Gardevoir and Gallade"): every Play any of them joined, each row saying
   * which one it was.
   */
  familyTitle?: string;
  onOpenChange: (open: boolean) => void;
  /* Shows another species (one of its family) in the sheet. */
  onOpenSpecies?: (entry: TrainerPokemonEntry) => void;
};

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

const SheetSection = ({
  aside,
  children,
  title,
}: {
  aside?: string;
  children: ReactNode;
  title: string;
}) => (
  <section className="flex flex-col gap-3">
    <div className="flex flex-wrap items-baseline justify-between gap-x-3">
      <h3 className="text-20">{title}</h3>
      {aside ? (
        <span className="text-ink-3 text-13 font-semibold">{aside}</span>
      ) : null}
    </div>
    {children}
  </section>
);

/*
 * One species in your Collection (v3 `colSheet`): its art, every Pokémon of
 * it on your Plays' rosters (each row its Play's cover and name, opening it
 * on that Play's roster), and the rest of its family that has joined you.
 * The Collection and Statistics both open it in place.
 * It stays mounted so it slides in and out, showing the last species while
 * it closes.
 */
export const TrainerSpeciesSheet = ({
  collectionHref,
  entry: openEntry,
  family = [],
  familyTitle,
  onOpenChange,
  onOpenSpecies,
}: TrainerSpeciesSheetProps) => {
  const isMobile = useIsMobile();
  const [shownEntry, setShownEntry] = useState(openEntry);

  if (openEntry && openEntry !== shownEntry) {
    setShownEntry(openEntry);
  }

  const entry = openEntry ?? shownEntry;

  if (!entry) {
    return null;
  }

  const primaryType = toTypeSlug(entry.types[0]?.slug);
  const showsFamily = Boolean(familyTitle) && family.length > 0;
  const species = showsFamily
    ? [entry, ...family].toSorted(
        (left, right) =>
          (left.nationalNumber ?? Infinity) -
          (right.nationalNumber ?? Infinity),
      )
    : [entry];
  const members = species
    .flatMap((each) => each.members)
    .toSorted((left, right) => left.play.name.localeCompare(right.play.name));
  const playCount = new Set(species.flatMap((each) => each.playIds)).size;
  const countLine = `${playCount} ${playCount === 1 ? "Play" : "Plays"}${
    members.length ? ` · ${members.length} on a roster` : ""
  }`;
  const relatives = showsFamily ? species : family;

  return (
    <ResponsiveDetailSheet
      open={Boolean(openEntry)}
      onOpenChange={onOpenChange}
      label={showsFamily && familyTitle ? familyTitle : entry.name}
      headBleed
      head={
        <PokemonSheetHead
          imageUrl={entry.imageUrl}
          layout={isMobile ? "inset" : "flush"}
          type={primaryType}
          actions={
            <div className="flex flex-wrap gap-2">
              {collectionHref ? (
                <Link
                  href={collectionHref}
                  className={buttonVariants({ size: "sm", variant: "outline" })}
                >
                  <AppIcon
                    icon={appIcons.views.mainline.collection}
                    inline="start"
                  />
                  See in Collection
                </Link>
              ) : null}
              <Link
                href={appRoutes.codexPokemonSpecies(entry.speciesSlug)}
                className={buttonVariants({ size: "sm", variant: "outline" })}
              >
                <AppIcon icon={appIcons.modules.codex} inline="start" />
                Open in Codex
              </Link>
            </div>
          }
        >
          <div className="min-w-0 pr-12">
            <p className="text-ink-2 text-13 font-bold">
              {showsFamily
                ? `Old friend · ${species.length} species`
                : [
                    formatNationalNumber(entry.nationalNumber),
                    "In your Collection",
                  ]
                    .filter(Boolean)
                    .join(" · ")}
            </p>
            <SheetTitle className="text-24 mt-0.5">
              {showsFamily ? familyTitle : entry.name}
            </SheetTitle>
            <PokemonTypeList
              types={entry.types}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="mt-2 flex flex-wrap gap-1.5"
            />
          </div>
        </PokemonSheetHead>
      }
    >
      <SheetSection title="Its Plays with you" aside={countLine}>
        {members.length ? (
          <ul className="grid" style={getPokemonTypeCssVariables(primaryType)}>
            {members.map((member) => (
              <li
                key={member.id}
                className="game-scope"
                style={getGameColourStyle(member.play.gameSlug)}
              >
                <Link
                  href={appRoutes.mainlinePlayTeamPokemon(
                    member.play.id,
                    member.id,
                  )}
                  aria-label={`Open ${member.isShiny ? "shiny " : ""}${member.name} in ${member.play.name}`}
                  className="hover:bg-hover focus-visible:outline-focus -mx-2 grid min-h-16 grid-cols-[auto_minmax(0,1fr)_auto_auto] items-center gap-3 rounded-md px-2 py-2 outline-none focus-visible:outline-3 focus-visible:outline-solid"
                >
                  <GameCover
                    alt=""
                    coverImageUrl={
                      member.play.gameSlug
                        ? getGameCoverImageUrlBySlug(member.play.gameSlug)
                        : null
                    }
                    gameName={member.play.gameName}
                    gameSlug={member.play.gameSlug ?? undefined}
                    size="dock"
                  />
                  <span className="min-w-0">
                    <span className="text-ink text-15 block truncate font-extrabold">
                      {member.play.name}
                    </span>
                    <span className="text-ink-2 text-13 flex min-w-0 items-center gap-1.5 font-semibold">
                      {member.isShiny ? (
                        <span className="type-ink inline-flex shrink-0 items-center gap-1 font-extrabold">
                          <AppIcon icon={appIcons.product.shiny} size="sm" />
                          Shiny
                        </span>
                      ) : null}
                      <span className="truncate">
                        {[
                          member.name,
                          showsFamily && member.name !== member.speciesName
                            ? member.speciesName
                            : null,
                          member.level ? `Lv. ${member.level}` : null,
                          member.placeLabel,
                        ]
                          .filter(Boolean)
                          .join(" · ")}
                      </span>
                    </span>
                  </span>
                  {member.play.statusName ? (
                    <StatusBadge
                      tone={getPlayStatusTone(member.play.statusSlug)}
                    >
                      {member.play.statusName}
                    </StatusBadge>
                  ) : (
                    <span />
                  )}
                  <AppIcon
                    icon={appIcons.actions.next}
                    size="sm"
                    className="text-ink-3"
                  />
                </Link>
              </li>
            ))}
          </ul>
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            It was part of a team in a moment you recorded, and isn&apos;t on a
            roster now.
          </p>
        )}
      </SheetSection>

      {relatives.length ? (
        <SheetSection
          title={showsFamily ? "Each of them" : "Its family with you"}
          aside={
            showsFamily
              ? `${relatives.length} species`
              : `${relatives.length} more species`
          }
        >
          <ul className="grid grid-cols-3 gap-2.5">
            {relatives.map((relative) => (
              <li key={relative.speciesId} className="min-w-0">
                <PokemonSticker
                  variant="compact"
                  className="w-full"
                  imageUrl={relative.imageUrl}
                  name={relative.name}
                  subtitle={`${relative.playIds.length} ${relative.playIds.length === 1 ? "Play" : "Plays"}`}
                  types={relative.types}
                  label={`${relative.name}, in ${relative.playIds.length} ${relative.playIds.length === 1 ? "Play" : "Plays"}. Show`}
                  onClick={
                    onOpenSpecies ? () => onOpenSpecies(relative) : undefined
                  }
                />
              </li>
            ))}
          </ul>
        </SheetSection>
      ) : null}
    </ResponsiveDetailSheet>
  );
};
