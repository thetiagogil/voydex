import { MainlineHomePage } from "@/modules/mainline/features/home/mainline-home-page";
import { getHomePageData } from "@/modules/mainline/features/home/server/home-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function MainlineHomeRoute({ searchParams }: PageProps) {
  const { play } = await searchParams;
  const data = await getHomePageData(typeof play === "string" ? play : null);

  return <MainlineHomePage data={data} />;
}
