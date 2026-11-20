import type { HTMLAttributes, ReactNode } from "react";

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
  lg: "title-hero mt-2.5 mb-2 outline-none",
  md: "title-page mt-2.5 mb-2 outline-none",
};

/* v3 `.cont-label`: where the objective stands, in the accent's deep shade. */
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
      "text-calm-ink copy-label flex items-center gap-2",
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
  aside,
  bodyClassName,
  bodyProps,
  children,
  className,
  closeLabel,
  footer,
  onClose,
  titleId,
}: {
  /* The page's main button and its quiet partners. */
  actions?: ReactNode;
  /*
   * Stays put while the body hands over, such as the stamp card: under the
   * body, or beside it where `className` lays the card out in columns.
   */
  aside?: ReactNode;
  /* What moves inside the card, such as Overview's hand-over to the next objective. */
  bodyClassName?: string;
  bodyProps?: Pick<HTMLAttributes<HTMLDivElement>, "inert" | "onAnimationEnd">;
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
    className={cn("relative", className)}
  >
    {onClose ? (
      <Button
        type="button"
        variant="secondary"
        size="icon-sm"
        aria-label={closeLabel ?? "Close"}
        onClick={onClose}
        className="absolute top-4 right-4"
      >
        <AppIcon icon={appIcons.actions.close} />
      </Button>
    ) : null}
    <div
      {...bodyProps}
      className={cn(
        "flex min-w-0 flex-col",
        /* With something beside or under it the body takes only the room it needs. */
        aside ? null : "h-full",
        bodyClassName,
      )}
    >
      {children}
      {actions ? (
        <div className="mt-6 flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:items-center">
          {actions}
        </div>
      ) : null}
      {footer ? (
        <div className="mt-auto pt-6">
          <div className="text-ink-2 copy-note flex items-center gap-4 pt-4">
            {footer}
          </div>
        </div>
      ) : null}
    </div>
    {aside}
  </Card>
);
