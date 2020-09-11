class Flash < ActiveHash::Base
  self.data = [
    { id: 1, name: '任意で選択してください' },
    { id: 2, name: '有り' },
    { id: 3, name: '無し' }
  ]
end
