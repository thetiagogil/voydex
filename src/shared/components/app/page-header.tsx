import { cn } from "@/lib/utils";

type PageHeaderProps = {
  action?: React.ReactNode;
  className?: string;
  description?: string;
  title: string;
};

export function PageHeader({
  action,
  className,
  description,
  title,
}: PageHeaderProps) {
  return (
    <div
      className={cn(
        "flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between",
        className,
      )}
    >
      <div className="min-w-0">
        <h1 className="text-foreground text-3xl leading-tight font-semibold tracking-normal">
          {title}
        </h1>
        {description ? (
          <p className="text-muted-foreground mt-2 max-w-3xl text-sm leading-6">
            {description}
          </p>
        ) : null}
      </div>
      {action ? <div className="shrink-0">{action}</div> : null}
    </div>
  );
}
