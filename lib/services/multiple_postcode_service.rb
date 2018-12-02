require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes/", body: {"postcodes" => postcodes_array}).body)
  end

  def get_status_code
    @multiple_postcode_data['status']
  end

  def get_results
    @multiple_postcode_data['result']
  end

  def length_of_postcode
   m = @multiple_postcode_data['result']['postcode']
   m.gsub(' ','')
  end

  def quality_key_integer
    @multiple_postcode_data['result']['quality']
  end

  def ordnance_survey_eastings
    @multiple_postcode_data['result']['eastings']
  end

  def ordnance_survey_northings
    @multiple_postcode_data['result']['northings']
  end

  def four_uk_countries
    @multiple_postcode_data['result']['country']
  end

  def nhs_authority
    @multiple_postcode_data['result']['nhs_ha']
  end

  def longitude_value
    @multiple_postcode_data['result']['longitude']
  end

  def latitude_value
    @multiple_postcode_data['result']['latitude']
  end

  def parliamentary_constituency
    @multiple_postcode_data['result']['parliamentary_constituency']
  end

  def european_electoral_region
    @multiple_postcode_data['result']['european_electoral_region']
  end

  def primary_care_trust
    @multiple_postcode_data['result']['primary_care_trust']
  end

  def region
    @multiple_postcode_data['result']['region']
  end

  def parish
    @multiple_postcode_data['result']['parish']
  end

  def lsoa
    @multiple_postcode_data['result']['lsoa']
  end

  def msoa
    @multiple_postcode_data['result']['msoa']
  end

  def admin_district
    @multiple_postcode_data['result']['admin_district']
  end

  def incode
    @multiple_postcode_data['result']['incode']
  end

  def admin_ward
    @multiple_postcode_data['result']['codes']['admin_ward']
  end

  def admin_county
    @multiple_postcode_data['result']['codes']['admin_county']
  end

end
