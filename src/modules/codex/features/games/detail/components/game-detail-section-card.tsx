import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";

type GameDetailSectionCardProps = ComponentProps<typeof DetailSectionCard>;

export const GameDetailSectionCard = ({
  className,
  title,
  titleClassName,
  ...props
}: GameDetailSectionCardProps) => {
  return (
    <DetailSectionCard
      className={className}
      titleClassName={titleClassName}
      title={<h2>{title}</h2>}
      {...props}
    />
  );
};
