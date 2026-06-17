import Link from "next/link";

import { Alert, AlertDescription } from "@/components/ui/alert";
import { Button, buttonVariants } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  logInWithPassword,
  signUpWithPassword,
} from "@/features/auth/server/actions";
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

  if (next !== "/dashboard") {
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
    <Card className="bg-card/30 shadow-primary/10 overflow-hidden border-0 shadow-xl backdrop-blur-xl">
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
      </CardHeader>
      <form action={action} className="flex flex-col">
        <CardContent className="flex flex-col gap-4 pb-8">
          <input type="hidden" name="next" value={next} />
          <div className="flex flex-col gap-2">
            <Label htmlFor="email">Email</Label>
            <Input
              id="email"
              name="email"
              type="email"
              autoComplete="email"
              className="bg-background/25 h-11 backdrop-blur-md"
              required
            />
          </div>
          <div className="flex flex-col gap-2">
            <Label htmlFor="password">Password</Label>
            <Input
              id="password"
              name="password"
              type="password"
              autoComplete={isSignUp ? "new-password" : "current-password"}
              className="bg-background/25 h-11 backdrop-blur-md"
              required
              minLength={6}
            />
          </div>
          {isSignUp ? (
            <div className="flex flex-col gap-2">
              <Label htmlFor="confirmPassword">Confirm password</Label>
              <Input
                id="confirmPassword"
                name="confirmPassword"
                type="password"
                autoComplete="new-password"
                className="bg-background/25 h-11 backdrop-blur-md"
                required
                minLength={6}
              />
            </div>
          ) : null}

          {error ? (
            <Alert variant="destructive">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          ) : null}
        </CardContent>
        <CardFooter className="bg-background/5 flex flex-col items-stretch gap-5 pt-6 pb-0">
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
