import type { ComponentPropsWithoutRef } from "react";

import { cn } from "@/shared/utils/cn";
import type { AppIconComponent } from "@/shared/domain/icons/app-icons";

export {
  appIcons,
  type AppIconComponent,
} from "@/shared/domain/icons/app-icons";

const iconSizeClassNames = {
  xs: "size-3",
  sm: "size-3.5",
  md: "size-4",
  lg: "size-5",
  xl: "size-6",
} as const;

export type AppIconSize = keyof typeof iconSizeClassNames | number;
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
  const numericSize = typeof size === "number" ? size : undefined;
  const semanticSizeClassName =
    typeof size === "string" ? iconSizeClassNames[size] : undefined;

  return (
    <IconComponent
      aria-hidden={ariaHidden}
      className={cn(semanticSizeClassName, className)}
      data-icon={inline ? `inline-${inline}` : undefined}
      size={numericSize}
      {...props}
    />
  );
};
