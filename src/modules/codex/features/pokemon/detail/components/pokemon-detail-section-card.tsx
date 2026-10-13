import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailSectionCardProps = ComponentProps<typeof DetailSectionCard>;

export const PokemonDetailSectionCard = ({
  className,
  titleClassName,
  ...props
}: PokemonDetailSectionCardProps) => {
  return (
    <DetailSectionCard
      className={className}
      titleClassName={titleClassName}
      {...props}
    />
  );
};
