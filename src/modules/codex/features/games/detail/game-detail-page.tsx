import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GameDetailPokedexesSection } from "@/modules/codex/features/games/detail/components/pokedexes/game-detail-pokedexes-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/related-games/game-detail-related-games-section";
import { GameDetailTopSection } from "@/modules/codex/features/games/detail/components/top-section/game-detail-top-section";
import { getGameDetailData } from "@/modules/codex/features/games/detail/server/game-detail-query";
import { CodexBackLink } from "@/modules/codex/shared/components/codex-back-link";
import { getPokemonGameColorCssVariables } from "@/modules/reference/features/games/display/game-color-styles";

type GameDetailPageProps = {
  gameSlug: string;
};

export const GameDetailPage = async ({ gameSlug }: GameDetailPageProps) => {
  const data = await getGameDetailData(gameSlug);

  if (!data) {
    notFound();
  }

  return (
    <div
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="flex w-full min-w-0 flex-col gap-5 sm:gap-6"
    >
      <CodexBackLink href={appRoutes.codexGames}>Back to games</CodexBackLink>

      <GameDetailTopSection data={data} />

      <div className="grid w-full min-w-0 items-start gap-4 lg:grid-cols-3 lg:[--game-detail-panels-height:17rem] xl:[--game-detail-panels-height:16.5rem]">
        <div className="min-w-0 lg:h-(--game-detail-panels-height) lg:min-h-0">
          <GameDetailPokedexesSection data={data} />
        </div>
        <div className="min-w-0 lg:col-span-2 lg:h-(--game-detail-panels-height) lg:min-h-0">
          <GameDetailRelatedGamesSection data={data} />
        </div>
      </div>
    </div>
  );
};
