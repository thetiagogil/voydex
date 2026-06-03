import { PageLayout } from "@/shared/components/layout/page-layout";

export default function ProtectedLoading() {
  return (
    <PageLayout
      className="flex min-h-[80vh] items-center justify-center"
      isLoading
    >
      <div />
    </PageLayout>
  );
}
