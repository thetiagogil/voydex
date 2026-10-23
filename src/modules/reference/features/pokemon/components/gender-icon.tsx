import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export type PokemonGender = "female" | "genderless" | "male" | "unknown";

const genders: Record<
  PokemonGender,
  {
    className: string;
    icon: keyof typeof appIcons.product | "unknown";
    label: string;
  }
> = {
  female: { className: "text-female", icon: "genderFemale", label: "Female" },
  genderless: {
    className: "text-ink-3",
    icon: "genderless",
    label: "Genderless",
  },
  male: { className: "text-calm-ink", icon: "genderMale", label: "Male" },
  unknown: { className: "text-ink-3", icon: "unknown", label: "Not recorded" },
};

/*
 * A Pokémon's gender as its symbol: male blue, female pink, genderless and
 * not recorded quiet. With `labelled` the word is read aloud (a line of
 * text); without it the symbol is decoration beside a word that says it.
 */
export const GenderIcon = ({
  className,
  gender,
  labelled = false,
}: {
  className?: string;
  gender: PokemonGender;
  labelled?: boolean;
}) => {
  const { className: colour, icon, label } = genders[gender];

  return (
    <>
      <AppIcon
        icon={
          icon === "unknown" ? appIcons.status.unknown : appIcons.product[icon]
        }
        size="md"
        className={cn(colour, className)}
      />
      {labelled ? <span className="sr-only">{label}</span> : null}
    </>
  );
};

/* The words a gender reads as, such as in a list's label. */
export const genderLabels: Record<PokemonGender, string> = {
  female: genders.female.label,
  genderless: genders.genderless.label,
  male: genders.male.label,
  unknown: genders.unknown.label,
};
