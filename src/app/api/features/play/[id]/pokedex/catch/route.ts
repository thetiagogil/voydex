import { markPokedexEntryCaught } from "@/features/play/server/play-pokedex";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { pokedexEntryId } = await request.json();

    if (!playId || !pokedexEntryId)
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 },
      );

    const { data, error } = await markPokedexEntryCaught(
      playId,
      pokedexEntryId,
    );

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
