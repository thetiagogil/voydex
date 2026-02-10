"use client";

import { GamesSection } from "@/components/features/gen/games-section";
import { GenHeader } from "@/components/features/gen/gen-header";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { useGeneration } from "@/hooks/useGenerations";
import { notFound } from "next/navigation";
import { use } from "react";

interface GenPageProps {
  params: Promise<{
    genId: string;
  }>;
}

export default function GenPage({ params }: GenPageProps) {
  const { genId } = use(params);
  const {
    data: gen,
    isLoading: genLoading,
    error: genError,
  } = useGeneration(genId);

  if (genLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (genError || !gen?.data) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-8">
        <GenHeader gen={gen.data} />
        <GamesSection games={gen.data.games} genId={genId} />
      </div>
    </PageLayout>
  );
}
