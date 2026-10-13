import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import { getGamesPageData } from "@/modules/codex/features/games/browse/server/games-page-query";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

type GamesPageProps = {
  params?: {
    q?: string | null;
    type?: string | null;
    generation?: string | null;
    region?: string | null;
  };
};

export const GamesPage = async ({ params }: GamesPageProps) => {
  const data = await getGamesPageData(params);

  return (
    <div className="flex w-full min-w-0 flex-col">
      <CodexHead />
      <GamesBrowser data={data} />
    </div>
  );
};
