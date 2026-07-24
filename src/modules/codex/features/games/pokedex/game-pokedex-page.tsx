import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import { GamePokedexSwitcher } from "@/modules/codex/features/games/pokedex/components/game-pokedex-switcher";
import { getGamePokedexData } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { CodexBackLink } from "@/modules/codex/shared/components/codex-back-link";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { PageHeader } from "@/shared/components/page-header";

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

  const pokedexName = formatPokedexName(data.pokedex.name);

  return (
    <div className="flex w-full min-w-0 flex-col gap-5 sm:gap-6">
      <CodexBackLink href={appRoutes.codexGame(data.game.slug)}>
        Back to {data.game.name}
      </CodexBackLink>

      <PageHeader
        title={pokedexName}
        description={`${data.game.name} • ${data.generation.name} • ${data.entries.length} Pokémon`}
      />

      <GamePokedexSwitcher data={data} />

      <GamePokedexBrowser data={data} />
    </div>
  );
};
