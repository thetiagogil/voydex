import { GameDetailPage } from "@/modules/codex/components/game-detail-page";
type PageProps = {
  params: Promise<{
    gameSlug: string;
  }>;
};
const Page = async ({ params }: PageProps) => {
  const { gameSlug } = await params;
  return <GameDetailPage gameSlug={gameSlug} />;
};
export default Page;
