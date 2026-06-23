import { GamesPage } from "@/modules/codex/components/games-page";
type PageProps = {
  searchParams: Promise<{
    generation?: string;
    region?: string;
  }>;
};
const Page = async ({ searchParams }: PageProps) => {
  const params = await searchParams;
  return <GamesPage params={params} />;
};
export default Page;
