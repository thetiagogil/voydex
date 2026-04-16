"use client";

import { cn } from "@/lib/utils/cn";
import type { ReactNode } from "react";

type PlayInteractiveCardProps = {
  children: ReactNode;
  isActive?: boolean;
  onClick?: () => void;
  className?: string;
};

export const PlayInteractiveCard = ({
  children,
  isActive = false,
  onClick,
  className,
}: PlayInteractiveCardProps) => {
  if (!onClick) {
    return (
      <div
        className={cn(
          "border-border rounded-xl border px-4 py-3",
          isActive && "border-primary bg-primary/10",
          className,
        )}
      >
        {children}
      </div>
    );
  }

  const handleKeyDown = (event: React.KeyboardEvent<HTMLDivElement>) => {
    if (event.key !== "Enter" && event.key !== " ") {
      return;
    }

    event.preventDefault();
    onClick();
  };

  return (
    <div
      role="button"
      tabIndex={0}
      aria-pressed={isActive}
      onClick={onClick}
      onKeyDown={handleKeyDown}
      className={cn(
        "border-border box-border w-full cursor-pointer rounded-xl border px-4 py-3 text-left transition-[background-color,border-color] hover:bg-accent/30 focus-visible:ring-ring/50 focus-visible:ring-[3px] focus-visible:outline-none",
        isActive && "border-primary bg-primary/10 hover:bg-primary/15",
        className,
      )}
    >
      {children}
    </div>
  );
};
