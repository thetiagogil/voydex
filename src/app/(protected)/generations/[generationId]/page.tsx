"use client";

import { GamesSection } from "@/features/generation/components/games-section";
import { GenerationHeader } from "@/features/generation/components/generation-header";
import { useGenerationOverview } from "@/features/generation/hooks/useGeneration";
import { buildGenerationBreadcrumbs } from "@/features/generation/utils/build-generation-breadcrumbs";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { notFound } from "next/navigation";
import { use } from "react";

type GenerationPageProps = {
  params: Promise<{
    generationId: string;
  }>;
};

export default function GenerationPage({ params }: GenerationPageProps) {
  const { generationId } = use(params);
  const {
    data: generation,
    isLoading,
    error,
  } = useGenerationOverview(generationId);

  if (isLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (error || !generation?.data) {
    notFound();
  }

  const breadcrumbs = buildGenerationBreadcrumbs(generation.data);

  return (
    <PageLayout breadcrumbs={breadcrumbs}>
      <div className="space-y-8">
        <GenerationHeader generation={generation.data} />
        <GamesSection games={generation.data.games} />
      </div>
    </PageLayout>
  );
}
