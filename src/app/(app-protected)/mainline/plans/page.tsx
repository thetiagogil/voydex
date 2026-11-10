import { MainlineMyPlansRoute } from "@/modules/mainline/features/plans/my-plans/mainline-my-plans-route";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function MyPlansPage({ searchParams }: PageProps) {
  const params = await searchParams;

  return (
    <MainlineMyPlansRoute
      view={[params.view].flat()[0] === "archived" ? "archived" : "active"}
    />
  );
}
