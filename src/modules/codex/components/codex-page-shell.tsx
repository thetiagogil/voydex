import { PageHeader } from "@/shared/components/app/page-header";

type CodexPageShellProps = {
  children: React.ReactNode;
  description?: string;
  title: string;
};

export function CodexPageShell({
  children,
  description,
  title,
}: CodexPageShellProps) {
  return (
    <div className="flex flex-col gap-7">
      <PageHeader
        title={title}
        description={description}
        className="border-app-surface-border border-b pb-5"
      />
      {children}
    </div>
  );
}
