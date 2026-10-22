export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export type Database = {
  gameplay: {
    Tables: {
      mainline_challenge_rule_set_rules: {
        Row: {
          challenge_rule_id: string;
          created_at: string;
          rule_set_id: string;
        };
        ComputedFields: never;
        Insert: {
          challenge_rule_id: string;
          created_at?: string;
          rule_set_id: string;
        };
        Update: {
          challenge_rule_id?: string;
          created_at?: string;
          rule_set_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_challenge_rule_set_rules_challenge_rule_id_fkey";
            columns: ["challenge_rule_id"];
            isOneToOne: false;
            referencedRelation: "mainline_challenge_rules";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_challenge_rule_set_rules_rule_set_id_fkey";
            columns: ["rule_set_id"];
            isOneToOne: false;
            referencedRelation: "mainline_challenge_rule_sets";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_challenge_rule_sets: {
        Row: {
          created_at: string;
          description: string | null;
          id: string;
          name: string;
          slug: string;
          updated_at: string;
          user_id: string | null;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description?: string | null;
          id?: string;
          name: string;
          slug: string;
          updated_at?: string;
          user_id?: string | null;
        };
        Update: {
          created_at?: string;
          description?: string | null;
          id?: string;
          name?: string;
          slug?: string;
          updated_at?: string;
          user_id?: string | null;
        };
        Relationships: [];
      };
      mainline_challenge_rule_types: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_challenge_rules: {
        Row: {
          config: NonNullable<Json>;
          created_at: string;
          description: string | null;
          id: string;
          name: string;
          rule_type_id: number;
          slug: string;
          updated_at: string;
          user_id: string | null;
        };
        ComputedFields: never;
        Insert: {
          config?: NonNullable<Json>;
          created_at?: string;
          description?: string | null;
          id?: string;
          name: string;
          rule_type_id: number;
          slug: string;
          updated_at?: string;
          user_id?: string | null;
        };
        Update: {
          config?: NonNullable<Json>;
          created_at?: string;
          description?: string | null;
          id?: string;
          name?: string;
          rule_type_id?: number;
          slug?: string;
          updated_at?: string;
          user_id?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_challenge_rules_rule_type_id_fkey";
            columns: ["rule_type_id"];
            isOneToOne: false;
            referencedRelation: "mainline_challenge_rule_types";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_challenge_rules: {
        Row: {
          challenge_rule_id: string;
          config_override: Json | null;
          created_at: string;
          play_id: string;
        };
        ComputedFields: never;
        Insert: {
          challenge_rule_id: string;
          config_override?: Json | null;
          created_at?: string;
          play_id: string;
        };
        Update: {
          challenge_rule_id?: string;
          config_override?: Json | null;
          created_at?: string;
          play_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_challenge_rules_challenge_rule_id_fkey";
            columns: ["challenge_rule_id"];
            isOneToOne: false;
            referencedRelation: "mainline_challenge_rules";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_play_challenge_rules_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_collectible_entry_progress: {
        Row: {
          collected_at: string | null;
          collectible_entry_id: number;
          created_at: string;
          play_id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          collected_at?: string | null;
          collectible_entry_id: number;
          created_at?: string;
          play_id: string;
          updated_at?: string;
        };
        Update: {
          collected_at?: string | null;
          collectible_entry_id?: number;
          created_at?: string;
          play_id?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_collectible_entry_progress_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_event_origins: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_play_event_pokemon_refs: {
        Row: {
          created_at: string;
          event_id: string;
          form_id: number;
          id: string;
          level: number | null;
          nickname: string | null;
          play_id: string;
          play_pokemon_id: string | null;
          role: string;
          sort_order: number;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          event_id: string;
          form_id: number;
          id?: string;
          level?: number | null;
          nickname?: string | null;
          play_id: string;
          play_pokemon_id?: string | null;
          role: string;
          sort_order: number;
          species_id: number;
        };
        Update: {
          created_at?: string;
          event_id?: string;
          form_id?: number;
          id?: string;
          level?: number | null;
          nickname?: string | null;
          play_id?: string;
          play_pokemon_id?: string | null;
          role?: string;
          sort_order?: number;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "play_event_pokemon_refs_event_play_fkey";
            columns: ["event_id", "play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_events";
            referencedColumns: ["id", "play_id"];
          },
          {
            foreignKeyName: "play_event_pokemon_refs_play_pokemon_play_fkey";
            columns: ["play_pokemon_id", "play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokemon";
            referencedColumns: ["id", "play_id"];
          },
        ];
      };
      mainline_play_event_team_snapshot_moves: {
        Row: {
          created_at: string;
          move_id: number;
          slot: number;
          snapshot_id: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          move_id: number;
          slot: number;
          snapshot_id: string;
        };
        Update: {
          created_at?: string;
          move_id?: number;
          slot?: number;
          snapshot_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_event_team_snapshot_moves_snapshot_id_fkey";
            columns: ["snapshot_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_event_team_snapshots";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_event_team_snapshots: {
        Row: {
          ability_id: number | null;
          created_at: string;
          event_id: string;
          form_id: number;
          gender: string;
          held_item_id: number | null;
          id: string;
          is_shiny: boolean;
          level: number | null;
          nature_id: number | null;
          nickname: string | null;
          notes: string | null;
          play_id: string;
          play_pokemon_id: string | null;
          position: number;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          ability_id?: number | null;
          created_at?: string;
          event_id: string;
          form_id: number;
          gender?: string;
          held_item_id?: number | null;
          id?: string;
          is_shiny?: boolean;
          level?: number | null;
          nature_id?: number | null;
          nickname?: string | null;
          notes?: string | null;
          play_id: string;
          play_pokemon_id?: string | null;
          position: number;
          species_id: number;
        };
        Update: {
          ability_id?: number | null;
          created_at?: string;
          event_id?: string;
          form_id?: number;
          gender?: string;
          held_item_id?: number | null;
          id?: string;
          is_shiny?: boolean;
          level?: number | null;
          nature_id?: number | null;
          nickname?: string | null;
          notes?: string | null;
          play_id?: string;
          play_pokemon_id?: string | null;
          position?: number;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "play_event_team_snapshots_event_play_fkey";
            columns: ["event_id", "play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_events";
            referencedColumns: ["id", "play_id"];
          },
          {
            foreignKeyName: "play_event_team_snapshots_play_pokemon_play_fkey";
            columns: ["play_pokemon_id", "play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokemon";
            referencedColumns: ["id", "play_id"];
          },
        ];
      };
      mainline_play_event_types: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_play_events: {
        Row: {
          body: string | null;
          created_at: string;
          event_origin_id: number;
          event_type_id: number;
          happened_at: string | null;
          id: string;
          is_pinned: boolean;
          milestone_id: number | null;
          play_id: string;
          timeline_order: number;
          title: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          body?: string | null;
          created_at?: string;
          event_origin_id: number;
          event_type_id: number;
          happened_at?: string | null;
          id?: string;
          is_pinned?: boolean;
          milestone_id?: number | null;
          play_id: string;
          timeline_order: number;
          title: string;
          updated_at?: string;
        };
        Update: {
          body?: string | null;
          created_at?: string;
          event_origin_id?: number;
          event_type_id?: number;
          happened_at?: string | null;
          id?: string;
          is_pinned?: boolean;
          milestone_id?: number | null;
          play_id?: string;
          timeline_order?: number;
          title?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_events_event_origin_id_fkey";
            columns: ["event_origin_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_event_origins";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_play_events_event_type_id_fkey";
            columns: ["event_type_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_event_types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "play_events_milestone_progress_fkey";
            columns: ["play_id", "milestone_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_milestone_progress";
            referencedColumns: ["play_id", "milestone_id"];
          },
        ];
      };
      mainline_play_milestone_decisions: {
        Row: {
          created_at: string;
          decision_option_id: number;
          milestone_id: number;
          play_id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          decision_option_id: number;
          milestone_id: number;
          play_id: string;
          updated_at?: string;
        };
        Update: {
          created_at?: string;
          decision_option_id?: number;
          milestone_id?: number;
          play_id?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_milestone_decisions_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_milestone_progress: {
        Row: {
          completed_at: string | null;
          created_at: string;
          milestone_id: number;
          notes: string | null;
          play_id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          completed_at?: string | null;
          created_at?: string;
          milestone_id: number;
          notes?: string | null;
          play_id: string;
          updated_at?: string;
        };
        Update: {
          completed_at?: string | null;
          created_at?: string;
          milestone_id?: number;
          notes?: string | null;
          play_id?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_milestone_progress_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_optional_content_scopes: {
        Row: {
          created_at: string;
          game_id: number;
          play_id: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          play_id: string;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          play_id?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "play_optional_content_scopes_play_game_fkey";
            columns: ["play_id", "game_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id", "game_id"];
          },
        ];
      };
      mainline_play_pokedex_species_progress: {
        Row: {
          caught_at: string | null;
          created_at: string;
          is_caught: boolean;
          is_seen: boolean;
          play_id: string;
          seen_at: string | null;
          species_id: number;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          caught_at?: string | null;
          created_at?: string;
          is_caught?: boolean;
          is_seen?: boolean;
          play_id: string;
          seen_at?: string | null;
          species_id: number;
          updated_at?: string;
        };
        Update: {
          caught_at?: string | null;
          created_at?: string;
          is_caught?: boolean;
          is_seen?: boolean;
          play_id?: string;
          seen_at?: string | null;
          species_id?: number;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_pokedex_species_progress_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_pokemon: {
        Row: {
          ability_id: number | null;
          ball_item_id: number | null;
          created_at: string;
          final_status: string | null;
          form_id: number;
          gender: string;
          has_gigantamax_factor: boolean;
          held_item_id: number | null;
          id: string;
          is_mvp: boolean;
          is_shiny: boolean;
          level: number | null;
          met_level: number | null;
          met_location_label: string | null;
          nature_id: number | null;
          nickname: string | null;
          personal_notes: string | null;
          play_id: string;
          roster_state_id: number;
          slot: number | null;
          species_id: number;
          tera_type_id: number | null;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          ability_id?: number | null;
          ball_item_id?: number | null;
          created_at?: string;
          final_status?: string | null;
          form_id: number;
          gender?: string;
          has_gigantamax_factor?: boolean;
          held_item_id?: number | null;
          id?: string;
          is_mvp?: boolean;
          is_shiny?: boolean;
          level?: number | null;
          met_level?: number | null;
          met_location_label?: string | null;
          nature_id?: number | null;
          nickname?: string | null;
          personal_notes?: string | null;
          play_id: string;
          roster_state_id: number;
          slot?: number | null;
          species_id: number;
          tera_type_id?: number | null;
          updated_at?: string;
        };
        Update: {
          ability_id?: number | null;
          ball_item_id?: number | null;
          created_at?: string;
          final_status?: string | null;
          form_id?: number;
          gender?: string;
          has_gigantamax_factor?: boolean;
          held_item_id?: number | null;
          id?: string;
          is_mvp?: boolean;
          is_shiny?: boolean;
          level?: number | null;
          met_level?: number | null;
          met_location_label?: string | null;
          nature_id?: number | null;
          nickname?: string | null;
          personal_notes?: string | null;
          play_id?: string;
          roster_state_id?: number;
          slot?: number | null;
          species_id?: number;
          tera_type_id?: number | null;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_roster_state_id_fkey";
            columns: ["roster_state_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokemon_roster_states";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_pokemon_moves: {
        Row: {
          created_at: string;
          move_id: number;
          play_pokemon_id: string;
          slot: number;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          move_id: number;
          play_pokemon_id: string;
          slot: number;
          updated_at?: string;
        };
        Update: {
          created_at?: string;
          move_id?: number;
          play_pokemon_id?: string;
          slot?: number;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_pokemon_moves_play_pokemon_id_fkey";
            columns: ["play_pokemon_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokemon";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_pokemon_roster_states: {
        Row: {
          counts_toward_roster_limit: boolean;
          created_at: string;
          id: number;
          name: string;
          requires_slot: boolean;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          counts_toward_roster_limit: boolean;
          created_at?: string;
          id: number;
          name: string;
          requires_slot: boolean;
          slug: string;
          sort_order: number;
        };
        Update: {
          counts_toward_roster_limit?: boolean;
          created_at?: string;
          id?: number;
          name?: string;
          requires_slot?: boolean;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_play_pokemon_tags: {
        Row: {
          created_at: string;
          play_id: string;
          play_pokemon_id: string;
          tag_id: string;
          user_id: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          play_id: string;
          play_pokemon_id: string;
          tag_id: string;
          user_id: string;
        };
        Update: {
          created_at?: string;
          play_id?: string;
          play_pokemon_id?: string;
          tag_id?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "play_pokemon_tags_play_pokemon_play_fkey";
            columns: ["play_pokemon_id", "play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokemon";
            referencedColumns: ["id", "play_id"];
          },
          {
            foreignKeyName: "play_pokemon_tags_play_user_fkey";
            columns: ["play_id", "user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id", "user_id"];
          },
        ];
      };
      mainline_play_settings: {
        Row: {
          created_at: string;
          include_collectibles_in_completion: boolean;
          include_optional_pokedex_entries_in_completion: boolean;
          include_optional_pokedexes_in_completion: boolean;
          include_pokedex_in_completion: boolean;
          play_id: string;
          pokedex_tracking_enabled: boolean;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          include_collectibles_in_completion?: boolean;
          include_optional_pokedex_entries_in_completion?: boolean;
          include_optional_pokedexes_in_completion?: boolean;
          include_pokedex_in_completion?: boolean;
          play_id: string;
          pokedex_tracking_enabled?: boolean;
          updated_at?: string;
        };
        Update: {
          created_at?: string;
          include_collectibles_in_completion?: boolean;
          include_optional_pokedex_entries_in_completion?: boolean;
          include_optional_pokedexes_in_completion?: boolean;
          include_pokedex_in_completion?: boolean;
          play_id?: string;
          pokedex_tracking_enabled?: boolean;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_play_settings_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: true;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_play_statuses: {
        Row: {
          created_at: string;
          id: number;
          is_terminal: boolean;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          is_terminal?: boolean;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          is_terminal?: boolean;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_play_tags: {
        Row: {
          created_at: string;
          play_id: string;
          tag_id: string;
          user_id: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          play_id: string;
          tag_id: string;
          user_id: string;
        };
        Update: {
          created_at?: string;
          play_id?: string;
          tag_id?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "play_tags_play_user_fkey";
            columns: ["play_id", "user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_plays";
            referencedColumns: ["id", "user_id"];
          },
        ];
      };
      mainline_plays: {
        Row: {
          archived_at: string | null;
          completed_on: string | null;
          created_at: string;
          custom_platform_name: string | null;
          game_id: number;
          id: string;
          name: string;
          notes: string | null;
          platform_id: number | null;
          playtime_minutes: number | null;
          save_notes: string | null;
          started_on: string | null;
          status_id: number;
          trainer_name: string | null;
          updated_at: string;
          user_id: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          archived_at?: string | null;
          completed_on?: string | null;
          created_at?: string;
          custom_platform_name?: string | null;
          game_id: number;
          id?: string;
          name: string;
          notes?: string | null;
          platform_id?: number | null;
          playtime_minutes?: number | null;
          save_notes?: string | null;
          started_on?: string | null;
          status_id?: number;
          trainer_name?: string | null;
          updated_at?: string;
          user_id: string;
          version_group_id: number;
        };
        Update: {
          archived_at?: string | null;
          completed_on?: string | null;
          created_at?: string;
          custom_platform_name?: string | null;
          game_id?: number;
          id?: string;
          name?: string;
          notes?: string | null;
          platform_id?: number | null;
          playtime_minutes?: number | null;
          save_notes?: string | null;
          started_on?: string | null;
          status_id?: number;
          trainer_name?: string | null;
          updated_at?: string;
          user_id?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_plays_status_id_fkey";
            columns: ["status_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_statuses";
            referencedColumns: ["id"];
          },
        ];
      };
      user_game_library_entries: {
        Row: {
          created_at: string;
          game_id: number;
          library_status_id: number;
          notes: string | null;
          updated_at: string;
          user_id: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          library_status_id: number;
          notes?: string | null;
          updated_at?: string;
          user_id: string;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          library_status_id?: number;
          notes?: string | null;
          updated_at?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "user_game_library_entries_library_status_id_fkey";
            columns: ["library_status_id"];
            isOneToOne: false;
            referencedRelation: "user_game_library_statuses";
            referencedColumns: ["id"];
          },
        ];
      };
      user_game_library_statuses: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      add_mainline_play_event: {
        Args: {
          p_body?: string;
          p_event_origin_slug: string;
          p_event_type_slug: string;
          p_happened_at?: string;
          p_play_id: string;
          p_title: string;
        };
        Returns: {
          result_event_id: string;
          result_timeline_order: number;
        }[];
      };
      add_mainline_play_pokemon: {
        Args: {
          p_ability_id?: number;
          p_ball_item_id?: number;
          p_create_event?: boolean;
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_form_id: number;
          p_gender?: string;
          p_held_item_id?: number;
          p_is_shiny?: boolean;
          p_level?: number;
          p_met_level?: number;
          p_met_location_label?: string;
          p_move_ids?: number[];
          p_nature_id?: number;
          p_nickname?: string;
          p_personal_notes?: string;
          p_play_id: string;
          p_roster_state_id: number;
          p_slot: number;
          p_species_id: number;
        };
        Returns: {
          result_event_id: string;
          result_play_pokemon_id: string;
        }[];
      };
      change_mainline_play_pokemon_form: {
        Args: {
          p_clear_held_item?: boolean;
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_held_item_id?: number;
          p_level?: number;
          p_play_pokemon_id: string;
          p_to_form_id: number;
        };
        Returns: {
          result_event_id: string;
          result_from_form_id: number;
          result_play_pokemon_id: string;
          result_species_id: number;
          result_to_form_id: number;
        }[];
      };
      choose_mainline_play_partner: {
        Args: { p_decision_option_id: number; p_play_id: string };
        Returns: {
          result_event_id: string;
          result_milestone_id: number;
          result_partner_name: string;
          result_partner_play_pokemon_id: string;
        }[];
      };
      complete_mainline_play_milestone: {
        Args: {
          p_completed_at?: string;
          p_create_event?: boolean;
          p_decision_option_id?: number;
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_include_team_snapshot?: boolean;
          p_milestone_id: number;
          p_play_id: string;
          p_progress_notes?: string;
          p_record_earlier_milestone_ids?: number[];
          p_replace_decision?: boolean;
          p_replace_progress_notes?: boolean;
        };
        Returns: {
          completed_milestone_ids: number[];
          completion_event_id: string;
          milestone_id: number;
          play_id: string;
          snapshot_count: number;
        }[];
      };
      create_mainline_play: {
        Args: {
          p_challenge_rules?: Json;
          p_expansion_version_group_ids?: number[];
          p_game_id: number;
          p_name: string;
          p_partner_form_id?: number;
          p_partner_species_id?: number;
          p_started_on?: string;
          p_trainer_name?: string;
        };
        Returns: {
          result_partner_decision_option_id: number;
          result_partner_event_id: string;
          result_partner_milestone_id: number;
          result_partner_play_pokemon_id: string;
          result_play_id: string;
        }[];
      };
      evolve_mainline_play_pokemon: {
        Args: {
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_level?: number;
          p_play_pokemon_id: string;
          p_to_form_id: number;
          p_to_species_id: number;
        };
        Returns: {
          result_event_id: string;
          result_from_form_id: number;
          result_from_species_id: number;
          result_play_pokemon_id: string;
          result_to_form_id: number;
          result_to_species_id: number;
        }[];
      };
      find_mainline_partner_milestone: {
        Args: { p_game_id: number };
        Returns: number;
      };
      mark_mainline_play_milestone_incomplete: {
        Args: {
          p_also_clear_milestone_ids?: number[];
          p_expected_affected_milestone_ids: number[];
          p_milestone_id: number;
          p_play_id: string;
        };
        Returns: {
          affected_milestone_count: number;
          affected_milestone_ids: number[];
          removed_decision_count: number;
          removed_history_event_count: number;
          removed_note_count: number;
          removed_team_snapshot_count: number;
        }[];
      };
      move_mainline_play_pokemon: {
        Args: { p_play_pokemon_id: string; p_to_slot: number };
        Returns: {
          result_play_pokemon_id: string;
          result_swapped_play_pokemon_id: string;
        }[];
      };
      remove_mainline_play_pokemon: {
        Args: { p_play_pokemon_id: string; p_remove_added_moment?: boolean };
        Returns: {
          result_play_pokemon_id: string;
          result_removed_event_ids: string[];
        }[];
      };
      replace_mainline_play_pokemon: {
        Args: {
          p_create_event?: boolean;
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_replaced_final_status?: string;
          p_replaced_play_pokemon_id: string;
          p_replacement_ability_id?: number;
          p_replacement_ball_item_id?: number;
          p_replacement_form_id: number;
          p_replacement_gender?: string;
          p_replacement_held_item_id?: number;
          p_replacement_is_shiny?: boolean;
          p_replacement_level?: number;
          p_replacement_met_level?: number;
          p_replacement_met_location_label?: string;
          p_replacement_move_ids?: number[];
          p_replacement_nature_id?: number;
          p_replacement_nickname?: string;
          p_replacement_personal_notes?: string;
          p_replacement_roster_state_id?: number;
          p_replacement_slot?: number;
          p_replacement_species_id: number;
        };
        Returns: {
          result_event_id: string;
          result_replaced_play_pokemon_id: string;
          result_replacement_play_pokemon_id: string;
        }[];
      };
      retire_mainline_play_pokemon: {
        Args: {
          p_create_event?: boolean;
          p_event_body?: string;
          p_event_happened_at?: string;
          p_event_title?: string;
          p_final_status?: string;
          p_play_pokemon_id: string;
        };
        Returns: {
          result_event_id: string;
          result_play_pokemon_id: string;
        }[];
      };
      save_mainline_challenge_rule_set: {
        Args: {
          p_description?: string;
          p_name: string;
          p_rule_ids: string[];
          p_rule_set_id?: string;
          p_slug: string;
        };
        Returns: string;
      };
      set_mainline_play_collectible_entry_progress: {
        Args: {
          p_collected_at?: string;
          p_collectible_entry_id: number;
          p_is_collected?: boolean;
          p_play_id: string;
        };
        Returns: {
          result_collected_at: string;
          result_collectible_entry_id: number;
          result_is_collected: boolean;
          result_play_id: string;
        }[];
      };
      set_mainline_play_pokedex_species_progress: {
        Args: {
          p_caught_at?: string;
          p_is_caught?: boolean;
          p_is_seen?: boolean;
          p_play_id: string;
          p_seen_at?: string;
          p_species_id: number;
        };
        Returns: {
          result_caught_at: string;
          result_is_caught: boolean;
          result_is_seen: boolean;
          result_play_id: string;
          result_seen_at: string;
          result_species_id: number;
        }[];
      };
      undo_mainline_play_partner: {
        Args: { p_partner_play_pokemon_id?: string; p_play_id: string };
        Returns: {
          result_milestone_id: number;
          result_removed_play_pokemon_id: string;
        }[];
      };
      update_mainline_play_general_settings: {
        Args: {
          p_name: string;
          p_play_id: string;
          p_playtime_minutes?: number;
          p_started_on?: string;
          p_status_id: number;
          p_trainer_name?: string;
        };
        Returns: {
          result_play_id: string;
          result_status_event_id: string;
        }[];
      };
      update_mainline_play_pokemon: {
        Args: {
          p_ability_id?: number;
          p_ball_item_id?: number;
          p_gender?: string;
          p_has_gigantamax_factor?: boolean;
          p_held_item_id?: number;
          p_is_shiny?: boolean;
          p_level?: number;
          p_met_level?: number;
          p_met_location_label?: string;
          p_move_ids?: number[];
          p_nature_id?: number;
          p_nickname?: string;
          p_personal_notes?: string;
          p_play_pokemon_id: string;
          p_tera_type_id?: number;
        };
        Returns: {
          result_move_count: number;
          result_play_pokemon_id: string;
        }[];
      };
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  planning: {
    Tables: {
      mainline_play_plan_links: {
        Row: {
          created_at: string;
          created_from_plan: boolean;
          game_id: number;
          id: string;
          play_id: string;
          team_plan_id: string;
          user_id: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          created_from_plan?: boolean;
          game_id: number;
          id?: string;
          play_id: string;
          team_plan_id: string;
          user_id: string;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          created_from_plan?: boolean;
          game_id?: number;
          id?: string;
          play_id?: string;
          team_plan_id?: string;
          user_id?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "play_plan_links_plan_scope_fkey";
            columns: ["team_plan_id", "user_id", "game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plans";
            referencedColumns: ["id", "user_id", "game_id", "version_group_id"];
          },
        ];
      };
      mainline_team_plan_member_moves: {
        Row: {
          created_at: string;
          move_id: number;
          slot: number;
          team_plan_member_id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          move_id: number;
          slot: number;
          team_plan_member_id: string;
          updated_at?: string;
        };
        Update: {
          created_at?: string;
          move_id?: number;
          slot?: number;
          team_plan_member_id?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_team_plan_member_moves_team_plan_member_id_fkey";
            columns: ["team_plan_member_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plan_members";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_team_plan_members: {
        Row: {
          ability_id: number | null;
          created_at: string;
          gender: string | null;
          held_item_id: number | null;
          id: string;
          nature_id: number | null;
          notes: string | null;
          slot: number;
          target_form_id: number;
          target_species_id: number;
          team_plan_id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          ability_id?: number | null;
          created_at?: string;
          gender?: string | null;
          held_item_id?: number | null;
          id?: string;
          nature_id?: number | null;
          notes?: string | null;
          slot: number;
          target_form_id: number;
          target_species_id: number;
          team_plan_id: string;
          updated_at?: string;
        };
        Update: {
          ability_id?: number | null;
          created_at?: string;
          gender?: string | null;
          held_item_id?: number | null;
          id?: string;
          nature_id?: number | null;
          notes?: string | null;
          slot?: number;
          target_form_id?: number;
          target_species_id?: number;
          team_plan_id?: string;
          updated_at?: string;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_team_plan_members_team_plan_id_fkey";
            columns: ["team_plan_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plans";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_team_plan_optional_content_scopes: {
        Row: {
          created_at: string;
          game_id: number;
          team_plan_id: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          team_plan_id: string;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          team_plan_id?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "team_plan_optional_content_scopes_plan_game_fkey";
            columns: ["team_plan_id", "game_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plans";
            referencedColumns: ["id", "game_id"];
          },
        ];
      };
      mainline_team_plan_statuses: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_team_plans: {
        Row: {
          created_at: string;
          game_id: number;
          id: string;
          name: string;
          notes: string | null;
          status_id: number;
          updated_at: string;
          user_id: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          id?: string;
          name: string;
          notes?: string | null;
          status_id?: number;
          updated_at?: string;
          user_id: string;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          id?: string;
          name?: string;
          notes?: string | null;
          status_id?: number;
          updated_at?: string;
          user_id?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_team_plans_status_id_fkey";
            columns: ["status_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plan_statuses";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      clone_mainline_team_plan_for_play: {
        Args: { p_name?: string; p_play_id: string };
        Returns: {
          result_play_plan_link_id: string;
          result_source_team_plan_id: string;
          result_team_plan_id: string;
        }[];
      };
      link_mainline_team_plan_to_play: {
        Args: {
          p_created_from_plan?: boolean;
          p_play_id: string;
          p_replace_existing?: boolean;
          p_team_plan_id: string;
        };
        Returns: {
          result_play_plan_link_id: string;
        }[];
      };
      save_mainline_team_plan: {
        Args: {
          p_expansion_version_group_ids?: number[];
          p_game_id?: number;
          p_members?: Json;
          p_name: string;
          p_team_plan_id?: string;
          p_version_group_id: number;
        };
        Returns: {
          result_created: boolean;
          result_team_plan_id: string;
        }[];
      };
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  public: {
    Tables: {
      profiles: {
        Row: {
          avatar_url: string | null;
          created_at: string;
          display_name: string | null;
          id: string;
          updated_at: string;
        };
        ComputedFields: never;
        Insert: {
          avatar_url?: string | null;
          created_at?: string;
          display_name?: string | null;
          id: string;
          updated_at?: string;
        };
        Update: {
          avatar_url?: string | null;
          created_at?: string;
          display_name?: string | null;
          id?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      tags: {
        Row: {
          color_token: string | null;
          created_at: string;
          id: string;
          name: string;
          slug: string;
          updated_at: string;
          user_id: string;
        };
        ComputedFields: never;
        Insert: {
          color_token?: string | null;
          created_at?: string;
          id?: string;
          name: string;
          slug: string;
          updated_at?: string;
          user_id: string;
        };
        Update: {
          color_token?: string | null;
          created_at?: string;
          id?: string;
          name?: string;
          slug?: string;
          updated_at?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "tags_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "profiles";
            referencedColumns: ["id"];
          },
        ];
      };
      user_preferences: {
        Row: {
          created_at: string;
          updated_at: string;
          user_id: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          updated_at?: string;
          user_id: string;
        };
        Update: {
          created_at?: string;
          updated_at?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "user_preferences_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: true;
            referencedRelation: "profiles";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  reference: {
    Tables: {
      abilities: {
        Row: {
          created_at: string;
          external_id: number | null;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          external_id?: number | null;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          external_id?: number | null;
          id?: number;
          introduced_generation_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "abilities_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      ability_attributes: {
        Row: {
          ability_id: number;
          created_at: string;
          effect_summary: string;
          version_group_start_id: number;
        };
        ComputedFields: never;
        Insert: {
          ability_id: number;
          created_at?: string;
          effect_summary: string;
          version_group_start_id: number;
        };
        Update: {
          ability_id?: number;
          created_at?: string;
          effect_summary?: string;
          version_group_start_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "ability_attributes_ability_id_fkey";
            columns: ["ability_id"];
            isOneToOne: false;
            referencedRelation: "abilities";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "ability_attributes_version_group_start_id_fkey";
            columns: ["version_group_start_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      availability_methods: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      content_scope_dependencies: {
        Row: {
          created_at: string;
          dependency_kind: string;
          required_version_group_id: number;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          dependency_kind?: string;
          required_version_group_id: number;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          dependency_kind?: string;
          required_version_group_id?: number;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "content_scope_dependencies_required_version_group_fkey";
            columns: ["required_version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "content_scope_dependencies_version_group_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      egg_groups: {
        Row: {
          created_at: string;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          introduced_generation_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "egg_groups_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      evolution_families: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      evolution_methods: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      g_max_move_sources: {
        Row: {
          created_at: string;
          form_id: number;
          g_max_move_id: number;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          form_id: number;
          g_max_move_id: number;
          species_id: number;
        };
        Update: {
          created_at?: string;
          form_id?: number;
          g_max_move_id?: number;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "g_max_move_sources_form_fkey";
            columns: ["species_id", "form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "g_max_move_sources_g_max_move_id_fkey";
            columns: ["g_max_move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
        ];
      };
      game_content_scopes: {
        Row: {
          created_at: string;
          game_id: number;
          is_base_scope: boolean;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          is_base_scope?: boolean;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          is_base_scope?: boolean;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "game_content_scopes_game_id_fkey";
            columns: ["game_id"];
            isOneToOne: false;
            referencedRelation: "games";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "game_content_scopes_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      game_platforms: {
        Row: {
          created_at: string;
          game_id: number;
          platform_id: number;
          release_kind: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id: number;
          platform_id: number;
          release_kind: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          game_id?: number;
          platform_id?: number;
          release_kind?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "game_platforms_game_id_fkey";
            columns: ["game_id"];
            isOneToOne: false;
            referencedRelation: "games";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "game_platforms_platform_id_fkey";
            columns: ["platform_id"];
            isOneToOne: false;
            referencedRelation: "platforms";
            referencedColumns: ["id"];
          },
        ];
      };
      game_types: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      games: {
        Row: {
          created_at: string;
          game_type_id: number;
          generation_id: number;
          id: number;
          name: string;
          product_family_id: number;
          region_id: number;
          release_year: number;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_type_id: number;
          generation_id: number;
          id: number;
          name: string;
          product_family_id: number;
          region_id: number;
          release_year: number;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_type_id?: number;
          generation_id?: number;
          id?: number;
          name?: string;
          product_family_id?: number;
          region_id?: number;
          release_year?: number;
          slug?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "games_game_type_id_fkey";
            columns: ["game_type_id"];
            isOneToOne: false;
            referencedRelation: "game_types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "games_product_family_id_fkey";
            columns: ["product_family_id"];
            isOneToOne: false;
            referencedRelation: "product_families";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "games_region_id_fkey";
            columns: ["region_id"];
            isOneToOne: false;
            referencedRelation: "regions";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "games_version_group_generation_fkey";
            columns: ["version_group_id", "generation_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id", "generation_id"];
          },
        ];
      };
      generations: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          start_year: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          start_year: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
          start_year?: number;
        };
        Relationships: [];
      };
      item_availability: {
        Row: {
          availability_method_id: number | null;
          created_at: string;
          game_id: number | null;
          id: number;
          item_id: number;
          notes: string | null;
          scope_operation: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          availability_method_id?: number | null;
          created_at?: string;
          game_id?: number | null;
          id?: number;
          item_id: number;
          notes?: string | null;
          scope_operation?: string;
          version_group_id: number;
        };
        Update: {
          availability_method_id?: number | null;
          created_at?: string;
          game_id?: number | null;
          id?: number;
          item_id?: number;
          notes?: string | null;
          scope_operation?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "item_availability_availability_method_id_fkey";
            columns: ["availability_method_id"];
            isOneToOne: false;
            referencedRelation: "availability_methods";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "item_availability_game_scope_fkey";
            columns: ["game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "game_content_scopes";
            referencedColumns: ["game_id", "version_group_id"];
          },
          {
            foreignKeyName: "item_availability_item_id_fkey";
            columns: ["item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "item_availability_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      item_categories: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      item_category_memberships: {
        Row: {
          category_id: number;
          created_at: string;
          item_id: number;
        };
        ComputedFields: never;
        Insert: {
          category_id: number;
          created_at?: string;
          item_id: number;
        };
        Update: {
          category_id?: number;
          created_at?: string;
          item_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "item_category_memberships_category_id_fkey";
            columns: ["category_id"];
            isOneToOne: false;
            referencedRelation: "item_categories";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "item_category_memberships_item_id_fkey";
            columns: ["item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
        ];
      };
      items: {
        Row: {
          created_at: string;
          effect_summary: string | null;
          external_id: number | null;
          id: number;
          introduced_generation_id: number;
          name: string;
          primary_category_id: number;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          effect_summary?: string | null;
          external_id?: number | null;
          id: number;
          introduced_generation_id: number;
          name: string;
          primary_category_id: number;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          effect_summary?: string | null;
          external_id?: number | null;
          id?: number;
          introduced_generation_id?: number;
          name?: string;
          primary_category_id?: number;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "items_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "items_primary_category_id_fkey";
            columns: ["primary_category_id"];
            isOneToOne: false;
            referencedRelation: "item_categories";
            referencedColumns: ["id"];
          },
        ];
      };
      learn_methods: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      move_attributes: {
        Row: {
          accuracy: number | null;
          created_at: string;
          damage_class: string;
          effect_detail: string | null;
          effect_summary: string | null;
          generation_start_id: number;
          move_id: number;
          power: number | null;
          pp: number | null;
          priority: number;
          type_id: number;
        };
        ComputedFields: never;
        Insert: {
          accuracy?: number | null;
          created_at?: string;
          damage_class: string;
          effect_detail?: string | null;
          effect_summary?: string | null;
          generation_start_id: number;
          move_id: number;
          power?: number | null;
          pp?: number | null;
          priority?: number;
          type_id: number;
        };
        Update: {
          accuracy?: number | null;
          created_at?: string;
          damage_class?: string;
          effect_detail?: string | null;
          effect_summary?: string | null;
          generation_start_id?: number;
          move_id?: number;
          power?: number | null;
          pp?: number | null;
          priority?: number;
          type_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "move_attributes_generation_start_id_fkey";
            columns: ["generation_start_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_attributes_move_id_fkey";
            columns: ["move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_attributes_type_id_fkey";
            columns: ["type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
        ];
      };
      move_availability: {
        Row: {
          created_at: string;
          game_id: number | null;
          id: number;
          move_id: number;
          scope_operation: string;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id?: number | null;
          id?: number;
          move_id: number;
          scope_operation?: string;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number | null;
          id?: number;
          move_id?: number;
          scope_operation?: string;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "move_availability_game_scope_fkey";
            columns: ["game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "game_content_scopes";
            referencedColumns: ["game_id", "version_group_id"];
          },
          {
            foreignKeyName: "move_availability_move_id_fkey";
            columns: ["move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_availability_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      move_kinds: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      move_machines: {
        Row: {
          created_at: string;
          game_id: number | null;
          id: number;
          learn_method_id: number;
          machine_label: string;
          move_id: number;
          scope_operation: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id?: number | null;
          id: number;
          learn_method_id: number;
          machine_label: string;
          move_id: number;
          scope_operation?: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number | null;
          id?: number;
          learn_method_id?: number;
          machine_label?: string;
          move_id?: number;
          scope_operation?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "move_machines_game_scope_fkey";
            columns: ["game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "game_content_scopes";
            referencedColumns: ["game_id", "version_group_id"];
          },
          {
            foreignKeyName: "move_machines_learn_method_id_fkey";
            columns: ["learn_method_id"];
            isOneToOne: false;
            referencedRelation: "learn_methods";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_machines_move_id_fkey";
            columns: ["move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_machines_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      move_version_group_attributes: {
        Row: {
          accuracy: number | null;
          created_at: string;
          damage_class: string;
          move_id: number;
          power: number | null;
          pp: number | null;
          priority: number;
          type_id: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          accuracy?: number | null;
          created_at?: string;
          damage_class: string;
          move_id: number;
          power?: number | null;
          pp?: number | null;
          priority?: number;
          type_id: number;
          version_group_id: number;
        };
        Update: {
          accuracy?: number | null;
          created_at?: string;
          damage_class?: string;
          move_id?: number;
          power?: number | null;
          pp?: number | null;
          priority?: number;
          type_id?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "move_version_group_attributes_move_id_fkey";
            columns: ["move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_version_group_attributes_type_id_fkey";
            columns: ["type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "move_version_group_attributes_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      moves: {
        Row: {
          created_at: string;
          external_id: number | null;
          id: number;
          introduced_generation_id: number;
          move_kind_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          external_id?: number | null;
          id: number;
          introduced_generation_id: number;
          move_kind_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          external_id?: number | null;
          id?: number;
          introduced_generation_id?: number;
          move_kind_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "moves_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "moves_move_kind_id_fkey";
            columns: ["move_kind_id"];
            isOneToOne: false;
            referencedRelation: "move_kinds";
            referencedColumns: ["id"];
          },
        ];
      };
      natures: {
        Row: {
          created_at: string;
          decreased_stat: string | null;
          id: number;
          increased_stat: string | null;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          decreased_stat?: string | null;
          id: number;
          increased_stat?: string | null;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          decreased_stat?: string | null;
          id?: number;
          increased_stat?: string | null;
          introduced_generation_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "natures_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      platforms: {
        Row: {
          created_at: string;
          id: number;
          manufacturer: string | null;
          name: string;
          platform_kind: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          manufacturer?: string | null;
          name: string;
          platform_kind: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          manufacturer?: string | null;
          name?: string;
          platform_kind?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      pokedex: {
        Row: {
          created_at: string;
          id: number;
          is_completion_relevant: boolean;
          name: string;
          pokedex_kind: string;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          is_completion_relevant?: boolean;
          name: string;
          pokedex_kind: string;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          is_completion_relevant?: boolean;
          name?: string;
          pokedex_kind?: string;
          slug?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokedex_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      pokedex_entries: {
        Row: {
          created_at: string;
          display_form_id: number | null;
          is_source_required_for_completion: boolean;
          pokedex_id: number;
          pokedex_number: number;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          display_form_id?: number | null;
          is_source_required_for_completion?: boolean;
          pokedex_id: number;
          pokedex_number: number;
          species_id: number;
        };
        Update: {
          created_at?: string;
          display_form_id?: number | null;
          is_source_required_for_completion?: boolean;
          pokedex_id?: number;
          pokedex_number?: number;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokedex_entries_display_form_fkey";
            columns: ["species_id", "display_form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokedex_entries_pokedex_id_fkey";
            columns: ["pokedex_id"];
            isOneToOne: false;
            referencedRelation: "pokedex";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokedex_entries_species_id_fkey";
            columns: ["species_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_species";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_attributes: {
        Row: {
          base_attack: number;
          base_defense: number;
          base_hp: number;
          base_special_attack: number;
          base_special_defense: number;
          base_speed: number;
          created_at: string;
          form_id: number;
          generation_start_id: number;
          hidden_ability_id: number | null;
          primary_ability_id: number | null;
          primary_egg_group_id: number | null;
          primary_type_id: number;
          secondary_ability_id: number | null;
          secondary_egg_group_id: number | null;
          secondary_type_id: number | null;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          base_attack: number;
          base_defense: number;
          base_hp: number;
          base_special_attack: number;
          base_special_defense: number;
          base_speed: number;
          created_at?: string;
          form_id: number;
          generation_start_id: number;
          hidden_ability_id?: number | null;
          primary_ability_id?: number | null;
          primary_egg_group_id?: number | null;
          primary_type_id: number;
          secondary_ability_id?: number | null;
          secondary_egg_group_id?: number | null;
          secondary_type_id?: number | null;
          species_id: number;
        };
        Update: {
          base_attack?: number;
          base_defense?: number;
          base_hp?: number;
          base_special_attack?: number;
          base_special_defense?: number;
          base_speed?: number;
          created_at?: string;
          form_id?: number;
          generation_start_id?: number;
          hidden_ability_id?: number | null;
          primary_ability_id?: number | null;
          primary_egg_group_id?: number | null;
          primary_type_id?: number;
          secondary_ability_id?: number | null;
          secondary_egg_group_id?: number | null;
          secondary_type_id?: number | null;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_attributes_form_fkey";
            columns: ["species_id", "form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_attributes_generation_start_id_fkey";
            columns: ["generation_start_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_hidden_ability_id_fkey";
            columns: ["hidden_ability_id"];
            isOneToOne: false;
            referencedRelation: "abilities";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_primary_ability_id_fkey";
            columns: ["primary_ability_id"];
            isOneToOne: false;
            referencedRelation: "abilities";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_primary_egg_group_id_fkey";
            columns: ["primary_egg_group_id"];
            isOneToOne: false;
            referencedRelation: "egg_groups";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_primary_type_id_fkey";
            columns: ["primary_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_secondary_ability_id_fkey";
            columns: ["secondary_ability_id"];
            isOneToOne: false;
            referencedRelation: "abilities";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_secondary_egg_group_id_fkey";
            columns: ["secondary_egg_group_id"];
            isOneToOne: false;
            referencedRelation: "egg_groups";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_attributes_secondary_type_id_fkey";
            columns: ["secondary_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_availability: {
        Row: {
          availability_method_id: number;
          created_at: string;
          form_id: number;
          game_id: number | null;
          id: number;
          notes: string | null;
          scope_operation: string;
          species_id: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          availability_method_id: number;
          created_at?: string;
          form_id: number;
          game_id?: number | null;
          id?: number;
          notes?: string | null;
          scope_operation?: string;
          species_id: number;
          version_group_id: number;
        };
        Update: {
          availability_method_id?: number;
          created_at?: string;
          form_id?: number;
          game_id?: number | null;
          id?: number;
          notes?: string | null;
          scope_operation?: string;
          species_id?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_availability_availability_method_id_fkey";
            columns: ["availability_method_id"];
            isOneToOne: false;
            referencedRelation: "availability_methods";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_availability_form_fkey";
            columns: ["species_id", "form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_availability_game_scope_fkey";
            columns: ["game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "game_content_scopes";
            referencedColumns: ["game_id", "version_group_id"];
          },
          {
            foreignKeyName: "pokemon_availability_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_battle_form_bases: {
        Row: {
          base_form_id: number;
          battle_form_id: number;
          created_at: string;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          base_form_id: number;
          battle_form_id: number;
          created_at?: string;
          species_id: number;
        };
        Update: {
          base_form_id?: number;
          battle_form_id?: number;
          created_at?: string;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_battle_form_bases_base_form_fkey";
            columns: ["species_id", "base_form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_battle_form_bases_battle_form_fkey";
            columns: ["species_id", "battle_form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
        ];
      };
      pokemon_evolution_edges: {
        Row: {
          condition_data: Json | null;
          condition_summary: string | null;
          created_at: string;
          evolution_method_id: number;
          from_form_id: number;
          from_species_id: number;
          gender: string | null;
          held_item_id: number | null;
          id: number;
          introduced_generation_id: number;
          item_id: number | null;
          known_move_id: number | null;
          known_type_id: number | null;
          location_label: string | null;
          minimum_level: number | null;
          sort_order: number;
          time_of_day: string | null;
          to_form_id: number;
          to_species_id: number;
          version_group_id: number | null;
        };
        ComputedFields: never;
        Insert: {
          condition_data?: Json | null;
          condition_summary?: string | null;
          created_at?: string;
          evolution_method_id: number;
          from_form_id: number;
          from_species_id: number;
          gender?: string | null;
          held_item_id?: number | null;
          id?: number;
          introduced_generation_id: number;
          item_id?: number | null;
          known_move_id?: number | null;
          known_type_id?: number | null;
          location_label?: string | null;
          minimum_level?: number | null;
          sort_order: number;
          time_of_day?: string | null;
          to_form_id: number;
          to_species_id: number;
          version_group_id?: number | null;
        };
        Update: {
          condition_data?: Json | null;
          condition_summary?: string | null;
          created_at?: string;
          evolution_method_id?: number;
          from_form_id?: number;
          from_species_id?: number;
          gender?: string | null;
          held_item_id?: number | null;
          id?: number;
          introduced_generation_id?: number;
          item_id?: number | null;
          known_move_id?: number | null;
          known_type_id?: number | null;
          location_label?: string | null;
          minimum_level?: number | null;
          sort_order?: number;
          time_of_day?: string | null;
          to_form_id?: number;
          to_species_id?: number;
          version_group_id?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_evolution_edges_evolution_method_id_fkey";
            columns: ["evolution_method_id"];
            isOneToOne: false;
            referencedRelation: "evolution_methods";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_from_form_fkey";
            columns: ["from_species_id", "from_form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_held_item_id_fkey";
            columns: ["held_item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_item_id_fkey";
            columns: ["item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_known_move_id_fkey";
            columns: ["known_move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_known_type_id_fkey";
            columns: ["known_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_to_form_fkey";
            columns: ["to_species_id", "to_form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_evolution_edges_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_fixed_tera_types: {
        Row: {
          created_at: string;
          form_id: number;
          notes: string | null;
          tera_type_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          form_id: number;
          notes?: string | null;
          tera_type_id: number;
        };
        Update: {
          created_at?: string;
          form_id?: number;
          notes?: string | null;
          tera_type_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_fixed_tera_types_form_id_fkey";
            columns: ["form_id"];
            isOneToOne: true;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_fixed_tera_types_tera_type_id_fkey";
            columns: ["tera_type_id"];
            isOneToOne: false;
            referencedRelation: "tera_types";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_form_item_requirements: {
        Row: {
          created_at: string;
          form_id: number;
          generation_end_id: number | null;
          generation_start_id: number;
          item_id: number;
          notes: string | null;
          requirement_kind: string;
          type_effect_scope: string | null;
          type_id: number | null;
          version_group_end_id: number | null;
          version_group_start_id: number | null;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          form_id: number;
          generation_end_id?: number | null;
          generation_start_id: number;
          item_id: number;
          notes?: string | null;
          requirement_kind: string;
          type_effect_scope?: string | null;
          type_id?: number | null;
          version_group_end_id?: number | null;
          version_group_start_id?: number | null;
        };
        Update: {
          created_at?: string;
          form_id?: number;
          generation_end_id?: number | null;
          generation_start_id?: number;
          item_id?: number;
          notes?: string | null;
          requirement_kind?: string;
          type_effect_scope?: string | null;
          type_id?: number | null;
          version_group_end_id?: number | null;
          version_group_start_id?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_form_item_requirements_form_id_fkey";
            columns: ["form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_generation_end_id_fkey";
            columns: ["generation_end_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_generation_start_id_fkey";
            columns: ["generation_start_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_item_id_fkey";
            columns: ["item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_type_id_fkey";
            columns: ["type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_version_group_end_id_fkey";
            columns: ["version_group_end_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_form_item_requirements_version_group_start_id_fkey";
            columns: ["version_group_start_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_form_rules: {
        Row: {
          battle_mechanic: string | null;
          condition_summary: string | null;
          created_at: string;
          form_id: number;
          form_kind: string;
          is_battle_only: boolean;
          is_cosmetic: boolean;
          is_evolution_locked: boolean;
          is_regional: boolean;
          is_team_selectable: boolean;
          notes: string | null;
        };
        ComputedFields: never;
        Insert: {
          battle_mechanic?: string | null;
          condition_summary?: string | null;
          created_at?: string;
          form_id: number;
          form_kind: string;
          is_battle_only?: boolean;
          is_cosmetic?: boolean;
          is_evolution_locked?: boolean;
          is_regional?: boolean;
          is_team_selectable?: boolean;
          notes?: string | null;
        };
        Update: {
          battle_mechanic?: string | null;
          condition_summary?: string | null;
          created_at?: string;
          form_id?: number;
          form_kind?: string;
          is_battle_only?: boolean;
          is_cosmetic?: boolean;
          is_evolution_locked?: boolean;
          is_regional?: boolean;
          is_team_selectable?: boolean;
          notes?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_form_rules_form_id_fkey";
            columns: ["form_id"];
            isOneToOne: true;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_forms: {
        Row: {
          created_at: string;
          form_order: number;
          height_decimeters: number | null;
          id: number;
          introduced_generation_id: number;
          is_default: boolean;
          name: string;
          slug: string;
          species_id: number;
          weight_hectograms: number | null;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          form_order: number;
          height_decimeters?: number | null;
          id: number;
          introduced_generation_id: number;
          is_default?: boolean;
          name: string;
          slug: string;
          species_id: number;
          weight_hectograms?: number | null;
        };
        Update: {
          created_at?: string;
          form_order?: number;
          height_decimeters?: number | null;
          id?: number;
          introduced_generation_id?: number;
          is_default?: boolean;
          name?: string;
          slug?: string;
          species_id?: number;
          weight_hectograms?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_forms_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_forms_species_id_fkey";
            columns: ["species_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_species";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_learnsets: {
        Row: {
          condition_summary: string | null;
          created_at: string;
          form_id: number;
          game_id: number | null;
          id: number;
          learn_method_id: number;
          level_learned_at: number | null;
          move_id: number;
          move_machine_id: number | null;
          scope_operation: string;
          sort_order: number;
          source_item_id: number | null;
          species_id: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          condition_summary?: string | null;
          created_at?: string;
          form_id: number;
          game_id?: number | null;
          id?: number;
          learn_method_id: number;
          level_learned_at?: number | null;
          move_id: number;
          move_machine_id?: number | null;
          scope_operation?: string;
          sort_order: number;
          source_item_id?: number | null;
          species_id: number;
          version_group_id: number;
        };
        Update: {
          condition_summary?: string | null;
          created_at?: string;
          form_id?: number;
          game_id?: number | null;
          id?: number;
          learn_method_id?: number;
          level_learned_at?: number | null;
          move_id?: number;
          move_machine_id?: number | null;
          scope_operation?: string;
          sort_order?: number;
          source_item_id?: number | null;
          species_id?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_learnsets_form_fkey";
            columns: ["species_id", "form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_game_scope_fkey";
            columns: ["game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "game_content_scopes";
            referencedColumns: ["game_id", "version_group_id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_learn_method_id_fkey";
            columns: ["learn_method_id"];
            isOneToOne: false;
            referencedRelation: "learn_methods";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_move_id_fkey";
            columns: ["move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_move_machine_id_fkey";
            columns: ["move_machine_id"];
            isOneToOne: false;
            referencedRelation: "move_machines";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_source_item_id_fkey";
            columns: ["source_item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_learnsets_version_group_id_fkey";
            columns: ["version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
        ];
      };
      pokemon_species: {
        Row: {
          color: string | null;
          created_at: string;
          evolution_family_id: number;
          id: number;
          introduced_generation_id: number;
          is_baby: boolean;
          is_legendary: boolean;
          is_mythical: boolean;
          name: string;
          national_number: number;
          slug: string;
        };
        ComputedFields: never;
        Insert: {
          color?: string | null;
          created_at?: string;
          evolution_family_id: number;
          id: number;
          introduced_generation_id: number;
          is_baby?: boolean;
          is_legendary?: boolean;
          is_mythical?: boolean;
          name: string;
          national_number: number;
          slug: string;
        };
        Update: {
          color?: string | null;
          created_at?: string;
          evolution_family_id?: number;
          id?: number;
          introduced_generation_id?: number;
          is_baby?: boolean;
          is_legendary?: boolean;
          is_mythical?: boolean;
          name?: string;
          national_number?: number;
          slug?: string;
        };
        Relationships: [
          {
            foreignKeyName: "pokemon_species_evolution_family_id_fkey";
            columns: ["evolution_family_id"];
            isOneToOne: false;
            referencedRelation: "evolution_families";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "pokemon_species_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      product_families: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          support_status: string;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          support_status: string;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
          support_status?: string;
        };
        Relationships: [];
      };
      regions: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      tera_types: {
        Row: {
          created_at: string;
          id: number;
          introduced_version_group_id: number;
          name: string;
          slug: string;
          sort_order: number;
          type_id: number | null;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          introduced_version_group_id: number;
          name: string;
          slug: string;
          sort_order: number;
          type_id?: number | null;
        };
        Update: {
          created_at?: string;
          id?: number;
          introduced_version_group_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
          type_id?: number | null;
        };
        Relationships: [
          {
            foreignKeyName: "tera_types_introduced_version_group_id_fkey";
            columns: ["introduced_version_group_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "tera_types_type_id_fkey";
            columns: ["type_id"];
            isOneToOne: true;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
        ];
      };
      type_matchups: {
        Row: {
          attacking_type_id: number;
          created_at: string;
          defending_type_id: number;
          generation_start_id: number;
          multiplier_denominator: number;
          multiplier_numerator: number;
        };
        ComputedFields: never;
        Insert: {
          attacking_type_id: number;
          created_at?: string;
          defending_type_id: number;
          generation_start_id: number;
          multiplier_denominator: number;
          multiplier_numerator: number;
        };
        Update: {
          attacking_type_id?: number;
          created_at?: string;
          defending_type_id?: number;
          generation_start_id?: number;
          multiplier_denominator?: number;
          multiplier_numerator?: number;
        };
        Relationships: [
          {
            foreignKeyName: "type_matchups_attacking_type_id_fkey";
            columns: ["attacking_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "type_matchups_defending_type_id_fkey";
            columns: ["defending_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "type_matchups_generation_start_id_fkey";
            columns: ["generation_start_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      types: {
        Row: {
          created_at: string;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          introduced_generation_id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          introduced_generation_id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "types_introduced_generation_id_fkey";
            columns: ["introduced_generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
        ];
      };
      version_groups: {
        Row: {
          created_at: string;
          generation_id: number;
          id: number;
          is_open_world: boolean;
          name: string;
          parent_version_group_id: number | null;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          generation_id: number;
          id: number;
          is_open_world?: boolean;
          name: string;
          parent_version_group_id?: number | null;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          generation_id?: number;
          id?: number;
          is_open_world?: boolean;
          name?: string;
          parent_version_group_id?: number | null;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "version_groups_generation_id_fkey";
            columns: ["generation_id"];
            isOneToOne: false;
            referencedRelation: "generations";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "version_groups_parent_generation_fkey";
            columns: ["parent_version_group_id", "generation_id"];
            isOneToOne: false;
            referencedRelation: "version_groups";
            referencedColumns: ["id", "generation_id"];
          },
        ];
      };
      z_move_sources: {
        Row: {
          base_move_id: number | null;
          base_type_id: number | null;
          created_at: string;
          form_id: number | null;
          id: number;
          item_id: number;
          species_id: number | null;
          z_move_id: number;
        };
        ComputedFields: never;
        Insert: {
          base_move_id?: number | null;
          base_type_id?: number | null;
          created_at?: string;
          form_id?: number | null;
          id?: never;
          item_id: number;
          species_id?: number | null;
          z_move_id: number;
        };
        Update: {
          base_move_id?: number | null;
          base_type_id?: number | null;
          created_at?: string;
          form_id?: number | null;
          id?: never;
          item_id?: number;
          species_id?: number | null;
          z_move_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "z_move_sources_base_move_id_fkey";
            columns: ["base_move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "z_move_sources_base_type_id_fkey";
            columns: ["base_type_id"];
            isOneToOne: false;
            referencedRelation: "types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "z_move_sources_form_fkey";
            columns: ["species_id", "form_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_forms";
            referencedColumns: ["species_id", "id"];
          },
          {
            foreignKeyName: "z_move_sources_item_id_fkey";
            columns: ["item_id"];
            isOneToOne: false;
            referencedRelation: "items";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "z_move_sources_species_id_fkey";
            columns: ["species_id"];
            isOneToOne: false;
            referencedRelation: "pokemon_species";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "z_move_sources_z_move_id_fkey";
            columns: ["z_move_id"];
            isOneToOne: false;
            referencedRelation: "moves";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  tracking: {
    Tables: {
      mainline_badges: {
        Row: {
          created_at: string;
          game_id: number | null;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          sprite_slug: string | null;
          type_id: number | null;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id?: number | null;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          sprite_slug?: string | null;
          type_id?: number | null;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number | null;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
          sprite_slug?: string | null;
          type_id?: number | null;
          version_group_id?: number;
        };
        Relationships: [];
      };
      mainline_categories: {
        Row: {
          category_kind: string;
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          category_kind: string;
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          category_kind?: string;
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [];
      };
      mainline_collectible_entries: {
        Row: {
          collectible_id: number;
          created_at: string;
          description: string | null;
          id: number;
          location_label: string | null;
          name: string;
          slug: string;
          sort_order: number;
          sub_location_label: string | null;
        };
        ComputedFields: never;
        Insert: {
          collectible_id: number;
          created_at?: string;
          description?: string | null;
          id: number;
          location_label?: string | null;
          name: string;
          slug: string;
          sort_order: number;
          sub_location_label?: string | null;
        };
        Update: {
          collectible_id?: number;
          created_at?: string;
          description?: string | null;
          id?: number;
          location_label?: string | null;
          name?: string;
          slug?: string;
          sort_order?: number;
          sub_location_label?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_collectible_entries_collectible_id_fkey";
            columns: ["collectible_id"];
            isOneToOne: false;
            referencedRelation: "mainline_collectibles";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_collectible_types: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_collectibles: {
        Row: {
          collectible_type_id: number;
          created_at: string;
          game_id: number | null;
          id: number;
          is_required_for_completion: boolean;
          name: string;
          slug: string;
          sort_order: number;
          sprite_slug: string | null;
          total_count: number | null;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          collectible_type_id: number;
          created_at?: string;
          game_id?: number | null;
          id: number;
          is_required_for_completion?: boolean;
          name: string;
          slug: string;
          sort_order: number;
          sprite_slug?: string | null;
          total_count?: number | null;
          version_group_id: number;
        };
        Update: {
          collectible_type_id?: number;
          created_at?: string;
          game_id?: number | null;
          id?: number;
          is_required_for_completion?: boolean;
          name?: string;
          slug?: string;
          sort_order?: number;
          sprite_slug?: string | null;
          total_count?: number | null;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_collectibles_collectible_type_id_fkey";
            columns: ["collectible_type_id"];
            isOneToOne: false;
            referencedRelation: "mainline_collectible_types";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_milestone_badge_refs: {
        Row: {
          badge_id: number;
          created_at: string;
          id: number;
          milestone_id: number;
          notes: string | null;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          badge_id: number;
          created_at?: string;
          id?: never;
          milestone_id: number;
          notes?: string | null;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          badge_id?: number;
          created_at?: string;
          id?: never;
          milestone_id?: number;
          notes?: string | null;
          relation_kind?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_badge_refs_badge_version_group_fkey";
            columns: ["badge_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_badges";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestone_badge_refs_milestone_version_group_fkey";
            columns: ["milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
        ];
      };
      mainline_milestone_collectible_refs: {
        Row: {
          collectible_entry_id: number | null;
          collectible_id: number;
          created_at: string;
          id: number;
          milestone_id: number;
          notes: string | null;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          collectible_entry_id?: number | null;
          collectible_id: number;
          created_at?: string;
          id?: never;
          milestone_id: number;
          notes?: string | null;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          collectible_entry_id?: number | null;
          collectible_id?: number;
          created_at?: string;
          id?: never;
          milestone_id?: number;
          notes?: string | null;
          relation_kind?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_collectible_refs_collectible_version_group_f";
            columns: ["collectible_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_collectibles";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestone_collectible_refs_entry_fkey";
            columns: ["collectible_entry_id", "collectible_id"];
            isOneToOne: false;
            referencedRelation: "mainline_collectible_entries";
            referencedColumns: ["id", "collectible_id"];
          },
          {
            foreignKeyName: "mainline_milestone_collectible_refs_milestone_version_group_fke";
            columns: ["milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
        ];
      };
      mainline_milestone_decision_options: {
        Row: {
          created_at: string;
          description: string | null;
          id: number;
          item_id: number | null;
          label: string;
          milestone_id: number;
          pokemon_form_id: number | null;
          pokemon_species_id: number | null;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description?: string | null;
          id?: never;
          item_id?: number | null;
          label: string;
          milestone_id: number;
          pokemon_form_id?: number | null;
          pokemon_species_id?: number | null;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string | null;
          id?: never;
          item_id?: number | null;
          label?: string;
          milestone_id?: number;
          pokemon_form_id?: number | null;
          pokemon_species_id?: number | null;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_decision_options_milestone_id_fkey";
            columns: ["milestone_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_milestone_opponent_refs: {
        Row: {
          created_at: string;
          id: number;
          milestone_id: number;
          notes: string | null;
          opponent_id: number;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id?: never;
          milestone_id: number;
          notes?: string | null;
          opponent_id: number;
          relation_kind: string;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          id?: never;
          milestone_id?: number;
          notes?: string | null;
          opponent_id?: number;
          relation_kind?: string;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_opponent_refs_milestone_version_group_fkey";
            columns: ["milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestone_opponent_refs_opponent_version_group_fkey";
            columns: ["opponent_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_opponents";
            referencedColumns: ["id", "version_group_id"];
          },
        ];
      };
      mainline_milestone_pokemon_refs: {
        Row: {
          created_at: string;
          form_id: number | null;
          id: number;
          milestone_id: number;
          notes: string | null;
          relation_kind: string;
          sort_order: number;
          species_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          form_id?: number | null;
          id?: never;
          milestone_id: number;
          notes?: string | null;
          relation_kind: string;
          sort_order: number;
          species_id: number;
        };
        Update: {
          created_at?: string;
          form_id?: number | null;
          id?: never;
          milestone_id?: number;
          notes?: string | null;
          relation_kind?: string;
          sort_order?: number;
          species_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_pokemon_refs_milestone_id_fkey";
            columns: ["milestone_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_milestone_prerequisite_kinds: {
        Row: {
          created_at: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          description: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          description?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_milestone_prerequisites: {
        Row: {
          created_at: string;
          id: number;
          milestone_id: number;
          notes: string | null;
          prerequisite_kind_id: number;
          prerequisite_milestone_id: number;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id?: never;
          milestone_id: number;
          notes?: string | null;
          prerequisite_kind_id: number;
          prerequisite_milestone_id: number;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          id?: never;
          milestone_id?: number;
          notes?: string | null;
          prerequisite_kind_id?: number;
          prerequisite_milestone_id?: number;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestone_prerequisites_milestone_version_group_fkey";
            columns: ["milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestone_prerequisites_prerequisite_kind_id_fkey";
            columns: ["prerequisite_kind_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestone_prerequisite_kinds";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_milestone_prerequisites_prerequisite_version_group_fke";
            columns: ["prerequisite_milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
        ];
      };
      mainline_milestone_types: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
      mainline_milestones: {
        Row: {
          category_id: number;
          created_at: string;
          description: string | null;
          game_id: number | null;
          id: number;
          is_required_for_completion: boolean;
          milestone_type_id: number;
          name: string;
          parent_milestone_id: number | null;
          slug: string;
          snapshot_policy_id: number;
          sort_order: number;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          category_id: number;
          created_at?: string;
          description?: string | null;
          game_id?: number | null;
          id: number;
          is_required_for_completion?: boolean;
          milestone_type_id: number;
          name: string;
          parent_milestone_id?: number | null;
          slug: string;
          snapshot_policy_id: number;
          sort_order: number;
          version_group_id: number;
        };
        Update: {
          category_id?: number;
          created_at?: string;
          description?: string | null;
          game_id?: number | null;
          id?: number;
          is_required_for_completion?: boolean;
          milestone_type_id?: number;
          name?: string;
          parent_milestone_id?: number | null;
          slug?: string;
          snapshot_policy_id?: number;
          sort_order?: number;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_milestones_category_version_group_fkey";
            columns: ["category_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_categories";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestones_milestone_type_id_fkey";
            columns: ["milestone_type_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestone_types";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "mainline_milestones_parent_version_group_fkey";
            columns: ["parent_milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestones";
            referencedColumns: ["id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_milestones_snapshot_policy_id_fkey";
            columns: ["snapshot_policy_id"];
            isOneToOne: false;
            referencedRelation: "mainline_snapshot_policies";
            referencedColumns: ["id"];
          },
        ];
      };
      mainline_opponent_team_members: {
        Row: {
          created_at: string;
          decision_milestone_id: number | null;
          decision_option_slug: string | null;
          form_id: number;
          game_id: number | null;
          id: number;
          level: number;
          milestone_id: number;
          opponent_id: number;
          slot: number;
          species_id: number;
          variant_label: string | null;
          variant_slug: string | null;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          decision_milestone_id?: number | null;
          decision_option_slug?: string | null;
          form_id: number;
          game_id?: number | null;
          id?: never;
          level: number;
          milestone_id: number;
          opponent_id: number;
          slot: number;
          species_id: number;
          variant_label?: string | null;
          variant_slug?: string | null;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          decision_milestone_id?: number | null;
          decision_option_slug?: string | null;
          form_id?: number;
          game_id?: number | null;
          id?: never;
          level?: number;
          milestone_id?: number;
          opponent_id?: number;
          slot?: number;
          species_id?: number;
          variant_label?: string | null;
          variant_slug?: string | null;
          version_group_id?: number;
        };
        Relationships: [
          {
            foreignKeyName: "mainline_opponent_team_members_battle_fkey";
            columns: ["milestone_id", "opponent_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_milestone_opponent_refs";
            referencedColumns: [
              "milestone_id",
              "opponent_id",
              "version_group_id",
            ];
          },
          {
            foreignKeyName: "mainline_opponent_team_members_decision_option_fkey";
            columns: ["decision_milestone_id", "decision_option_slug"];
            isOneToOne: false;
            referencedRelation: "mainline_milestone_decision_options";
            referencedColumns: ["milestone_id", "slug"];
          },
          {
            foreignKeyName: "mainline_opponent_team_members_opponent_version_group_fkey";
            columns: ["opponent_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_opponents";
            referencedColumns: ["id", "version_group_id"];
          },
        ];
      };
      mainline_opponents: {
        Row: {
          created_at: string;
          game_id: number | null;
          id: number;
          name: string;
          opponent_role: string;
          primary_type_id: number | null;
          secondary_type_id: number | null;
          slug: string;
          sort_order: number;
          sprite_slug: string | null;
          version_group_id: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          game_id?: number | null;
          id: number;
          name: string;
          opponent_role: string;
          primary_type_id?: number | null;
          secondary_type_id?: number | null;
          slug: string;
          sort_order: number;
          sprite_slug?: string | null;
          version_group_id: number;
        };
        Update: {
          created_at?: string;
          game_id?: number | null;
          id?: number;
          name?: string;
          opponent_role?: string;
          primary_type_id?: number | null;
          secondary_type_id?: number | null;
          slug?: string;
          sort_order?: number;
          sprite_slug?: string | null;
          version_group_id?: number;
        };
        Relationships: [];
      };
      mainline_snapshot_policies: {
        Row: {
          created_at: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        ComputedFields: never;
        Insert: {
          created_at?: string;
          id: number;
          name: string;
          slug: string;
          sort_order: number;
        };
        Update: {
          created_at?: string;
          id?: number;
          name?: string;
          slug?: string;
          sort_order?: number;
        };
        Relationships: [];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  views: {
    Tables: {
      [_ in never]: never;
    };
    Views: {
      mainline_collection_detail: {
        Row: {
          evolution_family_id: number | null;
          first_used_at: string | null;
          form_id: number | null;
          form_name: string | null;
          form_slug: string | null;
          last_used_at: string | null;
          national_number: number | null;
          play_count: number | null;
          species_id: number | null;
          species_name: string | null;
          species_slug: string | null;
          usage_event_count: number | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      mainline_collection_used_identities: {
        Row: {
          event_id: string | null;
          evolution_family_id: number | null;
          form_id: number | null;
          form_name: string | null;
          form_slug: string | null;
          national_number: number | null;
          play_id: string | null;
          source_kind: string | null;
          source_row_id: string | null;
          species_id: number | null;
          species_name: string | null;
          species_slug: string | null;
          used_at: string | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      mainline_dashboard_summary: {
        Row: {
          active_library_play_count: number | null;
          completed_play_count: number | null;
          display_name: string | null;
          last_play_updated_at: string | null;
          team_plan_count: number | null;
          total_play_count: number | null;
          used_form_count: number | null;
          used_species_count: number | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Insert: {
          active_library_play_count?: never;
          completed_play_count?: never;
          display_name?: string | null;
          last_play_updated_at?: never;
          team_plan_count?: never;
          total_play_count?: never;
          used_form_count?: never;
          used_species_count?: never;
          user_id?: string | null;
        };
        Update: {
          active_library_play_count?: never;
          completed_play_count?: never;
          display_name?: string | null;
          last_play_updated_at?: never;
          team_plan_count?: never;
          total_play_count?: never;
          used_form_count?: never;
          used_species_count?: never;
          user_id?: string | null;
        };
        Relationships: [];
      };
      mainline_play_collectible_detail: {
        Row: {
          collected_at: string | null;
          collectible_entry_id: number | null;
          collectible_entry_name: string | null;
          collectible_entry_slug: string | null;
          collectible_entry_sort_order: number | null;
          collectible_id: number | null;
          collectible_name: string | null;
          collectible_slug: string | null;
          collectible_type_id: number | null;
          collectible_type_name: string | null;
          collectible_type_slug: string | null;
          description: string | null;
          game_id: number | null;
          is_collected: boolean | null;
          is_included_in_completion: boolean | null;
          is_required_for_completion: boolean | null;
          location_label: string | null;
          play_id: string | null;
          sub_location_label: string | null;
          user_id: string | null;
          version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_completion_summary: {
        Row: {
          caught_required_pokedex_species_count: number | null;
          collected_required_collectible_entry_count: number | null;
          collectible_completion_percent: number | null;
          completed_completion_unit_count: number | null;
          completed_required_milestone_count: number | null;
          milestone_completion_percent: number | null;
          overall_completion_percent: number | null;
          play_id: string | null;
          pokedex_completion_percent: number | null;
          required_collectible_entry_count: number | null;
          required_milestone_count: number | null;
          required_pokedex_species_count: number | null;
          seen_required_pokedex_species_count: number | null;
          total_completion_unit_count: number | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_milestone_category_summary: {
        Row: {
          all_milestone_completion_percent: number | null;
          category_id: number | null;
          category_kind: string | null;
          category_name: string | null;
          category_slug: string | null;
          category_sort_order: number | null;
          completed_milestone_count: number | null;
          completed_optional_milestone_count: number | null;
          completed_required_milestone_count: number | null;
          completion_scope: string | null;
          content_scope_sort_order: number | null;
          game_id: number | null;
          game_name: string | null;
          game_slug: string | null;
          is_open_world: boolean | null;
          milestone_count: number | null;
          optional_milestone_count: number | null;
          play_id: string | null;
          required_milestone_completion_percent: number | null;
          required_milestone_count: number | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      mainline_play_milestone_detail: {
        Row: {
          badge_refs: Json | null;
          category_id: number | null;
          category_kind: string | null;
          category_name: string | null;
          category_slug: string | null;
          category_sort_order: number | null;
          collectible_refs: Json | null;
          completed_at: string | null;
          completion_event_happened_at: string | null;
          completion_event_id: string | null;
          completion_event_team_snapshot_count: number | null;
          completion_event_timeline_order: number | null;
          decision_options: Json | null;
          description: string | null;
          game_id: number | null;
          is_completed: boolean | null;
          is_included_in_completion: boolean | null;
          is_required_for_completion: boolean | null;
          milestone_game_name: string | null;
          milestone_game_slug: string | null;
          milestone_id: number | null;
          milestone_name: string | null;
          milestone_slug: string | null;
          milestone_type_id: number | null;
          milestone_type_name: string | null;
          milestone_type_slug: string | null;
          opponent_refs: Json | null;
          parent_milestone_id: number | null;
          play_id: string | null;
          pokemon_refs: Json | null;
          prerequisites: Json | null;
          progress_notes: string | null;
          selected_decision_option_id: number | null;
          selected_decision_option_label: string | null;
          selected_decision_option_slug: string | null;
          snapshot_policy_id: number | null;
          snapshot_policy_name: string | null;
          snapshot_policy_slug: string | null;
          sort_order: number | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_milestones_parent_version_group_fkey";
            columns: ["parent_milestone_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_milestone_detail";
            referencedColumns: ["milestone_id", "version_group_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_overview: {
        Row: {
          active_team_count: number | null;
          archived_at: string | null;
          caught_required_pokedex_species_count: number | null;
          collected_entry_count: number | null;
          collected_required_collectible_entry_count: number | null;
          collectible_completion_percent: number | null;
          completed_completion_unit_count: number | null;
          completed_milestone_count: number | null;
          completed_on: string | null;
          completed_required_milestone_count: number | null;
          created_at: string | null;
          game_id: number | null;
          game_name: string | null;
          game_slug: string | null;
          generation_id: number | null;
          generation_name: string | null;
          generation_slug: string | null;
          historical_pokemon_count: number | null;
          include_collectibles_in_completion: boolean | null;
          include_optional_pokedex_entries_in_completion: boolean | null;
          include_optional_pokedexes_in_completion: boolean | null;
          include_pokedex_in_completion: boolean | null;
          milestone_completion_percent: number | null;
          optional_content_scopes: Json | null;
          overall_completion_percent: number | null;
          play_id: string | null;
          play_name: string | null;
          playtime_minutes: number | null;
          pokedex_caught_count: number | null;
          pokedex_completion_percent: number | null;
          pokedex_seen_count: number | null;
          pokedex_tracking_enabled: boolean | null;
          required_collectible_entry_count: number | null;
          required_milestone_count: number | null;
          required_pokedex_species_count: number | null;
          reserve_team_count: number | null;
          seen_required_pokedex_species_count: number | null;
          started_on: string | null;
          status_id: number | null;
          status_name: string | null;
          status_slug: string | null;
          timeline_event_count: number | null;
          total_completion_unit_count: number | null;
          trainer_name: string | null;
          updated_at: string | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_pokedex_detail: {
        Row: {
          caught_at: string | null;
          display_form_id: number | null;
          display_form_name: string | null;
          display_form_slug: string | null;
          is_caught: boolean | null;
          is_completion_relevant: boolean | null;
          is_included_in_completion: boolean | null;
          is_mythical: boolean | null;
          is_optional_pokedex_scope: boolean | null;
          is_seen: boolean | null;
          is_source_required_for_completion: boolean | null;
          national_number: number | null;
          play_id: string | null;
          pokedex_id: number | null;
          pokedex_kind: string | null;
          pokedex_name: string | null;
          pokedex_number: number | null;
          pokedex_slug: string | null;
          seen_at: string | null;
          species_id: number | null;
          species_name: string | null;
          species_slug: string | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_summary: {
        Row: {
          active_team_count: number | null;
          archived_at: string | null;
          collected_entry_count: number | null;
          completed_milestone_count: number | null;
          completed_on: string | null;
          created_at: string | null;
          game_id: number | null;
          game_name: string | null;
          game_slug: string | null;
          generation_id: number | null;
          generation_name: string | null;
          generation_slug: string | null;
          historical_pokemon_count: number | null;
          play_id: string | null;
          play_name: string | null;
          playtime_minutes: number | null;
          pokedex_caught_count: number | null;
          pokedex_seen_count: number | null;
          reserve_team_count: number | null;
          started_on: string | null;
          status_id: number | null;
          status_name: string | null;
          status_slug: string | null;
          timeline_event_count: number | null;
          trainer_name: string | null;
          updated_at: string | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_plays_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_play_team_detail: {
        Row: {
          ability_id: number | null;
          ability_name: string | null;
          ball_item_id: number | null;
          ball_item_name: string | null;
          created_at: string | null;
          evolution_family_id: number | null;
          final_status: string | null;
          fixed_tera_type_id: number | null;
          fixed_tera_type_name: string | null;
          fixed_tera_type_slug: string | null;
          form_id: number | null;
          form_name: string | null;
          form_slug: string | null;
          gender: string | null;
          has_gigantamax_factor: boolean | null;
          held_item_id: number | null;
          held_item_name: string | null;
          is_default_form: boolean | null;
          is_mvp: boolean | null;
          is_shiny: boolean | null;
          level: number | null;
          met_level: number | null;
          met_location_label: string | null;
          moves: Json | null;
          national_number: number | null;
          nature_id: number | null;
          nature_name: string | null;
          nickname: string | null;
          personal_notes: string | null;
          play_id: string | null;
          play_pokemon_id: string | null;
          roster_state_id: number | null;
          roster_state_name: string | null;
          roster_state_slug: string | null;
          slot: number | null;
          species_id: number | null;
          species_name: string | null;
          species_slug: string | null;
          tera_type_id: number | null;
          tera_type_name: string | null;
          tera_type_slug: string | null;
          updated_at: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_collectible_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_completion_summary";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_milestone_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_overview";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokedex_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_pokemon_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_summary";
            referencedColumns: ["play_id"];
          },
        ];
      };
      mainline_play_team_plan_detail: {
        Row: {
          created_from_plan: boolean | null;
          game_id: number | null;
          game_name: string | null;
          game_slug: string | null;
          generation_id: number | null;
          generation_name: string | null;
          generation_slug: string | null;
          linked_plan_at: string | null;
          linked_play_count: number | null;
          planned_ability_id: number | null;
          planned_ability_name: string | null;
          planned_gender: string | null;
          planned_held_item_id: number | null;
          planned_held_item_name: string | null;
          planned_moves: Json | null;
          planned_nature_id: number | null;
          planned_nature_name: string | null;
          play_id: string | null;
          play_plan_link_id: string | null;
          slot: number | null;
          target_evolution_family_id: number | null;
          target_form_id: number | null;
          target_form_name: string | null;
          target_form_slug: string | null;
          target_national_number: number | null;
          target_species_id: number | null;
          target_species_name: string | null;
          target_species_slug: string | null;
          team_plan_id: string | null;
          team_plan_member_id: string | null;
          team_plan_member_notes: string | null;
          team_plan_name: string | null;
          team_plan_notes: string | null;
          team_plan_status_id: number | null;
          team_plan_status_name: string | null;
          team_plan_status_slug: string | null;
          team_plan_updated_at: string | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "play_plan_links_plan_scope_fkey";
            columns: ["team_plan_id", "user_id", "game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plan_summary";
            referencedColumns: [
              "team_plan_id",
              "user_id",
              "game_id",
              "version_group_id",
            ];
          },
          {
            foreignKeyName: "play_plan_links_play_scope_fkey";
            columns: ["play_id", "user_id", "game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_overview";
            referencedColumns: [
              "play_id",
              "user_id",
              "game_id",
              "version_group_id",
            ];
          },
          {
            foreignKeyName: "play_plan_links_play_scope_fkey";
            columns: ["play_id", "user_id", "game_id", "version_group_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_summary";
            referencedColumns: [
              "play_id",
              "user_id",
              "game_id",
              "version_group_id",
            ];
          },
        ];
      };
      mainline_play_timeline_detail: {
        Row: {
          body: string | null;
          created_at: string | null;
          event_id: string | null;
          event_origin_id: number | null;
          event_origin_name: string | null;
          event_origin_slug: string | null;
          event_type_id: number | null;
          event_type_name: string | null;
          event_type_slug: string | null;
          happened_at: string | null;
          is_pinned: boolean | null;
          milestone_description: string | null;
          milestone_id: number | null;
          milestone_name: string | null;
          milestone_slug: string | null;
          play_id: string | null;
          pokemon_refs: Json | null;
          team_snapshots: Json | null;
          timeline_order: number | null;
          title: string | null;
          updated_at: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_play_events_milestone_id_fkey";
            columns: ["milestone_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_milestone_detail";
            referencedColumns: ["milestone_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_collectible_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_completion_summary";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_milestone_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_overview";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_pokedex_detail";
            referencedColumns: ["play_id"];
          },
          {
            foreignKeyName: "mainline_play_events_play_id_fkey";
            columns: ["play_id"];
            isOneToOne: false;
            referencedRelation: "mainline_play_summary";
            referencedColumns: ["play_id"];
          },
        ];
      };
      mainline_stats_summary: {
        Row: {
          completed_milestone_count: number | null;
          played_game_count: number | null;
          played_generation_count: number | null;
          timeline_event_count: number | null;
          total_play_count: number | null;
          total_playtime_minutes: number | null;
          total_team_plan_count: number | null;
          used_form_count: number | null;
          used_species_count: number | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Insert: {
          completed_milestone_count?: never;
          played_game_count?: never;
          played_generation_count?: never;
          timeline_event_count?: never;
          total_play_count?: never;
          total_playtime_minutes?: never;
          total_team_plan_count?: never;
          used_form_count?: never;
          used_species_count?: never;
          user_id?: string | null;
        };
        Update: {
          completed_milestone_count?: never;
          played_game_count?: never;
          played_generation_count?: never;
          timeline_event_count?: never;
          total_play_count?: never;
          total_playtime_minutes?: never;
          total_team_plan_count?: never;
          used_form_count?: never;
          used_species_count?: never;
          user_id?: string | null;
        };
        Relationships: [];
      };
      mainline_team_plan_detail: {
        Row: {
          ability_id: number | null;
          ability_name: string | null;
          created_at: string | null;
          gender: string | null;
          held_item_id: number | null;
          held_item_name: string | null;
          moves: Json | null;
          nature_id: number | null;
          nature_name: string | null;
          notes: string | null;
          slot: number | null;
          target_evolution_family_id: number | null;
          target_form_id: number | null;
          target_form_name: string | null;
          target_form_slug: string | null;
          target_national_number: number | null;
          target_species_id: number | null;
          target_species_name: string | null;
          target_species_slug: string | null;
          team_plan_id: string | null;
          team_plan_member_id: string | null;
          updated_at: string | null;
          user_id: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_team_plan_members_team_plan_id_fkey";
            columns: ["team_plan_id"];
            isOneToOne: false;
            referencedRelation: "mainline_team_plan_summary";
            referencedColumns: ["team_plan_id"];
          },
          {
            foreignKeyName: "mainline_team_plans_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_team_plans_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      mainline_team_plan_summary: {
        Row: {
          created_at: string | null;
          game_id: number | null;
          game_name: string | null;
          game_slug: string | null;
          generation_id: number | null;
          generation_name: string | null;
          generation_slug: string | null;
          linked_play_count: number | null;
          member_count: number | null;
          notes: string | null;
          optional_content_scope_count: number | null;
          status_id: number | null;
          status_name: string | null;
          status_slug: string | null;
          team_plan_id: string | null;
          team_plan_name: string | null;
          updated_at: string | null;
          user_id: string | null;
          version_group_id: number | null;
          version_group_name: string | null;
          version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "mainline_team_plans_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_dashboard_summary";
            referencedColumns: ["user_id"];
          },
          {
            foreignKeyName: "mainline_team_plans_user_id_fkey";
            columns: ["user_id"];
            isOneToOne: false;
            referencedRelation: "mainline_stats_summary";
            referencedColumns: ["user_id"];
          },
        ];
      };
      reference_content_scope_closure: {
        Row: {
          depth: number | null;
          included_version_group_id: number | null;
          included_version_group_slug: string | null;
          resolution_order: number | null;
          target_version_group_id: number | null;
          target_version_group_slug: string | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      reference_resolved_item_availability: {
        Row: {
          availability_method_id: number | null;
          created_at: string | null;
          game_id: number | null;
          id: number | null;
          item_id: number | null;
          notes: string | null;
          source_version_group_id: number | null;
          target_version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      reference_resolved_move_availability: {
        Row: {
          created_at: string | null;
          game_id: number | null;
          id: number | null;
          move_id: number | null;
          source_version_group_id: number | null;
          target_version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      reference_resolved_move_machines: {
        Row: {
          created_at: string | null;
          game_id: number | null;
          id: number | null;
          learn_method_id: number | null;
          machine_label: string | null;
          move_id: number | null;
          sort_order: number | null;
          source_version_group_id: number | null;
          target_version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      reference_resolved_pokemon_availability: {
        Row: {
          availability_method_id: number | null;
          created_at: string | null;
          form_id: number | null;
          game_id: number | null;
          id: number | null;
          notes: string | null;
          source_version_group_id: number | null;
          species_id: number | null;
          target_version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [];
      };
      reference_resolved_pokemon_learnsets: {
        Row: {
          condition_summary: string | null;
          created_at: string | null;
          form_id: number | null;
          game_id: number | null;
          id: number | null;
          learn_method_id: number | null;
          level_learned_at: number | null;
          machine_label: string | null;
          move_id: number | null;
          move_machine_id: number | null;
          sort_order: number | null;
          source_item_id: number | null;
          source_version_group_id: number | null;
          species_id: number | null;
          target_version_group_id: number | null;
        };
        ComputedFields: never;
        Relationships: [
          {
            foreignKeyName: "pokemon_learnsets_move_machine_id_fkey";
            columns: ["move_machine_id"];
            isOneToOne: false;
            referencedRelation: "reference_resolved_move_machines";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
};

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">;

type DefaultSchema = DatabaseWithoutInternals[Extract<
  keyof Database,
  "public"
>];

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R;
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R;
      }
      ? R
      : never
    : never;

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I;
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I;
      }
      ? I
      : never
    : never;

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U;
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U;
      }
      ? U
      : never
    : never;

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never;

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never;

export const Constants = {
  gameplay: {
    Enums: {},
  },
  planning: {
    Enums: {},
  },
  public: {
    Enums: {},
  },
  reference: {
    Enums: {},
  },
  tracking: {
    Enums: {},
  },
  views: {
    Enums: {},
  },
} as const;
