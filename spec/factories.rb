FactoryBot.define do
  
  factory :bodypart do
    name { "biceps" }
    target { 22 }
  end

  factory :measure do
    bodypart_id { 1 }
    value { 2 }
  end

  factory :progress_record, class: Bodypart do
    
    target { 100 }
    name { 'head' }
  end

  factory :new_measure do
    
    value { 10 }
    name { 'knee' }
    date { '06-07-2020'}
    bodypart_id {1}

  end

 
  
end
