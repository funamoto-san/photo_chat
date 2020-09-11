class LenzType < ActiveHash::Base
  self.data = [
    { id: 1, name: '任意で選択してください' },
    { id: 2, name: 'ズーム' },
    { id: 3, name: '単焦点' },
    { id: 4, name: 'マクロ' },
    { id: 5, name: 'フィッシュアイ' },
    { id: 6, name: 'コンバータ' },
    { id: 7, name: '特殊' },
    { id: 8, name: '標準ズーム' },
    { id: 9, name: '望遠ズーム' },
    { id:10, name: '広角ズーム' }
  ]
end
