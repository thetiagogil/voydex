import type { SVGProps } from "react";

export const LogoMark = (props: SVGProps<SVGSVGElement>) => {
  return (
    <svg viewBox="0 0 512 512" aria-hidden {...props}>
      <rect width="512" height="512" rx="116" fill="currentColor" />
      <path
        className="fill-primary-foreground"
        fillRule="evenodd"
        d="M256 108C283.4 185.5 326.5 228.6 404 256C326.5 283.4 283.4 326.5 256 404C228.6 326.5 185.5 283.4 108 256C185.5 228.6 228.6 185.5 256 108ZM256 226A30 30 0 1 0 256 286A30 30 0 1 0 256 226Z"
      />
    </svg>
  );
};
