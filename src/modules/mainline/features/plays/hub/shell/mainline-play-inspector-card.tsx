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
    <Card className={cn("gap-0 py-0", className)} {...props}>
      <CardHeader className="sr-only">
        <CardTitle>
          <h2>{accessibilityTitle}</h2>
        </CardTitle>
      </CardHeader>
      <CardContent className={cn("p-5 sm:p-6", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};
