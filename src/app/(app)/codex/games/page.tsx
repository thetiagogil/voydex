import { GamesPage } from "@/modules/codex/components/games-page";

type PageProps = {
  searchParams: Promise<{
    generation?: string;
    region?: string;
  }>;
};

export default async function Page({ searchParams }: PageProps) {
  const params = await searchParams;

  return <GamesPage params={params} />;
}
