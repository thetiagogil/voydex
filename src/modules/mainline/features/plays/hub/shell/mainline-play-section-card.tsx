import type { ComponentProps } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

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
      className={cn("bg-card ring-app-surface-border/80 shadow-xs", className)}
      title={<Heading>{title}</Heading>}
      titleClassName={cn(
        "text-primary font-serif text-base leading-none font-semibold",
        titleClassName,
      )}
      {...props}
    />
  );
};
