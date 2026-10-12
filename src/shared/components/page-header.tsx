import { cn } from "@/shared/utils/cn";

type PageHeaderProps = {
  action?: React.ReactNode;
  className?: string;
  description?: string;
  title: string;
};

export const PageHeader = ({
  action,
  className,
  description,
  title,
}: PageHeaderProps) => {
  return (
    <div
      className={cn(
        "flex flex-col gap-4 pt-4 sm:flex-row sm:items-end sm:justify-between sm:pt-6",
        className,
      )}
    >
      <div className="min-w-0">
        <h1 className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]">
          {title}
        </h1>
        {description ? (
          <p className="text-ink-2 text-15 mt-1.5 max-w-3xl font-semibold">
            {description}
          </p>
        ) : null}
      </div>
      {action ? <div className="shrink-0">{action}</div> : null}
    </div>
  );
};
