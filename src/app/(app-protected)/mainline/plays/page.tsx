import { MainlinePlaysPage } from "@/modules/mainline/features/plays/browse/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/plays/browse/server/plays-page-query";

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

export default async function PlaysPage({ searchParams }: PageProps) {
  const params = await searchParams;
  const data = await getMainlinePlaysPageData(
    getSearchParam(params, "view") === "archived" ? "archived" : "active",
  );

  return (
    <MainlinePlaysPage
      data={data}
      params={{
        game: getSearchParam(params, "game"),
        generation: getSearchParam(params, "generation"),
        q: getSearchParam(params, "q"),
        sort: getSearchParam(params, "sort"),
      }}
    />
  );
}
