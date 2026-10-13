import { notFound } from "next/navigation";

import { GameDetailHeaderSection } from "@/modules/codex/features/games/detail/components/game-detail-header-section";
import { GameDetailPokedexesSection } from "@/modules/codex/features/games/detail/components/game-detail-pokedexes-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/game-detail-related-games-section";
import { getGameDetailPage } from "@/modules/codex/features/games/detail/server/game-detail-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";

type GameDetailPageProps = {
  /* The game picked in the version switch. */
  versionSlug?: string;
  versionGroupSlug: string;
};

/*
 * A version group's page (v3 "Sword and Shield"): one page for the group,
 * with a switch for the game inside it. The route's layout redirects a
 * game's or an expansion's old address here, keeping the game it named.
 */
export const GameDetailPage = async ({
  versionGroupSlug,
  versionSlug,
}: GameDetailPageProps) => {
  const data = await getGameDetailPage(versionGroupSlug, versionSlug);

  if (!data) {
    notFound();
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead
        trail={[{ label: getVersionGroupShortName(data.versionGroup.name) }]}
      />
      <GameDetailHeaderSection data={data} />
      <GameDetailPokedexesSection data={data} />
      <GameDetailRelatedGamesSection data={data} />
    </div>
  );
};
