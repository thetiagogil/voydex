"use client";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { PAGE_CONTAINER_WIDTH } from "@/lib/constants/layout";
import { LoginFormContent } from "./login-form-content";
import { SignupFormContent } from "./signup-form-content";

type AuthFormProps = {
  mode: "login" | "signup";
};

export const AuthForm = ({ mode }: AuthFormProps) => {
  const isSignup = mode === "signup";

  return (
    <Card className={PAGE_CONTAINER_WIDTH.xs}>
      <CardHeader>
        <CardTitle>{isSignup ? "Create Account" : "Log In"}</CardTitle>
        <CardDescription>
          {isSignup
            ? "Enter your information to create a new account"
            : "Enter your email below to log in to your account"}
        </CardDescription>
      </CardHeader>

      <CardContent>
        {isSignup ? <SignupFormContent /> : <LoginFormContent />}
      </CardContent>
    </Card>
  );
};
