import Image from "next/image";

import { cn } from "@/shared/utils/cn";

type ClipcardPaperProps = React.ComponentPropsWithoutRef<"div">;

const PAPER_CLIP_POSITIONS = ["start", "end"] as const;

export const ClipcardPaper = ({
  children,
  className,
  ...props
}: ClipcardPaperProps) => {
  return (
    <div className={cn("app-clipcard-paper", className)} {...props}>
      <div
        aria-hidden="true"
        className="app-clipcard-paper-hardware pointer-events-none absolute inset-0 z-20 select-none"
      >
        {PAPER_CLIP_POSITIONS.map((position) => (
          <Image
            key={position}
            src="/design/expedition-paper-clip.webp"
            alt=""
            width={1495}
            height={1052}
            sizes="(min-width: 64rem) 2.3rem, (min-width: 40rem) 2.1rem, 1.85rem"
            loading="eager"
            draggable={false}
            className={`app-clipcard-paper-clip app-clipcard-paper-clip-${position}`}
          />
        ))}
      </div>

      <div className="app-clipcard-paper-content relative z-10">{children}</div>
    </div>
  );
};
