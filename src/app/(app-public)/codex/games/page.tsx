import { GamesPage } from "@/modules/codex/features/games/browse/games-page";

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
  const params = await searchParams;

  return (
    <GamesPage
      params={{
        generation: getSearchParam(params, "generation"),
        q: getSearchParam(params, "q"),
        region: getSearchParam(params, "region"),
        type: getSearchParam(params, "type"),
      }}
    />
  );
}
