class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
        name: 'Vadim',
        username: 'installero',
        avatar_url: 'https://secure.gravatar.com/avatar/' \
          '71269686e0f757ddb4f73614f43ae445?s=100'
    )

    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('06.09.2020')),
        Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('06.08.2020'))
    ]

  end
end
