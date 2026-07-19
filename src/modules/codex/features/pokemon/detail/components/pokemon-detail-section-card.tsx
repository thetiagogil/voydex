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
      className={cn(
        "bg-card/80 ring-app-surface-border/80 shadow-none",
        className,
      )}
      titleClassName={cn(
        "text-primary font-serif text-base leading-none font-semibold",
        titleClassName,
      )}
      {...props}
    />
  );
};
