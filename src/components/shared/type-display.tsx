import { TYPE_COLORS, type PokemonTypeKey } from "@/lib/constants/type-styles";
import { cn } from "@/lib/utils/cn";
import type { PokemonType } from "@/types/common";

interface TypeIconProps {
  iconPath: string;
  size?: number;
  className?: string;
  alt: string;
}

interface TypeDisplayProps {
  type: PokemonType | string;
  variant?: "solid" | "outline";
  iconOnly?: boolean;
  nameOnly?: boolean;
  size?: "sm" | "md" | "lg";
  className?: string;
}

const TypeIcon = ({ iconPath, size = 16, className, alt }: TypeIconProps) => (
  <div
    className={cn(
      "bg-current",
      "[mask-size:contain] [mask-position:center] [mask-repeat:no-repeat]",
      "[-webkit-mask-position:center] [-webkit-mask-repeat:no-repeat] [-webkit-mask-size:contain]",
      className,
    )}
    style={
      {
        "--icon-size": `${size}px`,
        "--icon-url": `url(${iconPath})`,
        width: "var(--icon-size)",
        height: "var(--icon-size)",
        maskImage: "var(--icon-url)",
        WebkitMaskImage: "var(--icon-url)",
      } as React.CSSProperties
    }
    role="img"
    aria-label={alt}
  />
);

export const TypeDisplay = ({
  type,
  variant = "outline",
  iconOnly = false,
  nameOnly = false,
  size = "md",
  className,
}: TypeDisplayProps) => {
  const key = String(type).toLowerCase() as PokemonTypeKey;
  const colors = TYPE_COLORS[key];
  const iconPath = `/icons/${key}.svg`;
  const displayName = String(type).toUpperCase();

  // Determine what to display
  const shouldShowIcon = !nameOnly;
  const shouldShowName = !iconOnly;

  // Size configurations
  const sizeConfig = {
    sm: {
      icon: 12,
      badge: "h-5 px-2 py-0.5 text-[9px] gap-1",
      iconOnlyBadge: "h-5 w-5",
      nameOnlyBadge: "h-5 px-2 py-0.5 text-[9px]",
    },
    md: {
      icon: 14,
      badge: "h-6 px-2 py-1 text-[10px] gap-1.5",
      iconOnlyBadge: "h-6 w-6",
      nameOnlyBadge: "h-6 px-2.5 py-1 text-[10px]",
    },
    lg: {
      icon: 16,
      badge: "h-7 px-3 py-1.5 text-xs gap-2",
      iconOnlyBadge: "h-7 w-7",
      nameOnlyBadge: "h-7 px-3 py-1.5 text-xs",
    },
  };

  const config = sizeConfig[size];

  // Icon only mode - just the icon, no badge
  if (iconOnly) {
    return (
      <TypeIcon
        iconPath={iconPath}
        size={config.icon}
        className={cn(colors.text, className)}
        alt={displayName}
      />
    );
  }

  // Badge styling
  const baseStyles = cn(
    "inline-flex items-center justify-center",
    "rounded-full border transition-all duration-200",
    "font-semibold tracking-wide cursor-default",
    colors.border,
    colors.text,
  );

  const variantStyles =
    variant === "solid"
      ? cn(
          colors.bgSolid,
          "border-transparent text-white shadow-md",
          colors.glow,
        )
      : cn(colors.bg, colors.hover, "shadow-sm hover:shadow-md");

  // Determine badge size class
  let badgeSizeClass = config.badge;
  if (nameOnly) {
    badgeSizeClass = config.nameOnlyBadge;
  }

  return (
    <div
      className={cn(baseStyles, variantStyles, badgeSizeClass, className)}
      title={displayName}
    >
      {shouldShowIcon && (
        <TypeIcon
          iconPath={iconPath}
          size={config.icon}
          className="flex-shrink-0"
          alt={displayName}
        />
      )}
      {shouldShowName && <span className="leading-none">{displayName}</span>}
    </div>
  );
};
