import Link from "next/link";
import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type CodexBackLinkProps = {
  children: ReactNode;
  href: string;
};

export const CodexBackLink = ({ children, href }: CodexBackLinkProps) => {
  return (
    <div>
      <Link
        href={href}
        className={buttonVariants({ variant: "ghost", size: "sm" })}
      >
        <AppIcon icon={appIcons.actions.back} inline="start" aria-hidden />
        {children}
      </Link>
    </div>
  );
};
