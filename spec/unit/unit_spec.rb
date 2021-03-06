# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Type, type: :model do
    subject do
      described_class.new(TypeName: 'Music')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.TypeName = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Contribution, type: :model do
  subject do
    described_class.new(ContributionType: 'Bao Type')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.ContributionType = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Awarded, type: :model do
  subject do
    described_class.new(AwardedDate: '2022-02-14', AwardID: 1, ProjectID: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
    #check date
  it 'is not valid without a date' do
    subject.AwardedDate = nil
    expect(subject).not_to be_valid
  end

  #check Award ID
  it 'is not valid without a award id' do
    subject.AwardID = nil
    expect(subject).not_to be_valid
  end

  #check Project ID
  it 'is not valid without a project id' do
    subject.ProjectID = nil
    expect(subject).not_to be_valid
  end
end
  
  
RSpec.describe Project, type: :model do
    subject do
      described_class.new(ProjectName: 'a', ProjectLink: 'b', TypeID: '1')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a type ID' do
      subject.TypeID = nil
      expect(subject).not_to be_valid
    end
  end

RSpec.describe DisplayLine, type: :model do
    subject do
      described_class.new(ComponentContributed: 'a', ComponentStartDate: Date.current, ComponentEndDate: Date.current, ContribProject: 1, ContribType: 2)
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a component contributed' do
      subject.ComponentContributed = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a component start date' do
      subject.ComponentStartDate = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a component end date' do
      subject.ComponentEndDate = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a contribution project' do
      subject.ContribProject = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a contribution type' do
      subject.ContribType = nil
      expect(subject).not_to be_valid
    end
  end

RSpec.describe Award, type: :model do
  subject do
    described_class.new(AwardName: 'Test Award', AwardLink: 'award.com', AwardYear: '2022-02-14')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.AwardName = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a year' do
    subject.AwardYear = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with a name' do
    expect(subject).to be_valid
  end

  it 'is valid with a year' do
    expect(subject).to be_valid
  end
end

