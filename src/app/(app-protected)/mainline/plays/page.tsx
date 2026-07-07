import { MainlinePlaysPage } from "@/modules/mainline/features/plays/browse/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/plays/browse/server/plays-page-query";

export default async function PlaysPage() {
  const data = await getMainlinePlaysPageData();

  return <MainlinePlaysPage data={data} />;
}
