import { checkPlayPokemonCaught as checkPokemonCaught } from "@/services/gameplay/play-pokemon-caught-check";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { speciesId, formId } = await request.json();

    if (!speciesId) {
      return NextResponse.json(
        { error: "Species ID is required" },
        { status: 400 },
      );
    }

    const result = await checkPokemonCaught(playId, speciesId, formId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    console.error("Error checking pokemon as caught:", error);
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to check pokemon as caught",
      },
      { status: 500 },
    );
  }
}
