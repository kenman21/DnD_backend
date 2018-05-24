# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180523170602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "campaign_id"
    t.boolean "acrobaticschecked", default: false
    t.boolean "animalhandlingchecked", default: false
    t.boolean "arcanachecked", default: false
    t.boolean "athleticschecked", default: false
    t.boolean "deceptionchecked", default: false
    t.boolean "historychecked", default: false
    t.boolean "insightchecked", default: false
    t.boolean "intimidationchecked", default: false
    t.boolean "investigationchecked", default: false
    t.boolean "medicinechecked", default: false
    t.boolean "naturechecked", default: false
    t.boolean "perceptionchecked", default: false
    t.boolean "performancechecked", default: false
    t.boolean "persuasionchecked", default: false
    t.boolean "religionchecked", default: false
    t.boolean "sleightofHandchecked", default: false
    t.boolean "stealthchecked", default: false
    t.boolean "survivalchecked", default: false
    t.string "alignment", default: ""
    t.integer "armorclassvalue", default: 0
    t.string "as_atkb_1", default: ""
    t.string "as_atkb_2", default: ""
    t.string "as_atkb_3", default: ""
    t.string "as_name_1", default: ""
    t.string "as_name_2", default: ""
    t.string "as_name_3", default: ""
    t.string "as_type_1", default: ""
    t.string "as_type_2", default: ""
    t.string "as_type_3", default: ""
    t.text "attacks_spellcastingnotes", default: ""
    t.string "background", default: ""
    t.text "bondsnotes", default: ""
    t.integer "charismabase", default: 0
    t.integer "charismamod", default: 0
    t.string "char_name", default: ""
    t.string "class_level", default: ""
    t.integer "constitutionbase", default: 0
    t.integer "constitutionmod", default: 0
    t.boolean "d1_checkbox", default: false
    t.boolean "d2_checkbox", default: false
    t.boolean "d3_checkbox", default: false
    t.integer "dexteritybase", default: 0
    t.integer "dexteritymod", default: 0
    t.text "equipmentnotes", default: ""
    t.string "experience_points", default: ""
    t.string "faction", default: ""
    t.text "features_traitsnotes", default: ""
    t.integer "hit_dicevalue", default: 0
    t.integer "hit_pointsbase", default: 0
    t.integer "hit_pointsmod", default: 0
    t.text "idealsnotes", default: ""
    t.integer "initiativevalue", default: 0
    t.integer "inspirationvalue", default: 0
    t.integer "intelligencebase", default: 0
    t.integer "intelligencemod", default: 0
    t.text "other_proficienciesnotes", default: ""
    t.integer "passive_wisdomvalue", default: 0
    t.text "personality_traitsnotes", default: ""
    t.string "player_name", default: ""
    t.integer "proficiencyvalue", default: 0
    t.string "race", default: ""
    t.boolean "s1_checkbox", default: false
    t.boolean "s2_checkbox", default: false
    t.boolean "s3_checkbox", default: false
    t.integer "speedvalue", default: 0
    t.integer "strengthbase", default: 0
    t.integer "strengthmod", default: 0
    t.integer "temp_hit_pointsvalue", default: 0
    t.integer "wisdombase", default: 0
    t.integer "wisdommod", default: 0
    t.boolean "strengthcheckbox", default: false
    t.boolean "dexteritycheckbox", default: false
    t.boolean "constitutioncheckbox", default: false
    t.boolean "intelligencecheckbox", default: false
    t.boolean "wisdomcheckbox", default: false
    t.boolean "charismacheckbox", default: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.integer "map_id"
    t.integer "campaign_id"
  end

  create_table "slots", force: :cascade do |t|
    t.integer "tile_id"
    t.integer "map_id"
    t.integer "canvasx"
    t.integer "canvasy"
  end

  create_table "tiles", force: :cascade do |t|
    t.integer "page"
    t.integer "x"
    t.integer "y"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

end
