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
      <span
        className={cn(
          "bg-background/80 flex size-8 items-center justify-center rounded-lg border shadow-sm",
          markClassName,
        )}
      >
        <Image
          src="/icons/types/pokeball.svg"
          alt=""
          width={18}
          height={18}
          aria-hidden
        />
      </span>
      {showText ? (
        <span className="text-base font-semibold tracking-tight">
          <span className="text-primary">Voy</span>dex
        </span>
      ) : null}
    </span>
  );
}
