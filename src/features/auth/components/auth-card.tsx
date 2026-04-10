"use client";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { PAGE_CONTAINER_WIDTH } from "@/shared/constants/layout";
import { LoginForm } from "../forms/login-form";
import { SignupForm } from "../forms/signup-form";

type AuthFormProps = {
  mode: "login" | "signup";
};

export const AuthCard = ({ mode }: AuthFormProps) => {
  const isSignup = mode === "signup";

  return (
    <Card className={`${PAGE_CONTAINER_WIDTH.xs} w-full p-6 md:p-8`}>
      <CardHeader className="p-0">
        <CardTitle>{isSignup ? "Create Account" : "Log In"}</CardTitle>
        <CardDescription>
          {isSignup
            ? "Enter your information to create a new account"
            : "Enter your email below to log in to your account"}
        </CardDescription>
      </CardHeader>

      <CardContent className="p-0">
        {isSignup ? <SignupForm /> : <LoginForm />}
      </CardContent>
    </Card>
  );
};
