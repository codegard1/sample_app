require 'spec_helper'

describe User do

		before { @user=User.new(name:"Chris Odegard",email:"c.odegard@gmail.com") }

		subject { @user }

		it { should respond_to(:name) }
		it { should respond_to(:email) }
end