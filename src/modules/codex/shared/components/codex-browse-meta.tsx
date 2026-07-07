import type { ReactNode } from "react";

type CodexBrowseMetaProps = {
  children: ReactNode;
};

export const CodexBrowseMeta = ({ children }: CodexBrowseMetaProps) => {
  return (
    <div className="text-muted-foreground text-sm leading-6">{children}</div>
  );
};
