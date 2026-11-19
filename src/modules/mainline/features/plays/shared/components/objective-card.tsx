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
  actionsPlacement = "below",
  below,
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
   * `end` sets them at the far end of the words from 1024px, where the card
   * runs the page's full width; under the words below that, as `below` does.
   */
  actionsPlacement?: "below" | "end";
  /* Stays put under the body while it hands over, such as the stamp card. */
  below?: ReactNode;
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
        /* With something under it the body takes only the room it needs. */
        below ? null : "h-full",
        actionsPlacement === "end" &&
          "lg:flex-row lg:items-center lg:justify-between lg:gap-8",
        bodyClassName,
      )}
    >
      {actionsPlacement === "end" ? (
        <div className="min-w-0 lg:flex-1">{children}</div>
      ) : (
        children
      )}
      {actions ? (
        <div
          className={cn(
            "mt-6 flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:items-center",
            actionsPlacement === "end" && "lg:mt-0 lg:shrink-0 lg:flex-nowrap",
          )}
        >
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
    {below}
  </Card>
);
