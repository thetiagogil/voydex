import { ensurePokemonDetailEntryRoute } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-route-query";

type LayoutProps = {
  children: React.ReactNode;
  params: Promise<{
    slug: string;
    speciesSlug: string;
  }>;
};

/* Settles the address (404 or redirect) before the page's loading state streams. */
export default async function Layout({ children, params }: LayoutProps) {
  const { slug, speciesSlug } = await params;

  await ensurePokemonDetailEntryRoute(slug, speciesSlug);

  return children;
}
