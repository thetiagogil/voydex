import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import { GamePokedexSwitcher } from "@/modules/codex/features/games/pokedex/components/game-pokedex-switcher";
import { getGamePokedexData } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { CodexBackLink } from "@/modules/codex/shared/components/codex-back-link";
import { getPokemonGameColorCssVariables } from "@/modules/reference/features/games/display/game-color-styles";

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
    <div
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="flex flex-col gap-4"
    >
      <div className="flex min-h-8 items-center justify-between gap-3">
        <CodexBackLink href={appRoutes.codexGame(data.game.slug)}>
          Back to {data.game.name}
        </CodexBackLink>
        <GamePokedexSwitcher data={data} />
      </div>

      <GamePokedexBrowser data={data} />
    </div>
  );
};
