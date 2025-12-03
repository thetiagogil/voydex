"use client";

import { GamesSection } from "@/components/features/gen/games-section";
import { GenHeader } from "@/components/features/gen/gen-header";
import { PageLayout } from "@/components/layout/page-layout";
import { Spinner } from "@/components/ui/spinner";
import { useGen } from "@/hooks/useGens";
import { notFound } from "next/navigation";
import { use } from "react";

interface GenPageProps {
  params: Promise<{
    genId: string;
  }>;
}

export default function GenPage({ params }: GenPageProps) {
  const { genId } = use(params);
  const { data: gen, isLoading: genLoading, error: genError } = useGen(genId);

  if (genLoading) {
    return (
      <PageLayout isLoading>
        <Spinner className="size-6" />
      </PageLayout>
    );
  }

  if (genError || !gen?.data) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-6">
        <GenHeader gen={gen.data} />
        <GamesSection games={gen.data.games} genId={genId} />
      </div>
    </PageLayout>
  );
}
