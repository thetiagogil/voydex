"use client";

import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { GamesSection } from "@/features/generation/components/games-section";
import { GenerationHeader } from "@/features/generation/components/generation-header";
import { useGenerationOverview } from "@/features/generation/hooks/useGeneration";
import { notFound } from "next/navigation";
import { use } from "react";

interface GenPageProps {
  params: Promise<{
    generationId: string;
  }>;
}

export default function GenPage({ params }: GenPageProps) {
  const { generationId } = use(params);
  const {
    data: generation,
    isLoading: generationLoading,
    error: generationError,
  } = useGenerationOverview(generationId);

  if (generationLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (generationError || !generation?.data) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-8">
        <GenerationHeader generation={generation.data} />
        <GamesSection
          games={generation.data.games}
          generationId={generationId}
        />
      </div>
    </PageLayout>
  );
}
