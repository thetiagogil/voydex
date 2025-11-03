"use client";

import { Button } from "@/components/ui/button";
import { useClaims } from "@/hooks/useAuth";
import Image from "next/image";
import Link from "next/link";

export function Hero() {
  const { data: isAuthenticated, isLoading } = useClaims();

  return (
    <div className="relative flex min-h-screen items-center justify-center overflow-hidden">
      {/* Background Image */}
      <div className="absolute inset-0 z-0">
        <Image
          src="/bg-1.jpg"
          alt="Pokemon background"
          fill
          className="object-cover"
          priority
        />
        <div className="dark:bg-background/60 absolute inset-0" />
      </div>

      {/* Content */}
      <div className="relative z-10 mx-auto max-w-2xl px-6 text-center">
        <h1 className="text-foreground mb-6 text-5xl font-bold md:text-6xl lg:text-7xl">
          <span className="text-primary">Poke</span>
          <span className="text-foreground">tracker</span>
        </h1>

        <p className="text-muted-foreground mb-12 text-lg leading-relaxed md:text-xl">
          Your ultimate companion for the Pokémon world
        </p>

        <div className="flex flex-col items-center justify-center gap-4 sm:flex-row">
          {isLoading ? (
            <Button size="lg">Loading...</Button>
          ) : isAuthenticated ? (
            <Button asChild size="lg" className="w-full sm:w-auto">
              <Link href="/adventures">Go to Adventures</Link>
            </Button>
          ) : (
            <Button asChild size="lg" className="w-full sm:w-auto">
              <Link href="/auth/login">Get Started</Link>
            </Button>
          )}

          <Button
            asChild
            variant="outline"
            size="lg"
            className="w-full sm:w-auto"
          >
            <Link href="/pokedex">Browse Pokédex</Link>
          </Button>

          <Button
            asChild
            variant="outline"
            size="lg"
            className="w-full sm:w-auto"
          >
            <Link href="/intro">Learn More</Link>
          </Button>
        </div>
      </div>
    </div>
  );
}
