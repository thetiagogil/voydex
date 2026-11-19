import type { ComponentPropsWithoutRef } from "react";

import { cn } from "@/shared/utils/cn";
import type { AppIconComponent } from "@/shared/domain/icons/app-icons";

export {
  appIcons,
  type AppIconComponent,
} from "@/shared/domain/icons/app-icons";

/*
 * Four icon sizes, matched to the text beside them: 14 beside small text
 * (13), 16 beside text you read and press (15), 20 standing alone in a
 * control or a card, 24 on a figure. Emblems above 24 are drawn by their
 * own component.
 */
const iconSizeClassNames = {
  sm: "size-3.5",
  md: "size-4",
  lg: "size-5",
  xl: "size-6",
} as const;

export type AppIconSize = keyof typeof iconSizeClassNames;
export type AppIconInline = "start" | "end";

type AppIconProps = Omit<
  ComponentPropsWithoutRef<AppIconComponent>,
  "aria-hidden" | "size"
> & {
  "aria-hidden"?: boolean;
  icon: AppIconComponent;
  inline?: AppIconInline;
  size?: AppIconSize;
};

export const AppIcon = ({
  "aria-hidden": ariaHidden = true,
  className,
  icon: IconComponent,
  inline,
  size,
  ...props
}: AppIconProps) => {
  const semanticSizeClassName = size ? iconSizeClassNames[size] : undefined;

  return (
    <IconComponent
      aria-hidden={ariaHidden}
      className={cn(semanticSizeClassName, className)}
      data-icon={inline ? `inline-${inline}` : undefined}
      {...props}
    />
  );
};
