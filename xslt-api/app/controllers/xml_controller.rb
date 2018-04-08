class XmlController < ApplicationController
  before_action :parse_params, only: :index

  def index
    res = [[n = 0, a = @value, a.to_s == a.to_s.reverse]]
    a = 0 if a < 0
    loop do
      break if a.to_s == a.to_s.reverse
      a += a.to_s.reverse!.to_i
      res.push [n += 1, a, a.to_s == a.to_s.reverse]
      next unless n >= 10_000
      a = nil
      res = []
      break
    end

    data = res.map { |val| { iteration: val[0], value: val[1], palindrome: val[2] } }
    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  protected

  def parse_params
    @value = params[:val].to_i
  end
end
