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
  titleVariant?: "default" | "eyebrow";
};

export const CodexDetailSectionCard = ({
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  id,
  title,
  titleVariant = "default",
}: CodexDetailSectionCardProps) => {
  return (
    <Card
      id={id}
      className={cn(
        "bg-card/75 w-full min-w-0 gap-0 py-0 backdrop-blur-xl",
        className,
      )}
    >
      <CardHeader className={cn("px-4 py-2", headerClassName)}>
        <CardTitle
          className={cn(
            "text-muted-foreground text-xs",
            titleVariant === "eyebrow"
              ? "font-medium tracking-wider uppercase"
              : "font-semibold",
          )}
        >
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
