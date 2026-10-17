import { cn } from "@/shared/utils/cn";

type LogoMarkProps = {
  className?: string;
};

/*
 * The "V" tile. A placeholder until the logo is designed. The letter is a
 * picture, drawn by CSS, so it never joins a link's name.
 */
export const LogoMark = ({ className }: LogoMarkProps) => {
  return (
    <span
      aria-hidden
      className={cn(
        "bg-action font-display text-20 inline-grid size-9 place-items-center rounded-sm leading-none font-semibold text-white before:content-['V']",
        className,
      )}
    />
  );
};
