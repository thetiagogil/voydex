import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";

type PageProps = {
  params: Promise<{
    slug: string;
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { slug: gameSlug, speciesSlug } = await params;

  return (
    <PokemonDetailPage
      gameSlug={gameSlug}
      searchParams={await searchParams}
      speciesSlug={speciesSlug}
    />
  );
}
