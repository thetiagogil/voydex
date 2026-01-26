import { ReactNode } from "react";
import { Card } from "../ui/card";

interface HeaderProps {
  icon?: ReactNode;
  title: string;
  badge?: ReactNode;
  metadata?: ReactNode;
  description?: string;
  info?: ReactNode;
  actions?: ReactNode;
}

export const Header = ({
  icon,
  title,
  badge,
  metadata,
  info,
  actions,
}: HeaderProps) => {
  return (
    <Card className="p-6">
      <div className="flex flex-col justify-between gap-4 md:flex-row md:items-center">
        <div className="flex flex-1 items-center gap-4">
          {/* Icon */}
          {icon && <div>{icon}</div>}

          <div className="flex flex-col gap-2">
            {/* Title + Badge */}
            <div className="flex flex-wrap items-center gap-2">
              <h1 className="text-3xl font-bold">{title}</h1>
              {badge && <div>{badge}</div>}
            </div>

            {/* Metadata (e.g., "Kanto Region • 1996-2000") */}
            {metadata && (
              <div className="text-muted-foreground">{metadata}</div>
            )}
          </div>
        </div>

        <div>
          {/* Info */}
          {info && <div>{info}</div>}

          {/* Actions */}
          {actions && <div>{actions}</div>}
        </div>
      </div>
    </Card>
  );
};
