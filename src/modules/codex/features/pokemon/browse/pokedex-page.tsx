import { CodexPageShell } from "@/modules/codex/shared/components/codex-page-shell";
import { PokedexBrowser } from "@/modules/codex/features/pokemon/browse/components/pokedex-browser";
import { getPokedexPageData } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-query";

export const PokedexPage = async () => {
  const data = await getPokedexPageData();

  return (
    <CodexPageShell
      title="Pokémon"
      description="Browse the National Pokédex and open a field guide for each species."
    >
      <PokedexBrowser data={data} />
    </CodexPageShell>
  );
};
