import type { ReactNode } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";

type CodexDetailSectionCardProps = {
  action?: ReactNode;
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  headerClassName?: string;
  id?: string;
  title: ReactNode;
};

export const CodexDetailSectionCard = ({
  action,
  children,
  className,
  contentClassName,
  description,
  headerClassName,
  id,
  title,
}: CodexDetailSectionCardProps) => {
  return (
    <DetailSectionCard
      action={action}
      className={className}
      contentClassName={contentClassName}
      description={description}
      headerClassName={headerClassName}
      id={id}
      title={title}
    >
      {children}
    </DetailSectionCard>
  );
};
