import Link from "next/link";

import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { surfaceClassNames } from "@/shared/components/ui/surface";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/shared/auth/server/actions";
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
    <Card className={cn(surfaceClassNames.glass, "overflow-hidden")}>
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
      </CardHeader>
      <form action={action} className="flex flex-col">
        <CardContent className="flex flex-col gap-4 pb-8">
          <input type="hidden" name="next" value={next} />
          <Field name="email">
            <FieldLabel>Email</FieldLabel>
            <Input
              type="email"
              autoComplete="email"
              className={cn(surfaceClassNames.field, "h-11")}
              required
            />
          </Field>
          <Field name="password">
            <FieldLabel>Password</FieldLabel>
            <Input
              type="password"
              autoComplete={isSignUp ? "new-password" : "current-password"}
              className={cn(surfaceClassNames.field, "h-11")}
              required
              minLength={6}
            />
          </Field>
          {isSignUp ? (
            <Field name="confirmPassword">
              <FieldLabel>Confirm password</FieldLabel>
              <Input
                type="password"
                autoComplete="new-password"
                className={cn(surfaceClassNames.field, "h-11")}
                required
                minLength={6}
              />
            </Field>
          ) : null}

          {error ? (
            <Alert variant="destructive">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          ) : null}
        </CardContent>
        <CardFooter
          className={cn(
            surfaceClassNames.subtle,
            "flex flex-col items-stretch gap-5 pt-6 pb-0",
          )}
        >
          <Button type="submit" className="h-11 text-base">
            {title}
          </Button>
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
