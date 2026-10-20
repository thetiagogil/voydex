import { MainlineMyPlansPage } from "@/modules/mainline/features/plans/my-plans/mainline-my-plans-page";
import { getMyPlansPageData } from "@/modules/mainline/features/plans/my-plans/server/my-plans-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function MyPlansPage({ searchParams }: PageProps) {
  const [params, plans] = await Promise.all([
    searchParams,
    getMyPlansPageData(),
  ]);
  const view = [params.view].flat()[0] === "archived" ? "archived" : "active";

  return <MainlineMyPlansPage plans={plans} view={view} />;
}
