import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import type { CodexVersionGroupSlots } from "@/modules/codex/codex-slots";
import { GameDetailExclusivesSection } from "@/modules/codex/features/games/detail/components/game-detail-exclusives-section";
import { GameDetailHeaderSection } from "@/modules/codex/features/games/detail/components/game-detail-header-section";
import { GameDetailPokedexesSection } from "@/modules/codex/features/games/detail/components/game-detail-pokedexes-section";
import { GameDetailRegionSection } from "@/modules/codex/features/games/detail/components/game-detail-region-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/game-detail-related-games-section";
import { getGameDetailPage } from "@/modules/codex/features/games/detail/server/game-detail-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { PageBand } from "@/shared/components/page-band";

type GameDetailPageProps = {
  /* Signed-in pieces the route fills: the Your Plays section. */
  slots?: CodexVersionGroupSlots;
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
  slots,
  versionGroupSlug,
  versionSlug,
}: GameDetailPageProps) => {
  const data = await getGameDetailPage(versionGroupSlug, versionSlug);

  if (!data) {
    notFound();
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <PageBand>
        <CodexHead
          trail={[
            { href: appRoutes.codexGames, label: "Games" },
            { label: getVersionGroupShortName(data.versionGroup.name) },
          ]}
        />
        <GameDetailHeaderSection data={data} />
      </PageBand>
      <GameDetailPokedexesSection data={data} />
      <GameDetailRegionSection data={data} />
      <GameDetailExclusivesSection exclusives={data.versionExclusives} />
      <GameDetailRelatedGamesSection data={data} />
      {slots?.yourPlays ? (
        <div id="your-plays" className="mt-8 sm:mt-10">
          {slots.yourPlays({
            gameName: data.version.game.name,
            gameShortName: getGameShortName(data.version.game.name),
            gameSlug: data.version.game.slug,
            versionGameSlugs: data.versions.map(({ game }) => game.slug),
            versionGroupSlug: data.versionGroup.slug,
          })}
        </div>
      ) : null}
    </div>
  );
};
