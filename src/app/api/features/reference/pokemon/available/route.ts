import { getAvailablePokemon } from "@/features/play/server/reference-pokemon";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const versionGroupId = searchParams.get("versionGroupId");
    const gameId = searchParams.get("gameId");

    if (!versionGroupId)
      return NextResponse.json(
        { error: "versionGroupId is required" },
        { status: 400 },
      );

    const { data, error } = await getAvailablePokemon(
      parseInt(versionGroupId),
      gameId ? parseInt(gameId) : undefined,
    );

    if (error)
      return NextResponse.json(
        { error: error instanceof Error ? error.message : String(error) },
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
