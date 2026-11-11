import { getCodexPokedexPageParams } from "@/modules/codex/codex-pages";
import { GamePokedexPage } from "@/modules/codex/features/games/pokedex/game-pokedex-page";

type PageProps = {
  params: Promise<{
    pokedexSlug: string;
    versionGroupSlug: string;
  }>;
};

/* One ready page per Pokédex; every other address is not found. */
export const dynamicParams = false;

export const generateStaticParams = getCodexPokedexPageParams;

export default async function Page({ params }: PageProps) {
  const { pokedexSlug, versionGroupSlug } = await params;

  return (
    <GamePokedexPage
      pokedexSlug={pokedexSlug}
      versionGroupSlug={versionGroupSlug}
    />
  );
}
