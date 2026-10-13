import { GamePokedexPage } from "@/modules/codex/features/games/pokedex/game-pokedex-page";

type PageProps = {
  params: Promise<{
    pokedexSlug: string;
    versionGroupSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { pokedexSlug, versionGroupSlug } = await params;

  return (
    <GamePokedexPage
      pokedexSlug={pokedexSlug}
      versionGroupSlug={versionGroupSlug}
    />
  );
}
