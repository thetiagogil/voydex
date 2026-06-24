import type * as React from "react";
import { cn } from "@/lib/utils";

type BrandImageLayer = {
  src: string;
  className: string;
};
type BrandImageProps = {
  className?: string;
  height: number;
  layers: BrandImageLayer[];
  width: number;
};

const getMaskStyle = (src: string): React.CSSProperties => {
  return {
    WebkitMaskImage: `url(${src})`,
    WebkitMaskPosition: "center",
    WebkitMaskRepeat: "no-repeat",
    WebkitMaskSize: "contain",
    maskImage: `url(${src})`,
    maskPosition: "center",
    maskRepeat: "no-repeat",
    maskSize: "contain",
  };
};

export const BrandImage = ({
  className,
  height,
  layers,
  width,
}: BrandImageProps) => {
  return (
    <span
      aria-hidden
      className={cn("relative block", className)}
      style={{ aspectRatio: `${width} / ${height}` }}
    >
      {layers.map((layer) => (
        <span
          key={layer.src}
          className={cn("absolute inset-0", layer.className)}
          style={getMaskStyle(layer.src)}
        />
      ))}
    </span>
  );
};
