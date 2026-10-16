"use client";

import { useState } from "react";

import type { CodexGameVersionExclusives } from "@/modules/codex/features/games/detail/types";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { PokemonTile } from "@/modules/reference/features/pokemon/components/pokemon-tile";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* Each column shows this many until Show all. */
const EXCLUSIVES_PREVIEW_COUNT = 12;

type GameDetailExclusivesSectionProps = {
  /* One column per game, the picked game's first. */
  exclusives: CodexGameVersionExclusives[];
};

/*
 * v3's Version exclusives: one column per game of the pair, the picked game
 * first, then the other's, which you would trade for. Each column shows its
 * first twelve; Show all opens both.
 */
export const GameDetailExclusivesSection = ({
  exclusives,
}: GameDetailExclusivesSectionProps) => {
  const [showAll, setShowAll] = useState(false);
  const total = exclusives.reduce(
    (sum, column) => sum + column.pokemon.length,
    0,
  );
  const hasMore = exclusives.some(
    (column) => column.pokemon.length > EXCLUSIVES_PREVIEW_COUNT,
  );

  if (!total) {
    return null;
  }

  return (
    <DetailSectionCard
      className="mt-8 sm:mt-10"
      title="Version exclusives"
      aside="Only catchable in one of the pair"
    >
      <div className="grid items-start gap-7 md:grid-cols-2">
        {exclusives.map((column, index) => {
          const shortName = getGameShortName(column.version.game.name);
          const titleId = `exclusives-${column.version.game.slug}`;
          const pokemon = showAll
            ? column.pokemon
            : column.pokemon.slice(0, EXCLUSIVES_PREVIEW_COUNT);

          return (
            <section
              key={column.version.game.slug}
              aria-labelledby={titleId}
              className={cn(
                "min-w-0",
                /* v3: the other game's column steps back, until you reach for it. */
                index > 0 && "step-back",
              )}
            >
              <div className="mb-3 flex min-h-10 flex-wrap items-center gap-x-2.5 gap-y-1">
                <GameCover
                  alt=""
                  coverImageUrl={column.version.coverImageUrl}
                  gameName={column.version.game.name}
                  gameSlug={column.version.game.slug}
                  size="dock"
                />
                <h3
                  id={titleId}
                  className="text-16 font-sans font-extrabold tracking-normal"
                >
                  Only in {shortName}
                </h3>
                <span className="text-13 text-ink-3 font-extrabold tabular-nums">
                  {column.pokemon.length}
                </span>
                {index > 0 ? (
                  <span className="text-13 text-ink-2 ml-auto font-semibold">
                    Trade for these
                  </span>
                ) : null}
              </div>
              {pokemon.length ? (
                <ul
                  aria-labelledby={titleId}
                  className="grid grid-cols-[repeat(auto-fill,minmax(84px,1fr))] gap-2"
                >
                  {pokemon.map((entry) => (
                    <li key={entry.key} className="min-w-0">
                      <PokemonTile
                        href={entry.href}
                        imageUrl={entry.imageUrl}
                        name={entry.name}
                      />
                    </li>
                  ))}
                </ul>
              ) : (
                <p className="text-14 text-ink-2 font-semibold">
                  {shortName} has no exclusives.
                </p>
              )}
            </section>
          );
        })}
      </div>

      {hasMore ? (
        <Button
          type="button"
          variant="link"
          className="mt-4 h-10 px-0.5"
          aria-expanded={showAll}
          onClick={() => {
            setShowAll((current) => !current);
          }}
        >
          {showAll ? "Show fewer" : `Show all ${total} exclusives`}
          <AppIcon
            icon={appIcons.actions.expand}
            inline="end"
            className={cn(
              "transition-transform motion-reduce:transition-none",
              showAll && "rotate-180",
            )}
          />
        </Button>
      ) : null}
    </DetailSectionCard>
  );
};
