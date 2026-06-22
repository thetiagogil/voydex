import Link from "next/link";

import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Field, FieldGroup, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/shared/auth/server/actions";
import { AuthSubmitButton } from "@/shared/auth/components/auth-submit-button";
import { DEFAULT_AUTH_REDIRECT_PATH } from "@/lib/navigation";
import { cn } from "@/lib/utils";

export type AuthMode = "log-in" | "sign-up";

type AuthPanelProps = {
  error?: string;
  mode: AuthMode;
  next: string;
};

function buildModeHref(mode: AuthMode, next: string) {
  const params = new URLSearchParams();

  if (mode === "sign-up") {
    params.set("mode", mode);
  }

  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    params.set("next", next);
  }

  const query = params.toString();

  return query ? `/login?${query}` : "/login";
}

export function AuthPanel({ error, mode, next }: AuthPanelProps) {
  const isSignUp = mode === "sign-up";
  const title = isSignUp ? "Sign up" : "Log in";
  const description = isSignUp
    ? "Create your Voydex account to start tracking plays."
    : "Access your playthroughs, teams, plans, and Pokemon archive.";
  const switchHref = buildModeHref(isSignUp ? "log-in" : "sign-up", next);
  const action = isSignUp ? signUpWithPassword : logInWithPassword;

  return (
    <Card>
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
      </CardHeader>
      <form action={action} className="flex flex-col">
        <CardContent className="flex flex-col gap-4 pb-8">
          <input type="hidden" name="next" value={next} />
          <FieldGroup>
            <Field>
              <FieldLabel htmlFor="email">Email</FieldLabel>
              <Input
                id="email"
                name="email"
                type="email"
                autoComplete="email"
                required
              />
            </Field>
            <Field>
              <FieldLabel htmlFor="password">Password</FieldLabel>
              <Input
                id="password"
                name="password"
                type="password"
                autoComplete={isSignUp ? "new-password" : "current-password"}
                required
                minLength={6}
              />
            </Field>
            {isSignUp ? (
              <Field>
                <FieldLabel htmlFor="confirmPassword">
                  Confirm password
                </FieldLabel>
                <Input
                  id="confirmPassword"
                  name="confirmPassword"
                  type="password"
                  autoComplete="new-password"
                  required
                  minLength={6}
                />
              </Field>
            ) : null}
          </FieldGroup>

          {error ? (
            <Alert variant="destructive">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          ) : null}
        </CardContent>
        <CardFooter className="flex flex-col items-stretch gap-5 pt-6">
          <AuthSubmitButton mode={mode} />
          <p className="text-muted-foreground text-center text-sm">
            {isSignUp ? "Already have an account?" : "Need an account?"}{" "}
            <Link
              href={switchHref}
              className={cn(
                buttonVariants({ variant: "link" }),
                "h-auto p-0 font-semibold",
              )}
            >
              {isSignUp ? "Log in" : "Sign up"}
            </Link>
          </p>
        </CardFooter>
      </form>
    </Card>
  );
}
