import type { ReactNode } from "react";

import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/*
 * v3 `.cont-title`: Overview's next objective is the larger one; Story's
 * panel sits in a narrower column.
 */
export const objectiveTitleClassNames = {
  lg: "sm:text-44 mt-2.5 mb-2 text-[34px] leading-[1.02] tracking-tight outline-none",
  md: "text-32 mt-2.5 mb-2 leading-[1.02] tracking-tight outline-none lg:text-[36px]",
};

/* v3 `.cont-label`: where the objective stands, in the game's deep colour. */
export const ObjectiveEyebrow = ({
  children,
  className,
  icon,
}: {
  children: ReactNode;
  className?: string;
  icon: AppIconComponent;
}) => (
  <p
    className={cn(
      "text-game-deep text-13 flex items-center gap-2 font-extrabold",
      className,
    )}
  >
    <AppIcon icon={icon} size="md" className="shrink-0" />
    <span>{children}</span>
  </p>
);

/* v3 `.cont-where`: where the objective happens. */
export const ObjectiveWhere = ({ children }: { children: ReactNode }) => (
  <p className="text-ink-2 flex items-start gap-1.5 font-semibold">
    <AppIcon
      icon={appIcons.product.location}
      size="md"
      className="mt-0.5 shrink-0"
    />
    <span className="line-clamp-2">{children}</span>
  </p>
);

/*
 * The objective card (v3 `.cont`), Overview's next objective and Story's
 * panel: quiet, a Fredoka title over the page's main button, and an optional
 * footer line at the bottom. Its heading names the region.
 */
export const ObjectiveCard = ({
  actions,
  children,
  className,
  closeLabel,
  footer,
  onClose,
  titleId,
}: {
  /* The page's main button and its quiet partners. */
  actions?: ReactNode;
  /* The eyebrow, the title (with `id={titleId}`) and what it asks. */
  children: ReactNode;
  className?: string;
  closeLabel?: string;
  footer?: ReactNode;
  /* Shows a close button in the corner, such as back to the next objective. */
  onClose?: () => void;
  titleId: string;
}) => (
  <Card
    role="region"
    aria-labelledby={titleId}
    className={cn("relative px-5 sm:px-7", className)}
  >
    {onClose ? (
      <Button
        type="button"
        variant="soft"
        size="icon-sm"
        aria-label={closeLabel ?? "Close"}
        onClick={onClose}
        className="absolute top-4 right-4"
      >
        <AppIcon icon={appIcons.actions.close} />
      </Button>
    ) : null}
    <div className="flex h-full min-w-0 flex-col">
      {children}
      {actions ? (
        <div className="mt-6 flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:items-center">
          {actions}
        </div>
      ) : null}
      {footer ? (
        <div className="mt-auto pt-6">
          <div className="text-ink-2 text-14 flex items-center gap-3.5 pt-4 font-semibold">
            {footer}
          </div>
        </div>
      ) : null}
    </div>
  </Card>
);
