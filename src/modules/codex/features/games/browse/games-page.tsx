import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import { getGamesPageData } from "@/modules/codex/features/games/browse/server/games-page-query";

type GamesPageProps = {
  params?: {
    kind?: string | null;
    q?: string | null;
  };
};

export const GamesPage = async ({ params }: GamesPageProps) => {
  const data = await getGamesPageData(params);

  return (
    <div className="flex w-full min-w-0 flex-col">
      <GamesBrowser data={data} />
    </div>
  );
};
