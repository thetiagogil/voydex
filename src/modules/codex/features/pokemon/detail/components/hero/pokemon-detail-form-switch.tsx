import Link from "next/link";

import { cn } from "@/shared/utils/cn";

export type PokemonDetailFormSwitchItem = {
  href: string;
  id: number;
  isActive: boolean;
  label: string;
};

type PokemonDetailFormSwitchProps = {
  items: PokemonDetailFormSwitchItem[];
  onSelect: () => void;
};

/*
 * v3's form switch (`.formsw`) under the name. Each form is its own page, so
 * these are links: SegmentedControl's `segment` look, with the current form
 * in the soft selected tint.
 */
export const PokemonDetailFormSwitch = ({
  items,
  onSelect,
}: PokemonDetailFormSwitchProps) => {
  return (
    <nav
      aria-label="Form"
      className="bg-surface-2 inline-flex max-w-full flex-wrap items-center gap-0.5 rounded-xl p-1"
    >
      {items.map((item) => (
        <Link
          key={item.id}
          href={item.href}
          aria-current={item.isActive ? "page" : undefined}
          onClick={item.isActive ? undefined : onSelect}
          className={cn(
            "focus-visible:outline-focus text-14 inline-flex h-10 items-center rounded-full px-3.5 font-bold whitespace-nowrap transition-colors outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid sm:h-9",
            item.isActive
              ? "bg-select-soft text-select-ink font-extrabold"
              : "text-ink-2 hover:bg-hover hover:text-ink",
          )}
        >
          {item.label}
        </Link>
      ))}
    </nav>
  );
};
