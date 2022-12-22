# frozen_string_literal: true

When(/^I click on state (.+)$/) do |state|
  visit state_map_path(state)
end

When(/^I click on county (.+)$/) do |county|
  visit search_representatives_path(county)
end

Given(/the following events exist/) do
  events = [
    {
      name:         'Pride Parade',
      description:  'Annual pride parade',
      start_time:   4.weeks.from_now,
      end_time:     4.weeks.from_now + 1.hour,
      state_symbol: 'CA',
      fips_code:    '1'
    }
  ]
  events.each do |event|
    county = County.find_by(fips_code: event[:fips_code])
    Event.create!(
      name:        event[:name],
      description: event[:description],
      county_id:   county.id,
      start_time:  event[:start_time],
      end_time:    event[:end_time]
    )
  end
end

Then(/(.*) seed events should exist/) do |n_seeds|
  Event.count.should be n_seeds.to_i
end

When(/^(?:|I )check "([^"]*)"$/) do |field|
  check(field)
end

Given(/the following counties exist/) do |_county|
  state = State.find_by(symbol: 'CA')
  County.create!(
    name:       'Orange County',
    state_id:   state.id,
    fips_code:  1,
    fips_class: '000000'
  )
end

Given(/the following states exist/) do |state|
  state.hashes.each do |s|
    State.create!(s)
  end
end

When(/I visit (.*)/) do |_event|
  visit '/events'
end

When(/^I want to see contents of (.+)$/) do |_event|
  visit '/events/1'
end
