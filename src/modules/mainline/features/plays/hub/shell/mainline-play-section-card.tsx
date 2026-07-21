import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type MainlinePlaySectionCardProps = ComponentProps<typeof DetailSectionCard>;

export const MainlinePlaySectionCard = ({
  className,
  title,
  titleClassName,
  ...props
}: MainlinePlaySectionCardProps) => {
  return (
    <DetailSectionCard
      className={cn("bg-card ring-app-surface-border/80 shadow-xs", className)}
      title={<h2>{title}</h2>}
      titleClassName={cn(
        "text-primary font-serif text-base leading-none font-semibold",
        titleClassName,
      )}
      {...props}
    />
  );
};
