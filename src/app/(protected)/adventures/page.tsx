import { AdventuresView } from "@/features/adventures/components/adventures-view";
import { getUserPlays } from "@/features/adventures/server/adventures";
import { PageLayout } from "@/shared/components/layout/page-layout";

export default async function PlaysPage() {
  const { data } = await getUserPlays();

  return (
    <PageLayout>
      <AdventuresView initialPlays={data ?? []} />
    </PageLayout>
  );
}
