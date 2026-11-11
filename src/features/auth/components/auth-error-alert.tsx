import { Link } from "@/shared/components/link";

import {
  type AuthErrorCode,
  type AuthErrorLinkTarget,
  authErrorCopy,
} from "@/features/auth/auth-errors";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

type AuthErrorAlertProps = {
  error: AuthErrorCode;
  /* Where each link target leads from this page; a target left out drops its link. */
  links?: Partial<Record<AuthErrorLinkTarget, string>>;
};

/* Why it didn't work (v3 `.au-err`), in Voydex's own words, with the way forward when there is one. */
export const AuthErrorAlert = ({ error, links }: AuthErrorAlertProps) => {
  const copy = authErrorCopy[error];
  const linkHref = copy.link ? links?.[copy.link.target] : undefined;

  return (
    <Alert variant="destructive" className="mb-4.5">
      <AppIcon icon={appIcons.status.error} />
      <AlertTitle>{copy.title}</AlertTitle>
      <AlertDescription>
        {copy.description}
        {copy.link && linkHref ? (
          <>
            {" "}
            <Link
              href={linkHref}
              className="rounded-xs font-extrabold underline"
            >
              {copy.link.label}
            </Link>
            {copy.link.trailing}
          </>
        ) : copy.link?.trailing ? (
          /* Without its link, the sentence still needs an ending. */
          <>
            {" "}
            {copy.link.label}
            {copy.link.trailing}
          </>
        ) : null}
      </AlertDescription>
    </Alert>
  );
};
