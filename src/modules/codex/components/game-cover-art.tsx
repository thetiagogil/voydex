import Image from "next/image";
import { cn } from "@/lib/utils";

type GameCoverArtProps = {
  className?: string;
  imageUrl: string | null;
  name: string;
};

const getGameCoverInitials = (name: string) => {
  const displayName = name.replace(/^Pokemon\s+/i, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];
  if (!words.length) {
    return name.slice(0, 1).toUpperCase();
  }
  if (words.length === 1) {
    return words[0].slice(0, 1).toUpperCase();
  }
  return words
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};

export const GameCoverArt = ({
  className,
  imageUrl,
  name,
}: GameCoverArtProps) => {
  const initials = getGameCoverInitials(name);
  return (
    <div
      className={cn(
        "bg-primary/10 border-primary/20 relative isolate flex aspect-[16/9] items-center justify-center overflow-hidden rounded-xl border",
        className,
      )}
    >
      <div
        aria-hidden
        className="bg-primary/20 absolute inset-8 rounded-full blur-3xl"
      />
      {imageUrl ? (
        <Image
          src={imageUrl}
          alt={`${name} cover art`}
          fill
          sizes="(min-width: 1024px) 360px, (min-width: 640px) 50vw, 100vw"
          className="object-cover"
        />
      ) : (
        <div className="relative flex flex-col items-center gap-2 px-6 text-center">
          <div className="bg-primary/15 text-primary flex size-12 items-center justify-center rounded-xl text-lg font-black">
            {initials}
          </div>
          <p className="text-primary text-sm font-semibold">{name}</p>
        </div>
      )}
    </div>
  );
};
