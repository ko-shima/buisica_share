class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '総務部' },
    { id: 3, name: '法務部' },
    { id: 4, name: '人事部' },
    { id: 5, name: '経理部' },
    { id: 6, name: '経営企画部' },
    { id: 7, name: 'マーケティング部' },
    { id: 8, name: '広報部' },
    { id: 9, name: '〇〇事業部' },
    { id: 10, name: '□□事業部' },
    { id: 11, name: '営業部 第１課' },
    { id: 12, name: '営業部 第２課' },
    { id: 13, name: '製造部 第１課' },
    { id: 14, name: '製造部 第２課' },
    { id: 15, name: '研究開発部' }
  ]

  include ActiveHash::Associations
  has_many :users
end
