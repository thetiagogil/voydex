import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import { GamePokedexHeadSection } from "@/modules/codex/features/games/pokedex/components/game-pokedex-head-section";
import { getGamePokedexPage } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

type GamePokedexPageProps = {
  pokedexSlug: string;
  versionGroupSlug: string;
};

/* One Pokédex of a version group, its expansions' included. */
export const GamePokedexPage = async ({
  pokedexSlug,
  versionGroupSlug,
}: GamePokedexPageProps) => {
  const data = await getGamePokedexPage(versionGroupSlug, pokedexSlug);

  if (!data) {
    notFound();
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead
        trail={[
          {
            href: appRoutes.codexVersionGroup(data.versionGroup.slug),
            label: getVersionGroupShortName(data.versionGroup.name),
          },
          { label: formatPokedexName(data.pokedex.name) },
        ]}
      />
      <GamePokedexHeadSection data={data} />
      <GamePokedexBrowser data={data} />
    </div>
  );
};
