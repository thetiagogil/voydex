"use client";

import { useMemo } from "react";

import { codexFiles } from "@/modules/codex/codex-files";
import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import {
  buildGamesPageData,
  type GamesPageRows,
} from "@/modules/codex/features/games/browse/data/games-page-mappers";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { PageLoadingState } from "@/shared/components/page-loading-state";

type GamesPageProps = {
  params?: {
    kind?: string | null;
    q?: string | null;
  };
};

/* Every game, from the pre-built browse rows, with the address's filters. */
export const GamesPage = ({ params }: GamesPageProps) => {
  const rows = useCodexFile<GamesPageRows>(codexFiles.games());
  const kind = params?.kind;
  const q = params?.q;
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
