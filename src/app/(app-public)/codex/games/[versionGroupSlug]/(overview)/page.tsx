import { GameDetailPage } from "@/modules/codex/features/games/detail/game-detail-page";

type PageProps = {
  params: Promise<{
    versionGroupSlug: string;
  }>;
  searchParams: Promise<{
    version?: string | string[];
  }>;
};

export default async function Page({ params, searchParams }: PageProps) {
  const { versionGroupSlug } = await params;
  const { version } = await searchParams;

  return (
    <GameDetailPage
      versionGroupSlug={versionGroupSlug}
      versionSlug={Array.isArray(version) ? version[0] : version}
    />
  );
}
