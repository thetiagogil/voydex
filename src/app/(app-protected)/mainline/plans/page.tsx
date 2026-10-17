import { MainlineMyPlansPage } from "@/modules/mainline/features/plans/my-plans/mainline-my-plans-page";
import { getMyPlansPageData } from "@/modules/mainline/features/plans/my-plans/server/my-plans-query";

export default async function MyPlansPage() {
  const plans = await getMyPlansPageData();

  return <MainlineMyPlansPage plans={plans} />;
}
