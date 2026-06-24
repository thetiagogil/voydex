import { CreateMainlinePlayPage } from "@/modules/mainline/features/play/components/create-mainline-play-page";
import { getCreateMainlinePlayPageData } from "@/modules/mainline/features/play/data/create-play-page-query";

export default async function NewPlayPage() {
  const data = await getCreateMainlinePlayPageData();
  return <CreateMainlinePlayPage data={data} />;
}
