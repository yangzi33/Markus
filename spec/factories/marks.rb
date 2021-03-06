FactoryBot.define do
  factory :mark do
    association :result, factory: :complete_result

    factory :rubric_mark do
      association :markable, factory: :rubric_criterion
      markable_type { 'RubricCriterion' }
    end

    factory :flexible_mark do
      association :markable, factory: :flexible_criterion
      markable_type { 'FlexibleCriterion' }
    end

    factory :checkbox_mark do
      association :markable, factory: :checkbox_criterion
      markable_type { 'CheckboxCriterion' }
    end
  end
end
