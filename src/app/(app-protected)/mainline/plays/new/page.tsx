import { MainlineNewPlayPage } from "@/modules/mainline/features/plays/new/mainline-new-play-page";
import { getNewPlayPageData } from "@/modules/mainline/features/plays/new/server/new-play-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function NewPlayPage({ searchParams }: PageProps) {
  const { game } = await searchParams;
  const data = await getNewPlayPageData(typeof game === "string" ? game : null);

  return <MainlineNewPlayPage data={data} />;
}
