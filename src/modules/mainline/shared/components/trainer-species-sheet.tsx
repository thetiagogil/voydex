"use client";

import Link from "next/link";
import { useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  countTrainerSpeciesPlays,
  getEarlierFamilyNames,
  splitTrainerSpeciesPlays,
  type TrainerPokemonEntry,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonSheetHead } from "@/modules/mainline/shared/components/pokemon-sheet-head";
import { TrainerPlayRow } from "@/modules/mainline/shared/components/trainer-play-row";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { SheetSection } from "@/shared/components/sheet-section";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
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
   * Shows the whole family instead of one species, named this way ("Kirlia
   * family"): its members under the name, and every Play any of them joined,
   * each row saying which one it was.
   */
  familyTitle?: string;
  onOpenChange: (open: boolean) => void;
  /* Shows another species (one of its family) in the sheet. */
  onOpenSpecies?: (entry: TrainerPokemonEntry) => void;
};

/* "2 now · 1 before", or "3 Plays" when it's in every one of them now. */
const getNowBeforeLine = (entry: TrainerPokemonEntry) => {
  const { before, now } = countTrainerSpeciesPlays(entry);

  if (!before) return `${now} ${now === 1 ? "Play" : "Plays"}`;
  if (!now) return `${before} before`;
  return `${now} now · ${before} before`;
};

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/*
 * One species in your Collection (v3 `colSheet`): its art, the Plays it is
 * on now and the ones it was in before (left the roster, or has evolved),
 * each row its Play's cover and name, and the rest of its family that has
 * joined you.
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
  const { before, now } = splitTrainerSpeciesPlays({
    family: showsFamily ? [] : family,
    getMemberHref: (member) =>
      appRoutes.mainlinePlayTeamPokemon(member.play.id, member.id),
    getPlayHref: (play) => appRoutes.mainlinePlayHistory(play.id),
    species,
  });
  const nowPlayCount = new Set(now.map((member) => member.play.id)).size;
  const countPlays = (count: number) =>
    `${count} ${count === 1 ? "Play" : "Plays"}`;
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
          name={entry.name}
          type={primaryType}
          actions={
            <div className="flex flex-wrap gap-2">
              {collectionHref ? (
                <Link
                  href={collectionHref}
                  className={buttonVariants({
                    size: "sm",
                    variant: "secondary",
                  })}
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
                className={buttonVariants({ size: "sm", variant: "secondary" })}
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
            {showsFamily ? (
              <p className="text-ink-2 text-14 mt-1.5 font-semibold">
                {species.map((each) => each.name).join(" · ")}
              </p>
            ) : (
              <PokemonTypeList
                types={entry.types}
                badgeDisplay="icon-label"
                badgeSize="sm"
                className="mt-2 flex flex-wrap gap-1.5"
              />
            )}
          </div>
        </PokemonSheetHead>
      }
    >
      <SheetSection
        className="gap-3"
        title="With you now"
        aside={nowPlayCount ? countPlays(nowPlayCount) : undefined}
      >
        {now.length ? (
          <ul className="grid" style={getPokemonTypeCssVariables(primaryType)}>
            {now.map((member) => (
              <TrainerPlayRow
                key={member.id}
                detail={[
                  showsFamily
                    ? member.name !== member.speciesName
                      ? member.name
                      : null
                    : member.name,
                  member.level ? `Lv. ${member.level}` : null,
                  ...(showsFamily
                    ? getEarlierFamilyNames(species, member).map((name) =>
                        member.evolvedFrom.includes(name)
                          ? `evolved from ${name}`
                          : `was ${name}`,
                      )
                    : []),
                ]
                  .filter(Boolean)
                  .join(" · ")}
                pokemon={
                  showsFamily
                    ? { name: member.speciesName, typeSlug: member.typeSlug }
                    : undefined
                }
                href={appRoutes.mainlinePlayTeamPokemon(
                  member.play.id,
                  member.id,
                )}
                label={`Open ${member.isShiny ? "shiny " : ""}${member.name} in ${member.play.name}`}
                play={member.play}
                shiny={member.isShiny}
              />
            ))}
          </ul>
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            Not on any team or in reserve right now.
          </p>
        )}
      </SheetSection>

      {before.length ? (
        <SheetSection
          className="gap-3"
          title="Before"
          aside={countPlays(before.length)}
        >
          <ul className="grid" style={getPokemonTypeCssVariables(primaryType)}>
            {before.map((past) => (
              <TrainerPlayRow
                key={past.play.id}
                detail={
                  showsFamily && past.member
                    ? [
                        past.member.name !== past.member.speciesName
                          ? past.member.name
                          : null,
                        past.member.level ? `Lv. ${past.member.level}` : null,
                      ]
                        .filter(Boolean)
                        .join(" · ")
                    : past.detail
                }
                pokemon={
                  showsFamily && past.member
                    ? {
                        name: past.member.speciesName,
                        typeSlug: past.member.typeSlug,
                      }
                    : undefined
                }
                href={past.href}
                label={`${past.play.name}: ${past.detail}`}
                play={past.play}
                shiny={past.member?.isShiny ?? false}
              />
            ))}
          </ul>
        </SheetSection>
      ) : null}

      {relatives.length ? (
        <SheetSection
          className="gap-3"
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
                  subtitle={getNowBeforeLine(relative)}
                  types={relative.types}
                  detail={`in ${relative.playIds.length} ${relative.playIds.length === 1 ? "Play" : "Plays"}. Show`}
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
