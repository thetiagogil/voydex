import Image from "next/image";

import { cn } from "@/lib/utils";

type LogoProps = {
  className?: string;
  markClassName?: string;
  showText?: boolean;
};

export function Logo({ className, markClassName, showText = true }: LogoProps) {
  return (
    <span className={cn("inline-flex items-center gap-2", className)}>
      <Image
        src="/icon.png"
        alt=""
        width={32}
        height={32}
        className={cn("size-8 rounded-lg", markClassName)}
        aria-hidden
      />
      {showText ? (
        <span className="text-base font-semibold tracking-tight">
          <span className="text-primary">Voy</span>dex
        </span>
      ) : null}
    </span>
  );
}
