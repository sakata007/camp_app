# # frozen_string_literal: true

# class Users::SessionsController < Devise::SessionsController
#   before_action configure_permitted_parameters, only: [:create]

#   GET /resource/sign_in
#   def new
#     super
#   end

#   # 一旦コメントアウト
#   POST /resource/sign_in
#   def create
#     super
#   end

#   DELETE /resource/sign_out
#   def destroy
#     super
#   end

#   protected

#   If you have extra params to permit, append them to the sanitizer.
#   def configure_sign_in_params
#     # 下の行　：attributeを:emailに変更
#     devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
#   end

#   いったんコメントアウト
  # private
  # def configure_permitted_parameters  # メソッド名は慣習
  #   # deviseのUserモデルにパラメーターを許可
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  # end
# end
