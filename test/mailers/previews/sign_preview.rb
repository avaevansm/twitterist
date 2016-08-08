# Preview all emails at http://localhost:3000/rails/mailers/sign
class SignPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sign/up
  def up
    Sign.up
  end

  # Preview this email at http://localhost:3000/rails/mailers/sign/confirmation
  def confirmation
    Sign.confirmation
  end

end
