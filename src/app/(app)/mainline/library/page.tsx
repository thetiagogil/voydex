import { parseLibraryTab } from "@/modules/mainline/features/library/data/library-model";
import { MainlineLibraryRoute } from "@/modules/mainline/features/library/mainline-library-route";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function LibraryPage({ searchParams }: PageProps) {
  const params = await searchParams;

  return <MainlineLibraryRoute tab={parseLibraryTab([params.tab].flat()[0])} />;
}
