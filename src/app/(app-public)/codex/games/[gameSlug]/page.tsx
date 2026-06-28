import { GameDetailPage } from "@/modules/codex/features/games/detail/game-detail-page";

type PageProps = {
  params: Promise<{
    gameSlug: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { gameSlug } = await params;
  return <GameDetailPage gameSlug={gameSlug} />;
}
