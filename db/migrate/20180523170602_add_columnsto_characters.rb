class AddColumnstoCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :acrobaticschecked, :string
    add_column :characters, :animalhandlingchecked, :string
    add_column :characters, :arcanachecked, :string
    add_column :characters, :athleticschecked, :string
    add_column :characters, :deceptionchecked, :string
    add_column :characters, :historychecked, :string
    add_column :characters, :insightchecked, :string
    add_column :characters, :intimidationchecked, :string
    add_column :characters, :investigationchecked, :string
    add_column :characters, :medicinechecked, :string
    add_column :characters, :naturechecked, :string
    add_column :characters, :perceptionchecked, :string
    add_column :characters, :performancechecked, :string
    add_column :characters, :persuasionchecked, :string
    add_column :characters, :religionchecked, :string
    add_column :characters, :sleightofHandchecked, :string
    add_column :characters, :stealthchecked, :string
    add_column :characters, :survivalchecked, :string
    add_column :characters, :alignment, :string
    add_column :characters, :armorclassvalue, :integer
    add_column :characters, :as_atkb_1, :string
    add_column :characters, :as_atkb_2, :string
    add_column :characters, :as_atkb_3, :string
    add_column :characters, :as_name_1, :string
    add_column :characters, :as_name_2, :string
    add_column :characters, :as_name_3, :string
    add_column :characters, :as_type_1, :string
    add_column :characters, :as_type_2, :string
    add_column :characters, :as_type_3, :string
    add_column :characters, :attacks_spellcastingnotes, :text
    add_column :characters, :background, :string
    add_column :characters, :bondsnotes, :text
    add_column :characters, :charismabase, :integer
    add_column :characters, :charismamod, :integer
    add_column :characters, :class_level, :string
    add_column :characters, :constitutionbase, :integer
    add_column :characters, :constitutionmod, :integer
    add_column :characters, :d1_checkbox, :string
    add_column :characters, :d2_checkbox, :string
    add_column :characters, :d3_checkbox, :string
    add_column :characters, :dexteritybase, :integer
    add_column :characters, :dexteritymod, :integer
    add_column :characters, :equipmentnotes, :text
    add_column :characters, :experience_points, :string
    add_column :characters, :faction, :string
    add_column :characters, :features_traitsnotes, :text
    add_column :characters, :hit_dicevalue, :integer
    add_column :characters, :hit_pointsbase, :integer
    add_column :characters, :hit_pointsmod, :integer
    add_column :characters, :idealsnotes, :text
    add_column :characters, :initiativevalue, :integer
    add_column :characters, :inspirationvalue, :integer
    add_column :characters, :intelligencebase, :integer
    add_column :characters, :intelligencemod, :integer
    add_column :characters, :other_proficienciesnotes, :text
    add_column :characters, :passive_wisdomvalue, :integer
    add_column :characters, :personality_traitsnotes, :text
    add_column :characters, :player_name, :string
    add_column :characters, :proficiencyvalue, :integer
    add_column :characters, :race, :string
    add_column :characters, :s1_checkbox, :string
    add_column :characters, :s2_checkbox, :string
    add_column :characters, :s3_checkbox, :string
    add_column :characters, :speedvalue, :integer
    add_column :characters, :strengthbase, :integer
    add_column :characters, :strengthmod, :integer
    add_column :characters, :temp_hit_pointsvalue, :integer
    add_column :characters, :wisdombase, :integer
    add_column :characters, :wisdommod, :integer
  end
end