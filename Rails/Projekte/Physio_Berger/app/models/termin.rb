class Termin < ActiveRecord::Base
	belongs_to :patient, class_name: "User", primary_key: "id", foreign_key: "patient_id"
	belongs_to :physio, class_name: "User", primary_key: "id", foreign_key: "physio_id"

	BEHANDLUNGSARTEN = ['Fango', 'Heißluft', 'KG', 'KGZNS', 'manuelle Therapie', 'Lymphdrenage', 'KG Gerät']
	validates :behandlungsart, inclusion: { in: BEHANDLUNGSARTEN }
	validates :physio, presence: true
	validates :patient, presence: true
end
