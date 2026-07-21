import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type GameDetailSectionCardProps = ComponentProps<typeof DetailSectionCard>;

export const GameDetailSectionCard = ({
  className,
  title,
  titleClassName,
  ...props
}: GameDetailSectionCardProps) => {
  return (
    <DetailSectionCard
      className={cn("bg-card ring-app-surface-border/80 shadow-xs", className)}
      titleClassName={cn(
        "text-primary font-serif text-base leading-none font-semibold",
        titleClassName,
      )}
      title={<h2>{title}</h2>}
      {...props}
    />
  );
};
