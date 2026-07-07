import { MainlinePlaysPage } from "@/modules/mainline/features/plays/mainline-plays-page";
import { getMainlinePlaysPageData } from "@/modules/mainline/features/plays/server/plays-page-query";

export default async function PlaysPage() {
  const data = await getMainlinePlaysPageData();

  return <MainlinePlaysPage data={data} />;
}
