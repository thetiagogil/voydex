import { CreateMainlinePlayPage } from "@/modules/mainline/features/play/create/create-mainline-play-page";
import { getCreateMainlinePlayPageData } from "@/modules/mainline/features/play/create/server/create-play-page-query";

export default async function NewPlayPage() {
  const data = await getCreateMainlinePlayPageData();
  return <CreateMainlinePlayPage data={data} />;
}
