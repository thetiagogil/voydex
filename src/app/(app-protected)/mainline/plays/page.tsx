import { MainlinePlaysPage } from "@/modules/mainline/features/play/browse/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/play/browse/data/plays-page-query";

export default async function PlaysPage() {
  const data = await getMainlinePlaysPageData();
  return <MainlinePlaysPage data={data} />;
}
