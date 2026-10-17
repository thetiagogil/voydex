import { ensureGamePokedexRoute } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";

type LayoutProps = {
  children: React.ReactNode;
  params: Promise<{
    pokedexSlug: string;
    versionGroupSlug: string;
  }>;
};

/* Settles the address (404 or redirect) before the page's loading state streams. */
export default async function Layout({ children, params }: LayoutProps) {
  const { pokedexSlug, versionGroupSlug } = await params;

  await ensureGamePokedexRoute(versionGroupSlug, pokedexSlug);

  return children;
}
