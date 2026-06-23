import { PokemonDetailPage } from "@/modules/codex/components/pokemon-detail-page";

type PageProps = {
  params: Promise<{
    speciesSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { speciesSlug } = await params;

  return <PokemonDetailPage speciesSlug={speciesSlug} />;
}
