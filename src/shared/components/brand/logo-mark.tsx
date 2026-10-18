import { cn } from "@/shared/utils/cn";

type LogoMarkProps = {
  className?: string;
};

/*
 * The "V" mark: a bold, rounded V drawn in white on a round action-red disc
 * (round like the top bar's pill and the avatar), the
 * same drawing as the app icon (`public/brand/voydex-app-icon.svg`). It is a
 * picture, so it never joins a link's name. Size it with `size-*`.
 */
export const LogoMark = ({ className }: LogoMarkProps) => {
  return (
    <span
      aria-hidden
      className={cn(
        "bg-action inline-grid size-9 shrink-0 place-items-center rounded-full text-white",
        className,
      )}
    >
      <svg viewBox="0 0 512 512" className="size-full">
        <path
          d="M164 176 256 344 348 176"
          fill="none"
          stroke="currentColor"
          strokeWidth="72"
          strokeLinecap="round"
          strokeLinejoin="round"
        />
      </svg>
    </span>
  );
};
