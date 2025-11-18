import { Badge } from "../ui/badge";

type OPACITY = {
  bg?: number | null;
  border?: number | null;
  text?: number | null;
};

const OPACITY: Record<"outline" | "solid", OPACITY> = {
  outline: {
    bg: 15,
    border: 75,
    text: null,
  },
  solid: {
    bg: 75,
    border: 75,
  },
} as const;

const appendOpacity = (base: string, opacity?: number | null) =>
  opacity ? `${base}/${opacity}` : base;

const getTypeStyles = (type: string, variant: "solid" | "outline") => {
  const typeClass = type.toLowerCase();

  if (variant === "solid") {
    const bgClass = appendOpacity(`bg-type-${typeClass}`, OPACITY.solid.bg);
    const borderClass = appendOpacity(
      `border-type-${typeClass}`,
      OPACITY.solid.border,
    );
    return `${bgClass} ${borderClass} text-white`;
  }

  const bgClass = appendOpacity(`bg-type-${typeClass}`, OPACITY.outline.bg);
  const borderClass = appendOpacity(
    `border-type-${typeClass}`,
    OPACITY.outline.border,
  );
  const textClass = appendOpacity(
    `text-type-${typeClass}`,
    OPACITY.outline.text,
  );

  return `${bgClass} ${borderClass} ${textClass}`;
};

export const TypeBadge = ({
  type,
  variant = "outline",
}: {
  type: Type;
  variant?: "solid" | "outline";
}) => {
  const typeStyles = getTypeStyles(type, variant);

  return <Badge className={typeStyles}>{type}</Badge>;
};
