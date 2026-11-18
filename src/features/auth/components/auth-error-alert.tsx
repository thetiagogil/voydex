import { Link } from "@/shared/components/link";

import { type AuthErrorCode, authErrorCopy } from "@/features/auth/auth-errors";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

type AuthErrorAlertProps = {
  error: AuthErrorCode;
  /* Where "reset your password" leads from this page; left out, the words stay plain. */
  resetHref?: string;
};

/* Why it didn't work (v3 `.au-err`), in Voydex's own words, with the way forward when there is one. */
export const AuthErrorAlert = ({ error, resetHref }: AuthErrorAlertProps) => {
  const copy = authErrorCopy[error];

  return (
    <Alert variant="destructive" className="mb-4.5">
      <AppIcon icon={appIcons.status.error} />
      <AlertTitle>{copy.title}</AlertTitle>
      <AlertDescription>
        {copy.description}
        {copy.resetLink ? (
          <>
            {" "}
            {resetHref ? (
              <Link
                href={resetHref}
                className="rounded-xs font-extrabold underline"
              >
                {copy.resetLink.label}
              </Link>
            ) : (
              copy.resetLink.label
            )}
            {copy.resetLink.trailing}
          </>
        ) : null}
      </AlertDescription>
    </Alert>
  );
};
