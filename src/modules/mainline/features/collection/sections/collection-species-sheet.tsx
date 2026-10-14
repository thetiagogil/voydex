"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import {
  formatNationalNumber,
  getPlayStatusTone,
} from "@/modules/mainline/features/collection/utils/collection-display";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
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

type CollectionSpeciesSheetProps = {
  entry: TrainerPokemonEntry | null;
  onOpenChange: (open: boolean) => void;
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
 * it on your Plays' rosters (each opens on its Play's roster), and the games
 * it has joined you in.
 */
export const CollectionSpeciesSheet = ({
  entry,
  onOpenChange,
}: CollectionSpeciesSheetProps) => {
  if (!entry) {
    return null;
  }

  const primaryType = toTypeSlug(entry.types[0]?.slug);
  const playCount = entry.playIds.length;
  const countLine = `${playCount} ${playCount === 1 ? "Play" : "Plays"}${
    entry.members.length ? ` · ${entry.members.length} on a roster` : ""
  }`;

  return (
    <ResponsiveDetailSheet
      open
      onOpenChange={onOpenChange}
      label={entry.name}
      head={
        <div className="flex items-center gap-4">
          <PokemonPortrait
            alt=""
            imageUrl={entry.imageUrl}
            type={primaryType}
            className="size-22 shrink-0"
            imageClassName="size-20"
            sizes="88px"
          />
          <div className="min-w-0">
            <p className="text-ink-2 text-13 font-bold">
              {[
                formatNationalNumber(entry.nationalNumber),
                "In your Collection",
              ]
                .filter(Boolean)
                .join(" · ")}
            </p>
            <SheetTitle className="text-24 mt-0.5">{entry.name}</SheetTitle>
            <PokemonTypeList
              types={entry.types}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="mt-2 flex flex-wrap gap-1.5"
            />
            <Link
              href={appRoutes.codexPokemonSpecies(entry.speciesSlug)}
              className={buttonVariants({
                className: "mt-3",
                size: "sm",
                variant: "outline",
              })}
            >
              <AppIcon icon={appIcons.modules.codex} inline="start" />
              Open in Codex
            </Link>
          </div>
        </div>
      }
    >
      <SheetSection title="Its Plays with you" aside={countLine}>
        {entry.members.length ? (
          <ul className="grid">
            {entry.members.map((member) => (
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
                  className="hover:bg-hover focus-visible:outline-focus -mx-2 grid min-h-16 grid-cols-[52px_minmax(0,1fr)_auto] items-center gap-3 rounded-md px-2 py-2 outline-none focus-visible:outline-3 focus-visible:outline-solid"
                >
                  <span
                    style={getPokemonTypeCssVariables(
                      toTypeSlug(member.typeSlug),
                    )}
                    className="sticker grid size-12 place-items-center rounded-sm"
                  >
                    {member.imageUrl ? (
                      // eslint-disable-next-line @next/next/no-img-element
                      <img
                        src={member.imageUrl}
                        alt=""
                        className="size-10 object-contain"
                      />
                    ) : null}
                  </span>
                  <span className="min-w-0">
                    <span className="text-ink text-15 block truncate font-extrabold">
                      {member.name}
                      {member.name !== member.speciesName ? (
                        <span className="text-ink-2 font-semibold">
                          {" "}
                          · {member.speciesName}
                        </span>
                      ) : null}
                    </span>
                    <span className="text-ink-2 text-13 block truncate font-semibold">
                      {[
                        member.play.label,
                        member.placeLabel,
                        member.level ? `Lv. ${member.level}` : null,
                      ]
                        .filter(Boolean)
                        .join(" · ")}
                    </span>
                  </span>
                  {member.play.statusName ? (
                    <StatusBadge
                      tone={getPlayStatusTone(member.play.statusSlug)}
                    >
                      {member.play.statusName}
                    </StatusBadge>
                  ) : null}
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

      <SheetSection title="Across your games">
        <ul className="flex flex-wrap gap-1.5">
          {entry.gameNames.map((gameName) => (
            <li
              key={gameName}
              className="bg-surface-2 text-ink-2 text-13 rounded-full px-3 py-1 font-bold"
            >
              {gameName}
            </li>
          ))}
        </ul>
        {entry.lastUsedAt ? (
          <p className="text-ink-2 text-14 font-semibold">
            Last recorded{" "}
            <PlayMomentTime value={entry.lastUsedAt} format="date" />.
          </p>
        ) : null}
      </SheetSection>
    </ResponsiveDetailSheet>
  );
};
