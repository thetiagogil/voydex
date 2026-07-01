import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type PokemonDetailSectionCardProps = {
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  title: string;
};

export const PokemonDetailSectionCard = ({
  children,
  className,
  contentClassName,
  title,
}: PokemonDetailSectionCardProps) => {
  return (
    <Card className={cn("bg-card/75 gap-0 py-0 backdrop-blur-xl", className)}>
      <CardHeader className="px-4 py-3">
        <CardTitle className="text-muted-foreground text-xs font-medium tracking-wider uppercase">
          {title}
        </CardTitle>
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className={cn("px-4 py-4", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};
