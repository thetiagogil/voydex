import { PageHeader } from "@/shared/components/page-header";

type CodexPageShellProps = {
  children: React.ReactNode;
  description?: string;
  title: string;
};

export const CodexPageShell = ({
  children,
  description,
  title,
}: CodexPageShellProps) => {
  return (
    <div className="flex flex-col gap-4">
      <PageHeader title={title} description={description} />
      {children}
    </div>
  );
};
