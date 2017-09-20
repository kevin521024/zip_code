require "zip_code/mapping"

module ZipCode
  def self.find province, city, district = ''
    return '' if ZipCode::MAPPING[province].nil?
    return '' if ZipCode::MAPPING[province][city].nil?
    return ZipCode::MAPPING[province][city].first[1] if district.empty?
    return ZipCode::MAPPING[province][city][district] || ''
  end
end
