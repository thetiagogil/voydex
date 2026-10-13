import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Avatar, AvatarFallback } from "@/shared/components/ui/avatar";
import { cn } from "@/shared/utils/cn";
import { getEmailInitials } from "@/shared/utils/email-initials";

type SettingsTrainerCardProps = {
  /* Null when your email could not be read right now. */
  email: string | null;
  /* "November 2024"; null when it couldn't be read. */
  trainerSince: string | null;
};

/* A long email wraps before its "@" on phones, not in the middle of a word. */
const splitEmail = (email: string) => {
  const at = email.lastIndexOf("@");
  return at > 0 ? [email.slice(0, at), email.slice(at)] : [email, ""];
};

const nameClassName =
  "font-display text-24 sm:text-28 leading-[1.15] font-semibold";

/*
 * v3's trainer card (`.set-me .you-card`): who you are in Voydex, and the one
 * loud thing on Settings. A 4px white border and a lip tinted by your colour.
 * Until you can pick an icon and a name, it shows your initial on its own
 * white-rimmed disc, your email and since when you've been a trainer.
 * Without an email it is v3's empty card
 * (`.ob-cart.is-empty`): plain clay, the trainer glyph in a dashed circle and
 * a quiet placeholder.
 */
export const SettingsTrainerCard = ({
  email,
  trainerSince,
}: SettingsTrainerCardProps) => {
  const [localPart, domain] = email ? splitEmail(email) : [];

  return (
    <section
      aria-label="Your trainer card"
      className={cn(
        "flex items-center gap-4 rounded-2xl border-4 border-white px-4.5 pt-4.5 pb-5 sm:gap-5.5 sm:px-6.5 sm:pt-5.5 sm:pb-6",
        email
          ? "type-tint shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)] [--t:var(--avatar)]"
          : "bg-surface-2 shadow-[0_5px_0_var(--lip)]",
      )}
    >
      {email ? (
        <Avatar
          aria-hidden
          className="size-19 border-4 border-white sm:size-26"
        >
          <AvatarFallback className="font-display text-24 sm:text-32 font-semibold">
            {getEmailInitials(email)}
          </AvatarFallback>
        </Avatar>
      ) : (
        <span
          aria-hidden
          className="border-dash text-ink-3 grid size-19 shrink-0 place-items-center rounded-full border-3 border-dashed sm:size-26"
        >
          <AppIcon
            icon={appIcons.product.trainer}
            className="size-8 sm:size-9"
          />
        </span>
      )}
      <div className="flex min-w-0 flex-col gap-0.5">
        {email ? (
          <>
            <p className={cn(nameClassName, "wrap-anywhere")}>
              {localPart}
              <wbr />
              {domain}
            </p>
            <p className="text-ink-tint text-13 font-semibold">
              {trainerSince
                ? `Trainer since ${trainerSince}`
                : "The email you log in with"}
            </p>
          </>
        ) : (
          <>
            <p className={cn(nameClassName, "text-ink-3")}>Your email</p>
            <p className="text-ink-2 text-13 font-semibold">
              Couldn&apos;t load it right now
            </p>
          </>
        )}
      </div>
    </section>
  );
};
