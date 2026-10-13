import { Avatar, AvatarFallback } from "@/shared/components/ui/avatar";
import { cn } from "@/shared/utils/cn";

type SettingsTrainerCardProps = {
  /* Null when your email could not be read right now. */
  email: string | null;
};

/* Matches the nav avatar's rule in the app shell's user menu. */
const getInitials = (email: string) => {
  const name = email.split("@")[0] ?? "U";
  return name.slice(0, 2).toUpperCase();
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
 * Until you can pick an icon and a name, it shows your initials on their own
 * white-rimmed disc, and your email. Without an email it is v3's empty card
 * (`.ob-cart.is-empty`): plain clay, a dashed circle and a quiet placeholder.
 */
export const SettingsTrainerCard = ({ email }: SettingsTrainerCardProps) => {
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
            {getInitials(email)}
          </AvatarFallback>
        </Avatar>
      ) : (
        <span
          aria-hidden
          className="border-dash size-19 shrink-0 rounded-full border-3 border-dashed sm:size-26"
        />
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
              The email you log in with
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
