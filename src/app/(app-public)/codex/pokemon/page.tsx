import { PokedexPage } from "@/modules/codex/components/pokedex-page";
type PageProps = {
  searchParams: Promise<{
    generation?: string;
    page?: string;
    q?: string;
    rarity?: string;
    type?: string;
  }>;
};
const Page = async ({ searchParams }: PageProps) => {
  const params = await searchParams;
  return <PokedexPage params={params} />;
};
export default Page;
