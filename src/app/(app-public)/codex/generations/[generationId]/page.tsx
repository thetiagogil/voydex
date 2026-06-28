import { GenerationDetailPage } from "@/modules/codex/features/generations/detail/generation-detail-page";

type PageProps = {
  params: Promise<{
    generationId: string;
  }>;
};

export default async function Page({ params }: PageProps) {
  const { generationId } = await params;
  return <GenerationDetailPage generationId={generationId} />;
}
