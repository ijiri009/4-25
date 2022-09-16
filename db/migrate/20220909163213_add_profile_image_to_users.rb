class AddProfileImageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_image_id, :text
    
      def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
    
  end
  end
end
