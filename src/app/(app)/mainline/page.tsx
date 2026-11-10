import { MainlineHomeRoute } from "@/modules/mainline/features/home/mainline-home-route";
import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

/* Home, read on the device, with the games and the sign-up pick from the server. */
export default async function MainlineHomePageRoute({
  searchParams,
}: PageProps) {
  const [{ play }, catalogue, intent] = await Promise.all([
    searchParams,
    readGameCatalogue().catch(() => null),
    readSignedInStartIntent().catch(() => null),
  ]);

  return (
    <MainlineHomeRoute
      catalogue={catalogue}
      intent={intent}
      requestedPlayId={typeof play === "string" ? play : null}
    />
  );
}
