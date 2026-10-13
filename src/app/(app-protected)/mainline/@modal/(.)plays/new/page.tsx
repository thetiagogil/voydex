import { NewPlayDialog } from "@/modules/mainline/features/plays/new/components/new-play-dialog";
import { getNewPlayPageData } from "@/modules/mainline/features/plays/new/server/new-play-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

/* New Play opened from inside Mainline: the same wizard, as a dialog. */
export default async function NewPlayModal({ searchParams }: PageProps) {
  const { game } = await searchParams;
  const data = await getNewPlayPageData(typeof game === "string" ? game : null);

  return <NewPlayDialog data={data} />;
}
