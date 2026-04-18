import { cn } from "@/lib/utils/cn";
import Image from "next/image";

type BgImageProps = {
  isHero?: boolean;
};

export const BgImage = ({ isHero }: BgImageProps) => {
  return (
    <div className="pointer-events-none fixed inset-0 z-0">
      <Image
        src="/bg-1.png"
        alt="Pokemon background"
        fill
        className={cn(
          "object-cover contrast-110 saturate-[0.75]",
          isHero ? "opacity-[0.18]" : "opacity-[0.06]",
        )}
        priority
      />
    </div>
  );
};
