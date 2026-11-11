"use client";

import { notFound } from "next/navigation";
import { useMemo } from "react";

import { appRoutes } from "@/config/routes";
import { codexFiles } from "@/modules/codex/codex-files";
import type { CodexVersionGroupSlots } from "@/modules/codex/codex-slots";
import { GameDetailGamePicker } from "@/modules/codex/features/games/detail/components/game-detail-game-picker";
import { GameDetailExclusivesSection } from "@/modules/codex/features/games/detail/components/game-detail-exclusives-section";
import { GameDetailHeaderSection } from "@/modules/codex/features/games/detail/components/game-detail-header-section";
import { GameDetailRegionSection } from "@/modules/codex/features/games/detail/components/game-detail-region-section";
import { GameDetailRelatedGamesSection } from "@/modules/codex/features/games/detail/components/game-detail-related-games-section";
import {
  buildGameDetailData,
  pickGameDetailVersion,
  type GameDetailRows,
} from "@/modules/codex/features/games/detail/data/game-detail-mappers";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { useCodexVersionGroupRoute } from "@/modules/codex/shared/client/use-codex-version-group-route";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import { useGameCatalogue } from "@/modules/reference/features/games/client/game-catalogue";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { PageBand } from "@/shared/components/page-band";
import { PageLoadingState } from "@/shared/components/page-loading-state";

type GameDetailPageProps = {
  /* Pieces about your Plays the route fills: the Your Plays icon and section. */
  slots?: CodexVersionGroupSlots;
  /* The game picked in the version switch. */
  versionSlug?: string;
  versionGroupSlug: string;
};

/*
 * A version group's page (v3 "Sword and Shield"): one page for the group,
 * with a switch for the game inside it, from the group's pre-built file. A
 * game's or an expansion's old address moves on here, keeping the game it
 * named.
 */
export const GameDetailPage = ({
  slots,
  versionGroupSlug,
  versionSlug,
}: GameDetailPageProps) => {
  const address = useCodexVersionGroupRoute(versionGroupSlug, (route) =>
    appRoutes.codexVersionGroup(route.versionGroup.slug, route.game?.slug),
  );
  const rows = useCodexFile<GameDetailRows>(
    address ? codexFiles.game(address.route.versionGroup.slug) : undefined,
  );
  const catalogue = useGameCatalogue();
  const games = catalogue.status === "ready" ? catalogue.data : null;
  const data = useMemo(() => {
    if (!rows || !games) return null;

    const picked = pickGameDetailVersion(rows.versions, versionSlug);

    return buildGameDetailData(
      rows,
      versionSlug,
      picked ? (games.startersByGameSlug[picked.slug] ?? null) : null,
    );
  }, [games, rows, versionSlug]);

  if (catalogue.status === "failed" || catalogue.status === "missing") {
    throw new Error(
      "The games didn't download. Check the connection and try again.",
    );
  }

  if (!address || !rows || !games) {
    return <PageLoadingState />;
  }

  if (!data) {
    notFound();
  }

  const slotContext = {
    gameName: data.version.game.name,
    gameShortName: getGameShortName(data.version.game.name),
    gameSlug: data.version.game.slug,
    versionGameSlugs: data.versions.map(({ game }) => game.slug),
    versionGroupSlug: data.versionGroup.slug,
  };

  return (
    <div className="flex w-full min-w-0 flex-col">
      <PageBand>
        <CodexHead
          trail={[{ href: appRoutes.codexGames, label: "Games" }]}
          trailEnd={
            <GameDetailGamePicker
              activeGameSlug={data.version.game.slug}
              games={games.games}
              label={getVersionGroupShortName(data.versionGroup.name)}
            />
          }
        />
        <GameDetailHeaderSection
          data={data}
          actions={slots?.headActions?.(slotContext)}
        />
      </PageBand>
      <GameDetailRegionSection data={data} />
      <GameDetailExclusivesSection exclusives={data.versionExclusives} />
      <GameDetailRelatedGamesSection data={data} />
      {slots?.yourPlays ? (
        <div id="your-plays" className="mt-8 sm:mt-10">
          {slots.yourPlays(slotContext)}
        </div>
      ) : null}
    </div>
  );
};
