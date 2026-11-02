"use client";

import { useMemo, useState, type ReactNode } from "react";

import { CollectionFilterBand } from "@/modules/mainline/features/collection/components/collection-filter-band";
import { CollectionGameSheet } from "@/modules/mainline/features/collection/components/collection-game-sheet";
import {
  collectionGameKindLabels,
  collectionGameSortLabels,
  countActiveCollectionGameFilters,
  countCollectionGameKinds,
  defaultCollectionGameFilters,
  filterAndSortCollectionGames,
  hasActiveCollectionGameFilters,
  type CollectionGameFilters,
  type CollectionGameKind,
  type CollectionGameSort,
} from "@/modules/mainline/features/collection/data/collection-games-browse-model";
import type { CollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";
import { CountMark } from "@/shared/components/corner-bubble";
import { EmptyState } from "@/shared/components/empty-state";
import { ResetListButton } from "@/shared/components/reset-list-button";

type CollectionGamesShelfProps = {
  games: CollectionGames;
  /* Every generation, for the Generation filter. */
  generations: SpeciesGeneration[];
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  /* The views switch, under the head. */
  viewSwitch: ReactNode;
};

const EAGER_COVER_COUNT = 6;
const kindOrder: CollectionGameKind[] = ["all", "playing", "completed"];
const sortOrder: CollectionGameSort[] = ["played", "release", "name"];

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * Collection's Games: one grid of the games you've played, most Plays
 * leading, under the same toolbar as the Pokémon views; each a card with the
 * owned band and its Play count on a corner that opens its sheet in place.
 */
export const CollectionGamesShelf = ({
  games,
  generations,
  head,
  viewSwitch,
}: CollectionGamesShelfProps) => {
  const [filters, setFilters] = useState<CollectionGameFilters>(
    defaultCollectionGameFilters,
  );
  const [openGameId, setOpenGameId] = useState<number | null>(null);
  const counts = useMemo(
    () => countCollectionGameKinds(games.games),
    [games.games],
  );
  const shown = useMemo(
    () => filterAndSortCollectionGames(games.games, filters),
    [games.games, filters],
  );
  const openEntry =
    games.games.find((entry) => entry.game.id === openGameId) ?? null;
  const resetList = () => {
    setFilters(defaultCollectionGameFilters);
  };

  return (
    <>
      <CollectionFilterBand
        activeCount={countActiveCollectionGameFilters(filters)}
        defaults={defaultCollectionGameFilters}
        filters={filters}
        generations={generations}
        hasFilters={hasActiveCollectionGameFilters(filters)}
        head={head}
        idPrefix="collection-games"
        kinds={kindOrder.map((kind) => ({
          count: counts[kind],
          label: collectionGameKindLabels[kind],
          value: kind,
        }))}
        listName="your games"
        noun="games"
        nounOne="game"
        onChange={(next) => setFilters((current) => ({ ...current, ...next }))}
        onReset={resetList}
        shownCount={shown.length}
        sorts={sortOrder.map((sort) => ({
          label: collectionGameSortLabels[sort],
          value: sort,
        }))}
        totalCount={games.games.length}
        viewSwitch={viewSwitch}
      />

      <section aria-label="Your games">
        {shown.length ? (
          <GameShelfGrid>
            {shown.map(({ game, plays }, index) => (
              <GameShelfCard
                key={game.id}
                game={game}
                eager={index < EAGER_COVER_COUNT}
                onClick={() => setOpenGameId(game.id)}
                mark={
                  <CountMark
                    count={plays.length}
                    label={countPlays(plays.length)}
                  />
                }
              />
            ))}
          </GameShelfGrid>
        ) : (
          <EmptyState
            variant="bare"
            title="Nothing matches."
            action={<ResetListButton onClick={resetList} />}
          />
        )}

        <CollectionGameSheet
          entry={openEntry}
          onOpenChange={(open) => {
            if (!open) setOpenGameId(null);
          }}
        />
      </section>
    </>
  );
};
