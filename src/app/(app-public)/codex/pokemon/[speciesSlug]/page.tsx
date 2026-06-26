import { PokemonDetailPage } from "@/modules/codex/components/pokemon-detail-page";

type PageProps = {
  params: Promise<{
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
    game?: string | string[];
    generation?: string | string[];
    versionGroup?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { speciesSlug } = await params;
  return (
    <PokemonDetailPage
      searchParams={await searchParams}
      speciesSlug={speciesSlug}
    />
  );
}
