import { CodexPageShell } from "@/modules/codex/shared/components/codex-page-shell";
import { PokedexBrowser } from "@/modules/codex/features/pokemon/browse/components/pokedex-browser";
import { getPokedexPageData } from "@/modules/codex/features/pokemon/browse/data/pokemon-queries";

export const PokedexPage = async () => {
  const data = await getPokedexPageData();

  return (
    <CodexPageShell
      title="Pokémon"
      description="Search the Pokémon reference data seeded for Voydex."
    >
      <PokedexBrowser data={data} />
    </CodexPageShell>
  );
};
