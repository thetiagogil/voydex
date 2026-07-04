import { getGamesPageData } from "@/modules/codex/features/games/browse/server/games-page-query";
import { GamesBrowser } from "@/modules/codex/features/games/browse/components/games-browser";
import { CodexPageShell } from "@/modules/codex/shared/components/codex-page-shell";

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
    <CodexPageShell
      title="Games"
      description="Browse the mainline and Legends games currently supported by Voydex data."
    >
      <GamesBrowser data={data} />
    </CodexPageShell>
  );
};
