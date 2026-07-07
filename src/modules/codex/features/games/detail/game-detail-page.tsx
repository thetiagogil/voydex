import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GameDetailHero } from "@/modules/codex/features/games/detail/components/game-detail-hero";
import { GameDetailPokedexesSection } from "@/modules/codex/features/games/detail/components/game-detail-pokedexes-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/game-detail-related-games-section";
import { getGameDetailData } from "@/modules/codex/features/games/detail/server/game-detail-query";
import { CodexBackLink } from "@/modules/codex/shared/components/codex-back-link";
import { getPokemonGameColorCssVariables } from "@/shared/components/game/pokemon-game-color-styles";

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
      className="flex w-full min-w-0 flex-col gap-4"
    >
      <CodexBackLink href={appRoutes.codexGames}>Back to games</CodexBackLink>

      <GameDetailHero data={data} />

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
