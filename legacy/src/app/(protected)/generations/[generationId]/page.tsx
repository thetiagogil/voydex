import { GenerationView } from "@/features/generation/components/generation-view";
import { getGenerationOverview } from "@/features/generation/server/generation";
import { notFound } from "next/navigation";

type GenerationPageProps = {
  params: Promise<{
    generationId: string;
  }>;
};

export default async function GenerationPage({
  params,
}: GenerationPageProps) {
  const { generationId } = await params;
  const { data, error } = await getGenerationOverview(generationId);

  if (error || !data) {
    notFound();
  }

  return <GenerationView generation={data} />;
}
