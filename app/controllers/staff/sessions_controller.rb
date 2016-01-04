class Staff::SessionsController < Staff::Base
  skip_before_action :authorize
  def new
    if current_staff_member
      redirect_to :staff_root
    else
      ## ファイルが違うところにあるので呼び出すとき名前空間を使う必要がある
      @form = Staff::LoginForm.new
      render action: 'new'
    end
  end
  def create
    @form = Staff::LoginForm.new(params[:staff_login_form])
    # ログインしようとするユーザが存在するか
    if @form.email.present?
      staff_member = StaffMember.find_by(email_for_index: @form.email.downcase)
    end
    if Staff::Authenticator.new(staff_member).authenticate(@form.password)
      if staff_member.suspended?
        flash.now.alert ='アカウントが停止されています'
        render action: 'new'
      else
        session[:staff_member_id] = staff_member.id
        flash.notice ='ログインしました。'
        redirect_to :staff_root
      end
    else
      # nowは現在のアクションでのみつかえる
      flash.now.alert = 'メールアドレス、またはパスワードが正しくありません'
      # @formに間違った場合でもメールアドレスが入っているので、renderするnewのビューのform_forにデフォルトで表示される
      render action: 'new'
    end
  end
  def destroy
    session.delete(:staff_member_id)
    # nowが付いていないとリダイレクト先でも使える
    flash.notice = 'ログアウトしました。'
    redirect_to :staff_root
  end
end
