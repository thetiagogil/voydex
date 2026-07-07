import type { ReactNode } from "react";

export const CodexInlineEmpty = ({ children }: { children: ReactNode }) => {
  return <p className="text-muted-foreground text-sm">{children}</p>;
};
