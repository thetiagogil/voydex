import { PlayProgressPokedexRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

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
  const [{ playId }, { pokedex }] = await Promise.all([params, searchParams]);

  return (
    <PlayProgressPokedexRoute
      initialScopeSlug={typeof pokedex === "string" ? pokedex : undefined}
      playId={playId}
    />
  );
}
