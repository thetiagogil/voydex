import { GamePokedexPage } from "@/modules/codex/features/games/pokedex/game-pokedex-page";

type PageProps = {
  params: Promise<{
    gameSlug: string;
    pokedexSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { gameSlug, pokedexSlug } = await params;

  return <GamePokedexPage gameSlug={gameSlug} pokedexSlug={pokedexSlug} />;
}
