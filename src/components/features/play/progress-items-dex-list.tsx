import { Icon } from "@/components/shared/icon";
import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
  useMarkDexEntriesCaughtBulk,
  useMarkDexEntryCaught,
  useUnmarkDexEntriesBulk,
  useUnmarkDexEntry,
} from "@/hooks/gameplay/usePlayDexMutations";
import type { PlayDexEntry } from "@/types/play";
import Image from "next/image";
import { useMemo, useState } from "react";

interface ProgressItemsDexListProps {
  playId: string;
  dexEntries: PlayDexEntry[];
}

export const ProgressItemsDexList = ({
  playId,
  dexEntries,
}: ProgressItemsDexListProps) => {
  const [searchQuery, setSearchQuery] = useState("");
  const markCaught = useMarkDexEntryCaught();
  const unmarkEntry = useUnmarkDexEntry();
  const markBulk = useMarkDexEntriesCaughtBulk();
  const unmarkBulk = useUnmarkDexEntriesBulk();

  const filteredEntries = useMemo(() => {
    if (!searchQuery.trim()) return dexEntries;

    const query = searchQuery.toLowerCase().trim();

    return dexEntries.filter((entry) => {
      if (entry.species.name.toLowerCase().includes(query)) return true;
      if (entry.form?.name?.toLowerCase().includes(query)) return true;
      if (entry.dexNumber.toString().includes(query)) return true;
      return false;
    });
  }, [dexEntries, searchQuery]);

  const handleToggle = (entry: PlayDexEntry, checked: boolean) => {
    if (checked) {
      markCaught.mutate({
        playId,
        dexEntryId: entry.dexEntryId,
      });
    } else {
      unmarkEntry.mutate({
        playId,
        dexEntryId: entry.dexEntryId,
      });
    }
  };

  const handleSelectAll = () => {
    const entriesToMark = filteredEntries
      .filter((entry) => !entry.isCaught)
      .map((entry) => entry.dexEntryId);

    if (entriesToMark.length > 0) {
      markBulk.mutate({
        playId,
        dexEntryIds: entriesToMark,
      });
    }
  };

  const handleUnselectAll = () => {
    const entriesToUnmark = filteredEntries
      .filter((entry) => entry.isCaught)
      .map((entry) => entry.dexEntryId);

    if (entriesToUnmark.length > 0) {
      unmarkBulk.mutate({
        playId,
        dexEntryIds: entriesToUnmark,
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
          {filteredEntries.map((entry: PlayDexEntry) => {
            const isCaught = entry.isCaught;

            return (
              <SquareCheckbox
                key={entry.dexEntryId}
                title={
                  <span className="text-muted-foreground text-xs font-medium">
                    #{entry.dexNumber.toString().padStart(3, "0")}
                  </span>
                }
                id={`dex-${entry.dexEntryId}`}
                checked={isCaught}
                onCheckedChange={(checked) => handleToggle(entry, checked)}
                className="flex flex-col items-center justify-center gap-2 text-center"
              >
                {entry.form?.spriteUrl ? (
                  <Image
                    src={entry.form.spriteUrl}
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
