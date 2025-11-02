"use client";

import { Button } from "@/components/ui/button";
import { useClaims } from "@/hooks/useAuth";
import Image from "next/image";
import Link from "next/link";

export function Hero() {
  const { data: isAuthenticated, isLoading } = useClaims();

  return (
    <div className="relative min-h-screen flex items-center justify-center overflow-hidden">
      {/* Background Image */}
      <div className="absolute inset-0 z-0">
        <Image
          src="/bg-1.jpg"
          alt="Pokemon background"
          fill
          className="object-cover"
          priority
        />
        <div className="absolute inset-0 dark:bg-background/60" />
      </div>

      {/* Content */}
      <div className="relative z-10 text-center px-6 max-w-2xl mx-auto">
        <h1 className="text-5xl md:text-6xl lg:text-7xl font-bold text-foreground mb-6">
          <span className="text-primary">Poke</span>
          <span className="text-foreground">tracker</span>
        </h1>

        <p className="text-lg md:text-xl text-muted-foreground mb-12 leading-relaxed">
          Your ultimate companion for the Pokémon world
        </p>

        <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
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
