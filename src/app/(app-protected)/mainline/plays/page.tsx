import { MainlinePlaysPage } from "@/modules/mainline/features/plays/browse/mainline-plays-page";

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

  return (
    <MainlinePlaysPage
      view={
        getSearchParam(params, "view") === "archived" ? "archived" : "active"
      }
      params={{
        display: getSearchParam(params, "display"),
        game: getSearchParam(params, "game"),
        generation: getSearchParam(params, "generation"),
        q: getSearchParam(params, "q"),
        sort: getSearchParam(params, "sort"),
        status: getSearchParam(params, "status"),
        tag: getSearchParam(params, "tag"),
      }}
    />
  );
}
