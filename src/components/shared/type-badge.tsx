import { TYPE_COLORS, type PokemonTypeKey } from "@/lib/constants/type-styles";
import { cn } from "@/lib/utils/cn";
import { Badge } from "../ui/badge";
import { TYPE_ICON_COMPONENTS } from "./type-icons";

export const TypeBadge = ({
  type,
  variant = "outline",
  iconOnly = false,
  showIcon = true,
  className,
}: {
  type: PokemonType | string;
  variant?: "solid" | "outline";
  iconOnly?: boolean;
  showIcon?: boolean;
  className?: string;
}) => {
  const key = String(type).toLowerCase() as PokemonTypeKey;
  const colors = TYPE_COLORS[key] || TYPE_COLORS.normal;
  const Icon = TYPE_ICON_COMPONENTS[key];
  const baseStyles = cn(
    "relative inline-flex items-center justify-center",
    "border transition-all duration-200",
    "font-semibold tracking-wide",
    "shadow-sm",
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
      : cn(colors.bg, colors.hover);

  if (iconOnly) {
    return (
      <Badge
        className={cn(
          baseStyles,
          variantStyles,
          "h-6 w-6 cursor-default rounded-full p-0",
          "hover:shadow-lg",
          className,
        )}
        title={String(type)}
      >
        {showIcon && Icon ? (
          <Icon size={16} className="drop-shadow-sm" />
        ) : (
          <span className="text-xs font-bold">
            {String(type).charAt(0).toUpperCase()}
          </span>
        )}
      </Badge>
    );
  }

  return (
    <div
      className={cn(
        baseStyles,
        variantStyles,
        "cursor-default gap-1.5 rounded-full px-2 py-1 text-[10px]",
        "hover:shadow-md",
        className,
      )}
    >
      {showIcon && Icon && (
        <Icon size={14} className="flex-shrink-0 drop-shadow-sm" />
      )}
      <span className="uppercase">{String(type)}</span>
    </div>
  );
};
