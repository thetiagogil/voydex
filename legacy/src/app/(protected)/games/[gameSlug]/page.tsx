import { GameView } from "@/features/game/components/game-view";
import { getGameOverview } from "@/features/game/server/game";
import { notFound } from "next/navigation";

type GamePageProps = {
  params: Promise<{
    gameSlug: string;
  }>;
};

export default async function GamePage({ params }: GamePageProps) {
  const { gameSlug } = await params;
  const { data, error } = await getGameOverview(gameSlug);

  if (error || !data) {
    notFound();
  }

  return <GameView game={data} />;
}
