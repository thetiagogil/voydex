import { GamesSection } from "@/components/features/gen/games-section";
import { GenerationHeader } from "@/components/features/gen/generation-header";
import { PageLayout } from "@/components/layout/page-layout";
import { generationData } from "@/lib/mock-data";
import { notFound } from "next/navigation";

interface GenerationPageProps {
  params: Promise<{
    genSlug: string;
  }>;
}

export default async function GenerationPage({ params }: GenerationPageProps) {
  const { genSlug } = await params;

  const generation = generationData[genSlug];

  if (!generation) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-6">
        <GenerationHeader generation={generation} />
        <GamesSection games={generation.games} genSlug={generation.slug} />
      </div>
    </PageLayout>
  );
}
