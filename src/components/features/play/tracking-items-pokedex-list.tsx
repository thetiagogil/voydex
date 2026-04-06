import { Icon } from "@/components/shared/icon";
import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
  useMarkPokedexEntriesCaughtBulk,
  useMarkPokedexEntryCaught,
  useUnmarkPokedexEntriesBulk,
  useUnmarkPokedexEntry,
} from "@/hooks/gameplay/usePlayPokedexMutations";
import { getPokemonSpriteUrl } from "@/lib/utils/common";
import type { PlayPokedexEntry } from "@/types/play";
import Image from "next/image";
import { useMemo, useState } from "react";

interface TrackingItemsDexListProps {
  playId: string;
  pokedexEntries: PlayPokedexEntry[];
}

export const TrackingItemsDexList = ({
  playId,
  pokedexEntries,
}: TrackingItemsDexListProps) => {
  const [searchQuery, setSearchQuery] = useState("");
  const markCaught = useMarkPokedexEntryCaught();
  const unmarkEntry = useUnmarkPokedexEntry();
  const markBulk = useMarkPokedexEntriesCaughtBulk();
  const unmarkBulk = useUnmarkPokedexEntriesBulk();

  const filteredEntries = useMemo(() => {
    if (!searchQuery.trim()) return pokedexEntries;

    const query = searchQuery.toLowerCase().trim();

    return pokedexEntries.filter((entry) => {
      if (entry.species.name.toLowerCase().includes(query)) return true;
      if (entry.form?.name?.toLowerCase().includes(query)) return true;
      if (entry.dexNumber.toString().includes(query)) return true;
      return false;
    });
  }, [pokedexEntries, searchQuery]);

  const handleToggle = (entry: PlayPokedexEntry, checked: boolean) => {
    if (checked) {
      markCaught.mutate({
        playId,
        pokedexEntryId: entry.pokedexEntryId,
      });
    } else {
      unmarkEntry.mutate({
        playId,
        pokedexEntryId: entry.pokedexEntryId,
      });
    }
  };

  const handleSelectAll = () => {
    const entriesToMark = filteredEntries
      .filter((entry) => !entry.isCaught)
      .map((entry) => entry.pokedexEntryId);

    if (entriesToMark.length > 0) {
      markBulk.mutate({
        playId,
        pokedexEntryIds: entriesToMark,
      });
    }
  };

  const handleUnselectAll = () => {
    const entriesToUnmark = filteredEntries
      .filter((entry) => entry.isCaught)
      .map((entry) => entry.pokedexEntryId);

    if (entriesToUnmark.length > 0) {
      unmarkBulk.mutate({
        playId,
        pokedexEntryIds: entriesToUnmark,
      });
    }
  };

  return (
    <>
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

      <div className="flex gap-2 px-4">
        <Button variant="secondary" onClick={handleSelectAll}>
          Select All
        </Button>
        <Button variant="secondary" onClick={handleUnselectAll}>
          Unselect All
        </Button>
      </div>

      <ScrollArea>
        <div className="grid gap-4 px-4 sm:grid-cols-2">
          {filteredEntries.map((entry: PlayPokedexEntry) => {
            const isCaught = entry.isCaught;

            return (
              <SquareCheckbox
                key={entry.pokedexEntryId}
                title={
                  <span className="text-muted-foreground text-xs font-medium">
                    #{entry.dexNumber?.toString().padStart(3, "0")}
                  </span>
                }
                id={`dex-${entry.pokedexEntryId}`}
                checked={isCaught}
                onCheckedChange={(checked) => handleToggle(entry, checked)}
                className="flex flex-col items-center justify-center gap-2 text-center"
              >
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

                <div className="flex-1">
                  <h4 className="text-sm font-medium">{entry.species.name}</h4>
                  {entry.form && entry.form.name !== entry.species.name && (
                    <p className="text-muted-foreground text-xs">
                      {entry.form.name}
                    </p>
                  )}
                </div>
              </SquareCheckbox>
            );
          })}
        </div>
      </ScrollArea>
    </>
  );
};
