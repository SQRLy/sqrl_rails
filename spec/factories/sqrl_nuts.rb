# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sqrl_nut, :class => 'Sqrl::Nut' do
    ip "127.0.0.1"
  end
end
