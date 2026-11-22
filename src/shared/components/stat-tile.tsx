import type { CSSProperties, ReactNode } from "react";

import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { IconDisc } from "@/shared/components/icon-disc";
import { cn } from "@/shared/utils/cn";

/*
 * One figure, the same on every page (Home's trainer card, Statistics, the
 * Planner's Team check): the number in Baloo 2 and the blue of every count,
 * its plain label under it, then an optional line saying what it means. On
 * a card it sits on the inset fill; on a page's band (`ground="band"`) it is
 * white. `size="lg"` is a page's headline figures, which may carry an icon.
 */
export const StatTile = ({
  align = "start",
  children,
  className,
  ground = "card",
  icon,
  label,
  size = "md",
  style,
  value,
}: {
  align?: "center" | "start";
  children?: ReactNode;
  className?: string;
  ground?: "band" | "card";
  icon?: AppIconComponent;
  label: ReactNode;
  size?: "lg" | "md";
  style?: CSSProperties;
  value: ReactNode;
}) => (
  <div
    style={style}
    className={cn(
      "tile flex min-w-0 items-center gap-3",
      ground === "band" && "bg-surface",
      className,
    )}
  >
    <div
      className={cn(
        "flex min-w-0 flex-1 flex-col gap-1",
        align === "center" && "text-center",
      )}
    >
      <p
        className={cn(
          "text-select-ink tabular-nums",
          size === "lg"
            ? "figure"
            : "font-display text-24 leading-none font-semibold",
        )}
      >
        {value}
      </p>
      <p className="text-ink-2 copy-note">{label}</p>
      {children ? <p className="text-ink-2 copy-note">{children}</p> : null}
    </div>
    {icon ? (
      <IconDisc size="xl" className="text-calm">
        <AppIcon icon={icon} size="xl" />
      </IconDisc>
    ) : null}
  </div>
);
