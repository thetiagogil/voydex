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
      <span className="border-dash text-ink-3 @container flex aspect-square h-2/3 max-h-40 min-h-8 items-center justify-center rounded-full border-[1.5px] border-dashed">
        <span className="text-[clamp(1.5rem,48cqw,6rem)] leading-none font-bold">
          ?
        </span>
      </span>
    </div>
  );
};
