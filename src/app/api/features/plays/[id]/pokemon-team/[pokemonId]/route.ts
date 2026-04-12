import {
  removeTeamPokemon,
  updateTeamPokemon,
} from "@/features/play/server/play-team";
import { NextRequest, NextResponse } from "next/server";

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  try {
    const { pokemonId } = await params;
    if (!pokemonId)
      return NextResponse.json(
        { error: "Missing pokemon id" },
        { status: 400 },
      );

    const body = await request.json();
    const { data, error } = await updateTeamPokemon(pokemonId, body);

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

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  try {
    const { pokemonId } = await params;
    if (!pokemonId)
      return NextResponse.json(
        { error: "Missing pokemon id" },
        { status: 400 },
      );

    const { error } = await removeTeamPokemon(pokemonId);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
