class FalseExpand 
 def self.er(str)
   if !str
     str
   else
     ["off", "low", 0].include?(str) ? false : true
   end
  end
end
 
describe FalseExpand do
  describe '.er(str)' do
    subject {FalseExpand.er(str)}
    context 'off' do
      let(:str){'off'}
      it{is_expected.to be_falsey}
    end
    context 'on' do
      let(:str){'on'}
      it{is_expected.to be_truthy}
    end
    context 'low' do
      let(:str){'low'}
      it{is_expected.to be_falsey}
    end
    context 'on' do
      let(:str){0}
      it{is_expected.to be_falsey}
    end
    context 'false' do
      let(:str){false}
      it{is_expected.to be_falsey}
    end
  end
end

