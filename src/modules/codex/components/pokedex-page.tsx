import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { PokedexBrowser } from "@/modules/codex/components/pokedex/pokedex-browser";
import { getPokedexPageData } from "@/modules/codex/data/pokemon-queries";

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
