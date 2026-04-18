import { cn } from "@/lib/utils/cn";
import { Card } from "@/shared/components/ui/card";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import type { ComponentProps, ReactNode } from "react";

export const SectionCard = ({
  className,
  ...props
}: ComponentProps<typeof Card>) => {
  return <Card className={cn("gap-0 p-0", className)} {...props} />;
};

type SectionCardHeaderProps = ComponentProps<"div"> & {
  title: ReactNode;
  description?: ReactNode;
  actions?: ReactNode;
  contentClassName?: string;
  titleClassName?: string;
  descriptionClassName?: string;
  actionsClassName?: string;
};

export const SectionCardHeader = ({
  title,
  description,
  actions,
  className,
  contentClassName,
  titleClassName,
  descriptionClassName,
  actionsClassName,
  ...props
}: SectionCardHeaderProps) => {
  return (
    <div
      className={cn(
        "border-border flex flex-col gap-4 border-b p-4 sm:flex-row sm:items-center sm:justify-between",
        className,
      )}
      {...props}
    >
      <div className={cn("min-w-0 space-y-1", contentClassName)}>
        <h2 className={cn("text-foreground text-lg font-bold", titleClassName)}>
          {title}
        </h2>
        {description ? (
          <p
            className={cn(
              "text-muted-foreground text-xs",
              descriptionClassName,
            )}
          >
            {description}
          </p>
        ) : null}
      </div>

      {actions ? (
        <div
          className={cn("flex flex-wrap items-center gap-2", actionsClassName)}
        >
          {actions}
        </div>
      ) : null}
    </div>
  );
};

export const SectionCardContent = ({
  className,
  ...props
}: ComponentProps<"div">) => {
  return <div className={cn("p-4", className)} {...props} />;
};

type SectionCardScrollContentProps = ComponentProps<typeof ScrollArea> & {
  contentClassName?: string;
};

export const SectionCardScrollContent = ({
  className,
  contentClassName,
  children,
  ...props
}: SectionCardScrollContentProps) => {
  return (
    <ScrollArea className={cn("flex-1", className)} {...props}>
      <div className={cn("p-4", contentClassName)}>{children}</div>
    </ScrollArea>
  );
};
