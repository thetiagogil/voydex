import { cn } from "@/shared/utils/cn";

type LogoMarkProps = {
  className?: string;
};

/*
 * The mark: a ball whose dark band is bent into a V, outlined in ink, the
 * same drawing as the app icon (`public/brand/voydex-app-icon.svg`, made by
 * `npm run icons:generate`). It is a picture, so it never joins a link's
 * name. Size it with `size-*`.
 */
export const LogoMark = ({ className }: LogoMarkProps) => {
  return (
    <svg
      aria-hidden
      viewBox="0 0 512 512"
      className={cn("inline-block size-9 shrink-0", className)}
    >
      <defs>
        <clipPath id="logo-mark-ball">
          <circle cx="256" cy="256" r="236" />
        </clipPath>
      </defs>
      <circle cx="256" cy="256" r="236" className="fill-white" />
      <path
        clipPath="url(#logo-mark-ball)"
        d="M0 0H512V150L256 330 0 150Z"
        className="fill-action"
      />
      <path
        clipPath="url(#logo-mark-ball)"
        d="M-20 150 256 330 532 150"
        strokeWidth="44"
        className="stroke-ink fill-none"
      />
      <circle
        cx="256"
        cy="256"
        r="236"
        strokeWidth="40"
        className="stroke-ink fill-none"
      />
    </svg>
  );
};
