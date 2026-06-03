import type { GenerationData } from "@/features/generation/types";
import { buildGenerationBreadcrumbs } from "@/features/generation/utils/build-generation-breadcrumbs";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { GamesSection } from "./games-section";
import { GenerationHeader } from "./generation-header";

type GenerationViewProps = {
  generation: GenerationData;
}

export const GenerationView = ({ generation }: GenerationViewProps) => {
  const breadcrumbs = buildGenerationBreadcrumbs(generation);

  return (
    <PageLayout breadcrumbs={breadcrumbs}>
      <div className="space-y-8">
        <GenerationHeader generation={generation} />
        <GamesSection games={generation.games} />
      </div>
    </PageLayout>
  );
};
