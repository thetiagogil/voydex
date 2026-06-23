import { PokemonDetailPage } from "@/modules/codex/components/pokemon-detail-page";
type PageProps = {
  params: Promise<{
    speciesSlug: string;
  }>;
};
const Page = async ({ params }: PageProps) => {
  const { speciesSlug } = await params;
  return <PokemonDetailPage speciesSlug={speciesSlug} />;
};
export default Page;
