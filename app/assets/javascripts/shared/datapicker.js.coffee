$(document).on 'page:change', ->
  # 変数dに今日の日付をセット
  d = new Date()
  # datepickerメソッドを使い、設定を保持
  $.datepicker.setDefaults({
    dateFormat: "yy-mm-dd",
    minDate: new Date(2000, 1, 1),
    maxDate: new Date(d.getFullYear() + 1, d.getMonth(), d.getDate() - 1)
  })
  # class属性にdatepickerが指定されたすべての要素に対して、datepickerメソッドを呼ぶ
  $('.datepicker').datepicker()
