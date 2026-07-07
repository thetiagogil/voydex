import type { ReactNode } from "react";

import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";

type CodexEmptyStateProps = {
  action?: ReactNode;
  description: ReactNode;
  title: ReactNode;
};

export const CodexEmptyState = ({
  action,
  description,
  title,
}: CodexEmptyStateProps) => {
  return (
    <Empty>
      <EmptyHeader>
        <EmptyTitle>{title}</EmptyTitle>
        <EmptyDescription>{description}</EmptyDescription>
      </EmptyHeader>
      {action ? <EmptyContent>{action}</EmptyContent> : null}
    </Empty>
  );
};
