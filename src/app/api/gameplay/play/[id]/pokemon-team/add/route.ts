import { addPokemonToTeam } from "@/services/gameplay/play-pokemon-team";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const body = await req.json();
  const result = await addPokemonToTeam(playId, body);
  const { data, error } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  return NextResponse.json(data, { status: 201 });
}
