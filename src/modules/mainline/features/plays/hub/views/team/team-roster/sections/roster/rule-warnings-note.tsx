import type { ReactNode } from "react";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/data/rule-checks";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

/*
 * What a Play's rules say, as a quiet amber note: each line names the rule,
 * then what breaks it. It only warns; nothing is blocked. Nothing to say,
 * no note.
 */
export const RuleWarningsNote = ({
  children,
  className,
  warnings,
}: {
  /* A closing line, such as "You can still add it." */
  children?: ReactNode;
  className?: string;
  warnings: (RuleWarning & { key: string })[];
}) =>
  warnings.length ? (
    <Alert role="status" variant="warning" className={className}>
      <AppIcon icon={appIcons.status.warning} />
      <AlertTitle className="text-warn-ink">
        Against this Play&apos;s rules
      </AlertTitle>
      <AlertDescription className="text-pretty">
        <ul className="grid gap-0.5">
          {warnings.map((warning) => (
            <li key={warning.key}>
              <span className="font-extrabold">{warning.ruleName}:</span>{" "}
              {warning.text}
            </li>
          ))}
        </ul>
        {children}
      </AlertDescription>
    </Alert>
  ) : null;
