import { PokedexBrowser } from "@/modules/codex/features/pokemon/browse/components/pokedex-browser";
import { getPokedexPageData } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-query";

export const PokedexPage = async () => {
  const data = await getPokedexPageData();

  return (
    <div className="flex min-w-0 flex-col">
      <PokedexBrowser data={data} />
    </div>
  );
};
