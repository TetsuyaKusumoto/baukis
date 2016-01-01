class Admin::SessionsController < Admin::Base
  def new
    if current_administrator
      redirect_to :admin_root
    else
      ## ファイルが違うところにあるので呼び出すとき名前空間を使う必要がある
      @form = Admin::LoginForm.new
      render action: 'new'
    end
  end
end
