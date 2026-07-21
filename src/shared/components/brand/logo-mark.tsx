import Image from "next/image";

type LogoMarkProps = {
  className?: string;
};

export const LogoMark = ({ className }: LogoMarkProps) => {
  return (
    <Image
      src="/brand/voydex-app-icon.svg"
      alt=""
      aria-hidden
      width={512}
      height={512}
      loading="eager"
      className={className}
    />
  );
};
