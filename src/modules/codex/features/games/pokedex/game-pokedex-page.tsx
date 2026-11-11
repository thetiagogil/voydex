"use client";

import { appRoutes } from "@/config/routes";
import { codexFiles } from "@/modules/codex/codex-files";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import { GamePokedexHeadSection } from "@/modules/codex/features/games/pokedex/components/game-pokedex-head-section";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import { useCodexVersionGroupRoute } from "@/modules/codex/shared/client/use-codex-version-group-route";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { PageLoadingState } from "@/shared/components/page-loading-state";

type GamePokedexPageProps = {
  pokedexSlug: string;
  versionGroupSlug: string;
};

/*
 * One Pokédex of a version group, its expansions' included, from its
 * pre-built file. An old game address moves on to its base group.
 */
export const GamePokedexPage = ({
  pokedexSlug,
  versionGroupSlug,
}: GamePokedexPageProps) => {
  const address = useCodexVersionGroupRoute(versionGroupSlug, (route) =>
    appRoutes.codexVersionGroupPokedex(route.versionGroup.slug, pokedexSlug),
  );
  const data = useCodexFile<GamePokedexData>(
    address
      ? codexFiles.gamePokedex(address.route.versionGroup.slug, pokedexSlug)
      : undefined,
  );

  if (!data) {
    return <PageLoadingState />;
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <GamePokedexBrowser
        data={data}
        head={
          <>
            <CodexHead
              trail={[
                { href: appRoutes.codexGames, label: "Games" },
                {
                  href: appRoutes.codexVersionGroup(data.versionGroup.slug),
                  label: getVersionGroupShortName(data.versionGroup.name),
                },
                { label: formatPokedexName(data.pokedex.name) },
              ]}
            />
            <GamePokedexHeadSection data={data} />
          </>
        }
      />
    </div>
  );
};
