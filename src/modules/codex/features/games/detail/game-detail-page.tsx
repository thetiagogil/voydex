import { notFound } from "next/navigation";

import { GameDetailHeaderSection } from "@/modules/codex/features/games/detail/components/game-detail-header-section";
import { GameDetailPokedexesSection } from "@/modules/codex/features/games/detail/components/game-detail-pokedexes-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/game-detail-related-games-section";
import { getGameDetailData } from "@/modules/codex/features/games/detail/server/game-detail-query";
import { getGameShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

type GameDetailPageProps = {
  gameSlug: string;
};

export const GameDetailPage = async ({ gameSlug }: GameDetailPageProps) => {
  const data = await getGameDetailData(gameSlug);

  if (!data) {
    notFound();
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead trail={[{ label: getGameShortName(data.game.name) }]} />
      <GameDetailHeaderSection data={data} />
      <GameDetailPokedexesSection data={data} />
      <GameDetailRelatedGamesSection data={data} />
    </div>
  );
};
