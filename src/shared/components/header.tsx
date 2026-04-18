import { Card } from "@/shared/components/ui/card";
import { ReactNode } from "react";

type HeaderProps = {
  icon?: ReactNode;
  title: string;
  badge?: ReactNode;
  metadata?: ReactNode;
  description?: string;
  info?: ReactNode;
  actions?: ReactNode;
};

export const Header = ({
  icon,
  title,
  badge,
  metadata,
  info,
  actions,
}: HeaderProps) => {
  return (
    <Card className="min-h-[144px] justify-center p-6">
      <div className="flex flex-col justify-between gap-4 md:flex-row md:items-center">
        <div className="flex flex-1 items-center gap-4">
          {/* Icon */}
          {icon && <div>{icon}</div>}

          <div className="flex flex-1 flex-col gap-2">
            {/* Title + Badge */}
            <div className="flex flex-wrap items-center gap-4">
              <h1 className="text-xl font-bold md:text-3xl">{title}</h1>
              {badge && <div>{badge}</div>}
            </div>

            {/* Metadata */}
            {metadata && (
              <div className="text-muted-foreground">{metadata}</div>
            )}
          </div>
        </div>

        <div className="flex justify-end gap-2">
          {/* Info */}
          {info && info}

          {/* Actions */}
          {actions && actions}
        </div>
      </div>
    </Card>
  );
};
