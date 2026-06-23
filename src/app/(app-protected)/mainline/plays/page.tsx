import { MainlinePlaysPage } from "@/modules/mainline/features/play/components/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/play/data/queries";
const PlaysPage = async () => {
  const data = await getMainlinePlaysPageData();
  return <MainlinePlaysPage data={data} />;
};
export default PlaysPage;
