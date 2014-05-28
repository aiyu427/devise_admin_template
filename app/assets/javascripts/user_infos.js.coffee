# ready
$ ->
  $('#user_info_zip_code').blur ->
    # 郵便番号を住所に変換
    GAddressFinder.set('user_info_zip_code', 'user_info_address1')
    return false
