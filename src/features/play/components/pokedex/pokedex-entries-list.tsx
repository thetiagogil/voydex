"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Input } from "@/shared/components/ui/input";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import { useMemo, useState } from "react";
import {
  useMarkPokedexEntriesCaughtBulk,
  useMarkPokedexEntriesSeenBulk,
  useUnmarkPokedexEntriesBulk,
} from "../../hooks/usePlayPokedexBulkMutations";
import {
  useMarkPokedexEntryCaught,
  useMarkPokedexEntrySeen,
  useUnmarkPokedexEntry,
} from "../../hooks/usePlayPokedexMutations";
import type { PlayPokedexEntry } from "../../types";
import { PLAY_POKEMON_SPRITE_SIZE } from "../../utils/pokemon-sprites";
import { PlayActionsMenu } from "../shared/play-actions-menu";
import { PlayChoiceMenu } from "../shared/play-choice-menu";
import { PlayDrawerToolbar } from "../shared/play-drawer-toolbar";
import { PlayFilterMenu } from "../shared/play-filter-menu";
import { PlayInteractiveCard } from "../shared/play-interactive-card";

type PokedexMode = "caught" | "seen" | "advanced";
type PokedexStateFilter = "unmarked" | "seen" | "caught";

const MODE_OPTIONS = [
  { value: "caught", label: "Caught" },
  { value: "seen", label: "Seen" },
  { value: "advanced", label: "Advanced" },
] as const;

const STATE_OPTIONS = [
  { value: "unmarked", label: "Unmarked" },
  { value: "seen", label: "Seen" },
  { value: "caught", label: "Caught" },
];

type PokedexEntriesListProps = {
  playId: string;
  pokedexEntries: PlayPokedexEntry[];
  includeMythicalPokemon: boolean;
};

export const PokedexEntriesList = ({
  playId,
  pokedexEntries,
  includeMythicalPokemon,
}: PokedexEntriesListProps) => {
  const [searchQuery, setSearchQuery] = useState("");
  const [mode, setMode] = useState<PokedexMode>("caught");
  const [selectedFilters, setSelectedFilters] = useState<PokedexStateFilter[]>(
    [],
  );
  const markCaught = useMarkPokedexEntryCaught();
  const markSeen = useMarkPokedexEntrySeen();
  const unmarkEntry = useUnmarkPokedexEntry();
  const markBulk = useMarkPokedexEntriesCaughtBulk();
  const markSeenBulk = useMarkPokedexEntriesSeenBulk();
  const unmarkBulk = useUnmarkPokedexEntriesBulk();

  const getEntryState = (entry: PlayPokedexEntry): PokedexStateFilter => {
    if (entry.isCaught) return "caught";
    if (entry.isSeen) return "seen";
    return "unmarked";
  };

  const filteredEntries = useMemo(() => {
    const query = searchQuery.toLowerCase().trim();

    return pokedexEntries.filter((entry) => {
      if (query) {
        const matchesQuery =
          entry.species.name.toLowerCase().includes(query) ||
          entry.form?.name?.toLowerCase().includes(query) ||
          entry.pokedexNumber.toString().includes(query);
        if (!matchesQuery) {
          return false;
        }
      }

      if (selectedFilters.length > 0) {
        return selectedFilters.includes(getEntryState(entry));
      }

      return true;
    });
  }, [pokedexEntries, searchQuery, selectedFilters]);

  const visibleCaughtCount = filteredEntries.filter(
    (entry) => entry.isCaught,
  ).length;
  const visibleSeenCount = filteredEntries.filter(
    (entry) => entry.isSeen,
  ).length;

  const handleClick = (entry: PlayPokedexEntry) => {
    switch (mode) {
      case "caught":
        if (entry.isCaught) {
          unmarkEntry.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        } else {
          markCaught.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        }
        break;
      case "seen":
        if (entry.isSeen) {
          unmarkEntry.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        } else {
          markSeen.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        }
        break;
      case "advanced":
        if (entry.isCaught) {
          unmarkEntry.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        } else if (entry.isSeen) {
          markCaught.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        } else {
          markSeen.mutate({ playId, pokedexEntryId: entry.pokedexEntryId });
        }
        break;
    }
  };

  const handleBulkMark = () => {
    if (mode === "seen") {
      const ids = filteredEntries
        .filter((entry) => !entry.isSeen)
        .map((entry) => entry.pokedexEntryId);

      if (ids.length > 0) {
        markSeenBulk.mutate({ playId, pokedexEntryIds: ids });
      }

      return;
    }

    const ids = filteredEntries
      .filter((entry) => !entry.isCaught)
      .map((entry) => entry.pokedexEntryId);

    if (ids.length > 0) {
      markBulk.mutate({ playId, pokedexEntryIds: ids });
    }
  };

  const handleBulkUnmark = () => {
    const ids = filteredEntries
      .filter((entry) => entry.isCaught || entry.isSeen)
      .map((entry) => entry.pokedexEntryId);

    if (ids.length > 0) {
      unmarkBulk.mutate({ playId, pokedexEntryIds: ids });
    }
  };

  return (
    <>
      <PlayDrawerToolbar
        summary={
          selectedFilters.length === 0 && searchQuery.trim() === ""
            ? `${pokedexEntries.length} total - ${visibleSeenCount} seen - ${visibleCaughtCount} caught`
            : `Showing ${filteredEntries.length} of ${pokedexEntries.length} Pokemon`
        }
        search={
          <div className="relative">
            <Icon
              type="search"
              className="text-muted-foreground absolute top-1/2 left-3 size-4 -translate-y-1/2"
            />
            <Input
              type="text"
              placeholder="Search by name or number..."
              value={searchQuery}
              onChange={(event) => setSearchQuery(event.target.value)}
              className="pl-9"
            />
          </div>
        }
        controls={
          <>
            <PlayChoiceMenu
              label="Mode"
              value={mode}
              options={[...MODE_OPTIONS]}
              onValueChange={(value) => setMode(value as PokedexMode)}
            />

            <PlayFilterMenu
              label="Filter"
              options={STATE_OPTIONS}
              selectedValues={selectedFilters}
              onSelectedValuesChange={(values) =>
                setSelectedFilters(values as PokedexStateFilter[])
              }
            />
          </>
        }
        actions={
          <PlayActionsMenu
            items={[
              {
                label:
                  selectedFilters.length === 0
                    ? mode === "seen"
                      ? "Bulk mark all (seen)"
                      : "Bulk mark all (caught)"
                    : mode === "seen"
                      ? "Bulk mark filtered (seen)"
                      : "Bulk mark filtered (caught)",
                onSelect: handleBulkMark,
                disabled:
                  mode === "seen"
                    ? !filteredEntries.some((entry) => !entry.isSeen)
                    : !filteredEntries.some((entry) => !entry.isCaught),
              },
              {
                label:
                  selectedFilters.length === 0
                    ? "Bulk unmark all"
                    : "Bulk unmark filtered",
                onSelect: handleBulkUnmark,
                disabled: !filteredEntries.some(
                  (entry) => entry.isCaught || entry.isSeen,
                ),
              },
            ]}
          />
        }
      />

      <ScrollArea className="min-h-0 flex-1">
        {filteredEntries.length > 0 ? (
          <div className="grid grid-cols-2 gap-3 px-6 py-4 sm:grid-cols-3 md:grid-cols-4">
            {filteredEntries.map((entry) => {
              const state = getEntryState(entry);
              const stateLabel =
                state === "caught"
                  ? "Caught"
                  : state === "seen"
                    ? "Seen"
                    : "Unmarked";

              return (
                <PlayInteractiveCard
                  key={entry.pokedexEntryId}
                  isActive={state === "caught"}
                  onClick={() => handleClick(entry)}
                  className={cn(
                    "h-full px-4 py-4",
                    state === "caught" &&
                      "border-primary bg-primary/10 hover:bg-primary/15",
                    state === "seen" &&
                      "border-slate-400/40 bg-slate-500/10 hover:bg-slate-500/15",
                    state === "unmarked" &&
                      "border-border hover:bg-accent/30 bg-transparent",
                  )}
                >
                  <div className="flex h-full flex-col gap-3">
                    <div className="flex items-start justify-between gap-3">
                      <span className="text-muted-foreground flex items-center gap-1 text-xs font-medium">
                        #{entry.pokedexNumber.toString().padStart(3, "0")}
                        {!includeMythicalPokemon && entry.species.isMythical ? (
                          <Icon
                            type="mythical"
                            size={12}
                            className="text-purple-400"
                          />
                        ) : null}
                      </span>
                      <span
                        className={cn(
                          "text-xs font-medium",
                          state === "caught"
                            ? "text-primary"
                            : state === "seen"
                              ? "text-slate-300"
                              : "text-muted-foreground",
                        )}
                      >
                        {stateLabel}
                      </span>
                    </div>

                    <div className="flex flex-1 items-center justify-center">
                      {entry.form?.pokemonDbSpriteSlug ? (
                        <Image
                          src={getPokemonSpriteUrl(
                            false,
                            entry.form.pokemonDbSpriteSlug,
                          )}
                          alt={entry.species.name}
                          width={PLAY_POKEMON_SPRITE_SIZE}
                          height={PLAY_POKEMON_SPRITE_SIZE}
                          className="h-[72px] object-contain"
                        />
                      ) : (
                        <div className="bg-muted border-border flex h-[72px] w-[72px] items-center justify-center rounded-full border" />
                      )}
                    </div>

                    <div className="text-center">
                      <p className="text-sm font-medium">
                        {entry.species.name}
                      </p>
                      {entry.form && entry.form.name !== entry.species.name ? (
                        <p className="text-muted-foreground mt-1 text-xs">
                          {entry.form.name}
                        </p>
                      ) : null}
                    </div>
                  </div>
                </PlayInteractiveCard>
              );
            })}
          </div>
        ) : (
          <div className="flex h-full items-center justify-center px-6 py-12">
            <p className="text-muted-foreground text-sm">
              No Pokemon match the current search and filters.
            </p>
          </div>
        )}
      </ScrollArea>
    </>
  );
};
