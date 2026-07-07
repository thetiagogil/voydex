import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type CodexDetailSectionCardProps = {
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  headerClassName?: string;
  id?: string;
  title: ReactNode;
};

export const CodexDetailSectionCard = ({
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  id,
  title,
}: CodexDetailSectionCardProps) => {
  return (
    <Card id={id} className={cn("w-full min-w-0 gap-0 py-0", className)}>
      <CardHeader className={cn("px-4 py-2", headerClassName)}>
        <CardTitle className="text-muted-foreground text-xs font-light">
          {title}
        </CardTitle>
        {description ? (
          <CardDescription className="text-sm leading-6 tracking-normal normal-case">
            {description}
          </CardDescription>
        ) : null}
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className={cn("px-4 py-4", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};
