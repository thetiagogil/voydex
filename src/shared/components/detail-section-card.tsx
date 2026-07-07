import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type DetailSectionCardProps = {
  action?: ReactNode;
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  headerClassName?: string;
  icon?: AppIconComponent;
  id?: string;
  showSeparator?: boolean;
  title: ReactNode;
  titleClassName?: string;
};

export const DetailSectionCard = ({
  action,
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  icon,
  id,
  showSeparator = false,
  title,
  titleClassName,
}: DetailSectionCardProps) => {
  return (
    <Card id={id} className={cn("w-full min-w-0 gap-0 py-0", className)}>
      <CardHeader
        className={cn(
          "flex items-center justify-between gap-0 px-4 py-3",
          headerClassName,
        )}
      >
        <div className="flex min-w-0 gap-2">
          {icon ? (
            <span className="border-app-surface-border bg-muted/30 text-muted-foreground flex size-9 shrink-0 items-center justify-center rounded-lg border">
              <AppIcon icon={icon} size="sm" aria-hidden />
            </span>
          ) : null}

          <div className="flex min-w-0 flex-col gap-1">
            <CardTitle
              className={cn(
                "text-foreground/80 text-sm leading-none font-medium",
                titleClassName,
              )}
            >
              {title}
            </CardTitle>

            {description ? (
              <CardDescription className="text-muted-foreground text-xs leading-5 tracking-normal normal-case">
                {description}
              </CardDescription>
            ) : null}
          </div>
        </div>

        {action ? (
          <CardAction className="self-center">{action}</CardAction>
        ) : null}
      </CardHeader>

      {showSeparator ? (
        <Separator className="bg-app-surface-border/60" />
      ) : null}

      <CardContent
        className={cn(
          showSeparator ? "px-4 py-4" : "px-4 pt-1 pb-4",
          contentClassName,
        )}
      >
        {children}
      </CardContent>
    </Card>
  );
};
