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

type GameDetailSectionProps = {
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: string;
  id?: string;
  title: string;
};

export const GameDetailSection = ({
  children,
  className,
  contentClassName,
  description,
  id,
  title,
}: GameDetailSectionProps) => {
  return (
    <Card
      id={id}
      className={cn(
        "h-full gap-0 py-0 backdrop-blur-xl",
        "bg-card/75",
        "w-full min-w-0",
        className,
      )}
    >
      <CardHeader className="px-4 py-3">
        <CardTitle className="text-muted-foreground text-xs font-medium tracking-wider uppercase">
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
