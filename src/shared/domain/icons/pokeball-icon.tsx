import { forwardRef } from "react";
import type { LucideIcon, LucideProps } from "lucide-react";

type PokeballIconStrokeWidthParams = {
  absoluteStrokeWidth?: boolean;
  size: LucideProps["size"];
  strokeWidth: NonNullable<LucideProps["strokeWidth"]>;
};

const getPokeballIconStrokeWidth = ({
  absoluteStrokeWidth,
  size,
  strokeWidth,
}: PokeballIconStrokeWidthParams) => {
  if (!absoluteStrokeWidth) {
    return strokeWidth;
  }

  const numericSize =
    typeof size === "number" ? size : Number.parseFloat(String(size));

  if (!Number.isFinite(numericSize) || numericSize === 0) {
    return strokeWidth;
  }

  return (Number(strokeWidth) * 24) / numericSize;
};

export const PokeballIcon: LucideIcon = forwardRef<SVGSVGElement, LucideProps>(
  (
    {
      absoluteStrokeWidth,
      children,
      color = "currentColor",
      size = 24,
      strokeWidth = 2,
      ...props
    },
    ref,
  ) => {
    return (
      <svg
        ref={ref}
        xmlns="http://www.w3.org/2000/svg"
        width={size}
        height={size}
        viewBox="0 0 24 24"
        fill="none"
        stroke={color}
        strokeWidth={getPokeballIconStrokeWidth({
          absoluteStrokeWidth,
          size,
          strokeWidth,
        })}
        strokeLinecap="round"
        strokeLinejoin="round"
        {...props}
      >
        {/* The top half is filled, as a real Poké Ball's red half. */}
        <path
          d="M3 12a9 9 0 0 1 18 0h-6a3 3 0 0 0-6 0Z"
          fill={color}
          stroke="none"
        />
        <circle cx="12" cy="12" r="9" />
        <path d="M3 12h6" />
        <path d="M15 12h6" />
        <circle cx="12" cy="12" r="3" />
        {children}
      </svg>
    );
  },
);

PokeballIcon.displayName = "PokeballIcon";
