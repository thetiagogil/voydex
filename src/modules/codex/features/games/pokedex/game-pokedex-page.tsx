import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import { GamePokedexHeadSection } from "@/modules/codex/features/games/pokedex/components/game-pokedex-head-section";
import { getGamePokedexData } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { getGameShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

type GamePokedexPageProps = {
  gameSlug: string;
  pokedexSlug: string;
};

export const GamePokedexPage = async ({
  gameSlug,
  pokedexSlug,
}: GamePokedexPageProps) => {
  const data = await getGamePokedexData(gameSlug, pokedexSlug);

  if (!data) {
    notFound();
  }

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead
        trail={[
          {
            href: appRoutes.codexGame(data.game.slug),
            label: getGameShortName(data.game.name),
          },
          { label: formatPokedexName(data.pokedex.name) },
        ]}
      />
      <GamePokedexHeadSection data={data} />
      <GamePokedexBrowser data={data} />
    </div>
  );
};
