"use client";

import { codexFiles } from "@/modules/codex/codex-files";
import { PokedexBrowser } from "@/modules/codex/features/pokemon/browse/components/pokedex-browser";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import type { PokedexPageData } from "@/modules/reference/types";
import { PageLoadingState } from "@/shared/components/page-loading-state";

/* Every Pokémon, from the pre-built browse file. */
export const PokedexPage = () => {
  const data = useCodexFile<PokedexPageData>(codexFiles.pokemon());

  if (!data) {
    return <PageLoadingState />;
  }

  return (
    <div className="flex min-w-0 flex-col">
      <PokedexBrowser data={data} />
    </div>
  );
};
