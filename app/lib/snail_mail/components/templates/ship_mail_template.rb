# frozen_string_literal: true
module SnailMail
  module Components
    module Templates
      class ShipMailTemplate < TemplateBase
        def self.template_name
          "Ship Mail"
        end
        def self.show_on_single?
          true
        end
        def view_template
          image(
            image_path("ship_mail.png"),
            at: [-2.5, 288],
            width: 443,
          )

          render_return_address(5, bounds.top - 5, 190, 90, size: 8, font: "f25")
          render_destination_address(115, bounds.top - 85, 210, 100, size: 18, valign: :center, align: :left)
          render_imb(150, 0, 270)
          render_qr_code(162.5, 25, 45)
          render_letter_id(225, 25, 8)
          render_postage
        end
      end
    end
  end
end