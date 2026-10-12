import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
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
          "flex items-center justify-between gap-3 px-5 pt-5 pb-3 sm:px-6 sm:pt-6",
          headerClassName,
        )}
      >
        <div className="flex min-w-0 gap-2">
          {icon ? (
            <span className="flex size-9 shrink-0 items-center justify-center rounded-sm bg-surface-2 text-ink-2">
              <AppIcon icon={icon} size="sm" aria-hidden />
            </span>
          ) : null}

          <div className="flex min-w-0 flex-col gap-1">
            <CardTitle
              className={cn(
                "text-ink",
                titleClassName,
              )}
            >
              {title}
            </CardTitle>

            {description ? (
              <CardDescription>
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
        <Separator className="bg-line" />
      ) : null}

      <CardContent
        className={cn(
          showSeparator
            ? "px-5 py-5 sm:px-6"
            : "px-5 pt-1 pb-5 sm:px-6 sm:pb-6",
          contentClassName,
        )}
      >
        {children}
      </CardContent>
    </Card>
  );
};
