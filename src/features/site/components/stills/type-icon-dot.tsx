import Image from "next/image";

import type { SiteTypeSlug } from "@/features/site/types";
import {
  getTypeColourStyle,
  getTypeIconSrc,
} from "@/features/site/utils/type-colour";

type TypeIconDotProps = {
  type: SiteTypeSlug;
};

/* A type dot: the type's white icon on its official colour. */
export const TypeIconDot = ({ type }: TypeIconDotProps) => (
  <span
    style={getTypeColourStyle(type)}
    className="grid size-[18px] shrink-0 place-items-center rounded-full bg-(--t)"
  >
    <Image
      src={getTypeIconSrc(type)}
      alt=""
      width={12}
      height={12}
      className="size-[11px] brightness-0 invert"
    />
  </span>
);
