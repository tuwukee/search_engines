ThinkingSphinx::Index.define :goof, :with => :active_record do
  # fields
  indexes goof_type
  indexes description
end