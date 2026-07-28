import type { ComponentProps, ReactNode } from "react";

import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type MainlinePlayInspectorCardProps = Omit<
  ComponentProps<typeof Card>,
  "children"
> & {
  accessibilityTitle: string;
  children: ReactNode;
  contentClassName?: string;
};

export const MainlinePlayInspectorCard = ({
  accessibilityTitle,
  children,
  className,
  contentClassName,
  ...props
}: MainlinePlayInspectorCardProps) => {
  return (
    <Card
      className={cn("bg-card ring-primary/50 gap-0 py-0 shadow-xs", className)}
      {...props}
    >
      <CardHeader className="sr-only">
        <CardTitle>
          <h2>{accessibilityTitle}</h2>
        </CardTitle>
      </CardHeader>
      <CardContent className={cn("p-4", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};
