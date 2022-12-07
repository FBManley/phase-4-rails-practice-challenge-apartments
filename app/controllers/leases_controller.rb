class LeasesController < ApplicationController
    belongs_to :tenant
    belongs_to :apartment
end
