import { MainlineHomeRoute } from "@/modules/mainline/features/home/mainline-home-route";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

/* Home, read on the device, with the games from the server. */
export default async function MainlineHomePageRoute({
  searchParams,
}: PageProps) {
  const [{ play }, catalogue] = await Promise.all([
    searchParams,
    readGameCatalogue().catch(() => null),
  ]);

  return (
    <MainlineHomeRoute
      catalogue={catalogue}
      requestedPlayId={typeof play === "string" ? play : null}
    />
  );
}
