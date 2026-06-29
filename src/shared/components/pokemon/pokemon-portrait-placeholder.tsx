type PokemonPortraitPlaceholderProps = {
  alt: string;
};

export const PokemonPortraitPlaceholder = ({
  alt,
}: PokemonPortraitPlaceholderProps) => {
  return (
    <div
      role="img"
      aria-label={`No portrait available for ${alt}`}
      className="relative z-10 flex size-full items-center justify-center"
    >
      <span className="bg-muted/55 text-muted-foreground border-border/70 [container-type:inline-size] flex aspect-square h-2/3 max-h-40 min-h-8 items-center justify-center rounded-full border shadow-inner backdrop-blur-sm">
        <span className="text-[clamp(1.5rem,48cqw,6rem)] leading-none font-bold">
          ?
        </span>
      </span>
    </div>
  );
};
