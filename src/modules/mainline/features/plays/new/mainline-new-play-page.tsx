import { NewPlayWizard } from "@/modules/mainline/features/plays/new/components/new-play-wizard";
import type { NewPlayPageData } from "@/modules/mainline/features/plays/new/types";

type MainlineNewPlayPageProps = {
  data: NewPlayPageData;
};

/* New Play's page: the three steps on one card under the bar. */
export const MainlineNewPlayPage = ({ data }: MainlineNewPlayPageProps) => (
  <div className="pt-4 sm:pt-6">
    <NewPlayWizard data={data} />
  </div>
);
