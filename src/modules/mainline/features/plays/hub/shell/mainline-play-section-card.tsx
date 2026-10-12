import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";

type MainlinePlaySectionCardProps = ComponentProps<typeof DetailSectionCard> & {
  headingLevel?: 2 | 3;
};

export const MainlinePlaySectionCard = ({
  className,
  headingLevel = 2,
  title,
  titleClassName,
  ...props
}: MainlinePlaySectionCardProps) => {
  const Heading = headingLevel === 3 ? "h3" : "h2";

  return (
    <DetailSectionCard
      className={className}
      title={<Heading>{title}</Heading>}
      titleClassName={titleClassName}
      {...props}
    />
  );
};
