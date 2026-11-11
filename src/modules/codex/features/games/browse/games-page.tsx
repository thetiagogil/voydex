"use client";

import { useSearchParams } from "next/navigation";
import { useMemo } from "react";

import { codexFiles } from "@/modules/codex/codex-files";
import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import {
  buildGamesPageData,
  type GamesPageRows,
} from "@/modules/codex/features/games/browse/data/games-page-mappers";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { PageLoadingState } from "@/shared/components/page-loading-state";

/* Every game, from the pre-built browse rows, with the address's filters. */
export const GamesPage = () => {
  const rows = useCodexFile<GamesPageRows>(codexFiles.games());
  const query = useSearchParams();
  const kind = query.get("kind");
  const q = query.get("q");
  const data = useMemo(
    () => rows && buildGamesPageData(rows, { kind, q }),
    [rows, kind, q],
  );

  if (!data) {
    return <PageLoadingState />;
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <GamesBrowser data={data} />
    </div>
  );
};
