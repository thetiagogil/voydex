import {
  removeTeamPokemon,
  updateTeamPokemon,
} from "@/services/gameplay/play-team";
import { NextRequest, NextResponse } from "next/server";

export async function PATCH(
  req: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  const { pokemonId } = await params;

  if (!pokemonId)
    return NextResponse.json({ error: "Missing pokemon id" }, { status: 400 });

  const body = await req.json();
  const result = await updateTeamPokemon(pokemonId, body);
  const { data, error } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  return NextResponse.json(data, { status: 200 });
}

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  const { pokemonId } = await params;

  if (!pokemonId)
    return NextResponse.json({ error: "Missing pokemon id" }, { status: 400 });

  const result = await removeTeamPokemon(pokemonId);
  const { data, error } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  return NextResponse.json(data, { status: 200 });
}
