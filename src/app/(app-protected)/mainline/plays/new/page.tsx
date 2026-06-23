import { CreateMainlinePlayPage } from "@/modules/mainline/features/play/components/create-mainline-play-page";
import { getCreateMainlinePlayPageData } from "@/modules/mainline/features/play/data/queries";
const NewPlayPage = async () => {
  const data = await getCreateMainlinePlayPageData();
  return <CreateMainlinePlayPage data={data} />;
};
export default NewPlayPage;
