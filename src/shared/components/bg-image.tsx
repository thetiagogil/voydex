import { cn } from "@/lib/utils/cn";
import Image from "next/image";

type BgImageProps = {
  isHero?: boolean;
}

export const BgImage = ({ isHero }: BgImageProps) => {
  return (
    <div className="fixed inset-0 z-0">
      <Image
        src="/bg-1.png"
        alt="Pokemon background"
        fill
        className={cn(
          "object-cover",
          isHero ? "opacity-[0.3]" : "opacity-[0.03]",
        )}
        priority
      />
    </div>
  );
};
