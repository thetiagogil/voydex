import { PokedexPage } from "@/modules/codex/components/pokedex-page";

type PageProps = {
  searchParams: Promise<{
    q?: string;
  }>;
};

export default async function Page({ searchParams }: PageProps) {
  const { q } = await searchParams;

  return <PokedexPage query={q} />;
}
