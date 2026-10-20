import { parseLibraryTab } from "@/modules/mainline/features/library/data/library-model";
import { MainlineLibraryPage } from "@/modules/mainline/features/library/mainline-library-page";
import { getLibraryPageData } from "@/modules/mainline/features/library/server/library-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function LibraryPage({ searchParams }: PageProps) {
  const [params, data] = await Promise.all([
    searchParams,
    getLibraryPageData(),
  ]);

  return (
    <MainlineLibraryPage
      data={data}
      tab={parseLibraryTab([params.tab].flat()[0])}
    />
  );
}
