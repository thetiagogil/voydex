import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { GamesPage } from "@/modules/codex/features/games/browse/games-page";
import { readPlayedGameCounts } from "@/modules/mainline/public-codex";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

const getSearchParam = (
  searchParams: Record<string, string | string[] | undefined>,
  key: string,
) => {
  const value = searchParams[key];

  return Array.isArray(value) ? value[0] : value;
};

export default async function Page({ searchParams }: PageProps) {
  const [params, account] = await Promise.all([
    searchParams,
    /* The public shell's own read, cached per request: no extra auth work. */
    getSignedInAccount(),
  ]);

  return (
    <GamesPage
      params={{
        kind: getSearchParam(params, "kind"),
        q: getSearchParam(params, "q"),
      }}
      slots={
        account
          ? { playedCountsByGameSlug: await readPlayedGameCounts() }
          : undefined
      }
    />
  );
}
