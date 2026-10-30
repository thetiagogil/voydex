import { PageHeader } from "@/shared/components/page-header";

export const TeamAnalysisPageHead = ({ description }: { description: string }) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team analysis"
      description={description}
      className="pt-0 sm:pt-0"
    />
  );
};
