import { cn } from "@/lib/utils";

type PageSectionProps = {
  action?: React.ReactNode;
  children: React.ReactNode;
  className?: string;
  description?: string;
  title?: string;
};

export function PageSection({
  action,
  children,
  className,
  description,
  title,
}: PageSectionProps) {
  return (
    <section className={cn("flex flex-col gap-4", className)}>
      {title || description || action ? (
        <div className="flex flex-col gap-3 sm:flex-row sm:items-end sm:justify-between">
          <div className="min-w-0">
            {title ? (
              <h2 className="text-foreground text-xl leading-tight font-semibold tracking-normal">
                {title}
              </h2>
            ) : null}
            {description ? (
              <p className="text-muted-foreground mt-1 text-sm leading-6">
                {description}
              </p>
            ) : null}
          </div>
          {action ? <div className="shrink-0">{action}</div> : null}
        </div>
      ) : null}
      {children}
    </section>
  );
}
