import { notFound } from "next/navigation";

import { getMainlinePlayProgressPokedexData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayProgressPokedex } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/mainline-play-progress-pokedex";

type MainlinePlayProgressPokedexRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    pokedex?: string | string[];
  }>;
};

export default async function MainlinePlayProgressPokedexRoute({
  params,
  searchParams,
}: MainlinePlayProgressPokedexRouteProps) {
  const { playId } = await params;
  const { pokedex } = await searchParams;
  const data = await getMainlinePlayProgressPokedexData(playId);

  if (!data) {
    notFound();
  }

  return (
    <MainlinePlayProgressPokedex
      data={data}
      initialScopeSlug={typeof pokedex === "string" ? pokedex : undefined}
      playId={playId}
    />
  );
}
