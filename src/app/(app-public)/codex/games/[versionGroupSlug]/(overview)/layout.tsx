import { ensureGameDetailRoute } from "@/modules/codex/features/games/detail/server/game-detail-route-guard";

type LayoutProps = {
  children: React.ReactNode;
  params: Promise<{
    versionGroupSlug: string;
  }>;
};

/* Settles the address (404 or redirect) before the page's loading state streams. */
export default async function Layout({ children, params }: LayoutProps) {
  const { versionGroupSlug } = await params;

  await ensureGameDetailRoute(versionGroupSlug);

  return children;
}
