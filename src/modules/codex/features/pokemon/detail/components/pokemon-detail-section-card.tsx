import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type PokemonDetailSectionCardProps = ComponentProps<typeof DetailSectionCard>;

export const PokemonDetailSectionCard = ({
  className,
  titleClassName,
  ...props
}: PokemonDetailSectionCardProps) => {
  return (
    <DetailSectionCard
      className={cn("bg-card ring-line shadow-xs", className)}
      titleClassName={cn(
        "text-primary font-display text-base leading-none font-semibold",
        titleClassName,
      )}
      {...props}
    />
  );
};
