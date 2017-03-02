ActiveAdmin.register Product do
permit_params :title, :subtitle, :download_url, :price, :image




show do |t|
    attributes_table do
      row :title
      row :subtitle
      row :price
      row :download_url
      row :image do
        product.image? ? image_tag(product.image.url, height: '100') : content_tag(:span, "No photo yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :subtitle
      f.input :price
      f.input :download_url
      f.input :image, hint: f.product.image? ? image_tag(product.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.actions
  end
end
