import { PlayProgressCollectiblesRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayProgressCollectiblesRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    collectible?: string | string[];
  }>;
};

export default async function MainlinePlayProgressCollectiblesRoute({
  params,
  searchParams,
}: MainlinePlayProgressCollectiblesRouteProps) {
  const [{ playId }, { collectible }] = await Promise.all([
    params,
    searchParams,
  ]);

  return (
    <PlayProgressCollectiblesRoute
      initialGroupSlug={
        typeof collectible === "string" ? collectible : undefined
      }
      playId={playId}
    />
  );
}
