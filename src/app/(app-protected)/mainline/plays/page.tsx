import { MainlinePlaysPage } from "@/modules/mainline/features/play/components/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/play/data/plays-page-query";

export default async function PlaysPage() {
  const data = await getMainlinePlaysPageData();
  return <MainlinePlaysPage data={data} />;
}
