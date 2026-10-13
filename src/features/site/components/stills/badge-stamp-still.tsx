import Image from "next/image";
import type { CSSProperties } from "react";

import type { SiteTypeSlug } from "@/features/site/types";
import { getTypeIconSrc } from "@/features/site/utils/type-colour";

type BadgeStampStillProps = {
  tilt: number;
  type: SiteTypeSlug;
};

/* A drawing of an earned gym badge stamp: its type colour, a white ring, a small lip and its tilt. */
export const BadgeStampStill = ({ tilt, type }: BadgeStampStillProps) => (
  <span
    style={
      {
        "--t": `var(--type-${type})`,
        "--tilt": `${tilt}deg`,
      } as CSSProperties
    }
    className="relative grid aspect-square w-full rotate-(--tilt) place-items-center rounded-full bg-(--t) shadow-[0_0_0_3px_white,0_0_0_5px_color-mix(in_oklab,var(--t)_45%,white),0_4px_0_5px_var(--lip)] after:absolute after:inset-0 after:rounded-full after:bg-[radial-gradient(circle_at_30%_25%,rgb(255_255_255/0.45),transparent_45%)]"
  >
    <Image
      src={getTypeIconSrc(type)}
      alt=""
      width={24}
      height={24}
      className="size-[46%] brightness-0 invert"
    />
  </span>
);
