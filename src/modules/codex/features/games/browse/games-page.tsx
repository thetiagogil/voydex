import type { CodexGamesSlots } from "@/modules/codex/codex-slots";
import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import { getGamesPageData } from "@/modules/codex/features/games/browse/server/games-page-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

type GamesPageProps = {
  params?: {
    kind?: string | null;
    q?: string | null;
  };
  /* Signed-in pieces the route fills: your Plays per game. */
  slots?: CodexGamesSlots;
};

export const GamesPage = async ({ params, slots }: GamesPageProps) => {
  const data = await getGamesPageData(params);

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead />
      <GamesBrowser data={data} playCounts={slots?.playedCountsByGameSlug} />
    </div>
  );
};
