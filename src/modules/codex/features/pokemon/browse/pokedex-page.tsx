import { PokedexBrowser } from "@/modules/codex/features/pokemon/browse/components/pokedex-browser";
import { getPokedexPageData } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

export const PokedexPage = async () => {
  const data = await getPokedexPageData();

  return (
    <div className="flex min-w-0 flex-col">
      <CodexHead />
      <PokedexBrowser data={data} />
    </div>
  );
};
