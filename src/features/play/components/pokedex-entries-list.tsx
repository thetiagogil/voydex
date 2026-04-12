"use client";

import {
  useMarkPokedexEntriesCaughtBulk,
  useMarkPokedexEntryCaught,
  useMarkPokedexEntrySeen,
  useUnmarkPokedexEntriesBulk,
  useUnmarkPokedexEntry,
} from "@/features/play/hooks/usePlayPokedexMutations";
import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import { useMemo, useState } from "react";
import type { PlayPokedexEntry } from "../types";

// =============================================================================
// TYPES
// =============================================================================

type PokedexMode = "caught" | "seen" | "advanced";

// =============================================================================
// COMPONENT
// =============================================================================

interface PokedexEntriesListProps {
  playId: string;
  pokedexEntries: PlayPokedexEntry[];
  includeMythicalPokemon: boolean;
}

export const PokedexEntriesList = ({
  playId,
  pokedexEntries,
  includeMythicalPokemon,
}: PokedexEntriesListProps) => {
  const [searchQuery, setSearchQuery] = useState("");
  const [mode, setMode] = useState<PokedexMode>("caught");
  const markCaught = useMarkPokedexEntryCaught();
  const markSeen = useMarkPokedexEntrySeen();
  const unmarkEntry = useUnmarkPokedexEntry();
  const markBulk = useMarkPokedexEntriesCaughtBulk();
  const unmarkBulk = useUnmarkPokedexEntriesBulk();

  const filteredEntries = useMemo(() => {
    if (!searchQuery.trim()) return pokedexEntries;

    const query = searchQuery.toLowerCase().trim();

    return pokedexEntries.filter((entry) => {
      if (entry.species.name.toLowerCase().includes(query)) return true;
      if (entry.form?.name?.toLowerCase().includes(query)) return true;
      if (entry.pokedexNumber.toString().includes(query)) return true;
      return false;
    });
  }, [pokedexEntries, searchQuery]);

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
        // Cycle: normal → seen → caught → normal
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

  const handleBulkMarkCaught = () => {
    const ids = filteredEntries.map((e) => e.pokedexEntryId);
    if (ids.length > 0) markBulk.mutate({ playId, pokedexEntryIds: ids });
  };

  const handleBulkUnmark = () => {
    const ids = filteredEntries.map((e) => e.pokedexEntryId);
    if (ids.length > 0) unmarkBulk.mutate({ playId, pokedexEntryIds: ids });
  };

  const getEntryState = (entry: PlayPokedexEntry) => {
    if (entry.isCaught) return "caught";
    if (entry.isSeen) return "seen";
    return "normal";
  };

  return (
    <>
      {/* Mode selector */}
      <div className="flex gap-1.5 px-4">
        <Badge
          variant={mode === "caught" ? "default" : "outline"}
          className="cursor-pointer"
          onClick={() => setMode("caught")}
        >
          Caught mode
        </Badge>
        <Badge
          variant={mode === "seen" ? "default" : "outline"}
          className="cursor-pointer"
          onClick={() => setMode("seen")}
        >
          Seen mode
        </Badge>
        <Badge
          variant={mode === "advanced" ? "default" : "outline"}
          className="cursor-pointer"
          onClick={() => setMode("advanced")}
        >
          Advanced mode
        </Badge>
      </div>

      {/* Search */}
      <div className="relative mt-1 px-4">
        <Icon
          type="search"
          className="text-muted-foreground absolute top-1/2 left-7 -translate-y-1/2"
        />
        <Input
          type="text"
          placeholder="Search by name or number..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="pl-9"
        />
        {searchQuery && (
          <Icon
            type="x"
            onClick={() => setSearchQuery("")}
            className="text-muted-foreground hover:text-foreground absolute top-1/2 right-3 -translate-y-1/2 cursor-pointer transition-colors"
          />
        )}
      </div>

      {/* Bulk actions */}
      <div className="flex gap-2 px-4">
        <Button variant="secondary" size="sm" onClick={handleBulkMarkCaught}>
          Mark all caught
        </Button>
        <Button variant="secondary" size="sm" onClick={handleBulkUnmark}>
          Unmark all
        </Button>
      </div>

      {/* Entries grid */}
      <ScrollArea>
        <div className="grid gap-4 px-4 sm:grid-cols-2">
          {filteredEntries.map((entry: PlayPokedexEntry) => {
            const state = getEntryState(entry);

            return (
              <div
                key={entry.pokedexEntryId}
                onClick={() => handleClick(entry)}
                className={cn(
                  "flex min-h-[160px] cursor-pointer flex-col items-center justify-center gap-2 rounded-lg border p-3 text-center transition-all",
                  state === "caught" &&
                    "border-primary bg-primary/10 hover:bg-primary/15",
                  state === "seen" &&
                    "border-white/50 bg-white/5 hover:bg-white/10",
                  state === "normal" &&
                    "border-border hover:bg-accent/30 opacity-60",
                )}
              >
                {/* Number */}
                <div className="flex w-full items-baseline justify-between">
                  <span className="text-muted-foreground flex items-center gap-1 text-xs font-medium">
                    #{entry.pokedexNumber?.toString().padStart(3, "0")}
                    {!includeMythicalPokemon && entry.species.isMythical && (
                      <Icon
                        type="mythical"
                        size={12}
                        className="text-purple-400"
                      />
                    )}
                  </span>
                  {state === "caught" && (
                    <span className="text-primary text-xs font-medium">
                      Caught
                    </span>
                  )}
                  {state === "seen" && (
                    <span className="text-muted-foreground text-xs font-medium">
                      Seen
                    </span>
                  )}
                </div>

                {/* Sprite */}
                {entry.form?.pokemonDbSpriteSlug ? (
                  <Image
                    src={getPokemonSpriteUrl(
                      false,
                      entry.form.pokemonDbSpriteSlug,
                    )}
                    alt={entry.species.name}
                    width={64}
                    height={64}
                    className="h-16 object-contain"
                  />
                ) : (
                  <div className="bg-muted border-accent flex h-16 w-16 items-center justify-center rounded-full border">
                    <span className="text-muted-foreground text-xs"></span>
                  </div>
                )}

                {/* Name */}
                <div className="flex-1">
                  <h4 className="text-sm font-medium">{entry.species.name}</h4>
                  {entry.form && entry.form.name !== entry.species.name && (
                    <p className="text-muted-foreground text-xs">
                      {entry.form.name}
                    </p>
                  )}
                </div>
              </div>
            );
          })}
        </div>
      </ScrollArea>
    </>
  );
};
