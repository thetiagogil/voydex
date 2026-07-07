import type { ReactNode } from "react";

import { cn } from "@/lib/utils";

type InfoTileProps = {
  children: ReactNode;
  className?: string;
  icon?: ReactNode;
  label: ReactNode;
  labelClassName?: string;
  semantic?: "definition" | "generic";
  valueClassName?: string;
};

export const InfoTile = ({
  children,
  className,
  icon,
  label,
  labelClassName,
  semantic = "generic",
  valueClassName,
}: InfoTileProps) => {
  const Label = semantic === "definition" ? "dt" : "div";
  const Value = semantic === "definition" ? "dd" : "div";

  return (
    <div
      className={cn(
        "bg-card ring-app-surface-border rounded-lg p-3 ring-1",
        className,
      )}
    >
      <Label
        className={cn(
          "text-muted-foreground flex items-center gap-1.5 text-xs [&_svg]:size-3.5",
          labelClassName,
        )}
      >
        {icon}
        {label}
      </Label>
      <Value className={cn("mt-1 font-medium", valueClassName)}>
        {children}
      </Value>
    </div>
  );
};
