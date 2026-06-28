import { PokemonDetailPage } from "@/modules/codex/components/pokemon-detail-page";

type PageProps = {
  params: Promise<{
    gameSlug: string;
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { gameSlug, speciesSlug } = await params;

  return (
    <PokemonDetailPage
      gameSlug={gameSlug}
      searchParams={await searchParams}
      speciesSlug={speciesSlug}
    />
  );
}
