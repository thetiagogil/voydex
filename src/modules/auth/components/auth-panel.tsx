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
} from "@/lib/auth/server/actions";
import { AuthSubmitButton } from "@/modules/auth/components/auth-submit-button";
import { DEFAULT_AUTH_REDIRECT_PATH } from "@/lib/navigation";
import { cn } from "@/lib/utils";

export type AuthMode = "log-in" | "sign-up";
type AuthPanelProps = {
  className?: string;
  error?: string;
  mode: AuthMode;
  next: string;
};

const buildModeHref = (mode: AuthMode, next: string) => {
  const params = new URLSearchParams();
  if (mode === "sign-up") {
    params.set("mode", mode);
  }
  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    params.set("next", next);
  }
  const query = params.toString();
  return query ? `/login?${query}` : "/login";
};

export const AuthPanel = ({ className, error, mode, next }: AuthPanelProps) => {
  const isSignUp = mode === "sign-up";
  const title = isSignUp ? "Sign up" : "Log in";
  const description = isSignUp
    ? "Create your Voydex account to start tracking plays."
    : "Access your playthroughs, teams, and Pokemon reference archive.";
  const switchHref = buildModeHref(isSignUp ? "log-in" : "sign-up", next);
  const action = isSignUp ? signUpWithPassword : logInWithPassword;
  return (
    <Card className={cn("bg-card/82 w-full max-w-full", className)}>
      <CardHeader className="gap-2">
        <CardTitle className="text-2xl leading-tight font-semibold tracking-normal">
          {title}
        </CardTitle>
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
                className="bg-background/30 h-10"
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
                className="bg-background/30 h-10"
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
                  className="bg-background/30 h-10"
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
};
