import { ReactNode } from "react";

interface HeaderProps {
  size?: "sm" | "md" | "lg";
  icon?: ReactNode;
  title: string;
  info?: ReactNode;
  metadata?: ReactNode;
  description?: string;
  actions?: ReactNode;
}

export const Header = ({
  size = "md",
  icon,
  title,
  info,
  metadata,
  description,
  actions,
}: HeaderProps) => {
  const sizeClass =
    size === "sm" ? "text-xl" : size === "md" ? "text-2xl" : "text-3xl";

  return (
    <div className="flex items-start justify-between gap-4 space-y-4">
      <div className="flex-1 space-y-2">
        {/* Title + Icon + Badges */}
        <div className="flex flex-wrap items-center gap-3">
          {icon && <div className="flex-shrink-0">{icon}</div>}
          <h1 className={`font-bold tracking-tight ${sizeClass}`}>{title}</h1>
          {info && <div className="flex-shrink-0">{info}</div>}
        </div>

        {/* Metadata (e.g., "Kanto Region • 1996-2000") */}
        {metadata && <div className="text-muted-foreground">{metadata}</div>}

        {/* Description */}
        {description && (
          <p className="text-muted-foreground max-w-2xl">{description}</p>
        )}
      </div>

      {/* Actions */}
      {actions && <div className="flex-shrink-0">{actions}</div>}
    </div>
  );
};
