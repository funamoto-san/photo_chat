class WhiteBalance < ActiveHash::Base
  self.data = [
    { id: 1, name: '任意で選択してください' },
    { id: 2, name: 'auto' },
    { id: 3, name: '電球' },
    { id: 4, name: '蛍光灯' },
    { id: 5, name: '晴天' },
    { id: 6, name: 'フラッシュ' },
    { id: 7, name: '曇天' },
    { id: 8, name: '晴天日陰' },
    { id: 9, name: 'プリセットマニュアル' },
    { id:10, name: 'その他' }
  ]
end
