import type { CSSProperties, ReactNode } from "react";

import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type PokemonDetailSectionCardProps = {
  aside?: ReactNode;
  children: ReactNode;
  className?: string;
  style?: CSSProperties;
  title: string;
};

/*
 * v3's quiet section card: the clay edge, a Fredoka title with a small aside
 * beside it (what the section is read at), and the content below.
 */
export const PokemonDetailSectionCard = ({
  aside,
  children,
  className,
  style,
  title,
}: PokemonDetailSectionCardProps) => {
  return (
    <Card
      role="region"
      aria-label={title}
      style={style}
      className={cn(
        "w-full min-w-0 gap-0 px-5 py-5 sm:px-7 sm:pt-6.5 sm:pb-7",
        className,
      )}
    >
      <div className="mb-4 flex flex-wrap items-baseline gap-x-3 gap-y-0.5">
        <h2 className="text-24 leading-tight tracking-[-0.015em]">{title}</h2>
        {aside ? (
          <span className="text-14 text-ink-3 font-semibold">{aside}</span>
        ) : null}
      </div>
      {children}
    </Card>
  );
};
