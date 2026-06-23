import { GenerationDetailPage } from "@/modules/codex/components/generation-detail-page";
type PageProps = {
  params: Promise<{
    generationId: string;
  }>;
};
const Page = async ({ params }: PageProps) => {
  const { generationId } = await params;
  return <GenerationDetailPage generationId={generationId} />;
};
export default Page;
