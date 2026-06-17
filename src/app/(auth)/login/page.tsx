import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { Logo } from "@/components/app/logo";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Button } from "@/components/ui/button";
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
  signInWithPassword,
  signUpWithPassword,
} from "@/features/auth/actions";

type LoginPageProps = {
  searchParams?: Promise<{
    error?: string;
    next?: string;
  }>;
};

export default async function LoginPage({ searchParams }: LoginPageProps) {
  const params = await searchParams;
  const next = params?.next ?? "/dashboard";

  return (
    <main className="relative isolate flex min-h-screen items-center justify-center px-4 py-12">
      <AppBackground variant="hero" />
      <div className="relative z-10 flex w-full max-w-md flex-col gap-5">
        <Logo />
        <DatabaseHealthBanner />
        <Card className="bg-card/85 shadow-sm backdrop-blur-md">
          <CardHeader>
            <CardTitle>Sign in to Voydex</CardTitle>
            <CardDescription>
              Access your playthroughs, teams, plans, and Pokemon archive.
            </CardDescription>
          </CardHeader>
          <form>
            <CardContent className="flex flex-col gap-4">
              <input type="hidden" name="next" value={next} />
              <div className="flex flex-col gap-2">
                <Label htmlFor="email">Email</Label>
                <Input
                  id="email"
                  name="email"
                  type="email"
                  autoComplete="email"
                  required
                />
              </div>
              <div className="flex flex-col gap-2">
                <Label htmlFor="password">Password</Label>
                <Input
                  id="password"
                  name="password"
                  type="password"
                  autoComplete="current-password"
                  required
                  minLength={6}
                />
              </div>

              {params?.error ? (
                <Alert variant="destructive">
                  <AlertDescription>{params.error}</AlertDescription>
                </Alert>
              ) : null}
            </CardContent>
            <CardFooter className="grid grid-cols-2 gap-3 bg-transparent">
              <Button type="submit" formAction={signInWithPassword}>
                Sign in
              </Button>
              <Button
                type="submit"
                variant="outline"
                formAction={signUpWithPassword}
              >
                Create account
              </Button>
            </CardFooter>
          </form>
        </Card>
      </div>
    </main>
  );
}
