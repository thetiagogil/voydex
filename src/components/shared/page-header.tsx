import { Badge } from "@/components/ui/badge";
import { ReactNode } from "react";

interface PageHeaderProps {
  title: string;
  description?: string;
  icon?: ReactNode;
  actions?: ReactNode;
  metadata?: ReactNode;
  badge?: {
    label: string;
    variant?: "default" | "secondary" | "outline" | "destructive";
  };
  badges?: Array<{
    label: string;
    variant?: "default" | "secondary" | "outline" | "destructive";
  }>;
}

export const PageHeader = ({
  title,
  description,
  badge,
  badges,
  icon,
  actions,
  metadata,
}: PageHeaderProps) => {
  // Combine single badge with badges array
  const allBadges = badge ? [badge, ...(badges || [])] : badges || [];

  return (
    <div className="flex items-start justify-between gap-4 space-y-4">
      <div className="flex-1 space-y-2">
        {/* Title + Icon + Badges */}
        <div className="flex flex-wrap items-center gap-3">
          {icon && <div className="flex-shrink-0">{icon}</div>}
          <h1 className="text-3xl font-bold tracking-tight">{title}</h1>
          {allBadges.map((badgeItem, index) => (
            <Badge
              key={index}
              variant={badgeItem.variant || "outline-secondary"}
              className="text-sm"
            >
              {badgeItem.label}
            </Badge>
          ))}
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
