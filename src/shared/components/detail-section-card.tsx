import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
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
  id?: string;
  title: ReactNode;
};

export const DetailSectionCard = ({
  action,
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  id,
  title,
}: DetailSectionCardProps) => {
  return (
    <Card id={id} className={cn("w-full min-w-0 gap-0 py-0", className)}>
      <CardHeader
        className={cn(
          "grid-cols-[minmax(0,1fr)_auto] px-4 py-2",
          headerClassName,
        )}
      >
        <CardTitle className="text-muted-foreground text-xs font-light">
          {title}
        </CardTitle>
        {description ? (
          <CardDescription className="text-sm leading-6 tracking-normal normal-case">
            {description}
          </CardDescription>
        ) : null}
        {action ? <CardAction>{action}</CardAction> : null}
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className={cn("px-4 py-4", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};
