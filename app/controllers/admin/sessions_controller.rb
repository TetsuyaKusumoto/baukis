class Admin::SessionsController < Admin::Base
  skip_before_action :authorize

  def new
    if current_administrator
      redirect_to :admin_root
    else
      ## ファイルが違うところにあるので呼び出すとき名前空間を使う必要がある
      @form = Admin::LoginForm.new
      render action: 'new'
    end
  end
  def create
    @form = Admin::LoginForm.new(params[:admin_login_form])
    # ログインしようとするユーザが存在するか
    if @form.email.present?
      administrator = Administrator.find_by(email_for_index: @form.email.downcase)
    end
    if Admin::Authenticator.new(administrator).authenticate(@form.password)
      if administrator.suspended?
        flash.now.alert ='アカウントが停止されています'
        render action: 'new'
      else
        session[:administrator_id] = administrator.id
        session[:last_access_time] = Time.current
        flash.notice ='ログインしました。'
        redirect_to :admin_root
      end
    else
      # nowは現在のアクションでのみつかえる
      flash.now.alert = 'メールアドレス、またはパスワードが正しくありません'
      #redirect_to :admin_root
      render action: 'new'
    end
  end
  def destroy
    session.delete(:administrator_id)
    # nowが付いていないとリダイレクト先でも使える
    flash.notice = 'ログアウトしました。'
    redirect_to :admin_root
  end
end
