class CookingTime < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: '10分以下' },
      { id: 3, name: '20分' },
      { id: 4, name: '30分' },
      { id: 5, name: '1時間' },
      { id: 6, name: '1時間30分' },
      { id: 7, name: '2時間以上' }
    ]

    include ActiveHash::Associations
    has_many :recipes
end