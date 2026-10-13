import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { GameDetailPage } from "@/modules/codex/features/games/detail/game-detail-page";
import {
  CodexGamePlays,
  readPlayedGameCounts,
} from "@/modules/mainline/public-codex";

type PageProps = {
  params: Promise<{
    versionGroupSlug: string;
  }>;
  searchParams: Promise<{
    version?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const [{ versionGroupSlug }, { version }, account] = await Promise.all([
    params,
    searchParams,
    /* The public shell's own read, cached per request: no extra auth work. */
    getSignedInAccount(),
  ]);
  const playedCountsByGameSlug = account
    ? await readPlayedGameCounts()
    : undefined;

  return (
    <GameDetailPage
      slots={
        account
          ? {
              headerActions: (context) => (
                <CodexGamePlays
                  gameShortName={context.gameShortName}
                  gameSlug={context.gameSlug}
                  versionGroupSlug={context.versionGroupSlug}
                />
              ),
              playedCountsByGameSlug,
            }
          : undefined
      }
      versionGroupSlug={versionGroupSlug}
      versionSlug={Array.isArray(version) ? version[0] : version}
    />
  );
}
