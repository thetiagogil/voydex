import { getCodexGamePageParams } from "@/modules/codex/codex-pages";

import { GameRoute } from "./game-route";

type PageProps = {
  params: Promise<{ versionGroupSlug: string }>;
};

/* One ready page per game; every other address is not found. */
export const dynamicParams = false;

export const generateStaticParams = getCodexGamePageParams;

export default async function Page({ params }: PageProps) {
  const { versionGroupSlug } = await params;

  return <GameRoute versionGroupSlug={versionGroupSlug} />;
}
