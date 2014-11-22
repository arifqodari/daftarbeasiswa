class AddAdministratorUser < ActiveRecord::Migration
  def change
    @user = User.new
    @user.username = "donatello"
    @user.password = "donatello182"
    @user.role = 0
    @user.email = "arif.qodari@gmail.com"
    @user.save
  end
end
