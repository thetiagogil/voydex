import { GameDetailPage } from "@/modules/codex/features/games/detail/game-detail-page";
import {
  CodexGameYourPlays,
  CodexGameYourPlaysLink,
} from "@/modules/mainline/public-codex";
import { getNewPlayDialogData } from "@/modules/mainline/features/plays/new/server/new-play-dialog-query";

type PageProps = {
  params: Promise<{
    versionGroupSlug: string;
  }>;
  searchParams: Promise<{
    version?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const [{ versionGroupSlug }, { version }, newPlay] = await Promise.all([
    params,
    searchParams,
    getNewPlayDialogData(),
  ]);

  return (
    <GameDetailPage
      slots={{
        headActions: (context) => (
          <CodexGameYourPlaysLink versionGroupSlug={context.versionGroupSlug} />
        ),
        yourPlays: (context) => (
          <CodexGameYourPlays
            gameShortName={context.gameShortName}
            gameSlug={context.gameSlug}
            newPlay={newPlay}
            versionGroupSlug={context.versionGroupSlug}
          />
        ),
      }}
      versionGroupSlug={versionGroupSlug}
      versionSlug={Array.isArray(version) ? version[0] : version}
    />
  );
}
